; Disassembly of "harvest_moon.gbc"
; This file was created with:
; mgbdis v2.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $002", ROMX[$4000], BANK[$2]

    ld [bc], a
    di
    ld a, [$cb92]
    cp $ff
    call z, Call_000_0de8
    call Call_000_0d22
    call Call_000_228a
    call ZeroOutVRAM
    call Call_000_323d
    ld hl, $4001
    ld a, $11
    ld de, $9010
    ld bc, $07f0
    call Call_000_2308
    ld hl, $47f1
    ld a, $11
    ld de, $8800
    ld bc, $0800
    call Call_000_2308
    ld hl, $c0a3
    ld a, $6c
    ld [hl+], a
    ld a, $1c
    ld [hl+], a
    ld [hl+], a
    xor a
    ldh [$ff93], a
    ldh [$ff91], a
    ld [$cbe2], a
    ld [$cbe3], a
    ld [$ccc2], a
    ld [$ccc3], a
    ld [$ccc4], a
    ld [$cbe6], a
    ld [$cbe7], a
    ld hl, $4973
    ld de, $9821
    call Call_002_41dc
    ld hl, $4985
    ld de, $9881
    call Call_002_41dc
    ld hl, $4997
    ld de, $98a1
    call Call_002_41dc
    ld hl, $49a9
    ld de, $98e1
    call Call_002_41dc
    ld hl, $49bb
    ld de, $9921
    call Call_002_41dc
    ld hl, $49cd
    ld de, $9961
    call Call_002_41dc
    ld hl, $49df
    ld de, $9981
    call Call_002_41dc
    ld hl, $49f1
    ld de, $99c1
    call Call_002_41dc
    ld hl, $4a03
    ld de, $99e1
    call Call_002_41dc
    call Call_002_492a
    ld hl, $9880
    ld a, $f4
    ld [hl], a
    ld hl, $9881
    ld a, $f5
    ld [hl], a
    ld hl, $9892
    ld a, $f5
    ld [hl], a
    ld hl, $9893
    ld a, $f6
    ld [hl], a
    ld hl, $98a0
    ld a, $f1
    ld [hl], a
    ld hl, $98a1
    ld a, $f2
    ld [hl], a
    ld hl, $98b2
    ld a, $f2
    ld [hl], a
    ld hl, $98b3
    ld a, $f3
    ld [hl], a
    ld a, [$b884]
    ld [$cbde], a
    ld a, [sCurrentDayCounter]
    ld [$cbdf], a
    ld a, [$b882]
    ld [$cbe0], a
    ld a, [$b881]
    ld [$cbe1], a
    ld a, [$b885]
    ld [$cbdd], a
    call Call_002_43ff
    call Call_000_0cd5
    call Call_002_4464
    ld a, [$cbe4]
    ld h, a
    ld a, [$cbe5]
    ld l, a
    push hl
    ld b, h
    ld c, l
    ld hl, $ba10
    call Call_000_0cce
    pop hl
    push hl
    pop hl
    call Call_002_4919
    call Call_002_44f7
    call Call_002_4550
    call Call_002_4533
    call Call_002_4689
    call Call_002_430a
    call Call_002_4372
    ld hl, $9863
    ld a, [sCurrentDayCounter]
    inc a
    call Call_002_4224
    ld a, [$b884]
    ld hl, $9865
    call Call_002_41e6
    ld a, [$b882]
    ld hl, $986f
    call Call_002_4237
    ld de, $986b
    call Call_002_42b8
    call Call_002_4a15
    call Call_002_4b0a
    call Call_002_4ee1
    call Call_002_4e2f
    call Call_002_4e52
    call Call_002_4e70
    ld a, $83
    ld [$c0a2], a
    xor a
    ldh [rIF], a
    ld a, $01
    ldh [rIE], a
    ld hl, $9000
    ld de, $8f00

jr_002_4170:
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, e
    cp $10
    jr nz, jr_002_4170

    ret


    call Call_000_0d90
    ld a, [$cb4f]
    or a
    ret nz

    ldh a, [$ff8b]
    and $01
    ret z

    ld a, $02
    ld [$cb50], a
    ld a, $1d
    ld [$cb4f], a
    ld a, $03
    ld [$c910], a
    xor a
    ld [$c911], a
    call Call_000_070b
    call Call_000_07ab
    call Call_000_08b7
    ld a, [$ccc2]
    ld b, a
    ld a, [$b8ef]
    add b
    ld [$b8ef], a
    ld a, [$ccc3]
    ld b, a
    ld a, [$b8f0]
    adc b
    ld [$b8f0], a
    ld a, [$ccc4]
    ld b, a
    ld a, [$b8f1]
    adc b
    ld [$b8f1], a
    call Call_000_1056
    ld a, [$b88d]
    cp $13
    ret nz

    xor a
    ld [$b88d], a
    ld a, $ff
    ld [$b8a1], a
    ld [$ba4c], a
    ld [$ba4d], a
    ret


Call_002_41dc:
    ld b, $12

jr_002_41de:
    ld a, [hl+]
    inc a
    ld [de], a
    inc de
    dec b
    jr nz, jr_002_41de

    ret


Call_002_41e6:
    ld de, $420c
    add a
    ld b, a
    add a
    add b
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld a, [de]
    inc de
    inc a
    ld [hl+], a
    ld a, [de]
    inc de
    inc a
    ld [hl+], a
    ld a, [de]
    inc de
    inc a
    ld [hl+], a
    ld a, [de]
    inc de
    inc a
    ld [hl+], a
    ld a, [de]
    inc de
    inc a
    ld [hl+], a
    ld a, [de]
    inc de
    inc a
    ld [hl+], a
    ret


    ld l, l
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    halt
    ld [hl], a
    ld a, b
    rst $28
    ld a, c
    ld a, d
    ld a, e
    ld a, h
    rst $28
    ld a, l
    ld a, [hl]
    ld a, a
    add b
    add c
    add d

Call_002_4224:
    push hl
    ld l, a
    ld h, $00
    call Call_000_325c
    pop hl
    ld a, [$ccd0]
    inc a
    ld [hl+], a
    ld a, [$ccd1]
    inc a
    ld [hl+], a
    ret


Call_002_4237:
    ld de, $4258
    add a
    add a
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld a, [de]
    inc de
    inc a
    inc hl
    inc hl
    ld [hl+], a
    ld a, [de]
    inc de
    inc a
    ld [hl], a
    dec hl
    dec hl
    dec hl
    ld a, [de]
    inc de
    inc a
    ld [hl+], a
    ld a, [de]
    inc de
    inc a
    ld [hl], a
    ret


    nop
    inc c
    inc [hl]
    inc [hl]
    nop
    inc c
    inc [hl]
    dec [hl]
    nop
    inc c
    inc [hl]
    ld [hl], $00
    inc c
    inc [hl]
    scf
    nop
    inc c
    inc [hl]
    jr c, jr_002_426d

jr_002_426d:
    inc c
    inc [hl]
    add hl, sp
    nop
    inc c
    inc [hl]
    ld a, [hl-]
    nop
    inc c
    inc [hl]
    dec sp
    nop
    inc c
    inc [hl]
    inc a
    nop
    inc c
    inc [hl]
    dec a
    nop
    inc c
    dec [hl]
    inc [hl]
    nop
    inc c
    dec [hl]
    dec [hl]
    rrca
    inc c
    inc [hl]
    inc [hl]
    rrca
    inc c
    inc [hl]
    dec [hl]
    rrca
    inc c
    inc [hl]
    ld [hl], $0f
    inc c
    inc [hl]
    scf
    rrca
    inc c
    inc [hl]
    jr c, jr_002_42ac

    inc c
    inc [hl]
    add hl, sp
    rrca
    inc c
    inc [hl]
    ld a, [hl-]
    rrca
    inc c
    inc [hl]
    dec sp
    rrca
    inc c
    inc [hl]
    inc a

jr_002_42ac:
    rrca
    inc c
    inc [hl]
    dec a
    rrca
    inc c
    dec [hl]
    inc [hl]
    rrca
    inc c
    dec [hl]
    dec [hl]

Call_002_42b8:
    push de
    ld a, [$b884]
    ld c, $1e
    call Multiply8Bit
    ld a, [sCurrentDayCounter]
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, $07
    call Call_000_09c9
    add a
    add a
    ld hl, $42ee
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    pop de
    ld a, [hl]
    inc a
    ld [de], a
    inc hl
    inc de
    ld a, [hl]
    inc a
    ld [de], a
    inc hl
    inc de
    ld a, [hl]
    inc a
    ld [de], a
    inc hl
    inc de
    ld a, [hl]
    inc a
    ld [de], a
    ret


    ld e, b
    ld e, c
    ld e, d
    ld d, a
    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    ld h, b
    ld h, c
    ld h, d
    ld e, e
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld d, h
    ld l, d
    ld l, e
    ld l, h
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a

Call_002_430a:
    ld a, [$ba0c]
    bit 7, a
    call nz, Call_002_43a9
    ld a, [$ba0c]
    bit 6, a
    call nz, Call_002_43d4
    ld a, [$ba0d]
    bit 0, a
    ret z

    bit 2, a
    ret nz

    bit 1, a
    ret nz

    ld a, [$cbe4]
    ld h, a
    ld a, [$cbe5]
    ld l, a
    ld a, $18
    call Call_000_09c9
    ld a, h
    or l
    jr z, jr_002_4351

jr_002_4337:
    ld a, [$ba0d]
    set 2, a
    ld [$ba0d], a
    ld a, [$b9d7]
    cp $0a
    jr c, jr_002_434c

    sub $0a
    ld [$b9d7], a
    ret


jr_002_434c:
    xor a
    ld [$b9d7], a
    ret


jr_002_4351:
    ld a, [$cbe4]
    ld h, a
    ld a, [$cbe5]
    ld l, a
    ld a, $18
    call Call_000_09c9
    ld b, a
    ld a, [$b882]
    cp $06
    jr c, jr_002_436c

    add b
    cp $20
    jr nc, jr_002_4337

    ret


jr_002_436c:
    add b
    cp $06
    jr nc, jr_002_4337

    ret


Call_002_4372:
    ld a, [$cbe4]
    ld h, a
    ld a, [$cbe5]
    ld l, a
    ld a, $18
    call Call_000_09c9
    ld a, h
    or l
    jr z, jr_002_4388

jr_002_4383:
    xor a
    ld [$ba4e], a
    ret


jr_002_4388:
    ld a, [$cbe4]
    ld h, a
    ld a, [$cbe5]
    ld l, a
    ld a, $18
    call Call_000_09c9
    ld b, a
    ld a, [$b882]
    cp $06
    jr c, jr_002_43a3

    add b
    cp $20
    jr nc, jr_002_4383

    ret


jr_002_43a3:
    add b
    cp $06
    jr nc, jr_002_4383

    ret


Call_002_43a9:
    ld a, [$ba38]
    cp $ff
    ret z

    ld a, [$cbe4]
    or a
    jr nz, jr_002_43c9

    ld a, [$cbe5]
    ld l, a
    cp $0c
    jr nc, jr_002_43c9

    ld a, [$ba38]
    add l
    cp $0c
    jr nc, jr_002_43c9

    ld [$ba38], a
    ret


jr_002_43c9:
    ld a, $01
    ld [$b8a7], a
    ld a, $ff
    ld [$ba38], a
    ret


Call_002_43d4:
    ld a, [$ba39]
    cp $ff
    ret z

    ld a, [$cbe4]
    or a
    jr nz, jr_002_43f4

    ld a, [$cbe5]
    ld l, a
    cp $18
    jr nc, jr_002_43f4

    ld a, [$ba39]
    add l
    cp $18
    jr nc, jr_002_43f4

    ld [$ba39], a
    ret


jr_002_43f4:
    ld a, $01
    ld [$b8a8], a
    ld a, $ff
    ld [$ba39], a
    ret


Call_002_43ff:
    call Call_002_4848
    ld a, [$cbe4]
    ld h, a
    ld a, [$cbe5]
    ld l, a
    ld a, $18
    call Call_000_09c9
    ld b, a
    ld a, [sCurrentDayCounter]
    add l
    ld [sCurrentDayCounter], a
    ld a, [$b882]
    add b
    ld [$b882], a
    cp $18
    jr c, jr_002_442e

    sub $18
    ld [$b882], a
    ld a, [sCurrentDayCounter]
    inc a
    ld [sCurrentDayCounter], a

jr_002_442e:
    ld a, [sCurrentDayCounter]
    ld l, a
    ld h, $00
    ld a, $1e
    call Call_000_09c9
    ld [sCurrentDayCounter], a
    ld a, [$b884]
    add l
    ld [$b884], a
    ld l, a
    ld h, $00
    ld a, $04
    call Call_000_09c9
    ld [$b884], a
    ld a, [$b885]
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, l
    ld [$b885], a
    cp $63
    ret c

    ld a, $63
    ld [$b885], a
    ret


Call_002_4464:
    ld a, [$cbdd]
    ld b, a
    ld a, [$b885]
    cp b
    jr nz, jr_002_4482

    ld a, [$b884]
    cp $03
    ret nz

    ld a, [sCurrentDayCounter]
    cp $1d
    ret nz

    ld a, [$b882]
    cp $06
    ret c

    jr jr_002_44d5

jr_002_4482:
    ld a, [$b884]
    ld hl, $02d0
    call Call_000_0c46
    push hl
    ld a, [sCurrentDayCounter]
    ld c, $18
    call Multiply8Bit
    pop de
    add hl, de
    ld a, [$b882]
    sub $06
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, $18
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [$cbe5]
    sub l
    ld [$cbe5], a
    ld a, [$cbe4]
    sbc h
    ld [$cbe4], a
    ld a, [$b885]
    dec a
    ld [$b885], a
    ld a, $03
    ld [$b884], a
    ld a, $1d
    ld [sCurrentDayCounter], a
    ld a, $06
    ld [$b882], a
    xor a
    ld [$b881], a
    ld [$b880], a
    ret


jr_002_44d5:
    ld a, [$b882]
    sub $06
    ld b, a
    ld a, [$cbe5]
    sub b
    ld [$cbe5], a
    ld a, [$cbe4]
    sbc $00
    ld [$cbe4], a
    ld a, $06
    ld [$b882], a
    xor a
    ld [$b881], a
    ld [$b880], a
    ret


Call_002_44f7:
    ld a, [$b89c]
    cp $01
    jr z, jr_002_4506

    ld a, [$b8ea]
    cp $00
    jr z, jr_002_4506

    ret


jr_002_4506:
    ld a, [$b885]
    cp $00
    ret nz

    ld a, [$b8ea]
    cp $00
    ret z

    cp $01
    ret nz

    ld a, [$b884]
    cp $00
    ret z

    cp $02
    jr nc, jr_002_4528

    ld a, [$b8eb]
    ld b, a
    ld a, [sCurrentDayCounter]
    cp b
    ret c

jr_002_4528:
    ld a, $02
    ld [$b8ea], a
    ld a, $80
    ld [$b8eb], a
    ret


Call_002_4533:
    ld a, [$b884]
    cp $03
    ret nz

    ld a, [sCurrentDayCounter]
    cp $1d
    ret nz

    ld a, [$b882]
    cp $06
    ret c

    ld a, $11
    ld [$b88d], a
    ld a, $16
    ld [$b902], a
    ret


Call_002_4550:
    ld a, [$b8fe]
    cp $02
    ret c

    ld a, [$cbe4]
    or a
    jp nz, Jump_002_465d

    ld a, [$b8fe]
    cp $02
    jr z, jr_002_457c

    ld a, [$b8fe]
    cp $03
    jr z, jr_002_45ce

    ld a, [$b8fe]
    cp $04
    jp z, Jump_002_460f

    ld a, [$b8fe]
    cp $05
    jp z, Jump_002_4640

    ret


jr_002_457c:
    ld a, [$cbe0]
    ld b, a
    ld a, $06
    sub b
    ld b, a
    ld a, [$cbe0]
    cp $06
    jr c, jr_002_458f

    ld a, $18
    add b
    ld b, a

jr_002_458f:
    call Call_002_467e
    ld a, $48
    add b
    ld c, a
    ld a, [$cbe5]
    cp c
    jp nc, Jump_002_465d

    ld a, $30
    add b
    ld c, a
    ld a, [$cbe5]
    cp c
    jr nc, jr_002_45bc

    ld a, $18
    add b
    ld c, a
    ld a, [$cbe5]
    cp c
    jr nc, jr_002_45c2

    ld a, $00
    add b
    ld c, a
    ld a, [$cbe5]
    cp c
    jr nc, jr_002_45c8

    ret


jr_002_45bc:
    ld a, $05
    ld [$b8fe], a
    ret


jr_002_45c2:
    ld a, $04
    ld [$b8fe], a
    ret


jr_002_45c8:
    ld a, $03
    ld [$b8fe], a
    ret


jr_002_45ce:
    ld a, [$cbe0]
    ld b, a
    ld a, $06
    sub b
    ld b, a
    ld a, [$cbe0]
    cp $06
    jr c, jr_002_45e1

    ld a, $18
    add b
    ld b, a

jr_002_45e1:
    call Call_002_467e
    ld a, $30
    add b
    ld c, a
    ld a, [$cbe5]
    cp c
    jr nc, jr_002_465d

    ld a, $18
    add b
    ld c, a
    ld a, [$cbe5]
    cp c
    jr nc, jr_002_4603

    ld a, $00
    add b
    ld c, a
    ld a, [$cbe5]
    cp c
    jr nc, jr_002_4609

    ret


jr_002_4603:
    ld a, $05
    ld [$b8fe], a
    ret


jr_002_4609:
    ld a, $04
    ld [$b8fe], a
    ret


Jump_002_460f:
    ld a, [$cbe0]
    ld b, a
    ld a, $06
    sub b
    ld b, a
    ld a, [$cbe0]
    cp $06
    jr c, jr_002_4622

    ld a, $18
    add b
    ld b, a

jr_002_4622:
    call Call_002_467e
    ld a, $18
    add b
    ld c, a
    ld a, [$cbe5]
    cp c
    jr nc, jr_002_465d

    ld a, $00
    add b
    ld c, a
    ld a, [$cbe5]
    cp c
    jr nc, jr_002_463a

    ret


jr_002_463a:
    ld a, $05
    ld [$b8fe], a
    ret


Jump_002_4640:
    ld a, [$cbe0]
    ld b, a
    ld a, $06
    sub b
    ld b, a
    ld a, [$cbe0]
    cp $06
    jr c, jr_002_4653

    ld a, $18
    add b
    ld b, a

jr_002_4653:
    call Call_002_467e
    ld a, [$cbe5]
    cp b
    jr nc, jr_002_465d

    ret


Jump_002_465d:
jr_002_465d:
    xor a
    ld [$b8fe], a
    ld a, [$b911]
    cp $00
    jr z, jr_002_4673

    ld a, $0a
    call Call_000_0f47
    ld a, $02
    ld [$b911], a
    ret


jr_002_4673:
    ld a, $0a
    call Call_000_0f47
    ld a, $01
    ld [$b911], a
    ret


Call_002_467e:
    ld a, b
    and $80
    jr nz, jr_002_4684

    ret


jr_002_4684:
    ld a, b
    add $18
    ld b, a
    ret


Call_002_4689:
    xor a
    ld [$b88e], a
    ld [$b890], a
    ld [$b891], a
    ld [$b893], a
    ld [$b896], a
    ld [$b899], a
    ld [$b89a], a
    ld a, $80
    ld [$b894], a
    ld [$b895], a
    ld [$b89b], a
    ld a, $10
    ld [$ae30], a
    ld a, $00
    ld [$ae31], a
    call Call_002_46bb
    call Call_002_4742
    ret


Call_002_46bb:
    ld a, [$b885]
    or a
    jr nz, jr_002_4729

    ld a, [$b884]
    cp $02
    jr z, jr_002_4729

    ld a, [$b884]
    cp $03
    jr z, jr_002_4729

    ld a, [$b8a2]
    cp $80
    ret z

    ld a, [$b8a2]
    cp $ff
    jr z, jr_002_46e4

    ld a, [$b884]
    cp $00
    ret z

    jr jr_002_46f0

jr_002_46e4:
    ld a, [$b884]
    cp $00
    jr z, jr_002_46fd

    ld a, $09
    ld [$b8a2], a

jr_002_46f0:
    ld a, [$b8a2]
    ld b, a
    ld a, [sCurrentDayCounter]
    cp b
    jr z, jr_002_4709

    jr nc, jr_002_4729

    ret


jr_002_46fd:
    ld a, [sCurrentDayCounter]
    cp $1d
    ret nz

    ld a, $09
    ld [$b8a2], a
    ret


jr_002_4709:
    ld a, $00
    ld [$b8a0], a
    ld [$b89f], a
    ld a, $50
    ld [$b924], a
    ld a, $83
    ld [$b925], a
    ld a, $af
    ld [$b926], a
    ld [$b927], a
    ld a, $80
    ld [$b8a2], a
    ret


jr_002_4729:
    ld a, $01
    ld [$ba08], a
    ld [$ba09], a
    ld [$ba0a], a
    ld a, [$ba0d]
    set 0, a
    ld [$ba0d], a
    ld a, $80
    ld [$b8a2], a
    ret


Call_002_4742:
    ld a, [$b884]
    cp $02
    jr z, jr_002_47c3

    ld a, [$b884]
    cp $03
    jr z, jr_002_47c3

    ld a, [$b8a1]
    cp $80
    jr z, jr_002_47c9

    ld a, [$b8a1]
    cp $ff
    jr z, jr_002_4766

    ld a, [$b884]
    cp $00
    ret z

    jr jr_002_477c

jr_002_4766:
    ld a, [$b884]
    cp $00
    jr z, jr_002_4789

    ld a, $18
    ld [$b8a1], a
    ld a, $18
    ld [$ba4c], a
    ld a, $17
    ld [$ba4d], a

jr_002_477c:
    ld a, [$b8a1]
    ld b, a
    ld a, [sCurrentDayCounter]
    cp b
    jr z, jr_002_479f

    jr nc, jr_002_47c3

    ret


jr_002_4789:
    ld a, [sCurrentDayCounter]
    cp $1d
    ret nz

    ld a, $18
    ld [$b8a1], a
    ld a, $18
    ld [$ba4c], a
    ld a, $17
    ld [$ba4d], a
    ret


jr_002_479f:
    ld a, $03
    ld [$b8a0], a
    ld a, $30
    ld [$b924], a
    ld a, $01
    ld [$b925], a
    ld a, $52
    ld [$b926], a
    ld a, $02
    ld [$b927], a
    ld a, $00
    ld [$b89f], a
    ld a, $80
    ld [$b8a1], a
    ret


jr_002_47c3:
    ld a, $80
    ld [$b8a1], a
    ret


jr_002_47c9:
    ld a, [$b8a0]
    cp $03
    jr z, jr_002_47d8

    ld a, [$b89f]
    cp $03
    jr z, jr_002_480f

    ret


jr_002_47d8:
    ld a, [$ba4c]
    ld b, a
    ld a, [sCurrentDayCounter]
    cp b
    ret z

    ld a, [$ba4c]
    inc a
    ld b, a
    ld a, [sCurrentDayCounter]
    cp b
    jr z, jr_002_47ee

    jr jr_002_47f4

jr_002_47ee:
    ld a, [$b882]
    cp $06
    ret c

jr_002_47f4:
    ld a, $00
    ld [$b8a0], a
    ld [$b89f], a
    ld a, $50
    ld [$b924], a
    ld a, $83
    ld [$b925], a
    ld a, $af
    ld [$b926], a
    ld [$b927], a
    ret


jr_002_480f:
    ld a, [$ba4d]
    ld b, a
    ld a, [sCurrentDayCounter]
    cp b
    ret z

    ld a, [$ba4c]
    ld b, a
    ld a, [sCurrentDayCounter]
    cp b
    jr z, jr_002_4823

    ret


jr_002_4823:
    ld a, [$b882]
    cp $06
    ret c

    ld a, $03
    ld [$b8a0], a
    ld a, $30
    ld [$b924], a
    ld a, $01
    ld [$b925], a
    ld a, $52
    ld [$b926], a
    ld a, $02
    ld [$b927], a
    ld a, $00
    ld [$b89f], a
    ret


Call_002_4848:
    ld a, [$b886]
    ld hl, $05a0
    call Call_000_0c46
    ld a, l
    ldh [$ffae], a
    ld a, h
    ldh [$ffaf], a
    ld a, c
    ldh [$ffb0], a
    ld a, [$b887]
    ld c, $3c
    call Multiply8Bit
    ld a, [$b888]
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld b, h
    ld c, l
    ld hl, $ffae
    call Call_000_0cbb
    ld a, [$c902]
    ld hl, $05a0
    call Call_000_0c46
    ld a, l
    ldh [$ffb2], a
    ld a, h
    ldh [$ffb3], a
    ld a, c
    ldh [$ffb4], a
    ld a, [$c903]
    ld c, $3c
    call Multiply8Bit
    ld a, [$c904]
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld b, h
    ld c, l
    ld hl, $ffb2
    call Call_000_0cbb
    ldh a, [$ffae]
    ld b, a
    ldh a, [$ffb2]
    sub b
    ld l, a
    ldh a, [$ffaf]
    ld b, a
    ldh a, [$ffb3]
    sbc b
    ld h, a
    ldh a, [$ffb0]
    ld b, a
    ldh a, [$ffb4]
    sbc b
    cp $00
    jr z, jr_002_48b9

    ld hl, $ffff

jr_002_48b9:
    ld a, [$ba41]
    cp $00
    jr z, jr_002_48e0

    ld a, h
    cp $55
    jr nc, jr_002_48ce

    cp $54
    jr c, jr_002_48d1

    ld a, l
    cp $61
    jr c, jr_002_48d1

jr_002_48ce:
    ld hl, $5460

jr_002_48d1:
    add hl, hl
    ld a, $0f
    call Call_000_09c9
    ld a, h
    ld [$cbe4], a
    ld a, l
    ld [$cbe5], a
    ret


jr_002_48e0:
    ld a, h
    cp $a9
    jr nc, jr_002_48ee

    cp $a8
    jr c, jr_002_48f1

    ld a, l
    cp $c1
    jr c, jr_002_48f1

jr_002_48ee:
    ld hl, $a8c0

jr_002_48f1:
    ld a, $0f
    call Call_000_09c9
    ld a, h
    ld [$cbe4], a
    ld a, l
    ld [$cbe5], a
    ret


    ld a, h
    cp $0c
    jr nc, jr_002_490d

    cp $0b
    jr c, jr_002_4910

    ld a, l
    cp $41
    jr c, jr_002_4910

jr_002_490d:
    ld hl, $0b40

jr_002_4910:
    ld a, h
    ld [$cbe4], a
    ld a, l
    ld [$cbe5], a
    ret


Call_002_4919:
    ld a, h
    or a
    jr nz, jr_002_4923

    ld a, l
    cp $18
    jr nc, jr_002_4923

    ret


jr_002_4923:
    ld a, [$b8ee]
    ld [sPlayerEnergy], a
    ret


Call_002_492a:
    ld a, $f1
    ld [$9800], a
    ld b, $12
    ld a, $f2
    ld hl, $9801

jr_002_4936:
    ld [hl+], a
    dec b
    jr nz, jr_002_4936

    ld a, $f3
    ld [$9813], a
    ld a, $f4
    ld [$9a20], a
    ld b, $12
    ld a, $f5
    ld hl, $9a21

jr_002_494b:
    ld [hl+], a
    dec b
    jr nz, jr_002_494b

    ld a, $f6
    ld [$9a33], a
    ld b, $10
    ld de, $0020
    ld hl, $9820
    ld a, $f7

jr_002_495e:
    ld [hl], a
    add hl, de
    dec b
    jr nz, jr_002_495e

    ld b, $10
    ld de, $0020
    ld hl, $9833
    ld a, $f8

jr_002_496d:
    ld [hl], a
    add hl, de
    dec b
    jr nz, jr_002_496d

    ret


    inc de
    jr z, jr_002_4993

    ld a, [de]
    ld [hl-], a
    xor a
    ld [hl+], a
    inc l
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a

jr_002_4985:
    db $f4
    db $f4
    db $f4
    db $f4
    db $f4
    db $f4
    db $f4
    db $f4
    db $f4
    db $f4
    db $f4
    db $f4
    db $f4
    db $f4

jr_002_4993:
    db $f4
    db $f4
    db $f4
    db $f4
    pop af
    pop af
    pop af
    pop af
    pop af
    pop af
    pop af
    pop af
    pop af
    pop af
    pop af
    pop af
    pop af
    pop af
    pop af
    pop af
    pop af
    pop af
    inc de
    jr z, jr_002_49d9

    ld a, [de]
    dec h
    xor a
    ld [de], a
    ld hl, $2922
    ld h, $1e
    daa
    dec l
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    rrca
    ld [hl+], a
    ld e, $1c
    ld e, $2c
    ld d, $1a
    dec l
    ld e, $2b
    ld [hl+], a
    daa
    jr nz, jr_002_4985

    xor a
    xor a
    xor a

jr_002_49d9:
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    inc bc
    ld a, [de]
    ld [hl-], a
    inc l
    xor a
    xor a
    dec b
    ld e, $1e
    dec e
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    inc bc
    ld a, [de]
    ld [hl-], a
    inc l
    xor a
    xor a

Call_002_4a15:
    call Call_002_4ea8
    ld a, [$cbe4]
    ld h, a
    ld a, [$cbe5]
    ld l, a
    ld a, $18
    call Call_000_09c9
    ld a, l
    ld [$cbdc], a
    or a
    ret z

    call Call_002_5002
    ld a, [$cbde]
    ldh [$ffa6], a
    ld a, [$cbdf]
    ldh [$ffa7], a
    ld a, [$cbdc]
    or a
    ret z

    ld e, a
    jr jr_002_4a61

Jump_002_4a40:
    ldh a, [$ffa7]
    inc a
    ldh [$ffa7], a
    cp $1e
    jr nz, jr_002_4a53

    xor a
    ldh [$ffa7], a
    ldh a, [$ffa6]
    inc a
    and $03
    ldh [$ffa6], a

jr_002_4a53:
    ld a, [$ccc6]
    dec a
    ld [$ccc6], a
    cp $ff
    jr nz, jr_002_4a61

    call Call_002_5002

jr_002_4a61:
    xor a
    ldh [$ffa8], a
    push de
    ld hl, sMapObjectLocation
    ld bc, $0c40

Jump_002_4a6b:
    ld a, [hli]
    ld e, a
    ld a, [hli]
    ld d, a
    and $40
    jr z, jr_002_4aea

    ld a, e
    and $f0
    cp $40
    jr nz, jr_002_4a7f

    call Call_002_4b1b
    jr jr_002_4aea

jr_002_4a7f:
    ld a, [$ccc6]
    or a
    jr z, jr_002_4aea

    ld a, e
    and $f0
    cp $50
    jr z, jr_002_4a92

    cp $60
    jr z, jr_002_4a92

    jr jr_002_4a97

jr_002_4a92:
    call Call_002_4c06
    jr jr_002_4aea

jr_002_4a97:
    cp $70
    jr z, jr_002_4aa1

    cp $80
    jr z, jr_002_4aa1

    jr jr_002_4aa6

jr_002_4aa1:
    call Call_002_4c64
    jr jr_002_4aea

jr_002_4aa6:
    cp $90
    jr z, jr_002_4aac

    jr jr_002_4ab1

jr_002_4aac:
    call Call_002_4b59
    jr jr_002_4aea

jr_002_4ab1:
    cp $a0
    jr z, jr_002_4ab7

    jr jr_002_4abc

jr_002_4ab7:
    call Call_002_4bad
    jr jr_002_4aea

jr_002_4abc:
    cp $b0
    jr z, jr_002_4ac2

    jr jr_002_4ac7

jr_002_4ac2:
    call Call_002_4cca
    jr jr_002_4aea

jr_002_4ac7:
    cp $c0
    jr z, jr_002_4acd

    jr jr_002_4ad2

jr_002_4acd:
    call Call_002_4d1f
    jr jr_002_4aea

jr_002_4ad2:
    cp $d0
    jr z, jr_002_4ad8

    jr jr_002_4add

jr_002_4ad8:
    call Call_002_4d78
    jr jr_002_4aea

jr_002_4add:
    cp $e0
    jr z, jr_002_4ae7

    cp $f0
    jr z, jr_002_4ae7

    jr jr_002_4aea

jr_002_4ae7:
    call Call_002_4dd1

jr_002_4aea:
    dec bc
    ld a, b
    or c
    cp $00
    jp nz, Jump_002_4a6b

    ldh a, [$ffa8]
    ld b, a
    ld a, [$cbe6]
    add b
    ld [$cbe6], a
    ld a, [$cbe7]
    adc $00
    ld [$cbe7], a
    pop de
    dec e
    jp nz, Jump_002_4a40

    ret


Call_002_4b0a:
    ld hl, $6c9a
    ld a, $12
    call BankSwitchCallHL
    ld hl, $6c75
    ld a, $12
    call BankSwitchCallHL
    ret


Call_002_4b1b:
    push hl
    push bc
    dec hl
    dec hl
    push de
    ldh a, [$ffa6]
    cp $03
    jp z, Jump_002_4b45

    ld a, [hl]
    cp $49
    jr z, jr_002_4b32

    inc a
    ld [hl], a

jr_002_4b2e:
    pop de
    pop bc
    pop hl
    ret


jr_002_4b32:
    push hl
    ld a, $43
    ld [hl+], a
    ld a, $48
    ld [hl], a
    ld hl, $b93a
    ld bc, $0001
    call Call_000_0cce
    pop hl
    jr jr_002_4b2e

Jump_002_4b45:
    push hl
    ld a, $43
    ld [hl+], a
    ld a, $48
    ld [hl], a
    pop hl
    jr jr_002_4b2e

    ret


    ld b, b
    ld c, b
    ld b, b
    ld c, b
    ld b, c
    ld c, c
    ld b, c
    ld c, c
    ld b, c

Call_002_4b59:
    push hl
    push bc
    dec hl
    dec hl
    ldh a, [$ffa6]
    cp $00
    jp nz, Jump_002_4ba5

    push de
    ld a, [hl]
    cp $98
    jr z, jr_002_4b96

    inc a
    ld [hl], a
    sub $90
    push hl
    ld hl, $4b50
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld b, h
    ld c, l
    ld a, [hl]
    and $08
    jr nz, jr_002_4b82

    ld a, [hl]
    jr jr_002_4b8f

jr_002_4b82:
    ld a, $01
    ldh [$ffa8], a
    pop hl
    ld a, [hl]
    inc a
    ld [hl], a
    sub $90
    push hl
    inc bc
    ld a, [bc]

jr_002_4b8f:
    pop hl
    inc hl
    ld [hl-], a
    pop de
    pop bc
    pop hl
    ret


jr_002_4b96:
    ld a, $11
    ld [hl+], a
    xor a
    ld [hl], a
    ld bc, $003c
    call Call_000_1162
    pop de
    pop bc
    pop hl
    ret


Jump_002_4ba5:
    ld a, $11
    ld [hl+], a
    xor a
    ld [hl], a
    pop bc
    pop hl
    ret


Call_002_4bad:
    push hl
    push bc
    dec hl
    dec hl
    ldh a, [$ffa6]
    cp $00
    jp nz, Jump_002_4ba5

    push de
    ld a, [hl]
    cp $ac
    jr z, jr_002_4bea

    inc a
    ld [hl], a
    sub $a0
    push hl
    ld hl, $4bf9
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld b, h
    ld c, l
    ld a, [hl]
    and $08
    jr nz, jr_002_4bd6

    ld a, [hl]
    jr jr_002_4be3

jr_002_4bd6:
    ld a, $01
    ldh [$ffa8], a
    pop hl
    ld a, [hl]
    inc a
    ld [hl], a
    sub $a0
    push hl
    inc bc
    ld a, [bc]

jr_002_4be3:
    pop hl
    inc hl
    ld [hl-], a
    pop de
    pop bc
    pop hl
    ret


jr_002_4bea:
    ld a, $11
    ld [hl+], a
    xor a
    ld [hl], a
    ld bc, $0050
    call Call_000_1162
    pop de
    pop bc
    pop hl
    ret


    ld b, b
    ld c, b
    ld b, b
    ld c, b
    ld b, b
    ld c, b
    ld b, c
    ld c, c
    ld b, c
    ld c, c
    ld b, c
    ld c, c
    ld b, c

Call_002_4c06:
    push hl
    push bc
    dec hl
    dec hl
    ldh a, [$ffa6]
    cp $01
    jp nz, Jump_002_4ba5

    push de
    ld a, [hl]
    cp $60
    jr z, jr_002_4c43

    inc a
    ld [hl], a
    sub $50
    push hl
    ld hl, $4c53
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld b, h
    ld c, l
    ld a, [hl]
    and $08
    jr nz, jr_002_4c2f

    ld a, [hl]
    jr jr_002_4c3c

jr_002_4c2f:
    ld a, $01
    ldh [$ffa8], a
    pop hl
    ld a, [hl]
    inc a
    ld [hl], a
    sub $50
    push hl
    inc bc
    ld a, [bc]

jr_002_4c3c:
    pop hl
    inc hl
    ld [hl-], a

jr_002_4c3f:
    pop de
    pop bc
    pop hl
    ret


jr_002_4c43:
    push hl
    ld a, $5c
    ld [hl+], a
    ld a, $41
    ld [hl], a
    ld bc, $0064
    call Call_000_1162
    pop hl
    jr jr_002_4c3f

    ld b, b
    ld c, b
    ld b, b
    ld c, b
    ld b, c
    ld c, c
    ld b, c
    ld c, c
    ld b, c
    ld c, c
    ld b, c
    ld c, c
    ld b, c
    ld c, c
    ld b, c
    ld c, c
    ld b, c

Call_002_4c64:
    push hl
    push bc
    dec hl
    dec hl
    ldh a, [$ffa6]
    cp $01
    jp nz, Jump_002_4ba5

    push de
    ld a, [hl]
    cp $88
    jr z, jr_002_4ca1

    inc a
    ld [hl], a
    sub $70
    push hl
    ld hl, $4cb1
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld b, h
    ld c, l
    ld a, [hl]
    and $08
    jr nz, jr_002_4c8d

    ld a, [hl]
    jr jr_002_4c9a

jr_002_4c8d:
    ld a, $01
    ldh [$ffa8], a
    pop hl
    ld a, [hl]
    inc a
    ld [hl], a
    sub $70
    push hl
    inc bc
    ld a, [bc]

jr_002_4c9a:
    pop hl
    inc hl
    ld [hl-], a

jr_002_4c9d:
    pop de
    pop bc
    pop hl
    ret


jr_002_4ca1:
    push hl
    ld a, $82
    ld [hl+], a
    ld a, $41
    ld [hl], a
    ld bc, $0078
    call Call_000_1162
    pop hl
    jr jr_002_4c9d

    ld b, b
    ld c, b
    ld b, b
    ld c, b
    ld b, b
    ld c, b
    ld b, c
    ld c, c
    ld b, c
    ld c, c
    ld b, c
    ld c, c
    ld b, c
    ld c, c
    ld b, c
    ld c, c
    ld b, c
    ld c, c
    ld b, c
    ld c, c
    ld b, c
    ld c, c
    ld b, c
    ld c, c
    ld b, c

Call_002_4cca:
    push hl
    push bc
    dec hl
    dec hl
    ldh a, [$ffa6]
    cp $02
    jp nz, Jump_002_4ba5

    push de
    ld a, [hl]
    cp $b8
    jr z, jr_002_4d07

    inc a
    ld [hl], a
    sub $b0
    push hl
    ld hl, $4d16
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld b, h
    ld c, l
    ld a, [hl]
    and $08
    jr nz, jr_002_4cf3

    ld a, [hl]
    jr jr_002_4d00

jr_002_4cf3:
    ld a, $01
    ldh [$ffa8], a
    pop hl
    ld a, [hl]
    inc a
    ld [hl], a
    sub $b0
    push hl
    inc bc
    ld a, [bc]

jr_002_4d00:
    pop hl
    inc hl
    ld [hl-], a
    pop de
    pop bc
    pop hl
    ret


jr_002_4d07:
    ld a, $11
    ld [hl+], a
    xor a
    ld [hl], a
    ld bc, $003c
    call Call_000_1162
    pop de
    pop bc
    pop hl
    ret


    ld b, b
    ld c, b
    ld b, b
    ld c, b
    ld b, c
    ld c, c
    ld b, c
    ld c, c
    ld b, c

Call_002_4d1f:
    push hl
    push bc
    dec hl
    dec hl
    ldh a, [$ffa6]
    cp $02
    jp nz, Jump_002_4ba5

    push de
    ld a, [hl]
    cp $cc
    jr z, jr_002_4d5c

    inc a
    ld [hl], a
    sub $c0
    push hl
    ld hl, $4d6b
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld b, h
    ld c, l
    ld a, [hl]
    and $08
    jr nz, jr_002_4d48

    ld a, [hl]
    jr jr_002_4d55

jr_002_4d48:
    ld a, $01
    ldh [$ffa8], a
    pop hl
    ld a, [hl]
    inc a
    ld [hl], a
    sub $c0
    push hl
    inc bc
    ld a, [bc]

jr_002_4d55:
    pop hl
    inc hl
    ld [hl-], a
    pop de
    pop bc
    pop hl
    ret


jr_002_4d5c:
    ld a, $11
    ld [hl+], a
    xor a
    ld [hl], a
    ld bc, $003c
    call Call_000_1162
    pop de
    pop bc
    pop hl
    ret


    ld b, b
    ld c, b
    ld b, b
    ld c, b
    ld b, b
    ld c, b
    ld b, c
    ld c, c
    ld b, c
    ld c, c
    ld b, c
    ld c, c
    ld b, c

Call_002_4d78:
    push hl
    push bc
    dec hl
    dec hl
    ldh a, [$ffa6]
    cp $03
    jp nz, Jump_002_4ba5

    push de
    ld a, [hl]
    cp $dc
    jr z, jr_002_4db5

    inc a
    ld [hl], a
    sub $d0
    push hl
    ld hl, $4dc4
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld b, h
    ld c, l
    ld a, [hl]
    and $08
    jr nz, jr_002_4da1

    ld a, [hl]
    jr jr_002_4dae

jr_002_4da1:
    ld a, $01
    ldh [$ffa8], a
    pop hl
    ld a, [hl]
    inc a
    ld [hl], a
    sub $d0
    push hl
    inc bc
    ld a, [bc]

jr_002_4dae:
    pop hl
    inc hl
    ld [hl-], a
    pop de
    pop bc
    pop hl
    ret


jr_002_4db5:
    ld a, $11
    ld [hl+], a
    xor a
    ld [hl], a
    ld bc, $0078
    call Call_000_1162
    pop de
    pop bc
    pop hl
    ret


    ld b, b
    ld c, b
    ld b, b
    ld c, b
    ld b, b
    ld c, b
    ld b, c
    ld c, c
    ld b, c
    ld c, c
    ld b, c
    ld c, c
    ld b, c

Call_002_4dd1:
    push hl
    push bc
    dec hl
    dec hl
    ldh a, [$ffa6]
    cp $03
    jp nz, Jump_002_4ba5

    push de
    ld a, [hl]
    cp $f0
    jr z, jr_002_4e0e

    inc a
    ld [hl], a
    sub $e0
    push hl
    ld hl, $4e1e
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld b, h
    ld c, l
    ld a, [hl]
    and $08
    jr nz, jr_002_4dfa

    ld a, [hl]
    jr jr_002_4e07

jr_002_4dfa:
    ld a, $01
    ldh [$ffa8], a
    pop hl
    ld a, [hl]
    inc a
    ld [hl], a
    sub $e0
    push hl
    inc bc
    ld a, [bc]

jr_002_4e07:
    pop hl
    inc hl
    ld [hl-], a

jr_002_4e0a:
    pop de
    pop bc
    pop hl
    ret


jr_002_4e0e:
    push hl
    ld a, $ec
    ld [hl+], a
    ld a, $41
    ld [hl], a
    ld bc, $0078
    call Call_000_1162
    pop hl
    jr jr_002_4e0a

    ld b, b
    ld c, b
    ld b, b
    ld c, b
    ld b, c
    ld c, c
    ld b, c
    ld c, c
    ld b, c
    ld c, c
    ld b, c
    ld c, c
    ld b, c
    ld c, c
    ld b, c
    ld c, c
    ld b, c

Call_002_4e2f:
    ld a, [$cbe2]
    ld l, a
    ld a, [$cbe3]
    ld h, a
    call Call_000_325c
    ld hl, $9928
    ld a, [$ccce]
    inc a
    ld [hl+], a
    ld a, [$cccf]
    inc a
    ld [hl+], a
    ld a, [$ccd0]
    inc a
    ld [hl+], a
    ld a, [$ccd1]
    inc a
    ld [hl], a
    ret


Call_002_4e52:
    ld a, [$cbe6]
    ld l, a
    ld a, [$cbe7]
    ld h, a
    call Call_000_325c
    ld hl, $9989
    ld a, [$cccf]
    inc a
    ld [hl+], a
    ld a, [$ccd0]
    inc a
    ld [hl+], a
    ld a, [$ccd1]
    inc a
    ld [hl], a
    ret


Call_002_4e70:
    ld a, [$ccc7]
    ld l, a
    ld h, $00
    call Call_000_325c
    ld hl, $99e9
    ld a, [$cccf]
    inc a
    ld [hl+], a
    ld a, [$ccd0]
    inc a
    ld [hl+], a
    ld a, [$ccd1]
    inc a
    ld [hl], a
    ret


    push hl
    inc hl
    ld b, h
    ld c, l
    pop hl
    ld a, [bc]
    cp $28
    jr nc, jr_002_4ea1

    cp $27
    jr c, jr_002_4ea7

    ld a, [hl]
    cp $10
    jr nc, jr_002_4ea1

    jr jr_002_4ea7

jr_002_4ea1:
    ld a, $0f
    ld [hl], a
    ld a, $27
    ld [bc], a

jr_002_4ea7:
    ret


Call_002_4ea8:
    ld a, [$cbe4]
    or a
    jr nz, jr_002_4ecb

    ld a, [$cbe5]
    ld b, a
    or a
    ret z

    cp $18
    jr nc, jr_002_4ecb

    ld a, [$b882]
    cp $06
    jr c, jr_002_4ec5

    add b
    cp $1e
    jr nc, jr_002_4ecb

    ret


jr_002_4ec5:
    add b
    cp $06
    jr nc, jr_002_4ecb

    ret


jr_002_4ecb:
    ld a, [$b93d]
    ld c, a
    ld a, [$b93e]
    ld b, a
    ld hl, $b8ef
    call Call_000_0cbb
    xor a
    ld [$b93d], a
    ld [$b93e], a
    ret


Call_002_4ee1:
    ld hl, sMapObjectLocation
    ld bc, $0c40

jr_002_4ee7:
    ld a, [hli]
    ld e, a
    ld a, [hli]
    ld d, a
    and $40
    jr z, jr_002_4f5d

    ld a, e
    and $f0
    cp $40
    jr nz, jr_002_4efb

    call Call_002_4f9b
    jr jr_002_4f5d

jr_002_4efb:
    cp $50
    jr z, jr_002_4f05

    cp $60
    jr z, jr_002_4f05

    jr jr_002_4f0a

jr_002_4f05:
    call Call_002_4fb0
    jr jr_002_4f5d

jr_002_4f0a:
    cp $70
    jr z, jr_002_4f14

    cp $80
    jr z, jr_002_4f14

    jr jr_002_4f19

jr_002_4f14:
    call Call_002_4fb8
    jr jr_002_4f5d

jr_002_4f19:
    cp $90
    jr z, jr_002_4f1f

    jr jr_002_4f24

jr_002_4f1f:
    call Call_002_4fc1
    jr jr_002_4f5d

jr_002_4f24:
    cp $a0
    jr z, jr_002_4f2a

    jr jr_002_4f2f

jr_002_4f2a:
    call Call_002_4fca
    jr jr_002_4f5d

jr_002_4f2f:
    cp $b0
    jr z, jr_002_4f35

    jr jr_002_4f3a

jr_002_4f35:
    call Call_002_4fd3
    jr jr_002_4f5d

jr_002_4f3a:
    cp $c0
    jr z, jr_002_4f40

    jr jr_002_4f45

jr_002_4f40:
    call Call_002_4fdc
    jr jr_002_4f5d

jr_002_4f45:
    cp $d0
    jr z, jr_002_4f4b

    jr jr_002_4f50

jr_002_4f4b:
    call Call_002_4fe5
    jr jr_002_4f5d

jr_002_4f50:
    cp $e0
    jr z, jr_002_4f5a

    cp $f0
    jr z, jr_002_4f5a

    jr jr_002_4f5d

jr_002_4f5a:
    call Call_002_4fee

jr_002_4f5d:
    call Call_002_4f68
    dec bc
    ld a, b
    or c
    cp $00
    jr nz, jr_002_4ee7

    ret


Call_002_4f68:
    ld a, [$b8a0]
    cp $01
    jr z, jr_002_4f89

    cp $03
    jr z, jr_002_4f89

    cp $02
    jr z, jr_002_4f89

    push hl
    push bc
    dec hl
    ld a, [hl-]
    cp $00
    jr nz, jr_002_4f98

    ld a, [hl]
    cp $12
    jr nz, jr_002_4f98

    dec a
    ld [hl], a
    pop bc
    pop hl
    ret


jr_002_4f89:
    push hl
    push bc
    dec hl
    ld a, [hl-]
    cp $00
    jr nz, jr_002_4f98

    ld a, [hl]
    cp $11
    jr nz, jr_002_4f98

    inc a
    ld [hl], a

jr_002_4f98:
    pop bc
    pop hl
    ret


Call_002_4f9b:
    ld a, [$b884]
    cp $03
    jr z, jr_002_4fa3

    ret


jr_002_4fa3:
    push hl
    push bc
    dec hl
    dec hl
    ld a, $43
    ld [hl+], a
    ld a, $48
    ld [hl], a
    pop bc
    pop hl
    ret


Call_002_4fb0:
    ld a, [$b884]
    cp $01
    jr nz, jr_002_4ff7

    ret


Call_002_4fb8:
    ld a, [$b884]
    cp $01
    jp nz, Jump_002_4ff7

    ret


Call_002_4fc1:
    ld a, [$b884]
    cp $00
    jp nz, Jump_002_4ff7

    ret


Call_002_4fca:
    ld a, [$b884]
    cp $00
    jp nz, Jump_002_4ff7

    ret


Call_002_4fd3:
    ld a, [$b884]
    cp $02
    jp nz, Jump_002_4ff7

    ret


Call_002_4fdc:
    ld a, [$b884]
    cp $02
    jp nz, Jump_002_4ff7

    ret


Call_002_4fe5:
    ld a, [$b884]
    cp $03
    jp nz, Jump_002_4ff7

    ret


Call_002_4fee:
    ld a, [$b884]
    cp $03
    jp nz, Jump_002_4ff7

    ret


Jump_002_4ff7:
jr_002_4ff7:
    push hl
    push bc
    dec hl
    xor a
    ld [hl-], a
    ld a, $11
    ld [hl], a
    pop bc
    pop hl
    ret


Call_002_5002:
    ld a, [$b9d7]
    cp $5a
    jr nc, jr_002_5016

    cp $3c
    jr nc, jr_002_501d

    cp $1e
    jr nc, jr_002_5023

    xor a
    ld [$ccc6], a
    ret


jr_002_5016:
    ld a, [$cbdc]
    ld [$ccc6], a
    ret


jr_002_501d:
    ld a, $1d
    ld [$ccc6], a
    ret


jr_002_5023:
    ld a, $06
    ld [$ccc6], a
    ret


    ld a, h
    ld c, [hl]
    add h
    nop
    or d
    add hl, sp
    ld a, a
    ld b, a
    ld a, h
    ld c, [hl]
    add h
    nop
    ld [hl], a
    dec b
    ld a, a
    ld b, a
    push hl
    push af
    ld l, $8d
    ld h, $78
    ld a, $1f
    call BankSwitchCallHL
    pop af
    pop hl
    push hl
    push af
    ld l, $eb
    ld h, $6b
    ld a, $20
    call BankSwitchCallHL
    pop af
    pop hl
    ld hl, $5029
    call Call_000_03e9
    ld hl, $5031
    call Call_000_03fb
    call Call_000_228a
    call ZeroOutVRAM
    call Call_000_323d
    di
    ld a, [$cb92]
    cp $ff
    call z, Call_000_0de8
    xor a
    ld [$c800], a
    ld [$c820], a
    ld [$c840], a
    ld [$c860], a
    ld [$c880], a
    ld [$c8a0], a
    ld [$c8c0], a
    ld [$c8e0], a
    ld [$c880], a
    ld [$c860], a
    ld [$c8a0], a
    ld [$c8c0], a
    ld [$c8e0], a
    ld [$c8c0], a
    ld [$c820], a
    ld a, [sInventory]
    cp $16
    jr z, jr_002_50ec

    ld a, [sInventory+1]
    cp $16
    jr z, jr_002_50ec

    ld a, [$b8fa]
    cp $16
    jr z, jr_002_50ec

    ld a, [$b911]
    cp $01
    jr nz, jr_002_50ec

    xor a
    ld [$b897], a
    ld a, $01
    ld [$b8a9], a
    ld a, [$b8a5]
    or a
    jr nz, jr_002_50da

    ld a, [sInventory]
    cp HAMMER
    jr z, jr_002_50e0

    ld a, [sInventory+1]
    cp HAMMER
    jr z, jr_002_50e7

    jr jr_002_50ec

jr_002_50da:
    xor a
    ld [$b8a5], a
    jr jr_002_50ec

jr_002_50e0:
    ld a, NO_ITEM
    ld [sInventory], a
    jr jr_002_50ec

jr_002_50e7:
    ld a, NO_ITEM
    ld [sInventory+1], a

jr_002_50ec:
    ld hl, $70ae
    ld c, $02
    ld de, $8800
    call Call_000_31a0
    ld hl, $785b
    ld c, $11
    ld de, $9000
    call Call_000_31a0
    ld hl, $66d8
    ld c, $17
    ld de, $8000
    call Call_000_31a0
    ld a, $af
    ld [$cb5c], a
    ld a, $ae
    ld [$cb5d], a
    ld [$cb5e], a
    xor a
    ld [$cb56], a
    ld [$cb52], a
    ld [$cb76], a
    ld [$cb78], a
    ld [$cb7a], a
    ld [$cb7b], a
    ld [$cb7c], a
    ld [$cb84], a
    ld [$cb82], a
    ld [$cb89], a
    ld [$cb4a], a
    ld [$c620], a
    ld [$c90d], a
    ld [$cb91], a
    ld [$cb85], a
    ld [$cb8e], a
    di
    call Call_002_6084
    xor a
    ld [$c780], a
    ld a, [$b911]
    ld [$cbe8], a
    ld a, $01
    ld [$cb81], a
    ld a, [$b8d1]
    and a
    jp z, Jump_002_5191

    ld de, $8a40
    ld hl, $8dc0
    ld b, $10
    call CopyHLtoDE
    ld de, $8a50
    ld hl, $8dd0
    ld b, $10
    call CopyHLtoDE
    ld de, $8b40
    ld hl, $8ec0
    ld b, $10
    call CopyHLtoDE
    ld de, $8b50
    ld hl, $8ed0
    ld b, $10
    call CopyHLtoDE

Jump_002_5191:
    ld a, [$cbe8]
    cp $00
    jr z, jr_002_51d1

    cp $01
    jr z, jr_002_51f2

    ld hl, $780c
    ld c, $17
    ld de, $9800
    call Call_000_31a0
    ld c, $4f
    ld a, $01
    ldh [c], a
    ld hl, $6994
    ld c, $20
    ld de, $9800
    call Call_000_31a0
    ld c, $4f
    xor a
    ldh [c], a
    ld a, $34
    ld [$9835], a
    ld a, $35
    ld [$9836], a
    ld a, $34
    ld [$9855], a
    ld a, $35
    ld [$9856], a
    jr jr_002_5211

jr_002_51d1:
    ld hl, $7bff
    ld c, $07
    ld de, $9800
    call Call_000_31a0
    ld c, $4f
    ld a, $01
    ldh [c], a
    ld hl, $6840
    ld c, $20
    ld de, $9800
    call Call_000_31a0
    ld c, $4f
    xor a
    ldh [c], a
    jr jr_002_5211

jr_002_51f2:
    ld hl, $7d4b
    ld c, $07
    ld de, $9800
    call Call_000_31a0
    ld c, $4f
    ld a, $01
    ldh [c], a
    ld hl, $68e8
    ld c, $20
    ld de, $9800
    call Call_000_31a0
    ld c, $4f
    xor a
    ldh [c], a

jr_002_5211:
    ld a, $22
    ld [$b90c], a
    xor a
    ld [$4000], a
    ld a, $d8
    ld [$b90d], a
    ld a, $00
    ld [$b90e], a
    ld a, $07
    ldh [$ff96], a
    ld a, $68
    ldh [$ff95], a
    ld a, $1d
    ld [$cb4e], a
    ld a, $ff
    ld [$cb77], a
    call Call_000_11c2
    call Call_002_672f
    call Call_002_65b6
    call $6492
    call Call_000_070b
    ld a, $83
    ld [$c0a2], a
    ld c, $4f
    ld a, $01
    ldh [c], a
    ld d, $99
    ld a, [$b904]
    cp $00
    jr z, jr_002_5264

    ld b, a
    ld hl, $526a

jr_002_525c:
    ld a, [hl+]
    ld e, a
    ld a, $05
    ld [de], a
    dec b
    jr nz, jr_002_525c

jr_002_5264:
    ld c, $4f
    xor a
    ldh [c], a
    jr jr_002_5271

    ld h, c
    ld h, d
    add c
    add d
    and c
    and d
    pop bc

jr_002_5271:
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
    call Call_000_3dfd
    ld a, $40
    ldh [rSTAT], a
    ld a, $66
    ldh [rLYC], a
    xor a
    ldh [rIF], a
    ld a, $03
    ldh [rIE], a
    call Call_000_0ece
    ret


    push hl
    push af
    ld l, $18
    ld h, $5c
    ld a, $20
    call BankSwitchCallHL
    pop af
    pop hl
    call Call_000_0d90
    xor a
    ld [wPlayerMovementX], a
    ld [wPlayerMovementY], a
    call Call_002_52d6
    call Call_002_5356
    call Call_002_5913
    call Call_000_3cf8
    call Call_002_5e51
    call Call_002_5433
    call Call_000_2d67
    call Call_000_36f4
    call Call_002_6694
    call Call_000_0ec5
    ret


Call_002_52d6:
    ld a, [$b89c]
    cp $01
    jr z, jr_002_52e9

    ld a, [$b8ea]
    cp $00
    jr z, jr_002_52e9

    ld a, $01
    ld [$b88d], a

jr_002_52e9:
    ld a, [$ba43]
    cp $02
    jr z, jr_002_52f5

    ld a, $11
    ld [$b88d], a

jr_002_52f5:
    ld a, [$b88d]
    or a
    ret z

    ld a, [$b88d]
    cp $11
    jr z, jr_002_5315

    ld a, [$c912]
    or a
    ret nz

    ld a, $18
    ld [$c911], a
    xor a
    ld [$c90f], a
    ld a, $01
    ld [$c912], a
    ret


jr_002_5315:
    ld a, [$c912]
    or a
    ret nz

    xor a
    ld [$b88d], a
    ld a, $18
    ld [$c911], a
    ld a, $03
    ld [$c90f], a
    ld a, $01
    ld [$c912], a
    ret


    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop

Call_002_5356:
    ld a, [$cb73]
    or a
    ret z

    dec a
    ld [$cb73], a
    ld a, [$cb73]
    cp $4f
    jr z, jr_002_5378

    cp $3c
    jr nc, jr_002_537e

    cp $3b
    jr z, jr_002_53bd

    cp $2e
    jr nc, jr_002_53e5

    cp $00
    jp z, Jump_002_540a

    ret


jr_002_5378:
    ld a, $01
    call Call_000_151d
    ret


jr_002_537e:
    ld a, [$c60b]
    cp $45
    jr z, jr_002_5398

    cp $44
    jr z, jr_002_5398

    cp $43
    jr z, jr_002_5398

    dec a
    ld [$c60b], a
    ld a, [$c608]
    dec a
    ld [$c608], a

jr_002_5398:
    ld a, [$cb73]
    sub $3c
    ld hl, $532e
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ld b, a
    ld a, [$c60a]
    add b
    ld [$c60a], a
    ld a, b
    or a
    ret z

    ld a, b
    ld c, a
    ld b, $ff
    ld hl, $c606
    call Call_000_0cce
    ret


jr_002_53bd:
    ld a, $53
    call Call_000_151d
    ld a, [$c60a]
    add $ff
    ld [$c60a], a
    ld a, [$c60b]
    add $f3
    ld [$c60b], a
    ld hl, $c606
    ld bc, $ffff
    call Call_000_0cce
    ld hl, $c608
    ld bc, $fff3
    call Call_000_0cce
    ret


jr_002_53e5:
    ld a, [$cb73]
    sub $2e
    ld hl, $5346
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ld b, a
    ld a, [$c60a]
    add b
    ld [$c60a], a
    ld a, b
    or a
    ret z

    ld a, b
    ld c, a
    ld b, $ff
    ld hl, $c606
    call Call_000_0cce
    ret


Jump_002_540a:
    ld a, $02
    ld [$cb50], a
    ld a, $1d
    ld a, $01
    ld [$cb4f], a
    ld a, $01
    ld [$c910], a
    ld a, $01
    ld [$c60d], a
    ld a, [sCurrentDayCounter]
    ld [$b901], a
    ld a, [$b882]
    ld [$b902], a
    ld a, [$b881]
    ld [$b903], a
    ret


Call_002_5433:
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

    call Call_002_5882
    call Call_000_0e54
    ld a, [$cb73]
    or a
    ret nz

    ldh a, [$ff8b]
    and $01
    jr z, jr_002_5462

    ld hl, $527d
    ld a, $01
    call BankSwitchCallHL
    ret


jr_002_5462:
    ldh a, [$ff8a]
    and $02
    jr z, jr_002_546c

    call Call_002_5599
    ret


jr_002_546c:
    ldh a, [$ff8b]
    and $08
    jr z, jr_002_5476

    call Call_000_1923
    ret


jr_002_5476:
    ldh a, [$ff8a]
    and $80
    jp nz, Jump_002_549d

    ldh a, [$ff8a]
    and $40
    jp nz, Jump_002_54dc

    ldh a, [$ff8a]
    and $20
    jp nz, Jump_002_551b

    ldh a, [$ff8a]
    and $10
    jp nz, Jump_002_555a

    ld a, [$c912]
    or a
    ret nz

    ld a, $00
    call RST_TableJumpBankSwitch
    ret


Jump_002_549d:
    call Call_002_70a3
    ld a, $00
    ld [$c60d], a
    ld a, $01
    call RST_TableJumpBankSwitch
    ld de, $0004
    call Call_000_19aa
    ld a, [$cb89]
    or a
    ret nz

    call Call_000_14f9
    ld a, [wLeftOrDownSideFacingTile]
    ld b, a
    ld a, [wRightOrUpSideFacingTile]
    or b
    and $01
    jr z, jr_002_54d8

    ld a, $01
    ld [$c90e], a
    ld a, b
    and $01
    jp z, Jump_002_56f0

    ld a, [wRightOrUpSideFacingTile]
    and $01
    jp z, Jump_002_5703

    ret


jr_002_54d8:
    call Call_002_573c
    ret


Jump_002_54dc:
    call Call_002_70a3
    ld a, $03
    ld [$c60d], a
    ld a, $01
    call RST_TableJumpBankSwitch
    ld de, $00fc
    call Call_000_19aa
    ld a, [$cb89]
    or a
    ret nz

    call Call_000_1502
    ld a, [wLeftOrDownSideFacingTile]
    ld b, a
    ld a, [wRightOrUpSideFacingTile]
    or b
    and $01
    jr z, jr_002_5517

    ld a, $01
    ld [$c90e], a
    ld a, b
    and $01
    jp z, Jump_002_56f0

    ld a, [wRightOrUpSideFacingTile]
    and $01
    jp z, Jump_002_5703

    ret


jr_002_5517:
    call Call_002_578a
    ret


Jump_002_551b:
    call Call_002_70a3
    ld a, $01
    ld [$c60d], a
    ld a, $01
    call RST_TableJumpBankSwitch
    ld de, $fc00
    call Call_000_19aa
    ld a, [$cb89]
    or a
    ret nz

    call Call_000_150b
    ld a, [wLeftOrDownSideFacingTile]
    ld b, a
    ld a, [wRightOrUpSideFacingTile]
    or b
    and $01
    jr z, jr_002_5556

    ld a, $01
    ld [$c90e], a
    ld a, b
    and $01
    jp z, Jump_002_5716

    ld a, [wRightOrUpSideFacingTile]
    and $01
    jp z, Jump_002_5729

    ret


jr_002_5556:
    call Call_002_57b8
    ret


Jump_002_555a:
    call Call_002_70a3
    ld a, $02
    ld [$c60d], a
    ld a, $01
    call RST_TableJumpBankSwitch
    ld de, $0400
    call Call_000_19aa
    ld a, [$cb89]
    or a
    ret nz

    call Call_000_1514
    ld a, [wLeftOrDownSideFacingTile]
    ld b, a
    ld a, [wRightOrUpSideFacingTile]
    or b
    and $01
    jr z, jr_002_5595

    ld a, $01
    ld [$c90e], a
    ld a, b
    and $01
    jp z, Jump_002_5716

    ld a, [wRightOrUpSideFacingTile]
    and $01
    jp z, Jump_002_5729

    ret


jr_002_5595:
    call Call_002_5824
    ret


Call_002_5599:
    ld a, [$c603]
    and $01
    jr z, jr_002_55ac

    ld a, [$c605]
    cp $08
    jr nz, jr_002_55ac

    ld a, $34
    call Call_000_25ce

jr_002_55ac:
    ldh a, [$ff8a]
    and $80
    jr nz, jr_002_55c6

    ldh a, [$ff8a]
    and $20
    jr nz, jr_002_55ca

    ldh a, [$ff8a]
    and $10
    jr nz, jr_002_55ce

    ldh a, [$ff8a]
    and $40
    jr nz, jr_002_55d2

    jr jr_002_55da

jr_002_55c6:
    ld a, $00
    jr jr_002_55d4

jr_002_55ca:
    ld a, $01
    jr jr_002_55d4

jr_002_55ce:
    ld a, $02
    jr jr_002_55d4

jr_002_55d2:
    ld a, $03

jr_002_55d4:
    ld [$c60d], a
    call Call_002_70a3

jr_002_55da:
    ld a, [$c60d]
    cp $00
    jp z, Jump_002_562d

    cp $01
    jp z, Jump_002_566e

    cp $02
    jp z, Jump_002_56af

    ld a, [$cb8b]
    or a
    jp nz, Jump_002_54dc

    ld a, $02
    call RST_TableJumpBankSwitch
    ld de, $00fc
    call Call_000_19aa
    ld a, [$cb89]
    or a
    ret nz

    call Call_000_1502
    ld a, [wLeftOrDownSideFacingTile]
    ld b, a
    ld a, [wRightOrUpSideFacingTile]
    or b
    and $01
    jr z, jr_002_5626

    ld a, $01
    ld [$c90e], a
    ld a, b
    and $01
    jp z, Jump_002_56f0

    ld a, [wRightOrUpSideFacingTile]
    and $01
    jp z, Jump_002_5703

    ret


jr_002_5626:
    call Call_002_578a
    call Call_002_578a
    ret


Jump_002_562d:
    ld a, [$cb8b]
    or a
    jp nz, Jump_002_549d

    ld a, $02
    call RST_TableJumpBankSwitch
    ld de, $0004
    call Call_000_19aa
    ld a, [$cb89]
    or a
    ret nz

    call Call_000_14f9
    ld a, [wLeftOrDownSideFacingTile]
    ld b, a
    ld a, [wRightOrUpSideFacingTile]
    or b
    and $01
    jr z, jr_002_5667

    ld a, $01
    ld [$c90e], a
    ld a, b
    and $01
    jp z, Jump_002_56f0

    ld a, [wRightOrUpSideFacingTile]
    and $01
    jp z, Jump_002_5703

    ret


jr_002_5667:
    call Call_002_573c
    call Call_002_573c
    ret


Jump_002_566e:
    ld a, [$cb8b]
    or a
    jp nz, Jump_002_551b

    ld a, $02
    call RST_TableJumpBankSwitch
    ld de, $fc00
    call Call_000_19aa
    ld a, [$cb89]
    or a
    ret nz

    call Call_000_150b
    ld a, [wLeftOrDownSideFacingTile]
    ld b, a
    ld a, [wRightOrUpSideFacingTile]
    or b
    and $01
    jr z, jr_002_56a8

    ld a, $01
    ld [$c90e], a
    ld a, b
    and $01
    jp z, Jump_002_5716

    ld a, [wRightOrUpSideFacingTile]
    and $01
    jp z, Jump_002_5729

    ret


jr_002_56a8:
    call Call_002_57b8
    call Call_002_57b8
    ret


Jump_002_56af:
    ld a, [$cb8b]
    or a
    jp nz, Jump_002_555a

    ld a, $02
    call RST_TableJumpBankSwitch
    ld de, $0400
    call Call_000_19aa
    ld a, [$cb89]
    or a
    ret nz

    call Call_000_1514
    ld a, [wLeftOrDownSideFacingTile]
    ld b, a
    ld a, [wRightOrUpSideFacingTile]
    or b
    and $01
    jr z, jr_002_56e9

    ld a, $01
    ld [$c90e], a
    ld a, b
    and $01
    jp z, Jump_002_5716

    ld a, [wRightOrUpSideFacingTile]
    and $01
    jp z, Jump_002_5729

    ret


jr_002_56e9:
    call Call_002_5824
    call Call_002_5824
    ret


Jump_002_56f0:
    ld a, [$cb34]
    and $01
    ret nz

    call Call_000_150b
    ld a, [$cb34]
    and $01
    ret nz

    call Call_002_57b8
    ret


Jump_002_5703:
    ld a, [$cb34]
    and $01
    ret nz

    call Call_000_1514
    ld a, [$cb34]
    and $01
    ret nz

    call Call_002_5824
    ret


Jump_002_5716:
    ld a, [$cb34]
    and $01
    ret nz

    call Call_000_1502
    ld a, [$cb34]
    and $01
    ret nz

    call Call_002_578a
    ret


Jump_002_5729:
    ld a, [$cb34]
    and $01
    ret nz

    call Call_000_14f9
    ld a, [$cb34]
    and $01
    ret nz

    call Call_002_573c
    ret


Call_002_573c:
    xor a
    ld [$c90e], a
    ld a, [$c608]
    cp $83
    jr nc, jr_002_5764

    ld a, [$c608]
    cp $5c
    jr nc, jr_002_5750

    jr jr_002_575d

jr_002_5750:
    ld hl, wPlayerMovementY
    dec [hl]
    ld hl, $ff91
    inc [hl]

jr_002_5758:
    ld hl, $c608
    inc [hl]
    ret


jr_002_575d:
    ld hl, $c60b
    inc [hl]
    jr jr_002_5758

    ret


jr_002_5764:
    ld a, [$b8a0]
    cp $03
    jr z, jr_002_577f

    ld a, $18
    ld [$c911], a
    xor a
    ld [$c90f], a
    ld a, [$cb8b]
    or a
    ret z

    ld a, $01
    ld [$b8e1], a
    ret


jr_002_577f:
    ld a, $44
    call Call_000_3f52
    ld a, $00
    call RST_TableJumpBankSwitch
    ret


Call_002_578a:
    xor a
    ld [$c90e], a
    ld a, [$c608]
    cp $0e
    ret c

    ld a, [$c608]
    cp $5d
    jr nc, jr_002_57a4

    ld a, [$c608]
    cp $08
    jr c, jr_002_57b1

    jr jr_002_57b1

jr_002_57a4:
    ld hl, wPlayerMovementY
    inc [hl]
    ld hl, $ff91
    dec [hl]

jr_002_57ac:
    ld hl, $c608
    dec [hl]
    ret


jr_002_57b1:
    ld hl, $c60b
    dec [hl]
    jr jr_002_57ac

    ret


Call_002_57b8:
    xor a
    ld [$c90e], a
    ld a, [$c606]
    cp $18
    ret c

    ld a, [$cbe8]
    cp $00
    jr z, jr_002_57f6

    cp $01
    jr z, jr_002_57ff

    ld a, [$c606]
    cp $b9
    jr nc, jr_002_57ef

    ld a, [$c607]
    cp $00
    jr nz, jr_002_57e2

    ld a, [$c606]
    cp $59
    jr c, jr_002_57ef

jr_002_57e2:
    ld hl, wPlayerMovementX
    inc [hl]
    ld hl, $ff93
    dec [hl]

jr_002_57ea:
    ld hl, $c606
    dec [hl]
    ret


jr_002_57ef:
    ld hl, $c60a
    dec [hl]
    jr jr_002_57ea

    ret


jr_002_57f6:
    ld hl, $c606
    dec [hl]
    ld hl, $c60a
    dec [hl]
    ret


jr_002_57ff:
    ld a, [$c606]
    cp $99
    jr nc, jr_002_581d

    ld a, [$c607]
    cp $00
    jr nz, jr_002_5814

    ld a, [$c606]
    cp $59
    jr c, jr_002_581d

jr_002_5814:
    ld hl, $ff93
    dec [hl]

jr_002_5818:
    ld hl, $c606
    dec [hl]
    ret


jr_002_581d:
    ld hl, $c60a
    dec [hl]
    jr jr_002_5818

    ret


Call_002_5824:
    xor a
    ld [$c90e], a
    ld a, [$c606]
    cp $f8
    ret nc

    ld a, [$cbe8]
    cp $00
    jr z, jr_002_585b

    cp $01
    jr z, jr_002_5864

    ld a, [$c606]
    cp $b8
    jr nc, jr_002_5854

    ld a, [$c606]
    cp $58
    jr c, jr_002_5854

    ld hl, wPlayerMovementX
    dec [hl]
    ld hl, $ff93
    inc [hl]

jr_002_584f:
    ld hl, $c606
    inc [hl]
    ret


jr_002_5854:
    ld hl, $c60a
    inc [hl]
    jr jr_002_584f

    ret


jr_002_585b:
    ld hl, $c606
    inc [hl]
    ld hl, $c60a
    inc [hl]
    ret


jr_002_5864:
    ld a, [$c606]
    cp $98
    jr nc, jr_002_587b

    ld a, [$c606]
    cp $58
    jr c, jr_002_587b

    ld hl, $ff93
    inc [hl]

jr_002_5876:
    ld hl, $c606
    inc [hl]
    ret


jr_002_587b:
    ld hl, $c60a
    inc [hl]
    jr jr_002_5876

    ret


Call_002_5882:
    ld a, [$c911]
    or a
    ret z

    dec a
    ld [$c911], a
    cp $00
    jr z, jr_002_5891

    pop hl
    ret


jr_002_5891:
    ld a, [$c90f]
    cp $02
    jr z, jr_002_58cb

    ld a, [$c90f]
    cp $03
    jr z, jr_002_58ea

    ld a, [$c90f]
    or a
    jr z, jr_002_58b6

    ld a, $1b
    ld [$cb50], a
    ld a, $1d
    ld [$cb4f], a
    ld a, $02
    ld [$c910], a
    pop hl
    ret


jr_002_58b6:
    ld a, $01
    ld [$cb50], a
    ld a, $1d
    ld [$cb4f], a
    ld a, $00
    ld [$c910], a
    xor a
    ld [$c911], a
    pop hl
    ret


jr_002_58cb:
    pop hl
    ld a, $22
    ld [$cb50], a
    ld a, $1d
    ld [$cb4f], a
    ld a, $02
    ld [$c910], a
    xor a
    ld [$c911], a
    ld a, [$cb8b]
    or a
    ret z

    ld a, $01
    ld [$b8e1], a
    ret


jr_002_58ea:
    ld a, $0d
    ld [$cb50], a
    ld a, $1d
    ld [$cb4f], a
    ld a, $03
    ld [$c910], a
    xor a
    ld [$c911], a
    pop hl
    ret


    ld a, $00
    ld [$cb50], a
    ld a, $1d
    ld [$cb4f], a
    ld a, $03
    ld [$c910], a
    xor a
    ld [$c911], a
    ret


Call_002_5913:
    ld a, [$cb4f]
    or a
    ret nz

    ld a, [$cb8b]
    or a
    ret nz

    ld a, [$c90e]
    or a
    ret z

    ld a, [$cb34]
    and $02
    ret z

    ld a, [$cb56]
    or a
    ret nz

    ldh a, [$ff8b]
    and $01
    ret z

    ld a, [wRightOrUpSideFacingTileID]
    cp BIG_LOG_BOTTOM_LEFT_TILE
    jr z, jr_002_5978

    cp BUSH_TILE
    jr z, jr_002_5991

    cp STONE_TILE
    jr z, jr_002_599c

    cp BIG_STONE_TOP_LEFT_TILE
    jp z, Jump_002_59ee
; programming mistake?
    ret z

    cp $05
    jr z, jr_002_5983

    cp $06
    jr z, jr_002_59bd

    cp $07
    jr z, jr_002_59bd

    cp $08
    jp z, Jump_002_59bd

    cp $09
    jp z, Jump_002_59c8

    cp $0b
    jp z, Jump_002_5a08

    cp $0c
    jp z, Jump_002_5a1d

    cp $99
    jp z, Jump_002_5a2d

    ret


    ld a, $18
    ld [$c911], a
    ld a, $ff
    ld [$c90f], a
    ret


jr_002_5978:
    ld a, $05
    call Call_000_3f52
    ld a, $00
    call RST_TableJumpBankSwitch
    ret


jr_002_5983:
    ld a, $01
    ld [$c911], a
    ld a, $01
    ld [$c90f], a
    call Call_000_0f0f
    ret


jr_002_5991:
    ld a, $07
    call Call_000_3f52
    ld a, $00
    call RST_TableJumpBankSwitch
    ret


jr_002_599c:
    ld a, [$b885]
    inc a
    ld l, a
    ld h, $00
    call Call_000_325c
    ld a, [$ccd0]
    ld [$cbec], a
    ld a, [$ccd1]
    ld [$cbed], a
    ld a, $1d
    call Call_000_3f52
    ld a, $00
    call RST_TableJumpBankSwitch
    ret


Jump_002_59bd:
jr_002_59bd:
    ld a, $08
    call Call_000_3f52
    ld a, $00
    call RST_TableJumpBankSwitch
    ret


Jump_002_59c8:
    ld a, [$b8ff]
    or a
    jr nz, jr_002_59e3

    ld a, $01
    ld [$b8ff], a
    ld hl, $b8ef
    ld bc, $03e8
    call Call_000_0cbb
    call Call_000_1056
    ld a, $09
    jr jr_002_59e5

jr_002_59e3:
    ld a, $0a

jr_002_59e5:
    call Call_000_3f52
    ld a, $00
    call RST_TableJumpBankSwitch
    ret


Jump_002_59ee:
    ld a, $00
    call RST_TableJumpBankSwitch
    ld a, [$cb78]
    or a
    ret nz

    ld a, $80
    ld [$cb76], a
    ld a, $01
    ld [$cb78], a
    ld a, $10
    ld [$c912], a
    ret


Jump_002_5a08:
    ld a, [$b904]
    or a
    jr nz, jr_002_5a12

    ld a, $45
    jr jr_002_5a14

jr_002_5a12:
    ld a, $46

jr_002_5a14:
    call Call_000_3f52
    ld a, $00
    call RST_TableJumpBankSwitch
    ret


Jump_002_5a1d:
    ld a, [$b8d1]
    and a
    ret z

    ld a, $52
    call Call_000_3f52
    ld a, $00
    call RST_TableJumpBankSwitch
    ret


Jump_002_5a2d:
    ld a, [$c60d]
    cp $02
    jr z, jr_002_5a41

    cp $00
    jr z, jr_002_5a51

    cp $03
    jr z, jr_002_5a61

    cp $01
    jr z, jr_002_5a71

    ret


jr_002_5a41:
    ld a, $01
    ld [$c80d], a
    ld a, $0d
    call Call_000_152a
    ld a, $31
    call Call_000_3f52
    ret


jr_002_5a51:
    ld a, $03
    ld [$c80d], a
    ld a, $0f
    call Call_000_152a
    ld a, $31
    call Call_000_3f52
    ret


jr_002_5a61:
    ld a, $00
    ld [$c80d], a
    ld a, $0c
    call Call_000_152a
    ld a, $31
    call Call_000_3f52
    ret


jr_002_5a71:
    ld a, $02
    ld [$c80d], a
    ld a, $0e
    call Call_000_152a
    ld a, $31
    call Call_000_3f52
    ret


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
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $0000
    nop
    nop
    nop
    ld bc, $0000
    nop
    nop
    ld bc, $0001
    nop
    nop
    nop
    nop
    ld bc, $0000
    nop
    ld bc, $0100
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    nop
    ld [bc], a
    nop
    nop
    ld [bc], a
    nop
    nop
    ld [bc], a
    nop
    nop
    ld [bc], a
    nop
    nop
    ld [bc], a
    ld [bc], a
    nop
    nop
    ld [bc], a
    nop
    nop
    ld [bc], a
    nop
    nop
    ld [bc], a
    nop
    nop
    nop
    ld [bc], a
    nop
    nop

Call_002_5b01:
    call Call_002_5c27
    ld a, [sCurrentDayCounter]
    ld [$b88b], a
    ld a, [$b884]
    ld [$b88a], a
    ld a, [sCurrentDayCounter]
    inc a
    ld [$b88b], a
    cp $1e
    jr nz, jr_002_5b28

    xor a
    ld [$b88b], a
    ld a, [$b88a]
    inc a
    and $03
    ld [$b88a], a

jr_002_5b28:
    call Call_002_5be0
    ld a, [$b8a0]
    cp $03
    jr nz, jr_002_5b38

    ld a, $00
    ld [$b89f], a
    ret


jr_002_5b38:
    ld a, [$b88a]
    cp $01
    jr nz, jr_002_5b4f

    ld a, [$b8a2]
    ld b, a
    ld a, [$b88b]
    cp b
    jr nz, jr_002_5b4f

    ld a, $00
    ld [$b89f], a
    ret


jr_002_5b4f:
    ld a, [$b8a2]
    ld b, a
    ld a, [sCurrentDayCounter]
    cp b
    jr nz, jr_002_5b5f

    ld a, $00
    ld [$b89f], a
    ret


jr_002_5b5f:
    ld a, [$b88a]
    cp $00
    jp z, Jump_002_5b86

    cp $01
    jp z, Jump_002_5b9b

    cp $02
    jp z, Jump_002_5bcb

    call Call_000_0b37
    ldh a, [$ff9d]
    and $1f
    ld hl, $5ae1
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ld [$b89f], a
    ret


Jump_002_5b86:
    call Call_000_0b37
    ldh a, [$ff9d]
    and $1f
    ld hl, $5a81
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ld [$b89f], a
    ret


Jump_002_5b9b:
    ld a, [$b8a1]
    ld b, a
    ld a, [$b88b]
    cp b
    jr nz, jr_002_5bb6

    ld a, $03
    ld [$b89f], a
    ld a, [sCurrentDayCounter]
    ld [$ba4d], a
    ld a, $80
    ld [$b8a1], a
    ret


jr_002_5bb6:
    call Call_000_0b37
    ldh a, [$ff9d]
    and $1f
    ld hl, $5aa1
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ld [$b89f], a
    ret


Jump_002_5bcb:
    call Call_000_0b37
    ldh a, [$ff9d]
    and $1f
    ld hl, $5ac1
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ld [$b89f], a
    ret


Call_002_5be0:
    ld a, [$b893]
    or a
    jr nz, jr_002_5c20

    ld a, [$b88a]
    cp $01
    jr z, jr_002_5bfc

    ld a, [$b88a]
    cp $02
    jr z, jr_002_5c04

    ld a, [$b88a]
    cp $03
    jr z, jr_002_5c0c

    ret


jr_002_5bfc:
    ld a, [$b88b]
    cp $13
    jr z, jr_002_5c19

    ret


jr_002_5c04:
    ld a, [$b88b]
    cp $09
    jr z, jr_002_5c19

    ret


jr_002_5c0c:
    ld a, [$b885]
    or a
    ret nz

    ld a, [$b88b]
    cp $13
    jr z, jr_002_5c19

    ret


jr_002_5c19:
    ld a, $00
    ld [$b89f], a
    pop hl
    ret


jr_002_5c20:
    ld a, $00
    ld [$b8a0], a
    pop hl
    ret


Call_002_5c27:
    ld a, [$b884]
    or a
    ret nz

    ld a, [sCurrentDayCounter]
    cp $1b
    call z, Call_002_5c3e
    ld a, [sCurrentDayCounter]
    cp $1c
    call z, Call_002_5c54
    ret


    ret


Call_002_5c3e:
    ld a, [$b885]
    or a
    ret nz

    call Call_000_0b37
    ldh a, [$ff9d]
    ld l, a
    ld h, $00
    ld a, $0a
    call Call_000_09c9
    ld [$b8a2], a
    ret


Call_002_5c54:
    call Call_000_0b37
    ldh a, [$ff9d]
    ld l, a
    ld h, $00
    ld a, $1e
    call Call_000_09c9
    ld b, a
    ld a, [$b8a2]
    cp b
    jr nz, jr_002_5c69

    inc b

jr_002_5c69:
    ld a, b
    ld [$b8a1], a
    ld [$ba4c], a
    ret


    nop
    ld b, b
    ld bc, $0241
    ld b, d
    inc bc
    ld b, e
    db $10
    ld d, b
    ld de, $1251
    ld d, d
    inc de
    ld d, e
    nop
    ld b, b
    ld bc, $0441
    ld b, d
    dec b
    ld b, e
    db $10
    ld d, b
    ld de, $1451
    ld d, d
    dec d
    ld d, e
    nop
    ld b, b
    ld bc, $0641
    ld b, d
    rlca
    ld b, e
    db $10
    ld d, b
    ld de, $1651
    ld d, d
    rla
    ld d, e
    jr nz, jr_002_5ce3

    ld hl, $2441
    ld b, d
    dec h
    ld b, e
    jr nc, jr_002_5cfb

    ld sp, $3451
    ld d, d
    dec [hl]
    ld d, e
    ld [hl+], a
    ld b, b
    inc hl
    ld b, c
    inc h
    ld b, d
    dec h
    ld b, e
    ld [hl-], a
    ld d, b
    inc sp
    ld d, c
    inc [hl]
    ld d, d
    dec [hl]
    ld d, e
    ld e, b
    ld b, b
    ld e, c
    ld b, c
    ld e, d
    ld b, d
    ld e, e
    ld b, e
    ld l, b
    ld d, b
    ld l, c
    ld d, c
    ld l, d
    ld d, d
    ld l, e
    ld d, e
    nop
    ld b, b
    ld bc, $0241
    ld b, d
    inc bc
    ld b, e
    db $10
    ld d, b
    ld de, $1251
    ld d, d
    inc de
    ld d, e
    nop
    ld b, b

jr_002_5ce3:
    ld bc, $0441
    ld b, d
    dec b
    ld b, e
    db $10
    ld d, b
    ld de, $1451
    ld d, d
    dec d
    ld d, e
    nop
    ld b, b
    ld bc, $0641
    ld b, d
    rlca
    ld b, e
    db $10
    ld d, b

jr_002_5cfb:
    ld de, $1651
    ld d, d
    rla
    ld d, e
    ld b, b
    ld b, b
    ld b, c
    ld b, c
    ld h, $42
    daa
    ld b, e
    ld d, b
    ld d, b
    ld d, c
    ld d, c
    ld [hl], $52
    scf
    ld d, e
    ld b, d
    ld b, b
    ld b, e
    ld b, c
    ld h, $42
    daa
    ld b, e
    ld d, d
    ld d, b
    ld d, e
    ld d, c
    ld [hl], $52
    scf
    ld d, e
    ld e, b
    ld b, b
    ld e, c
    ld b, c
    ld e, d
    ld b, d
    ld e, e
    ld b, e
    ld l, b
    ld d, b
    ld l, c
    ld d, c
    ld l, d
    ld d, d
    ld l, e
    ld d, e
    nop
    ld b, b
    ld bc, $0241
    ld b, d
    inc bc
    ld b, e
    db $10
    ld d, b
    ld de, $1251
    ld d, d
    inc de
    ld d, e
    nop
    ld b, b
    ld bc, $0441
    ld b, d
    dec b
    ld b, e
    db $10
    ld d, b
    ld de, $1451
    ld d, d
    dec d
    ld d, e
    nop
    ld b, b
    ld bc, $0641
    ld b, d
    rlca
    ld b, e
    db $10
    ld d, b
    ld de, $1651
    ld d, d
    rla
    ld d, e
    ld h, b
    ld b, b
    ld h, c
    ld b, c
    ld b, [hl]
    ld b, d
    ld b, a
    ld b, e
    ld [hl], b
    ld d, b
    ld [hl], c
    ld d, c
    ld d, [hl]
    ld d, d
    ld d, a
    ld d, e
    ld h, b
    ld b, b
    ld h, c
    ld b, c
    ld b, [hl]
    ld b, d
    ld b, a
    ld b, e
    ld [hl], b
    ld d, b
    ld [hl], c
    ld d, c
    ld d, [hl]
    ld d, d
    ld d, a
    ld d, e
    ld h, b
    ld b, b
    ld h, c
    ld b, c
    ld b, [hl]
    ld b, d
    ld b, a
    ld b, e
    ld [hl], b
    ld d, b
    ld [hl], c
    ld d, c
    ld d, [hl]
    ld d, d
    ld d, a
    ld d, e
    nop
    ld b, b
    ld bc, $0241
    ld b, d
    inc bc
    ld b, e
    db $10
    ld d, b
    ld de, $1251
    ld d, d
    inc de
    ld d, e
    nop
    ld b, b
    ld bc, $0441
    ld b, d
    dec b
    ld b, e
    db $10
    ld d, b
    ld de, $1451
    ld d, d
    dec d
    ld d, e
    nop
    ld b, b
    ld bc, $0641
    ld b, d
    rlca
    ld b, e
    db $10
    ld d, b
    ld de, $1651
    ld d, d
    rla
    ld d, e
    ld h, d
    ld b, b
    ld h, e
    ld b, c
    ld h, [hl]
    ld b, d
    ld h, a
    ld b, e
    ld [hl], d
    ld d, b
    ld [hl], e
    ld d, c
    halt
    ld d, d
    ld [hl], a
    ld d, e
    ld h, h
    ld b, b
    ld h, l
    ld b, c
    ld h, [hl]
    ld b, d
    ld h, a
    ld b, e
    ld [hl], h
    ld d, b
    ld [hl], l
    ld d, c
    halt
    ld d, d
    ld [hl], a
    ld d, e
    ld e, b
    ld b, b
    ld e, c
    ld b, c
    ld e, d
    ld b, d
    ld e, e
    ld b, e
    ld l, b
    ld d, b
    ld l, c
    ld d, c
    ld l, d
    ld d, d
    ld l, e
    ld d, e
    ld [$0940], sp
    ld b, c
    ld a, [bc]
    ld b, d
    dec bc
    ld b, e
    jr jr_002_5e4b

    add hl, de
    ld d, c
    ld a, [de]
    ld d, d
    dec de
    ld d, e
    jr z, jr_002_5e43

    add hl, hl
    ld b, c
    ld a, [hl+]
    ld b, d
    dec hl
    ld b, e
    jr c, @+$52

    add hl, sp
    ld d, c
    ld a, [hl-]
    ld d, d
    dec sp
    ld d, e
    ld [$0940], sp
    ld b, c
    ld a, [bc]
    ld b, d
    dec bc
    ld b, e
    jr jr_002_5e6b

    add hl, de
    ld d, c
    ld a, [de]
    ld d, d
    dec de
    ld d, e
    jr z, jr_002_5e63

    add hl, hl
    ld b, c
    ld a, [hl+]
    ld b, d
    dec hl
    ld b, e
    jr c, @+$52

    add hl, sp
    ld d, c
    ld a, [hl-]
    ld d, d
    dec sp
    ld d, e
    ld [$0940], sp
    ld b, c
    ld a, [bc]
    ld b, d
    dec bc
    ld b, e
    jr @+$52

    add hl, de
    ld d, c
    ld a, [de]
    ld d, d
    dec de
    ld d, e
    ld e, b
    ld b, b

jr_002_5e43:
    ld e, c
    ld b, c
    ld e, d
    ld b, d
    ld e, e
    ld b, e
    ld l, b
    ld d, b

jr_002_5e4b:
    ld l, c
    ld d, c
    ld l, d
    ld d, d
    ld l, e
    ld d, e

Call_002_5e51:
    ld a, [$cb76]
    or a
    ret z

    ld a, [$cb78]
    or a
    jr nz, jr_002_5e69

    ld a, $ff
    ld [$cb77], a
    ld a, $00

jr_002_5e63:
    ld [$cb76], a
    jp Jump_002_5ef1


jr_002_5e69:
    ld a, $10

jr_002_5e6b:
    ld [$c912], a
    ld a, [$b8a0]
    cp $03
    jr nz, jr_002_5e7a

    ld hl, $5df1
    jr jr_002_5ea4

jr_002_5e7a:
    ld a, [$b89f]
    cp $00
    jr nz, jr_002_5e86

    ld hl, $5c71
    jr jr_002_5ea4

jr_002_5e86:
    cp $01
    jr nz, jr_002_5e8f

    ld hl, $5cd1
    jr jr_002_5ea4

jr_002_5e8f:
    cp $02
    jr nz, jr_002_5e98

    ld hl, $5d31
    jr jr_002_5ea4

jr_002_5e98:
    cp $04
    jr nz, jr_002_5ea1

    ld hl, $5d91
    jr jr_002_5ea4

jr_002_5ea1:
    ld hl, $5df1

jr_002_5ea4:
    ld a, [$cb77]
    ld b, a
    ld a, [$cb76]
    add b
    ld [$cb76], a
    cp $7f
    jr z, jr_002_5ec4

    cp $60
    jr z, jr_002_5ec6

    cp $50
    jr z, jr_002_5ecc

    cp $40
    jr z, jr_002_5edb

    cp $38
    jr z, jr_002_5ee6

    ret


jr_002_5ec4:
    jr jr_002_5efa

jr_002_5ec6:
    ld bc, $0010
    add hl, bc
    jr jr_002_5efa

jr_002_5ecc:
    xor a
    ld [$c912], a
    push hl
    call Call_002_5f31
    pop hl
    ld bc, $0020
    add hl, bc
    jr jr_002_5efa

jr_002_5edb:
    ld a, $ff
    ld [$cb77], a
    ld bc, $0030
    add hl, bc
    jr jr_002_5efa

jr_002_5ee6:
    ld a, $01
    ld [$cb77], a
    ld bc, $0040
    add hl, bc
    jr jr_002_5efa

Jump_002_5ef1:
    xor a
    ld [$cb78], a
    ld hl, $5cc1
    jr jr_002_5efa

jr_002_5efa:
    ld d, h
    ld e, l
    ld c, $08

jr_002_5efe:
    push bc
    inc de
    ld a, [de]
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld bc, $9000
    add hl, bc
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
    ld de, $75b9
    add hl, de
    ld e, c
    ld d, b
    ld b, $10

jr_002_5f20:
    call Call_000_0da9
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_002_5f20

    pop de
    inc de
    inc de
    pop bc
    dec c
    jr nz, jr_002_5efe

    ret


Call_002_5f31:
    ld a, [$b8a0]
    cp $03
    jp z, Jump_002_5fa8

    ld a, [$b88a]
    cp $00
    jr z, jr_002_5f5b

    cp $01
    jr z, jr_002_5f6e

    cp $02
    jr z, jr_002_5f95

    ld a, [$b89f]
    cp $00
    jr z, jr_002_5f55

    ld a, $13
    call Call_000_3f52
    ret


jr_002_5f55:
    ld a, $12
    call Call_000_3f52
    ret


jr_002_5f5b:
    ld a, [$b89f]
    cp $00
    jr z, jr_002_5f68

    ld a, $0d
    call Call_000_3f52
    ret


jr_002_5f68:
    ld a, $0c
    call Call_000_3f52
    ret


jr_002_5f6e:
    ld a, [$b89f]
    cp $00
    jr z, jr_002_5f83

    cp $03
    jr z, jr_002_5f89

    cp $04
    jr z, jr_002_5f8f

    ld a, $0f
    call Call_000_3f52
    ret


jr_002_5f83:
    ld a, $0e
    call Call_000_3f52
    ret


jr_002_5f89:
    ld a, $15
    call Call_000_3f52
    ret


jr_002_5f8f:
    ld a, $14
    call Call_000_3f52
    ret


jr_002_5f95:
    ld a, [$b89f]
    cp $00
    jr z, jr_002_5fa2

    ld a, $11
    call Call_000_3f52
    ret


jr_002_5fa2:
    ld a, $10
    call Call_000_3f52
    ret


Jump_002_5fa8:
    ld a, $47
    call Call_000_3f52
    ret

; a random number is selected from this list which decides what food/drink will be consumed.
ConsumableIndex: ; $002_5fae
    db $00
    db $01
    db $02
    db $03
    db $04
    db $05
    db $00
    db $01
    db $02
    db $03
    db $04
    db $05
    db $00
    db $01
    db $02
    db $03
    db $04
    db $05
    db $00

UseConsumable:
    ldh a, [hRandomNumber] ; get random number
    and %00001111 ; reduce to number between 0 and 15
    ld hl, ConsumableIndex
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    cp $00
    jr z, .eatCroissant
    cp $01
    jr z, .drinkWildGrapeJuice
    cp $02
    jr z, .eatRiceBall
    cp $03
    jr z, .drinkGreenTea
    cp $04
    jr z, .eatMeatDumpling
    cp $05
    jr z, .jr_002_6038
    ret

.eatCroissant
    ld a, [sNumCroissant]
    or a
    jr z, .checkForCroissant

    dec a
    ld [sNumCroissant], a
    ld a, $00
    ld [$cb8d], a
    ret

.drinkWildGrapeJuice
    ld a, [sNumWildGrapeJuice]
    or a
    jr z, .checkForCroissant

    dec a
    ld [sNumWildGrapeJuice], a
    ld a, $01
    ld [$cb8d], a
    ret

.eatRiceBall
    ld a, [sNumRiceBall]
    or a
    jr z, .checkForCroissant

    dec a
    ld [sNumRiceBall], a
    ld a, $02
    ld [$cb8d], a
    ret

.drinkGreenTea
    ld a, [sNumGreenTea]
    or a
    jr z, .checkForCroissant

    dec a
    ld [sNumGreenTea], a
    ld a, $03
    ld [$cb8d], a
    ret

.eatMeatDumpling
    ld a, [sNumMeatDumpling]
    or a
    jr z, .checkForCroissant

    dec a
    ld [sNumMeatDumpling], a
    ld a, $04
    ld [$cb8d], a
    ret

.jr_002_6038
    ld a, [$b8cc]
    or a
    jr z, .checkForCroissant

    dec a
    ld [$b8cc], a
    ld a, $05
    ld [$cb8d], a
    ret

.checkForCroissant
    ld a, [sNumCroissant]
    or a
    jr z, .checkForWildGrapeJuice
    jp .eatCroissant

.checkForWildGrapeJuice
    ld a, [sNumWildGrapeJuice]
    or a
    jr z, .checkForRiceBall
    jp .drinkWildGrapeJuice

.checkForRiceBall
    ld a, [sNumRiceBall]
    or a
    jr z, .checkForGreenTea
    jp .eatRiceBall

.checkForGreenTea
    ld a, [sNumGreenTea]
    or a
    jr z, .checkForMeatDumpling
    jp .drinkGreenTea

.checkForMeatDumpling
    ld a, [sNumMeatDumpling]
    or a
    jr z, .jr_002_6075
    jp .eatMeatDumpling

.jr_002_6075
    ld a, [$b8cc]
    or a
    jr z, .noConsumables
    jp .jr_002_6038

.noConsumables
    ld a, $ff
    ld [$cb8d], a
    ret


Call_002_6084:
    call Call_002_6421
    ld a, [$cb92]
    or a
    jr nz, jr_002_609e

    ld a, $01
    ld [$cb92], a
    ld a, [$b900]
    cp $01
    jr nz, jr_002_60ab

    ld a, $01
    ld [$c910], a

jr_002_609e:
    ld a, [$c910]
    cp $01
    jr nz, jr_002_60ab

    call UseConsumable
    call Call_002_67a1

jr_002_60ab:
    ld a, [$b911]
    cp $00
    jp z, Jump_002_6177

    cp $01
    jp z, Jump_002_6233

    ld a, [$c910]
    or a
    jp z, Jump_002_615e

    cp $01
    jr z, jr_002_60e8

    cp $03
    jr z, jr_002_6120

    cp $04
    jr z, jr_002_6136

    ld hl, $6311
    ld de, $c600
    ld b, $10
    call CopyHLtoDE
    xor a
    ldh [$ff91], a
    ld a, $60
    ldh [$ff93], a
    ld a, $1e
    ld [$c912], a
    ld a, $00
    call RST_TableJumpBankSwitch
    ret


jr_002_60e8:
    ld a, [$cb8d]
    cp $ff
    jr z, jr_002_6120

    ld hl, $6301
    ld de, $c600
    ld b, $10
    call CopyHLtoDE
    xor a
    ldh [$ff91], a
    ldh [$ff93], a
    ld a, $60
    ld [$c912], a
    ld a, [$cb8d]
    and $01
    jr z, jr_002_6158

    ld a, [$cb8d]
    cp $01
    jr nz, jr_002_614f

    ld a, $3c
    ld [$c912], a
    ld a, $8e
    call Call_000_151d
    call Call_000_1afe
    ret


jr_002_6120:
    ld hl, $6301
    ld de, $c600
    ld b, $10
    call CopyHLtoDE
    xor a
    ldh [$ff91], a
    ldh [$ff93], a
    ld a, $00
    call RST_TableJumpBankSwitch
    ret


jr_002_6136:
    ld hl, $6331
    ld de, $c600
    ld b, $10
    call CopyHLtoDE
    ld a, $11
    ldh [$ff91], a
    ld a, $50
    ldh [$ff93], a
    ld a, $00
    call RST_TableJumpBankSwitch
    ret


jr_002_614f:
    ld a, $b5
    call Call_000_151d
    call Call_000_1afe
    ret


jr_002_6158:
    ld a, $20
    call Call_000_151d
    ret


Jump_002_615e:
    ld hl, $62f1
    ld de, $c600
    ld b, $10
    call CopyHLtoDE
    ld a, $00
    call RST_TableJumpBankSwitch
    ld a, $24
    ldh [$ff91], a
    ld a, $30
    ldh [$ff93], a
    ret


Jump_002_6177:
    ld a, [$c910]
    or a
    jp z, Jump_002_621a

    cp $01
    jr z, jr_002_61a7

    cp $03
    jr z, jr_002_61df

    cp $04
    jr z, jr_002_61f5

    ld hl, $63b1
    ld de, $c600
    ld b, $10
    call CopyHLtoDE
    ld a, $11
    ldh [$ff91], a
    xor a
    ldh [$ff93], a
    ld a, $1e
    ld [$c912], a
    ld a, $00
    call RST_TableJumpBankSwitch
    ret


jr_002_61a7:
    ld a, [$cb8d]
    cp $ff
    jr z, jr_002_61df

    ld hl, $63a1
    ld de, $c600
    ld b, $10
    call CopyHLtoDE
    xor a
    ldh [$ff91], a
    ldh [$ff93], a
    ld a, $60
    ld [$c912], a
    ld a, [$cb8d]
    and $01
    jr z, jr_002_6214

    ld a, [$cb8d]
    cp $01
    jr nz, jr_002_620b

    ld a, $3c
    ld [$c912], a
    ld a, $8e
    call Call_000_151d
    call Call_000_1afe
    ret


jr_002_61df:
    ld hl, $63a1
    ld de, $c600
    ld b, $10
    call CopyHLtoDE
    xor a
    ldh [$ff91], a
    ldh [$ff93], a
    ld a, $00
    call RST_TableJumpBankSwitch
    ret


jr_002_61f5:
    ld hl, $63d1
    ld de, $c600
    ld b, $10
    call CopyHLtoDE
    xor a
    ldh [$ff91], a
    ldh [$ff93], a
    ld a, $00
    call RST_TableJumpBankSwitch
    ret


jr_002_620b:
    ld a, $b5
    call Call_000_151d
    call Call_000_1afe
    ret


jr_002_6214:
    ld a, $20
    call Call_000_151d
    ret


Jump_002_621a:
    ld hl, $6391
    ld de, $c600
    ld b, $10
    call CopyHLtoDE
    ld a, $00
    call RST_TableJumpBankSwitch
    ld a, $24
    ldh [$ff91], a
    ld a, $00
    ldh [$ff93], a
    ret


Jump_002_6233:
    ld a, [$c910]
    or a
    jp z, Jump_002_62d8

    cp $01
    jr z, jr_002_6264

    cp $03
    jr z, jr_002_629e

    cp $04
    jr z, jr_002_62b6

    ld hl, $6361
    ld de, $c600
    ld b, $10
    call CopyHLtoDE
    ld a, $11
    ldh [$ff91], a
    ld a, $30
    ldh [$ff93], a
    ld a, $1e
    ld [$c912], a
    ld a, $00
    call RST_TableJumpBankSwitch
    ret


jr_002_6264:
    ld a, [$cb8d]
    cp $ff
    jr z, jr_002_629e

    ld hl, $6351
    ld de, $c600
    ld b, $10
    call CopyHLtoDE
    xor a
    ldh [$ff91], a
    ld a, $20
    ldh [$ff93], a
    ld a, $60
    ld [$c912], a
    ld a, [$cb8d]
    and $01
    jr z, jr_002_62d2

    ld a, [$cb8d]
    cp $01
    jr nz, jr_002_62cc

    ld a, $3c
    ld [$c912], a
    ld a, $8e
    call Call_000_151d
    call Call_000_1afe
    ret


jr_002_629e:
    ld hl, $6351
    ld de, $c600
    ld b, $10
    call CopyHLtoDE
    xor a
    ldh [$ff91], a
    ld a, $20
    ldh [$ff93], a
    ld a, $00
    call RST_TableJumpBankSwitch
    ret


jr_002_62b6:
    ld hl, $6381
    ld de, $c600
    ld b, $10
    call CopyHLtoDE
    xor a
    ldh [$ff91], a
    ldh [$ff93], a
    ld a, $00
    call RST_TableJumpBankSwitch
    ret


jr_002_62cc:
    ld a, $b5
    call Call_000_151d
    ret


jr_002_62d2:
    ld a, $20
    call Call_000_151d
    ret


Jump_002_62d8:
    ld hl, $6341
    ld de, $c600
    ld b, $10
    call CopyHLtoDE
    ld a, $00
    call RST_TableJumpBankSwitch
    ld a, $24
    ldh [$ff91], a
    ld a, $20
    ldh [$ff93], a
    ret


    ld bc, rJOYP
    db $00
    db $00
    ld [$0088], sp
    add b
    db $00
    ld d, b
    ld h, h
    db $00
    inc bc
    ld bc, $0100
    db $00
    rst $38
    db $00
    db $00
    ld [$0048], sp
    ld b, b
    db $00
    ld b, b
    ld c, b
    db $00
    db $00
    ld bc, $0100
    db $00
    rst $38
    db $00
    db $00
    ld [$00f6], sp
    ld c, l
    db $00
    adc [hl]
    ld d, l
    db $00
    inc bc
    ld bc, $0100
    db $00
    rst $38
    db $00
    db $00
    ld [$0048], sp
    ld b, b
    db $00
    ld b, b
    ld c, b
    db $00
    db $00
    ld bc, $0100
    db $00
    rst $38
    db $00
    db $00
    ld [$00a8], sp
    ld l, l
    db $00
    ld d, b
    ld h, h
    db $00
    inc bc
    ld bc, $0100
    db $00
    rst $38
    db $00
    db $00
    ld [$0078], sp
    add b
    db $00
    ld d, b
    ld h, h
    db $00
    inc bc
    ld bc, $0100
    db $00
    rst $38
    db $00
    db $00
    ld [$0078], sp
    ld b, b
    db $00
    ld d, b
    ld c, b
    db $00
    db $00
    ld bc, $0100
    db $00
    rst $38
    db $00
    db $00
    ld [$0088], sp
    ld l, l
    db $00
    ld d, b
    ld h, h
    db $00
    inc bc
    ld bc, $0100
    db $00
    rst $38
    db $00
    db $00
    ld [$0048], sp
    ld b, b
    db $00
    ld b, b
    ld c, b
    db $00
    db $00
    ld bc, $0100
    db $00
    rst $38
    db $00
    db $00
    ld [$0048], sp
    dec a
    db $00
    ld b, b
    ld b, l
    db $00
    inc bc
    ld bc, $0100
    db $00
    rst $38
    db $00
    db $00
    ld [$0058], sp
    add b
    db $00
    ld d, b
    ld h, h
    db $00
    inc bc
    ld bc, $0100
    db $00
    rst $38
    db $00
    db $00
    ld [$0080], sp
    ld b, b
    db $00
    ld a, b
    ld c, b
    db $00
    db $00
    ld bc, $0100
    db $00
    rst $38
    db $00
    db $00
    ld [$0086], sp
    ld l, l
    db $00
    ld a, [hl]
    ld h, h
    db $00
    inc bc
    ld bc, $0100
    db $00
    rst $38
    db $00
    db $00
    ld [$0048], sp
    ld b, b
    db $00
    ld b, b
    ld c, b
    db $00
    db $00
    ld bc, $0100
    db $00
    rst $38
    db $00
    db $00
    ld [$0048], sp
    dec a
    db $00
    ld b, b
    ld b, l
    db $00
    inc bc
    ld bc, $0100
    dec b
    ld [bc], a
    db $00
    db $00
    ld [$002d], sp
    add b
    db $00
    db $00
    db $00
    db $00
    ld [bc], a
    db $00
    db $00
    db $00
    db $00
    db $00
    db $00
    db $00
    db $00
    db $00
    db $00
    db $00
    db $00
    db $00
    db $00
    db $00
    db $00
    db $00
    db $00
    db $01, $05, $22
    db $00
    db $00
    ld [$002d], sp
    add b
    db $00
    db $00
    db $00
    db $00
    ld [bc], a
    db $00
    db $00
    db $00
    db $00
    db $00
    db $00
    db $00
    db $00
    db $00
    db $00
    db $00
    db $00
    db $00
    db $00
    db $00
    db $00
    db $00
    db $00

Call_002_6421:
    ld a, [$b8e1]
    or a
    jr nz, jr_002_645d

    ld a, [$cb8b]
    or a
    jr nz, jr_002_645d

    ld a, [$b8db]
    or a
    jr z, jr_002_6448

    ld hl, $6401
    ld de, $c7a0
    ld b, $20
    call CopyHLtoDE
    ld a, [$c7ad]
    ld b, a
    add $20
    call Call_000_163d
    ret


jr_002_6448:
    ld hl, $63e1
    ld de, $c7a0
    ld b, $20
    call CopyHLtoDE
    ld a, [$c7ad]
    ld b, a
    add $00
    call Call_000_1622
    ret


jr_002_645d:
    xor a
    ld [$c7a0], a
    ret


    ld bc, $020b
    nop
    nop
    ld [$0068], sp
    ld d, a
    nop
    nop
    nop
    nop
    ld bc, $0001
    ld bc, $020b
    nop
    nop
    ld [$0058], sp
    ld d, a
    nop
    nop
    nop
    nop
    ld bc, $0001
    ld bc, $020b
    nop
    nop
    ld [$0068], sp
    ld d, a
    nop
    nop
    nop
    nop
    ld [bc], a
    ld bc, $fa00
    sbc d
    cp b
    or a
    ret z

    ld a, [$c820]
    call nz, $6547
    ld a, [$b911]
    cp $00
    jr z, jr_002_64cd

    cp $01
    jr z, jr_002_64f2

    ld hl, $6482
    ld de, $c800
    ld b, $10
    call CopyHLtoDE
    ld a, [$c80d]
    ld b, a
    add $0c
    call Call_000_152a
    ld a, $99
    ld [$d8d8], a
    ld [$d8b6], a
    ld a, $03
    ld [$d8d9], a
    ld [$d8b7], a
    ret


jr_002_64cd:
    ld hl, $6462
    ld de, $c800
    ld b, $10
    call CopyHLtoDE
    ld a, [$c80d]
    ld b, a
    add $0c
    call Call_000_152a
    ld a, $99
    ld [$d8d8], a
    ld [$d8b6], a
    ld a, $03
    ld [$d8d9], a
    ld [$d8b7], a
    ret


jr_002_64f2:
    ld hl, $6472
    ld de, $c800
    ld b, $10
    call CopyHLtoDE
    ld a, [$c80d]
    ld b, a
    add $0c
    call Call_000_152a
    ld a, $99
    ld [$d8d6], a
    ld [$d8b4], a
    ld a, $03
    ld [$d8d7], a
    ld [$d8b5], a
    ret


    ld bc, $0209
    nop
    nop
    ld [$0058], sp
    and e
    nop
    ld d, b
    xor h
    nop
    inc bc
    ld bc, $0100
    add hl, bc
    ld [bc], a
    nop
    nop
    ld [$0078], sp
    and e
    nop
    ld d, b
    xor h
    nop
    inc bc
    ld bc, $0100
    add hl, bc
    ld [bc], a
    nop
    nop
    ld [$0088], sp
    and e
    nop
    add b
    xor h
    nop
    inc bc
    ld bc, $fa00
    sbc d
    cp b
    or a
    ret z

    ld a, [$b89b]
    add $03
    ld b, a
    ld a, [sCurrentDayCounter]
    cp b
    ret nz

    ld a, [$b911]
    cp $00
    jr z, jr_002_657e

    cp $01
    jr z, jr_002_659a

    ld hl, $6537
    ld de, $c820
    ld b, $10
    call CopyHLtoDE
    ld a, [$c82d]
    ld b, a
    add $04
    call Call_000_156b
    xor a
    ld [$c831], a
    ld [$c832], a
    ret


jr_002_657e:
    ld hl, $6517
    ld de, $c820
    ld b, $10
    call CopyHLtoDE
    ld a, [$c82d]
    ld b, a
    add $08
    call Call_000_156b
    xor a
    ld [$c831], a
    ld [$c832], a
    ret


jr_002_659a:
    ld hl, $6527
    ld de, $c820
    ld b, $10
    call CopyHLtoDE
    ld a, [$c82d]
    ld b, a
    add $04
    call Call_000_156b
    xor a
    ld [$c831], a
    ld [$c832], a
    ret


Call_002_65b6:
    ld a, [$b904]
    or a
    ret z

    cp $01
    jp z, Jump_002_6682

    cp $02
    jp z, Jump_002_6671

    cp $03
    jp z, Jump_002_6660

    cp $04
    jp z, Jump_002_664f

    cp $05
    jp z, Jump_002_663e

    cp $06
    jr z, jr_002_662d

    cp $07
    jr z, jr_002_661c

    cp $08
    jr z, jr_002_660b

    cp $09
    jr z, jr_002_65fa

    cp $0a
    jr nc, jr_002_65e9

    ret


jr_002_65e9:
    ld de, $7789
    ld hl, $8db0
    ld c, $10

jr_002_65f1:
    call Call_000_0da9
    ld a, [de]
    inc de
    ld [hl+], a
    dec c
    jr nz, jr_002_65f1

jr_002_65fa:
    ld de, $7779
    ld hl, $8da0
    ld c, $10

jr_002_6602:
    call Call_000_0da9
    ld a, [de]
    inc de
    ld [hl+], a
    dec c
    jr nz, jr_002_6602

jr_002_660b:
    ld de, $7789
    ld hl, $97b0
    ld c, $10

jr_002_6613:
    call Call_000_0da9
    ld a, [de]
    inc de
    ld [hl+], a
    dec c
    jr nz, jr_002_6613

jr_002_661c:
    ld de, $7779
    ld hl, $97a0
    ld c, $10

jr_002_6624:
    call Call_000_0da9
    ld a, [de]
    inc de
    ld [hl+], a
    dec c
    jr nz, jr_002_6624

jr_002_662d:
    ld de, $7789
    ld hl, $96b0
    ld c, $10

jr_002_6635:
    call Call_000_0da9
    ld a, [de]
    inc de
    ld [hl+], a
    dec c
    jr nz, jr_002_6635

Jump_002_663e:
    ld de, $7779
    ld hl, $96a0
    ld c, $10

jr_002_6646:
    call Call_000_0da9
    ld a, [de]
    inc de
    ld [hl+], a
    dec c
    jr nz, jr_002_6646

Jump_002_664f:
    ld de, $7789
    ld hl, $95b0
    ld c, $10

jr_002_6657:
    call Call_000_0da9
    ld a, [de]
    inc de
    ld [hl+], a
    dec c
    jr nz, jr_002_6657

Jump_002_6660:
    ld de, $7779
    ld hl, $95a0
    ld c, $10

jr_002_6668:
    call Call_000_0da9
    ld a, [de]
    inc de
    ld [hl+], a
    dec c
    jr nz, jr_002_6668

Jump_002_6671:
    ld de, $7689
    ld hl, $94b0
    ld c, $10

jr_002_6679:
    call Call_000_0da9
    ld a, [de]
    inc de
    ld [hl+], a
    dec c
    jr nz, jr_002_6679

Jump_002_6682:
    ld de, $7679
    ld hl, $94a0
    ld c, $10

jr_002_668a:
    call Call_000_0da9
    ld a, [de]
    inc de
    ld [hl+], a
    dec c
    jr nz, jr_002_668a

    ret


Call_002_6694:
    ld a, [$cb8e]
    or a
    jr nz, jr_002_66cb

    ld a, [$b885]
    or a
    ret nz

    ld a, [$b884]
    cp $01
    ret nz

    ld a, [$b882]
    cp $06
    ret nz

    ld a, [$b881]
    cp $00
    ret nz

    ld a, [$b880]
    cp $00
    ret nz

    ld a, [sCurrentDayCounter]
    ld b, a
    ld a, [$b8a2]
    cp b
    ret nz

    ld a, $b4
    ld [$cb8e], a
    ld a, $80
    ld [$b8a2], a
    ret


jr_002_66cb:
    ld a, [$cb8e]
    and $02
    jr z, jr_002_670a

    ldh a, [$ff93]
    inc a
    inc a
    ldh [$ff93], a
    ld hl, $c606
    ld bc, $0002
    call Call_000_0cce
    ld a, [$c60a]
    inc a
    inc a
    ld [$c60a], a
    ld hl, $c7a6
    ld bc, $0002
    call Call_000_0cce
    ld hl, $cb8e
    dec [hl]
    ld a, $01
    ld [$ba08], a
    ld [$ba09], a
    ld [$ba0a], a
    ld a, [$ba0d]
    set 0, a
    ld [$ba0d], a
    ret


jr_002_670a:
    ldh a, [$ff93]
    dec a
    dec a
    ldh [$ff93], a
    ld a, [$c60a]
    dec a
    dec a
    ld [$c60a], a
    ld hl, $c606
    ld bc, $fffe
    call Call_000_0cce
    ld hl, $c7a6
    ld bc, $fffe
    call Call_000_0cce
    ld hl, $cb8e
    dec [hl]
    ret


Call_002_672f:
    ld hl, $9c00
    ld de, $673d
    ld b, $14
    ld c, $05
    call Call_000_0a62
    ret


    ld sp, hl
    ld a, [$fafa]
    ld a, [$fafa]
    ld a, [$fafa]
    ld a, [$fafa]
    ld a, [$fafa]
    ld a, [$fafa]
    ei
    rst $38
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    jp hl


    rst $38
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    jp hl


    rst $38
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    jp hl

    db $fc
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd

    db $fe
; Seems like some kind of bug by defining $cd...
Call_002_67a1:
    ;cp $cd ; This is `db $fe, $cd`
    db $cd
    ld hl, $cd69
    ld sp, hl
    ld l, h
    xor a
    ld [$b900], a
    ld hl, $b8ef
    ld a, [$b8fc]
    ld c, a
    ld a, [$b8fd]
    ld b, a
    call Call_000_0cbb
    ld hl, $b8ef
    ld a, [$b93d]
    ld c, a
    ld a, [$b93e]
    ld b, a
    call Call_000_0cbb
    call Call_000_1056
    xor a
    ld [$b93d], a
    ld [$b93e], a
    ld [$b8fc], a
    ld [$b8fd], a
    ld a, [$b884]
    ld b, a
    ld a, [sCurrentDayCounter]
    or b
    jr z, jr_002_67f9

    ld hl, $63c5
    ld a, $03
    call BankSwitchCallHL
    ld hl, $6da9
    ld a, $04
    call BankSwitchCallHL
    ld hl, $61d6
    ld a, $0f
    call BankSwitchCallHL

jr_002_67f9:
    call Call_002_6d7a
    ld a, [$b89f]
    ld [$b8a0], a
    cp $00
    jr nz, jr_002_681b

    ld a, $50
    ld [$b924], a
    ld a, $83
    ld [$b925], a
    ld a, [$cb5c]
    ld [$b926], a
    ld [$b927], a
    jr jr_002_6882

jr_002_681b:
    cp $01
    jp nz, Jump_002_6836

    ld a, $00
    ld [$b924], a
    ld a, $63
    ld [$b925], a
    ld a, [$cb5c]
    ld [$b926], a
    ld [$b927], a
    jp Jump_002_6882


Jump_002_6836:
    cp $02
    jp nz, Jump_002_6851

    ld a, $71
    ld [$b924], a
    ld a, $11
    ld [$b925], a
    ld a, [$cb5c]
    ld [$b926], a
    ld [$b927], a
    jp Jump_002_6882


Jump_002_6851:
    cp $03
    jp nz, Jump_002_686d

    ld a, $30
    ld [$b924], a
    ld a, $01
    ld [$b925], a
    ld a, $52
    ld [$b926], a
    ld a, $02
    ld [$b927], a
    jp Jump_002_6882


Jump_002_686d:
    ld a, $b1
    ld [$b924], a
    ld a, $21
    ld [$b925], a
    ld a, $94
    ld [$b926], a
    ld a, [$cb5c]
    ld [$b927], a

Jump_002_6882:
jr_002_6882:
    ld a, [$b8a0]
    cp $03
    call z, Call_002_6cd1
    call Call_002_5b01
    push hl
    push af
    ld l, $eb
    ld h, $6b
    ld a, $20
    call BankSwitchCallHL
    pop af
    pop hl
    ld hl, sMapObjectLocation
    ld bc, $0c40

jr_002_68a0:
    ld a, [hli]
    ld e, a
    ld a, [hli]
    ld d, a
    and $40
    jr z, jr_002_6916

    ld a, e
    and $f0
    cp $40
    jr nz, jr_002_68b4

    call Call_002_69bb
    jr jr_002_6916

jr_002_68b4:
    cp $50
    jr z, jr_002_68be

    cp $60
    jr z, jr_002_68be

    jr jr_002_68c3

jr_002_68be:
    call Call_002_69de
    jr jr_002_6916

jr_002_68c3:
    cp $70
    jr z, jr_002_68cd

    cp $80
    jr z, jr_002_68cd

    jr jr_002_68d2

jr_002_68cd:
    call Call_002_6ad4
    jr jr_002_6916

jr_002_68d2:
    cp $90
    jr z, jr_002_68d8

    jr jr_002_68dd

jr_002_68d8:
    call Call_002_6b3f
    jr jr_002_6916

jr_002_68dd:
    cp $a0
    jr z, jr_002_68e3

    jr jr_002_68e8

jr_002_68e3:
    call Call_002_6b82
    jr jr_002_6916

jr_002_68e8:
    cp $b0
    jr z, jr_002_68ee

    jr jr_002_68f3

jr_002_68ee:
    call Call_002_6bc5
    jr jr_002_6916

jr_002_68f3:
    cp $c0
    jr z, jr_002_68f9

    jr jr_002_68fe

jr_002_68f9:
    call Call_002_6c08
    jr jr_002_6916

jr_002_68fe:
    cp $d0
    jr z, jr_002_6904

    jr jr_002_6909

jr_002_6904:
    call Call_002_6c4b
    jr jr_002_6916

jr_002_6909:
    cp $e0
    jr z, jr_002_6913

    cp $f0
    jr z, jr_002_6913

    jr jr_002_6916

jr_002_6913:
    call Call_002_6c8e

jr_002_6916:
    call Call_002_6988
    dec bc
    ld a, b
    or c
    cp $00
    jr nz, jr_002_68a0

    ret


    ld a, [$b900]
    or a
    jr nz, jr_002_6974

    ld a, [$b902]
    cp $06
    jr c, jr_002_6974

    xor a
    ld [$b880], a
    ld [$b881], a
    ld a, $06
    ld [$b882], a
    call Call_000_070b
    ld a, [sCurrentDayCounter]
    inc a
    ld [sCurrentDayCounter], a
    cp $1e
    jr nc, jr_002_694c

    call Call_000_07ab
    ret


jr_002_694c:
    xor a
    ld [sCurrentDayCounter], a
    ld a, [$b884]
    inc a
    ld [$b884], a
    call Call_000_07ab
    call Call_000_08b7
    ld a, [$b884]
    cp $04
    jr nc, jr_002_6965

    ret


jr_002_6965:
    xor a
    ld [$b884], a
    call Call_000_08b7
    ld a, [$b885]
    inc a
    ld [$b885], a
    ret


jr_002_6974:
    xor a
    ld [$b880], a
    ld [$b881], a
    ld a, $06
    ld [$b882], a
    call Call_000_070b
    xor a
    ld [$ba40], a
    ret


Call_002_6988:
    ld a, [$b8a0]
    cp $01
    jr z, jr_002_69a9

    cp $03
    jr z, jr_002_69a9

    cp $02
    jr z, jr_002_69a9

    push hl
    push bc
    dec hl
    ld a, [hl-]
    cp $00
    jr nz, jr_002_69b8

    ld a, [hl]
    cp $12
    jr nz, jr_002_69b8

    dec a
    ld [hl], a
    pop bc
    pop hl
    ret


jr_002_69a9:
    push hl
    push bc
    dec hl
    ld a, [hl-]
    cp $00
    jr nz, jr_002_69b8

    ld a, [hl]
    cp $11
    jr nz, jr_002_69b8

    inc a
    ld [hl], a

jr_002_69b8:
    pop bc
    pop hl
    ret


Call_002_69bb:
    ld a, [$b884]
    cp $03
    jp z, Jump_002_69d1

    push hl
    push bc
    dec hl
    dec hl
    ld a, [hl]
    cp $49
    jr z, jr_002_69ce

    inc a
    ld [hl], a

jr_002_69ce:
    pop bc
    pop hl
    ret


Jump_002_69d1:
    push hl
    push bc
    dec hl
    dec hl
    ld a, $43
    ld [hl+], a
    ld a, $48
    ld [hl], a
    pop bc
    pop hl
    ret


Call_002_69de:
    ld a, [$b884]
    cp $01
    jp nz, Jump_002_6a49

    ld a, d
    and $08
    jr z, jr_002_6a09

    push hl
    push bc
    dec hl
    ld a, [hl]
    ld e, a
    and $08
    jr z, jr_002_6a07

    ld a, e
    and $f7
    ld [hl-], a
    ld a, [hl]
    cp $60
    jr z, jr_002_6a07

    inc a
    ld [hl+], a
    cp $54
    jr c, jr_002_6a07

    ld a, [hl]
    or $01
    ld [hl], a

jr_002_6a07:
    pop bc
    pop hl

jr_002_6a09:
    ld a, [$b8a0]
    cp $01
    jr z, jr_002_6a15

    cp $03
    jr z, jr_002_6a15

    ret


jr_002_6a15:
    push hl
    push bc
    dec hl
    dec hl
    ld a, [hl]
    cp $60
    jr z, jr_002_6a24

    inc a
    ld [hl+], a
    ld a, [hl]
    or $08
    ld [hl], a

jr_002_6a24:
    pop bc
    pop hl
    ld a, [$b8a0]
    cp $03
    ret nz

    push hl
    ld a, [$c0a8]
    and $7f
    ld hl, $6a54
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    pop hl
    or a
    ret z

    push hl
    dec hl
    dec hl
    ld a, $12
    ld [hl+], a
    xor a
    ld [hl], a
    pop hl
    ret


Jump_002_6a49:
    push hl
    push bc
    dec hl
    xor a
    ld [hl-], a
    ld a, $11
    ld [hl], a
    pop bc
    pop hl
    ret


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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_002_6ad4:
    ld a, [$b884]
    cp $01
    jp nz, Jump_002_6a49

    ld a, d
    and $08
    jr z, jr_002_6aff

    push hl
    push bc
    dec hl
    ld a, [hl]
    ld e, a
    and $08
    jr z, jr_002_6afd

    ld a, e
    and $f7
    ld [hl-], a
    ld a, [hl]
    cp $88
    jr z, jr_002_6afd

    inc a
    ld [hl+], a
    cp $76
    jr c, jr_002_6afd

    ld a, [hl]
    or $01
    ld [hl], a

jr_002_6afd:
    pop bc
    pop hl

jr_002_6aff:
    ld a, [$b8a0]
    cp $01
    jr z, jr_002_6b0b

    cp $03
    jr z, jr_002_6b0b

    ret


jr_002_6b0b:
    push hl
    push bc
    dec hl
    dec hl
    ld a, [hl]
    cp $88
    jr z, jr_002_6b1a

    inc a
    ld [hl+], a
    ld a, [hl]
    or $08
    ld [hl], a

jr_002_6b1a:
    pop bc
    pop hl
    ld a, [$b8a0]
    cp $03
    ret nz

    push hl
    ld a, [$c0a8]
    and $7f
    ld hl, $6a54
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    pop hl
    or a
    ret z

    push hl
    dec hl
    dec hl
    ld a, $12
    ld [hl+], a
    xor a
    ld [hl], a
    pop hl
    ret


Call_002_6b3f:
    ld a, [$b884]
    cp $00
    jp nz, Jump_002_6a49

    ld a, d
    and $08
    jr z, jr_002_6b6a

    push hl
    push bc
    dec hl
    ld a, [hl]
    ld e, a
    and $08
    jr z, jr_002_6b68

    ld a, e
    and $f7
    ld [hl-], a
    ld a, [hl]
    cp $98
    jr z, jr_002_6b68

    inc a
    ld [hl+], a
    cp $94
    jr c, jr_002_6b68

    ld a, [hl]
    or $01
    ld [hl], a

jr_002_6b68:
    pop bc
    pop hl

jr_002_6b6a:
    ld a, [$b8a0]
    cp $01
    ret nz

    push hl
    push bc
    dec hl
    dec hl
    ld a, [hl]
    cp $98
    jr z, jr_002_6b7f

    inc a
    ld [hl+], a
    ld a, [hl]
    or $08
    ld [hl], a

jr_002_6b7f:
    pop bc
    pop hl
    ret


Call_002_6b82:
    ld a, [$b884]
    cp $00
    jp nz, Jump_002_6a49

    ld a, d
    and $08
    jr z, jr_002_6bad

    push hl
    push bc
    dec hl
    ld a, [hl]
    ld e, a
    and $08
    jr z, jr_002_6bab

    ld a, e
    and $f7
    ld [hl-], a
    ld a, [hl]
    cp $ac
    jr z, jr_002_6bab

    inc a
    ld [hl+], a
    cp $a6
    jr c, jr_002_6bab

    ld a, [hl]
    or $01
    ld [hl], a

jr_002_6bab:
    pop bc
    pop hl

jr_002_6bad:
    ld a, [$b8a0]
    cp $01
    ret nz

    push hl
    push bc
    dec hl
    dec hl
    ld a, [hl]
    cp $ac
    jr z, jr_002_6bc2

    inc a
    ld [hl+], a
    ld a, [hl]
    or $08
    ld [hl], a

jr_002_6bc2:
    pop bc
    pop hl
    ret


Call_002_6bc5:
    ld a, [$b884]
    cp $02
    jp nz, Jump_002_6a49

    ld a, d
    and $08
    jr z, jr_002_6bf0

    push hl
    push bc
    dec hl
    ld a, [hl]
    ld e, a
    and $08
    jr z, jr_002_6bee

    ld a, e
    and $f7
    ld [hl-], a
    ld a, [hl]
    cp $b8
    jr z, jr_002_6bee

    inc a
    ld [hl+], a
    cp $b4
    jr c, jr_002_6bee

    ld a, [hl]
    or $01
    ld [hl], a

jr_002_6bee:
    pop bc
    pop hl

jr_002_6bf0:
    ld a, [$b8a0]
    cp $01
    ret nz

    push hl
    push bc
    dec hl
    dec hl
    ld a, [hl]
    cp $b8
    jr z, jr_002_6c05

    inc a
    ld [hl+], a
    ld a, [hl]
    or $08
    ld [hl], a

jr_002_6c05:
    pop bc
    pop hl
    ret


Call_002_6c08:
    ld a, [$b884]
    cp $02
    jp nz, Jump_002_6a49

    ld a, d
    and $08
    jr z, jr_002_6c33

    push hl
    push bc
    dec hl
    ld a, [hl]
    ld e, a
    and $08
    jr z, jr_002_6c31

    ld a, e
    and $f7
    ld [hl-], a
    ld a, [hl]
    cp $cc
    jr z, jr_002_6c31

    inc a
    ld [hl+], a
    cp $c6
    jr c, jr_002_6c31

    ld a, [hl]
    or $01
    ld [hl], a

jr_002_6c31:
    pop bc
    pop hl

jr_002_6c33:
    ld a, [$b8a0]
    cp $01
    ret nz

    push hl
    push bc
    dec hl
    dec hl
    ld a, [hl]
    cp $cc
    jr z, jr_002_6c48

    inc a
    ld [hl+], a
    ld a, [hl]
    or $08
    ld [hl], a

jr_002_6c48:
    pop bc
    pop hl
    ret


Call_002_6c4b:
    ld a, [$b884]
    cp $03
    jp nz, Jump_002_6a49

    ld a, d
    and $08
    jr z, jr_002_6c76

    push hl
    push bc
    dec hl
    ld a, [hl]
    ld e, a
    and $08
    jr z, jr_002_6c74

    ld a, e
    and $f7
    ld [hl-], a
    ld a, [hl]
    cp $dc
    jr z, jr_002_6c74

    inc a
    ld [hl+], a
    cp $d6
    jr c, jr_002_6c74

    ld a, [hl]
    or $01
    ld [hl], a

jr_002_6c74:
    pop bc
    pop hl

jr_002_6c76:
    ld a, [$b8a0]
    cp $02
    ret nz

    push hl
    push bc
    dec hl
    dec hl
    ld a, [hl]
    cp $dc
    jr z, jr_002_6c8b

    inc a
    ld [hl+], a
    ld a, [hl]
    or $08
    ld [hl], a

jr_002_6c8b:
    pop bc
    pop hl
    ret


Call_002_6c8e:
    ld a, [$b884]
    cp $03
    jp nz, Jump_002_6a49

    ld a, d
    and $08
    jr z, jr_002_6cb9

    push hl
    push bc
    dec hl
    ld a, [hl]
    ld e, a
    and $08
    jr z, jr_002_6cb7

    ld a, e
    and $f7
    ld [hl-], a
    ld a, [hl]
    cp $f0
    jr z, jr_002_6cb7

    inc a
    ld [hl+], a
    cp $e4
    jr c, jr_002_6cb7

    ld a, [hl]
    or $01
    ld [hl], a

jr_002_6cb7:
    pop bc
    pop hl

jr_002_6cb9:
    ld a, [$b8a0]
    cp $02
    ret nz

    push hl
    push bc
    dec hl
    dec hl
    ld a, [hl]
    cp $f0
    jr z, jr_002_6cce

    inc a
    ld [hl+], a
    ld a, [hl]
    or $08
    ld [hl], a

jr_002_6cce:
    pop bc
    pop hl
    ret


Call_002_6cd1:
    ld hl, sMapObjectLocation
    ld bc, $0c40

jr_002_6cd7:
    inc hl
    ld a, [hld]
    cp $00
    jr nz, jr_002_6cef

    ld a, [hl]
    cp $12
    jr nz, jr_002_6cef

    call Call_000_0b37
    ldh a, [$ff9d]
    and $3f
    cp $3f
    jr nz, jr_002_6cef

    xor a
    ld [hl], a

jr_002_6cef:
    inc hl
    inc hl
    dec bc
    ld a, b
    or c
    cp $00
    jr nz, jr_002_6cd7

    ret


    ld a, [$b900]
    or a
    jp nz, Jump_002_6d6d

    ld a, [$b8ee]
    ld l, a
    ld h, $00
    ld a, $05
    call Call_000_09c9
    ld b, l
    call $1ae6
    ld a, [$b8ee]
    ld l, a
    ld h, $00
    ld a, $0a
    call Call_000_09c9
    ld a, l
    ldh [$ffa4], a
    ld a, [$b902]
    cp $16
    jr z, jr_002_6d45

    cp $17
    jr z, jr_002_6d49

    cp $00
    jr z, jr_002_6d4d

    cp $01
    jr z, jr_002_6d51

    cp $02
    jr z, jr_002_6d55

    cp $03
    jr z, jr_002_6d59

    cp $04
    jr z, jr_002_6d5d

    cp $05
    jr z, jr_002_6d61

    cp $16
    jr c, jr_002_6d45

    ret


jr_002_6d45:
    ld c, $08
    jr jr_002_6d63

jr_002_6d49:
    ld c, $07
    jr jr_002_6d63

jr_002_6d4d:
    ld c, $06
    jr jr_002_6d63

jr_002_6d51:
    ld c, $05
    jr jr_002_6d63

jr_002_6d55:
    ld c, $04
    jr jr_002_6d63

jr_002_6d59:
    ld c, $03
    jr jr_002_6d63

jr_002_6d5d:
    ld c, $02
    jr jr_002_6d63

jr_002_6d61:
    ld c, $01

jr_002_6d63:
    ldh a, [$ffa4]
    call Multiply8Bit
    ld b, l
    call $1ae6
    ret


Jump_002_6d6d:
    ld a, $06
    ld [$b882], a
    xor a
    ld [$b881], a
    ld [$b880], a
    ret


Call_002_6d7a:
    ld a, [$b89f]
    cp $03
    jr nz, jr_002_6d8d

    ld a, [$b885]
    cp $02
    ret nz

    ld a, $01
    ld [$b89e], a
    ret


jr_002_6d8d:
    ld a, [$b88d]
    cp $01
    jr nz, jr_002_6d9b

    ld a, [sCurrentDayCounter]
    cp $13
    jr c, jr_002_6d9f

jr_002_6d9b:
    xor a
    ld [$b88d], a

jr_002_6d9f:
    xor a
    ld [$b88c], a
    call Call_002_6fba
    ld a, [$b893]
    or a
    call nz, Call_002_6ee1
    ld a, [sCurrentDayCounter]
    ld b, a
    ld a, [$b8a2]
    cp b
    call z, Call_002_6f09
    ld a, [$b884]
    cp $00
    call z, Call_002_6de8
    ld a, [$b884]
    cp $01
    call z, Call_002_6e0c
    ld a, [$b884]
    cp $02
    call z, Call_002_6e18
    ld a, [$b884]
    cp $03
    call z, Call_002_6e29
    call Call_002_6e3a
    call Call_002_6e70
    call Call_002_7014
    call Call_002_6fd8
    call Call_002_6fee
    ret


Call_002_6de8:
    ld a, [sCurrentDayCounter]
    cp $00
    call z, Call_002_7055
    call Call_002_6e8d
    ld a, [$b91a]
    cp $6a
    call z, Call_002_6ed2
    ld a, [sCurrentDayCounter]
    cp $09
    call z, Call_002_6f34
    ld a, [sCurrentDayCounter]
    cp $0e
    call z, Call_002_6f96
    ret


Call_002_6e0c:
    call Call_002_6eaa
    ld a, [$b89e]
    cp $01
    call z, Call_002_6f1c
    ret


Call_002_6e18:
    ld a, [sCurrentDayCounter]
    cp $00
    call z, Call_002_6fa3
    ld a, [sCurrentDayCounter]
    cp $09
    call z, Call_002_6f02
    ret


Call_002_6e29:
    ld a, [sCurrentDayCounter]
    cp $13
    call z, Call_002_6f10
    ld a, [sCurrentDayCounter]
    cp $1d
    call z, Call_002_7003
    ret


Call_002_6e3a:
    ld a, [$b898]
    or a
    ret nz

    ld a, [$b88d]
    or a
    ret nz

    call Call_002_7073
    ld a, [$cc9c]
    or a
    jr nz, jr_002_6e53

    ld a, [$cc9b]
    cp $80
    ret c

jr_002_6e53:
    ld a, [$b8af]
    cp $01
    ret z

    ld a, [sInventory]
    cp $12
    ret z

    ld a, [sInventory+1]
    cp $12
    ret z

    ld a, $01
    ld [$b898], a
    ld a, $0a
    ld [$b88d], a
    ret


Call_002_6e70:
    ld a, [$b89f]
    cp $03
    ret z

    ld a, [$b88d]
    or a
    ret nz

    ld a, [$b911]
    cp $02
    ret z

    ld a, [$b8fe]
    cp $01
    ret nz

    ld a, $0b
    ld [$b88d], a
    ret


Call_002_6e8d:
    ld a, [$b885]
    or a
    ret nz

    ld a, [sCurrentDayCounter]
    cp $09
    ret c

    ld a, [sCurrentDayCounter]
    cp $13
    ret nc

    ld a, [$b8ea]
    cp $00
    ret nz

    ld a, $01
    ld [$b88d], a
    ret


Call_002_6eaa:
    ld a, [$b885]
    or a
    ret nz

    ld a, [$b884]
    cp $01
    ret nz

    ld a, [$b8ea]
    or a
    ret z

    ld a, [sCurrentDayCounter]
    ld b, a
    ld a, [$b8eb]
    cp b
    ret nz

    ld a, $80
    ld [$b8eb], a
    ld a, [$b8c2]
    ld b, a
    add $02
    ld [$b8ea], a
    ret


Call_002_6ed2:
    ld a, [sCurrentDayCounter]
    add $07
    cp $1e
    ret c

    ld a, $03
    ld [$b88d], a
    pop hl
    ret


Call_002_6ee1:
    ld a, [sCurrentDayCounter]
    ld b, a
    ld a, [$b894]
    cp b
    ret nz

    ld a, [$b884]
    ld b, a
    ld a, [$b895]
    cp b
    ret nz

    ld a, $ff
    ld [$b894], a
    ld [$b895], a
    ld a, $04
    ld [$b88d], a
    pop hl
    ret


Call_002_6f02:
    ld a, $05
    ld [$b88d], a
    pop hl
    ret


Call_002_6f09:
    ld a, $02
    ld [$b88d], a
    pop hl
    ret


Call_002_6f10:
    ld a, [$b885]
    or a
    ret nz

    ld a, $06
    ld [$b88d], a
    pop hl
    ret


Call_002_6f1c:
    ld a, [$b885]
    cp $02
    ret nz

    ld a, [$b89e]
    cp $02
    ret z

    ld a, $02
    ld [$b89e], a
    ld a, $07
    ld [$b88d], a
    pop hl
    ret


Call_002_6f34:
    ld a, [$b896]
    cp $01
    ret nz

    ld a, $08
    ld [$b88d], a
    ld a, $02
    ld [$b896], a
    pop hl
    ret


    ld a, [$b911]
    cp $00
    ret z

    ld a, [$ba42]
    cp $01
    ret z

    xor a
    ld [$b897], a
    ld a, $01
    ld [$ba42], a
    ld a, $01
    ld [$b8a9], a
    ld a, [$b8a5]
    or a
    jr nz, jr_002_6f75

    ld a, [sInventory]
    cp HAMMER
    jr z, jr_002_6f7a

    ld a, [sInventory+1]
    cp HAMMER
    jr z, jr_002_6f88

    ret


jr_002_6f75:
    xor a
    ld [$b8a5], a
    ret


jr_002_6f7a:
    ld a, NO_ITEM
    ld [sInventory], a
    ld a, $10
    ld [$cb8f], a
    call $4341
    ret


jr_002_6f88:
    ld a, NO_ITEM
    ld [sInventory+1], a
    ld a, $10
    ld [$cb8f], a
    call $4341
    ret


Call_002_6f96:
    ld a, [$b885]
    cp $01
    ret nz

    ld a, $0c
    ld [$b88d], a
    pop hl
    ret


Call_002_6fa3:
    ld a, [$b885]
    cp $02
    ret nz

    ld a, [$b899]
    or a
    ret z

    ld a, [$b8ec]
    or a
    ret z

    ld a, $0d
    ld [$b88d], a
    pop hl
    ret


Call_002_6fba:
    ld a, [$b89b]
    add $03
    ld b, a
    ld a, [sCurrentDayCounter]
    cp b
    ret nz

    ld a, $0e
    ld [$b88d], a
    call $6547
    ld a, $80
    ld [$b89b], a
    xor a
    ld [$b88d], a
    pop hl
    ret


Call_002_6fd8:
    ld a, [$b88d]
    or a
    ret nz

    ld a, [$b89d]
    or a
    ret nz

    ld a, [$b88f]
    or a
    ret z

    ld a, $0f
    ld [$b88d], a
    pop hl
    ret


Call_002_6fee:
    ld a, [$b88d]
    or a
    ret nz

    ld a, [$b88e]
    or a
    ret z

    xor a
    ld [$b88e], a
    ld a, $10
    ld [$b88d], a
    pop hl
    ret


Call_002_7003:
    ld a, $01
    ld [$ba43], a
    ld a, $11
    ld [$b88d], a
    ld a, $16
    ld [$b902], a
    pop hl
    ret


Call_002_7014:
    ld a, [$b88d]
    or a
    ret nz

    ld a, [$b8fe]
    cp $00
    ret z

    cp $01
    ret z

    cp $05
    jr nz, jr_002_704d

    xor a
    ld [$b8fe], a
    ld a, [$b911]
    cp $02
    ret z

    inc a
    ld [$b911], a
    ld a, $12
    ld [$b88d], a
    ld a, [$b911]
    cp $01
    jr z, jr_002_7047

    ret


    ld a, $0a
    call Call_000_0f47
    ret


jr_002_7047:
    ld a, $0a
    call Call_000_0f47
    ret


jr_002_704d:
    ld a, [$b8fe]
    inc a
    ld [$b8fe], a
    ret


Call_002_7055:
    ld a, [$b885]
    cp $00
    ret z

    ld a, [$b884]
    cp $00
    ret nz

    ld a, $13
    ld [$b88d], a
    ld a, $ff
    ld [$b8a1], a
    ld [$ba4c], a
    ld [$ba4d], a
    pop hl
    ret


Call_002_7073:
    xor a
    ld b, a
    ld c, a
    ld hl, $a000

jr_002_7079:
    inc hl
    ld a, [hl]
    bit 6, a
    jr nz, jr_002_708e

    or a
    jr nz, jr_002_708f

    dec hl
    ld a, [hl+]
    cp $11
    jr z, jr_002_708e

    cp $12
    jr z, jr_002_708e

    jr jr_002_708f

jr_002_708e:
    inc bc

jr_002_708f:
    inc hl
    ld a, h
    cp $b8
    jr c, jr_002_7079

    ld a, l
    cp $80
    jr c, jr_002_7079

    ld a, b
    ld [$cc9c], a
    ld a, c
    ld [$cc9b], a
    ret


Call_002_70a3:
    xor a
    ld [wLeftOrDownSideFacingTile], a
    ld [wRightOrUpSideFacingTile], a
    ld [$cb34], a
    ret


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
    ld a, c
    cp c
    ld [hl], b
    rst $38
    or b
    ld [hl], a
    or a
    ld a, [hl]
    cp [hl]
    ld a, h
    cp h
    ld a, b
    rst $18
    cp b
    ld a, l
    add l
    ld b, a
    cp d
    inc hl
    ld [bc], a
    rrca
    rrca
    rst $38
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    add b
    ret nz

    ccf
    sbc $23
    inc bc
    ldh a, [$fff0]
    cp $fe
    nop
    ld bc, $0301
    rst $38
    db $fc
    ld c, $0d
    ld b, $05
    ld b, $05
    halt
    rst $38
    ld [hl], l
    ld e, $1d
    adc [hl]
    adc l
    cp [hl]
    and c
    ldh [c], a
    rst $38
    ld e, l
    adc d
    ld a, a
    add l
    ld a, a
    ret nc

    ccf
    xor d
    rst $28
    ld d, l
    rst $38
    nop
    sub d
    and b
    nop
    add d
    ld a, a
    xor d
    ld a, a
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    nop
    rst $38
    ld sp, $fa00
    and c
    nop
    cp a
    nop
    ld bc, $c0bf
    jr nz, @-$3e

    add sp, -$01
    rrca
    ldh [$ffc0], a
    ld l, b
    rst $08
    and b
    ret nz

    rst $38
    rst $38
    cp $7f
    cp $ff
    ld c, $5b
    ld l, [hl]
    sbc a
    rst $38
    and b
    ld e, a
    ld l, [hl]
    sbc a
    xor [hl]
    ld e, a
    ld l, [hl]
    rst $38
    rst $38
    ld a, a
    ldh [$ff7f], a
    rst $08
    ld a, a
    rst $28
    ld e, a
    rst $28
    rst $38
    ld e, a
    ldh [$ff5f], a
    rst $18
    ld h, b
    ld a, a
    add b
    rst $38
    rst $38
    cp $07
    cp $ff
    ld a, [$faff]
    cp a
    rst $38
    jp z, $fa07

    ei
    ld b, $fe
    ld bc, $ffff
    ld b, b
    ld [$e055], a
    ld e, a
    ld [$ff5f], a
    cp $20
    nop
    push hl
    ld e, a
    rst $38
    ld b, b
    rst $38
    nop
    xor d
    rst $38
    ld d, l
    nop
    rst $38
    xor c
    cp $55
    cp $fa
    ei
    rst $38
    ld e, l
    ld h, c
    ld b, $3c
    jp $c342


    ld b, d
    db $fd
    db $db
    ld h, b
    nop
    rst $38
    nop
    ld a, [hl+]
    push de
    rst $38
    nop
    cp a
    ld b, a
    jp z, Jump_002_728f

    rst $00
    ld c, d
    inc hl
    nop
    rst $38
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    nop
    nop
    add b
    nop
    ldh [$ff2f], a
    nop
    ld hl, sp+$00
    cp $40
    nop
    ldh [$ffc0], a
    nop
    dec l
    db $10
    rst $38
    ld d, a
    cp b
    ld d, l
    cp e
    ld a, a
    add e
    ld a, [hl]
    cp e
    rst $30
    ld [hl], h
    cp e
    ld a, h
    ld b, b
    nop
    ld [hl], h
    cp e
    ccf
    rst $38
    rst $30
    ldh a, [rIE]
    add b
    nop
    inc c
    nop
    rst $38
    rrca

jr_002_71fc:
    ldh a, [rIE]
    rra
    add sp, $1f
    rst $20
    db $fc
    rst $38
    rrca
    rst $38
    db $fd
    inc bc

jr_002_7208:
    ld [bc], a
    ld bc, $0ff0
    ld hl, sp+$17
    ld hl, sp-$19
    rst $38
    ld [$aa1d], a
    db $dd
    cp $c1
    cp $dd
    rst $30
    ld a, [hl-]
    db $dd
    ld a, $40
    nop
    ld a, [hl-]
    db $dd
    pop bc
    ccf
    push af
    cp d
    ret nz

    rrca
    sub e
    jp nz, $d00f

    ccf

jr_002_722c:
    ld a, [$fc05]
    sub b
    db $10
    add $0f
    nop
    rst $38
    xor d
    ld d, l
    jr z, jr_002_7208

    rst $38
    jr nz, jr_002_71fc

    ldh [rP1], a
    rst $38
    rst $18
    ld h, b
    rst $18
    rst $20
    cp a
    ret nz

    dec b
    add b
    ld de, $0f41
    rra
    jr nz, jr_002_722c

    rst $38
    xor $1f
    xor $ff
    ld c, $5f
    cp $2b
    rst $38
    cp $7f
    add b
    xor b
    ld d, a
    jp nc, $a22f

    rst $38
    ld e, a
    jp nz, $c63f

    ccf
    adc [hl]
    ld a, a
    cp [hl]
    rst $38
    ld a, a
    cp $01
    ld d, c
    xor [hl]
    and e
    ld e, [hl]
    ld b, e
    cp a
    cp [hl]
    add e
    ld a, [hl]
    add a
    ld a, [hl]
    rrca
    ret nz

    ld [de], a
    ld b, h
    rst $38
    cp e
    ld b, h
    cp e
    ld c, a
    or b
    ld a, a
    adc a
    ld a, c
    rst $38
    adc c
    ld [hl], c
    or c
    ld h, e
    and e
    ld a, a
    cp h
    ld [hl], b
    rst $30
    or b

Jump_002_728f:
    ldh [$ff60], a
    inc hl
    nop
    pop af
    ld [hl], c
    rst $38
    add b
    rst $38
    db $fc
    ld a, h
    ld e, $1d
    rrca
    ld c, $07
    ld b, $fe
    ld hl, $cf00
    call $00ff
    rra
    rra
    ld [hl+], a
    rst $38
    db $dd
    ld [hl+], a
    db $dd
    ldh a, [c]
    dec c
    ld a, [$9ef5]
    rst $38
    sbc c
    add [hl]
    add c
    xor $69
    cp $19
    rst $38
    rst $38
    nop
    sub l
    ld a, a
    xor d
    ld a, a
    sub c
    ld a, a
    jp z, Jump_000_3f87

    or b
    ld e, a
    pop bc
    nop
    or c
    add hl, de
    push hl
    add hl, bc
    ld [hl], c
    ld a, [de]
    ld [hl], h
    cp a
    cp e
    ld h, h
    cp e
    ld [hl], a
    cp b
    ld h, a
    ld h, b
    ld b, $67
    ld a, a
    cp b
    ld b, l
    cp e
    ld a, a
    rst $00
    rrca
    ldh a, [$ffc3]
    dec de
    adc $21
    inc e
    ld e, $ff
    rst $20
    ld h, b
    rrca
    rlca
    ld bc, $ff42
    rst $38
    ld sp, hl
    rst $38
    ld a, [hl-]
    db $dd
    ld [hl-], a
    db $dd
    ld a, [$fd1d]
    ldh a, [c]
    ld h, c
    ld b, $1d
    ld h, d
    db $dd
    cp $e3
    push de
    cp $20
    dec b
    cp c
    ld a, [hl]
    rst $38
    nop
    ld d, d
    cp l
    jp nc, $bd3f

    dec a
    jp $dfdc


    ld d, l
    and b
    rra
    pop hl
    inc de
    rst $38
    ld b, b
    rst $38
    inc e
    rst $38
    ld b, c
    ld a, a
    ld [hl-], a
    di
    ei
    ld d, l
    cp $03
    ld [bc], a
    ld e, d
    cp l
    ld e, e
    cp l
    cp l
    rst $30
    jp $f939


    or b
    ld hl, $bd7b
    ld a, e
    add h
    cp l
    ld a, e
    jr nc, jr_002_735d

    ld a, a
    cp a

jr_002_733d:
    ld a, a
    add b
    ld bc, $f709
    adc a
    ei
    rst $30
    ld [$01f7], sp
    ld bc, $10d0
    ld bc, $ee0a
    rst $28
    rst $30
    xor $11
    xor $30
    inc h
    ld a, [hl]
    cp a
    ld a, [hl]
    rst $38
    add c
    ld a, [hl]
    ld a, a
    cp e

jr_002_735d:
    ld a, [hl]
    add [hl]
    ld a, h
    adc h
    cp a
    ld a, a
    sbc a
    ld a, [hl]
    sbc [hl]
    ld a, h
    cp h
    ld b, c
    ld a, [hl+]
    ret nz

    cp l
    ret nz

    ld b, a
    inc l
    jr c, jr_002_73a9

    ldh a, [$fff0]
    pop bc
    add hl, hl
    ld a, $fd
    ld a, $87
    dec l
    cp $e1
    ld e, $11
    ld c, $09
    rst $38
    ld b, $05
    and $e5
    ld a, [hl]
    ld a, l
    ld e, $1d
    db $eb
    ld c, $0d
    inc bc
    rrca
    ld e, l
    ld b, [hl]
    add hl, hl
    rst $38
    nop
    rst $28
    rst $10

jr_002_7395:
    cp $ff
    cp $41
    nop

jr_002_739a:
    rrca
    and b
    add hl, bc
    rst $28
    cp $ff
    nop
    rst $38
    ld d, a
    rst $38
    jr z, jr_002_7395

    ld b, [hl]
    add $ff

jr_002_73a9:
    jr z, jr_002_739a

    ld d, l
    rst $38
    ld d, d
    rst $38
    ld b, l
    rst $28
    ld a, l
    nop
    ld b, b
    rrca
    jr @+$01

    ld h, [hl]
    ld h, [hl]
    jr jr_002_733d

    inc l
    cp $e1
    inc e
    ld [$14ff], a
    rst $30
    ld h, d
    ld h, e
    inc d
    ld e, e
    rst $30
    ld c, d
    add b
    dec l
    ld b, d
    rst $30
    and c
    ld hl, $b018
    ld sp, $18a9
    ld b, d
    ld [hl+], a
    add c
    ld [hl+], a
    ld [$0ea0], sp
    cp $e0
    ld c, $08
    cp $22
    nop
    rst $38
    nop
    adc e
    ld a, a
    rst $20
    ccf
    add a
    xor a
    ld a, a
    rst $18
    ccf
    and a
    ld b, b
    nop

jr_002_73f0:
    add a
    nop
    rla
    jp hl


    rst $38
    cp $f7
    db $fc
    jp hl


    cp $e3
    db $fc
    push hl
    rst $28
    cp $eb
    db $fc
    pop af
    ldh [rNR10], a
    rst $38
    ld l, a
    or a
    rst $18
    ld l, a
    sub b
    ld l, a
    rst $38
    nop
    db $e4
    rrca
    nop
    rst $38
    rra
    rst $28
    rst $30
    rst $28
    db $10
    rst $28
    ld [$0401], sp
    db $10
    pop hl
    rrca
    rst $38
    rst $38
    nop
    ret z

    cp a
    db $e4
    cp a
    ret nz

    cp a
    rst $30
    jp z, $d0bf

    ld h, h
    nop
    rlca
    ld a, [$fa4f]
    rst $10
    rlca
    ld a, [$4017]
    nop
    adc a
    add b
    nop
    daa
    ld a, [$8aff]
    ld a, l
    add l
    ld a, b
    push bc
    jr c, jr_002_73f0

    ld d, b
    rst $38
    db $fd
    nop
    add l
    ld a, b
    add [hl]
    ld a, h
    add e
    ld a, [hl]
    rst $38
    xor d
    ld e, a
    ld d, l
    rrca
    ld e, d
    rrca
    ld d, b
    rrca
    rst $38
    ld e, a
    nop
    ld e, a
    rrca
    dec [hl]
    rra
    ld l, d
    ccf
    ld a, $b0
    jr c, @+$7a

    sbc a
    ld a, b
    add a
    ld a, b
    nop
    rlca
    ld h, b
    nop
    ld a, [hl]
    add c
    nop
    rst $38
    ld e, $e3
    ld e, $e1
    ld e, $85
    nop
    dec e
    ld b, d
    add d
    rrca
    dec l
    rst $28
    ld a, [hl+]
    inc b
    db $10
    inc bc
    inc a
    ld b, a
    nop
    dec e
    and d
    add d
    rrca
    ld d, h
    rst $30
    or h
    ld [$4910], sp
    nop
    ld h, e
    rrca
    ld a, l
    inc e
    ld b, $10
    rst $08
    ccf
    sub a
    ld a, a
    rst $28
    ld b, b
    nop
    rst $38
    rst $08
    ccf
    xor a
    ld a, a
    rst $10
    ccf
    adc a
    ld a, a
    jp hl


    db $eb
    ret nz

    rrca
    ld bc, $eb10
    ld b, $10
    call nc, $a20a
    or a
    ld d, h
    adc l
    add hl, hl
    and b
    rra
    ld a, a
    db $ed
    jr nz, jr_002_74ba

jr_002_74ba:
    rst $38
    rst $38
    nop
    ld d, l
    xor d
    dec hl
    ld b, h
    dec d
    jr nc, jr_002_74c7

    ld l, a
    db $fc
    rst $38

jr_002_74c7:
    rst $38
    or a
    jr nz, jr_002_74cb

jr_002_74cb:
    dec d
    ld b, $2b
    nop
    ret nc

    ret nc

    jr c, jr_002_74f7

    dec h
    ld b, c
    add hl, sp
    sub b
    ld b, l
    ld [bc], a
    ret nc

    ld d, $00
    ld bc, $fefd
    inc hl
    nop
    rst $38
    nop
    jp $af3d


    ld d, d
    rst $38
    cp $04
    cp a
    ld b, [hl]
    cp [hl]
    ld b, [hl]

jr_002_74ee:
    cp [hl]
    ld b, d
    rst $38
    rst $18
    jr nz, jr_002_74ee

    dec b
    ld [hl], l
    ld e, a

jr_002_74f7:
    ret nc

    xor a
    rst $38
    cpl
    db $10
    rst $28
    scf
    dec l
    scf
    ld a, [hl-]
    cpl
    inc sp
    ldh [$ff1f], a

jr_002_7505:
    add c
    ld c, c
    ld b, $10

jr_002_7509:
    ld a, [hl]
    add e
    ld [hl+], a
    dec d
    ld b, $10
    db $fc
    ld [bc], a
    ld bc, $1003
    jr z, jr_002_7505

    ld b, a
    rst $00
    jr z, jr_002_7509

    ld a, c
    ld d, a
    ld hl, $023b
    ld c, h
    jr @+$01

    rst $20
    rst $20
    ld b, b
    nop
    db $fc
    add b
    ld c, h

jr_002_7529:
    inc bc
    db $10
    inc d
    rst $30
    ldh [c], a
    db $e3
    inc d
    rst $30
    ld h, c
    ld [$1f46], a
    daa
    jr nz, jr_002_753d

    db $10
    inc hl
    jr nz, jr_002_753c

jr_002_753c:
    rst $38

jr_002_753d:
    ld h, c
    rra
    or l
    and a
    and b
    rrca
    add a
    ld h, d
    db $10
    rst $38
    nop
    ld h, c
    rra
    push af

jr_002_754b:
    xor $a2
    rra
    rst $20
    db $fc
    pop hl
    pop hl
    rra
    nop
    adc [hl]
    ld [hl], c
    rst $38
    xor [hl]
    ld [hl], c
    xor d
    ld [hl], l
    xor d
    ld [hl], l
    xor [hl]
    ld [hl], l
    rst $30
    ei
    adc [hl]
    nop
    or b
    ld d, d
    ld [hl], c
    adc [hl]
    pop af
    adc [hl]
    rst $38
    push de
    xor [hl]
    push af
    xor [hl]
    push de
    xor [hl]
    xor [hl]
    ld [hl], c
    rst $38
    ld bc, $3fab
    nop
    ld b, b
    nop
    cp a
    ccf
    rra
    or b
    ccf
    xor a
    jr nc, jr_002_7529

    ld [hl+], a
    nop
    ldh [rWave_4], a
    inc d
    add hl, sp
    cp $c3
    ld e, e
    db $fc
    nop
    ld [bc], a
    nop
    db $fd
    cp $0d
    di
    cp $f5
    add h
    ld [de], a
    ld h, e
    ld [bc], a
    xor a
    jr nc, jr_002_754b

    jr nc, @+$11

    cp a
    ccf
    ld b, b
    ccf
    db $f4
    ld e, d
    ldh a, [rWX]
    ld h, l
    inc bc
    inc bc
    dec d
    rst $38
    push af
    ld b, $0d
    ld c, $fd
    cp $02
    db $fc
    inc bc
    db $fc
    nop
    ld h, e
    dec b
    ld h, a
    nop
    sbc a
    ld l, a
    or c
    ld d, c
    or b
    ld d, b
    or d
    ld d, d
    or e
    ld d, e
    cp a
    ld e, a
    cp b
    ld e, b
    or e
    ld d, e
    rst $38
    rst $38
    ccf
    ccf
    ccf
    ccf
    dec a
    dec a
    dec a
    dec a
    ld sp, hl
    ld sp, hl
    inc bc
    inc bc
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    rrca
    nop
    jr nc, jr_002_75f0

    ld b, b
    ccf
    adc [hl]
    ld [hl], c
    sub c
    ld h, b
    and c
    ld b, b
    add hl, bc
    ld b, $05
    ld [bc], a
    add l
    ld [bc], a
    ld b, l

jr_002_75f0:
    add d
    dec h
    jp nz, $e215

    dec d
    ldh [c], a
    dec d
    ldh [c], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    nop
    jr nc, jr_002_7614

    ld b, b
    ccf
    add b
    ld a, a
    add hl, bc
    ld b, $05
    ld [bc], a
    dec b
    ld [bc], a
    dec b
    ld [bc], a
    add l
    ld [bc], a
    ld b, l

jr_002_7614:
    add d
    dec h
    jp nz, $c225

    nop
    nop
    nop
    nop
    rrca
    nop
    jr nc, jr_002_7630

    ld b, b
    ccf
    sbc b
    ld h, a
    and h
    ld b, e
    and $01
    add hl, bc
    ld b, $05
    ld [bc], a
    add l
    ld [bc], a
    ld b, l

jr_002_7630:
    add d
    dec h
    jp nz, $c225

    dec d
    ldh [c], a
    dec d
    ldh [c], a
    sbc a
    ld l, a
    cp a
    ld e, a
    cp b
    ld e, b
    and a
    ld b, a
    cp [hl]
    ld e, [hl]
    cp a
    ld e, a
    cp a
    ld e, a
    and b
    ld b, b
    rst $38
    rst $38
    ld hl, sp-$08
    rlca
    rlca
    rst $38
    rst $38
    rra
    rra
    ld hl, sp-$08
    rst $38
    rst $38
    rra
    rra
    rst $38
    rst $38
    ld h, c
    ld h, c
    rst $38
    rst $38
    pop hl
    pop hl
    rst $38
    rst $38
    ld a, a
    ld a, a
    pop hl
    pop hl
    rst $38
    rst $38
    ld sp, hl
    or $fd
    ld a, [$8285]
    db $fd
    ld a, [$fafd]
    db $fd
    ld a, [$8285]
    db $fd
    ld a, [$807f]
    rst $38
    ld l, c
    rst $38
    halt
    ld [hl], a
    add b
    ld a, [hl]
    or l
    rst $38
    halt
    rst $38
    ld h, [hl]
    ld h, [hl]
    sbc c
    rst $38
    nop
    rst $38
    ld l, b
    rst $38
    halt
    ld [hl], a
    add b
    ld a, a
    or h
    rst $38
    halt
    rst $38
    ld h, [hl]
    ld h, a
    sbc b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    or a
    ld d, a
    or a
    ld d, a
    cp a
    ld e, a
    cp a
    ld e, a
    cp a
    ld e, a
    ldh [rP1], a
    and b
    ld b, b
    ret nc

    nop
    add hl, sp
    add hl, sp
    add hl, hl
    add hl, hl
    add e
    add e
    rst $10
    rst $10
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    push hl
    nop
    ld a, b
    nop
    ld h, b
    nop
    ld d, b
    jr nz, jr_002_7741

    jr nz, jr_002_7743

    cpl
    ccf
    rra
    ccf
    ld e, $95
    ld h, d
    push de
    ld [hl+], a
    dec d
    ld [hl+], a
    ld d, l
    ld [hl+], a
    push de
    ld [hl+], a
    push hl
    add d
    push hl
    jp nz, $c6e9

    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    ld c, a
    jr nc, jr_002_7752

    jr nz, jr_002_7763

    jr nz, jr_002_7765

    cpl
    ccf
    dec e
    dec d
    ldh [c], a
    dec d
    ldh [c], a
    dec d
    ldh [c], a
    dec d
    ldh [c], a
    sub l
    ld h, d
    sub l
    ld h, d
    push de
    and d
    jp hl


    add $65
    nop
    ld h, h
    nop
    ld b, b
    ld [$0820], sp
    rra
    nop
    rra
    rrca
    ccf
    rra
    ccf
    dec e
    sub l
    ld h, d
    ld d, l
    ld [hl+], a
    ld d, l
    ld [hl+], a
    sub l
    ld h, d
    sub l
    ld h, d
    and l
    ld b, d
    push bc
    add d
    ret


    add [hl]
    cp a
    ld e, a
    cp a
    ld e, a
    cp a
    ld e, a
    and b
    ld b, b

jr_002_7741:
    cp a
    ld e, a

jr_002_7743:
    pop hl
    ld bc, $5fbf
    ret c

    jr z, @+$01

    rst $38
    ldh [$ffe0], a
    rst $38
    rst $38
    ld h, a
    ld h, a
    rst $38

jr_002_7752:
    rst $38
    pop hl
    pop hl
    rst $38
    rst $38
    rlca
    rlca
    ld hl, sp-$08
    ld a, a
    ld a, a
    add c
    add c
    rst $38
    rst $38
    cp $fe

jr_002_7763:
    sbc c
    sbc c

jr_002_7765:
    rst $38
    rst $38
    cp $fe
    ld h, l
    ld h, d
    db $fd
    ld a, [$fafd]
    db $fd
    ld a, [$1a1d]
    db $fd
    ld a, [$fafd]
    add hl, de
    ld d, $60
    sbc a
    or $69
    rst $38
    halt
    ld [hl], a
    add b
    ld a, [hl]
    or l
    rst $38
    halt
    rst $38
    ld h, [hl]
    ld h, [hl]
    sbc c
    ld h, l
    sbc d
    rst $30
    ld l, b
    rst $38
    halt
    ld [hl], a
    add b
    ld a, a
    or h
    rst $38
    halt
    rst $38
    ld h, [hl]
    ld h, a
    sbc b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    sub b
    ld h, b
    and b
    ld b, b
    and e
    ld b, e
    and e
    ld b, e
    and b
    ld b, b
    and [hl]
    ld b, [hl]
    and [hl]
    ld b, [hl]
    and [hl]
    ld b, [hl]
    nop
    nop
    ld [hl], b
    ld [hl], b
    halt
    halt
    ld b, $06
    ld [hl], b
    ld [hl], b
    ei
    ei
    ei
    ei
    ei
    ei
    sub b
    ld h, b
    and [hl]
    ld b, [hl]
    and [hl]
    ld b, [hl]
    and b
    ld b, b
    and c
    ld b, c
    xor l
    ld c, l
    xor l
    ld c, l
    xor l
    ld c, l
    ld [hl], b
    ld [hl], b
    halt
    halt
    ld b, $06
    ld hl, sp-$08
    db $fc
    db $fc
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    nop
    nop
    nop
    nop
    rrca
    nop
    jr nc, jr_002_7810

    ld b, b
    ccf
    adc h
    ld [hl], e
    sub d
    ld h, c
    and c
    ld b, b
    add hl, bc
    ld b, $05
    ld [bc], a
    add l
    ld [bc], a
    ld b, l

jr_002_7810:
    add d
    dec h
    jp nz, $c225

    dec d
    ldh [c], a
    dec d
    ldh [c], a
    nop
    nop
    nop
    nop
    rrca
    nop
    jr nc, jr_002_7830

    ld b, b
    ccf
    adc [hl]
    ld [hl], c
    sub d
    ld h, c
    and e
    ld b, b
    add hl, bc
    ld b, $05
    ld [bc], a
    add l
    ld [bc], a
    ld b, l

jr_002_7830:
    add d
    dec h
    jp nz, $c225

    dec d
    ldh [c], a
    dec d
    ldh [c], a
    sbc a
    ld l, a
    xor h
    ld c, h
    cp a
    ld e, a
    cp h
    ld e, h
    cp a
    ld e, a
    xor a
    ld c, a
    cp h
    ld e, h
    cp a
    ld e, a
    rst $38
    rst $38
    ccf
    ccf
    ldh a, [$fff0]
    ccf
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    jr nc, jr_002_7887

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ret nz

    ret nz

    ccf
    ccf
    ldh a, [$fff0]
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    ld sp, hl
    or $c5
    jp nz, $3a3d

    db $fd
    ld a, [$fafd]
    push bc
    jp nz, $fafd

    db $fd
    ld a, [$9f60]
    or $69
    rst $38
    halt
    ld [hl], a
    add b
    ld a, [hl]
    or l
    rst $38
    halt
    rst $38
    ld h, [hl]

jr_002_7887:
    ld h, [hl]
    sbc c
    ld h, c
    sbc [hl]
    rst $30
    ld l, b
    rst $38
    halt
    ld [hl], a
    add b
    ld a, a
    or h
    rst $38
    halt
    rst $38
    ld h, [hl]
    ld h, a
    sbc b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    and b
    ld b, b
    and e
    ld b, e
    and e
    ld b, e
    and b
    ld b, b
    and b
    ld b, b
    ldh [rP1], a
    and b
    ld b, b
    ret nc

    jr nz, jr_002_793a

    ld [hl], b
    ld b, $06
    halt
    halt
    ld [hl], b
    ld [hl], b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    and c
    ld b, c
    and b
    ld b, b
    and [hl]
    ld b, [hl]
    and [hl]
    ld b, [hl]
    and b
    ld b, b
    ldh [rP1], a
    and b

jr_002_78e6:
    ld b, b
    ret nc

    jr nz, jr_002_78e6

    db $fc
    ld hl, sp-$08
    ld b, $06
    halt
    halt
    ld [hl], b
    ld [hl], b
    nop
    nop
    nop
    nop
    nop
    nop
    or e
    ld b, b
    ld b, b
    nop
    ld b, b
    ld c, $20
    inc b
    rra
    nop
    rst $38
    rrca
    sbc a
    rra
    ld a, a
    dec e
    sub l
    ld h, d
    ld d, l
    ld [hl+], a
    ld d, l
    ld [hl+], a
    sub l
    ld h, d
    sub l
    ld h, d
    and l
    ld b, d
    push bc
    add d
    ret


    add [hl]
    xor d
    ld b, b
    ld [hl], c
    nop
    ld b, b
    nop
    jr nz, jr_002_7921

jr_002_7921:
    rra
    nop
    rra
    rrca
    ccf
    inc e
    ld sp, $9511
    ld h, d
    push de
    ld [hl+], a
    ld d, l
    ld [hl+], a
    sub l
    ld h, d
    sub l
    ld h, d
    and l
    ld b, d
    push bc
    add d
    ret


    add [hl]
    cp a

jr_002_793a:
    ld e, a
    xor a
    ld c, a
    or b
    ld d, b
    cp a
    ld e, a
    cp a
    ld e, a
    di
    inc de
    cp a
    ld e, a
    rst $18
    cpl
    inc c
    inc c
    rst $38
    rst $38
    ccf
    ccf
    rst $38
    rst $38
    jp $3fc3


    ccf
    rst $38
    rst $38
    jp $ffc3


    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc bc
    inc bc
    rst $38
    rst $38
    rrca
    rrca
    rst $38
    rst $38
    ret nz

    ret nz

    db $fd
    ld a, [$0205]
    db $fd
    ld a, [$3a3d]
    db $fd
    ld a, [$0a0d]
    db $fd
    ld a, [$3639]
    ld h, b
    sbc a
    or $69
    rst $38
    halt
    ld [hl], a
    add b
    ld a, [hl]
    or l
    rst $38
    halt
    rst $38
    ld h, [hl]
    ld h, [hl]
    sbc c
    ld h, c
    sbc [hl]
    rst $30
    ld l, b
    rst $38
    halt
    ld [hl], a
    add b
    ld a, a
    or h
    rst $38
    halt
    rst $38
    ld h, [hl]
    ld h, a
    sbc b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    sbc [hl]
    ld l, [hl]
    cp l
    ld e, l
    cp e
    ld e, e
    or a
    ld d, h
    xor a
    ld c, b
    cp a
    ld d, b
    cp a
    ld e, [hl]
    cp a
    ld e, a
    cp $fe
    db $fd
    db $fd
    ei
    dec de
    rst $30
    rlca
    rst $28
    inc bc
    rst $38
    inc bc
    cp $00
    db $fd
    add c
    sbc l
    ld l, l
    cp e
    ld e, e
    cp a
    ld e, a
    cp a
    ld e, h
    cp a
    ld e, b
    cp a
    ld d, b
    cp a
    ld e, [hl]
    cp l
    ld e, l
    db $fd
    db $fd
    ei
    ei
    rst $28
    rrca
    rst $18
    rlca
    cp a
    inc bc
    ld a, a
    inc bc
    rst $38
    ld bc, $81ff
    sbc a
    ld h, b
    cp h
    ld b, e
    and b
    ld e, a
    and a
    ld e, a
    cp b
    ld e, b
    cp h
    ld e, h
    or c
    ld d, c
    and e
    ld b, e
    rst $38
    nop
    nop
    rst $38
    ld a, h
    rst $38
    pop af
    rst $38
    ccf
    ccf
    nop
    nop
    pop hl
    pop hl
    ld hl, sp-$08
    nop
    nop
    nop
    nop
    rrca
    nop
    jr nc, jr_002_7a30

    ld b, b
    ccf
    adc h
    ld [hl], e
    add d
    ld [hl], c
    add b
    ld h, b
    add hl, bc
    ld b, $05
    ld [bc], a
    add l
    ld [bc], a
    ld b, l

jr_002_7a30:
    add d
    dec h
    jp nz, $c225

    dec d
    ldh [c], a
    ld d, l
    ld [hl+], a
    rst $38
    add b
    ret nz

    cp a
    jr z, jr_002_7a57

    rra
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    ld bc, $fe01
    dec b
    ld b, $ff
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38

jr_002_7a57:
    nop
    rst $38
    rst $38
    add b
    add b
    ld a, a
    ret nz

    ld b, b
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop

jr_002_7a68:
    rst $38
    rst $38
    nop
    inc bc
    db $fd
    inc d
    jr jr_002_7a68

    nop
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld h, b
    sbc a
    or $69
    rst $38
    halt
    ld [hl], a
    add b
    ld a, [hl]
    or l
    rst $38
    halt
    rst $38
    ld h, [hl]
    ld h, [hl]
    sbc c
    ld h, c
    sbc [hl]
    rst $30
    ld l, b
    rst $38
    halt
    ld [hl], a
    add b
    ld a, a
    or h
    rst $38
    halt
    rst $38
    ld h, [hl]
    ld h, a
    sbc b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    cp a
    ld e, a
    cp a
    ld e, d
    cp a
    ld e, h
    cp a
    ld e, a
    cp [hl]
    ld e, [hl]
    ldh [rP1], a

jr_002_7ac5:
    and b
    ld b, b
    ret nc

    jr nz, jr_002_7ac5

    ld hl, $51d7
    cp a
    cp l
    ld a, a
    ld a, a
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    cp e
    ld e, e
    or a
    ld d, d
    cp a
    ld e, h
    cp a
    ld e, a
    cp a
    ld e, a
    ldh [rP1], a
    and b
    ld b, b
    ret nc

    jr nz, @+$01

    ld hl, $79ff
    cp $fc
    db $fd
    db $fd
    ei
    ei
    nop
    nop
    nop
    nop
    nop
    nop
    and a
    ld b, a
    xor a
    ld c, a
    xor h
    ld c, a
    cp b
    ld e, a
    cp a
    ld b, b
    ldh [rP1], a
    and b

jr_002_7b06:
    ld b, b
    ret nc

    jr nz, jr_002_7b06

    db $fc
    db $fc
    db $fc
    ld a, $fe
    ld e, $fe
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    pop de
    nop
    ld b, b
    nop
    ld b, b
    ld c, $51
    ld c, $bf
    nop
    sbc a
    ld c, $7f
    rra
    rra
    rrca
    ld d, l
    ld [hl+], a
    ld c, l
    ld [hl-], a
    ld c, l
    ld [hl-], a
    call Call_000_3532
    ld [bc], a
    dec h
    ld [bc], a
    push bc
    ld [bc], a
    ret


    add [hl]
    add b
    ld h, b
    add [hl]
    ld b, [hl]
    adc h
    ld c, h
    adc b
    ld c, b
    adc b
    ld c, b
    adc b
    ld c, b
    adc b
    ld c, b
    adc b
    ld c, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add hl, bc
    ld b, $45
    ld b, d
    dec d
    ld [de], a
    dec d
    ld [de], a
    dec d
    ld [de], a
    dec d
    ld [de], a
    dec d
    ld [de], a
    dec [hl]
    ld [hl-], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    sub c
    ld h, c
    xor c
    ld c, b
    or [hl]
    ld d, h
    xor [hl]
    ld c, b
    and l
    ld b, c
    xor l
    ld c, c
    or [hl]
    ld d, b
    xor b
    ld b, b
    db $dd
    pop bc
    cp $1c
    ccf
    dec c
    inc l
    nop
    adc b
    add b
    adc d
    add d
    dec c
    dec b
    ld b, $02
    sub h
    ld h, h
    xor d
    ld c, d
    or l
    ld b, l
    cp d
    ld d, d
    cp l
    ld e, c
    cp h
    ld e, b
    cp h
    ld b, b
    xor b
    ld b, b
    inc d
    inc d
    dec hl
    jr z, jr_002_7c45

    ld d, e
    cpl
    daa
    ld e, a
    ld c, a
    cp a
    sbc a
    ld a, a
    ccf
    rst $38
    ld a, a
    sbc b
    ld l, b
    or h
    ld d, h
    xor d
    ld c, d
    or l
    ld b, l
    cp d
    ld d, d
    cp l
    ld e, c
    cp h
    ld e, b
    cp h
    ld b, b
    ld a, [bc]
    ld a, [bc]
    inc d
    inc d
    dec hl
    jr z, jr_002_7c67

    ld d, e
    cpl
    daa
    ld e, a
    ld c, a
    cp a
    sbc a
    ld a, a
    ccf
    nop
    nop
    nop
    nop
    rrca
    nop
    jr nc, jr_002_7c30

    ld b, b
    ccf
    adc h
    ld [hl], e
    sub d
    ld h, c
    add b
    ld h, b
    add hl, bc
    ld b, $05
    ld [bc], a
    add l
    ld [bc], a
    ld b, l

jr_002_7c30:
    add d
    dec h
    jp nz, $c225

    dec d
    ldh [c], a
    dec d
    ld h, d
    adc b
    ld c, b
    adc b
    ld c, b
    adc b
    ld c, b
    adc h
    ld c, h
    adc h
    ld c, h
    add $06

jr_002_7c45:
    add e
    ld b, e
    ret nz

    jr nz, jr_002_7c4a

jr_002_7c4a:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ei
    ei
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    cp a
    cp a

jr_002_7c67:
    nop
    nop
    dec [hl]
    ld [hl-], a
    dec [hl]
    ld [hl-], a
    dec [hl]
    ld [hl-], a
    ld [hl], l
    ld [hl], d
    push af
    ldh a, [c]
    push af
    ldh a, [c]
    push hl
    ldh [c], a
    add hl, bc
    ld b, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    cp h
    ld c, h
    cp h
    ld c, h
    xor b
    ld b, b
    and h
    ld b, b
    and e
    ld b, b
    rst $38
    rra
    cp a
    ld e, a
    rst $18
    cpl
    inc [hl]
    jr nc, jr_002_7d00

    jr nc, jr_002_7cd2

    nop
    ld [$f000], sp

jr_002_7cd2:
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    xor [hl]
    ld b, b
    xor c
    ld b, [hl]
    xor c
    ld b, [hl]
    xor c
    ld b, [hl]
    xor c
    ld b, [hl]
    rst $38
    nop
    cp a
    ld e, a
    rst $18
    cpl
    rst $38
    nop
    stop
    stop
    stop
    stop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    cp b
    ld d, b
    cp [hl]
    ld d, b
    cp c
    ld d, [hl]
    cp c

jr_002_7d00:
    ld d, [hl]
    cp c
    ld d, [hl]
    rst $38
    nop
    cp a
    ld e, a
    rst $18
    cpl
    rst $38
    ld a, a
    rst $38
    nop
    stop
    stop
    stop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    sub c
    ld b, b
    ld b, b
    nop
    ld h, b
    inc b
    sub c
    inc b
    sbc a
    nop
    ld a, a
    rra
    ccf
    rra
    rra
    rrca
    ld c, l
    ld [hl-], a
    ld c, l
    ld [hl-], a
    call $2d32
    ld [de], a
    dec [hl]
    ld [bc], a
    push hl
    ld [bc], a
    push bc
    add d
    ret


    add [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [rSC]
    ldh a, [c]
    dec e
    nop
    rst $38
    rra
    nop
    sub [hl]
    nop
    ld d, l
    ld d, l
    xor d
    xor d
    ld a, [$016c]
    cp $68
    ld [bc], a
    pop af
    ld sp, hl
    ret nz

    ldh [rNR14], a
    ld [$036c], a
    ccf
    ld h, [hl]
    inc b
    db $fd
    ld a, [bc]
    inc b
    add sp, -$01
    ld d, l
    ld c, $08
    dec b
    ldh [rIE], a
    nop
    ld b, $01
    pop bc
    nop
    ld hl, $0400
    ld [bc], a
    rst $38
    ldh a, [$ff0b]
    ld [$f515], a
    ld a, [bc]
    rst $38
    jr nz, @+$80

    dec b
    inc bc
    ld [hl], a
    add hl, bc
    cp c
    ld b, [hl]
    db $ec
    inc de
    ld [$9f03], sp
    rst $38
    rst $38
    ld a, a
    rst $38
    dec b
    ld a, [bc]
    ld bc, $0121
    xor a
    or h
    ld a, [bc]
    ld b, $e7
    ld a, [bc]
    ldh [$ffeb], a
    ld a, [bc]
    pop af
    ld a, [bc]
    db $eb
    ld a, [bc]
    ld a, a
    ld bc, $e709
    ld a, [bc]
    ld [$e204], sp
    ld a, [bc]
    ld b, $05
    db $e4
    ld a, [bc]
    inc b
    ld b, $e6
    ld a, [bc]
    nop
    inc bc
    rlca
    rst $20
    ld a, [bc]
    inc bc
    ld [$0ae7], sp
    inc b
    add hl, bc
    and $0a
    ld [$e20c], sp
    ld a, [bc]
    db $fc
    inc bc
    dec bc
    ld de, $7e19
    nop
    jp $ad3c


    ld d, d
    cp a
    add a
    ld a, b
    swap h
    adc e
    ld [hl], h
    inc de
    ld a, [de]
    and l
    ld [hl], a
    and l
    ld e, a
    ld e, a
    inc b
    add hl, de
    nop
    call Call_000_1132
    ld [de], a
    rst $38
    ret nz

    ccf
    inc d
    db $eb
    rst $38
    nop
    adc e
    ld [hl], h
    cp a
    add l
    ld a, d
    rst $38
    nop
    and $19
    ld sp, $3213
    or a
    call $b748
    pop bc
    inc de
    add hl, hl
    sub $11
    inc d
    jr nz, @+$01

    rst $18
    sbc l
    ld h, d
    rst $38
    nop
    db $d3
    db $d3
    rst $38
    rst $18
    nop
    ld e, h
    and e
    ld [bc], a
    db $fd
    ld bc, $5401
    xor e
    rst $38
    rst $38
    nop
    ld d, [hl]
    ld d, [hl]
    xor l
    xor l
    rst $38
    nop
    rst $38
    sub b
    ld l, a
    ld bc, $00fe
    rst $38
    db $10
    rst $28
    cp a
    ld c, [hl]
    or c
    rst $38
    nop
    xor c
    xor c
    ld h, b
    ld bc, $fea9
    ld sp, $0217
    db $fd
    xor e
    ld d, h
    rst $38
    nop
    cp d
    rst $38
    rst $28
    dec b
    cp $86
    ei
    and $59
    dec e
    rst $38
    ldh [c], a
    ld [hl+], a
    db $dd
    sbc e
    ld h, h
    ld [hl], h
    inc bc
    adc e
    rst $38
    ld [hl], h
    swap h
    add e
    ld a, h
    add l
    ld a, d
    add e
    rst $38
    ld a, h

jr_002_7ecd:
    sub a
    ld l, b
    rst $10
    xor c
    rst $38
    add $b2
    rst $38
    rst $28
    ld bc, $2cfe
    ei
    ld b, c
    cp a
    jp nc, $2dff

    ld a, l
    add d
    and [hl]
    ld e, c
    ld a, l
    nop
    sbc b
    rst $38
    rst $28
    ld d, c
    cp $06
    ei
    ldh [$ff5f], a
    ld [de], a
    rst $38
    db $ed
    dec h
    jp c, Jump_000_09f6

    ld e, c
    nop
    db $db
    rst $38
    inc h
    ld [hl], $c9
    xor b
    rst $30
    ld e, d
    db $fd
    ld a, [$ffff]
    and l
    rst $38
    ld a, a
    ld a, a
    xor l
    db $ed
    ld d, l
    rst $38
    xor d
    and d
    ld e, a
    ld d, h
    db $eb
    sbc b
    rst $38
    ld h, c
    rst $38
    rst $38
    cp a
    rst $38
    sbc $df
    ei
    ei
    add d
    rst $38
    ld a, l
    and [hl]
    db $db
    sub d
    ld a, a
    ld bc, $98ff
    rst $38
    rst $38
    ld l, a
    rst $38
    cp e
    rst $38
    rst $28
    rst $28
    and d
    cp a
    ld e, l
    ld [$25f7], sp
    rst $38
    sbc d
    ldh [rP1], a
    db $fd
    cp $00
    inc bc
    db $db
    db $db
    dec [hl]
    dec [hl]
    add b
    add b
    ld b, $ff
    ld b, $d0
    ret nc

    nop
    nop
    ld [bc], a
    ld [bc], a
    jr nz, jr_002_7ecd

    jr nz, jr_002_7f73

    add hl, hl
    inc sp
    ld hl, $21a4
    ld l, $00
    db $e4
    ld bc, $11d1
    nop
    rst $38
    ld [de], a
    nop
    cpl
    nop
    ld [hl+], a
    nop
    daa
    nop
    rst $30
    dec hl
    nop
    ld a, [hl+]
    add b
    nop
    ld [de], a
    nop
    and h
    nop
    rst $18
    ldh a, [c]
    nop
    and d
    nop
    ld [hl], d

jr_002_7f73:
    ld b, b
    ld bc, $0072
    rrca
    xor d
    nop
    inc h
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
