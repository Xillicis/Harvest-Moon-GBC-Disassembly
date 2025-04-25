; Disassembly of "harvest_moon.gbc"
; This file was created with:
; mgbdis v2.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $00f", ROMX[$4000], BANK[$f]

    rrca
    ld a, [$c60d]
    rst $00
    dec c
    ld b, b
    ld c, [hl]
    ld b, b
    adc a
    ld b, b
    ret nc

    ld b, b
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
    ld [$cc94], a
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
    ld a, l
    ld [$cc95], a
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
    ld [$cc95], a
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
    ld [$cc94], a
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
    ld [$cc95], a
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
    ld [$cc94], a
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
    ld [$cc94], a
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
    ld [$cc95], a
    ret


    ld a, [$cc95]
    rst $00
    dec l
    ld b, c
    dec l
    ld b, c
    dec l
    ld b, c
    dec l
    ld b, c
    dec bc
    ld b, h
    jp hl


    ld b, [hl]
    rst $00
    ld c, c
    and l
    ld c, h
    add e
    ld c, a
    ld h, c
    ld d, d
    ccf
    ld d, l
    dec e
    ld e, b
    ei
    ld e, d
    reti


    ld e, l
    ld a, [$cc94]
    rst $00
    ld c, l
    ld b, c
    ld c, l
    ld b, c
    add e
    ld b, c
    cp c
    ld b, c
    rst $28
    ld b, c
    dec h
    ld b, d
    ld e, e
    ld b, d
    sub c
    ld b, d
    rst $00
    ld b, d
    db $fd
    ld b, d
    inc sp
    ld b, e
    ld l, c
    ld b, e
    sbc a
    ld b, e
    push de
    ld b, e
    ld a, [$cc79]
    cp $04
    jr z, jr_00f_415f

    ld a, [$b9de]
    bit 0, a
    ret z

    ld hl, $b9dc
    jr jr_00f_4168

jr_00f_415f:
    ld a, [$b9f4]
    bit 0, a
    ret z

    ld hl, $b9f2

jr_00f_4168:
    ld a, [hl]
    set 0, a
    ld [hl], a
    ld a, $98
    ld [$cc92], a
    ld a, $22
    ld [$cc93], a
    ld hl, $d800
    ld de, $0068
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_4195

    ld a, [$b9de]
    bit 1, a
    ret z

    ld hl, $b9dc
    jr jr_00f_419e

jr_00f_4195:
    ld a, [$b9f4]
    bit 1, a
    ret z

    ld hl, $b9f2

jr_00f_419e:
    ld a, [hl]
    set 1, a
    ld [hl], a
    ld a, $98
    ld [$cc92], a
    ld a, $24
    ld [$cc93], a
    ld hl, $d800
    ld de, $006a
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_41cb

    ld a, [$b9de]
    bit 2, a
    ret z

    ld hl, $b9dc
    jr jr_00f_41d4

jr_00f_41cb:
    ld a, [$b9f4]
    bit 2, a
    ret z

    ld hl, $b9f2

jr_00f_41d4:
    ld a, [hl]
    set 2, a
    ld [hl], a
    ld a, $98
    ld [$cc92], a
    ld a, $26
    ld [$cc93], a
    ld hl, $d800
    ld de, $006c
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_4201

    ld a, [$b9de]
    bit 3, a
    ret z

    ld hl, $b9dc
    jr jr_00f_420a

jr_00f_4201:
    ld a, [$b9f4]
    bit 3, a
    ret z

    ld hl, $b9f2

jr_00f_420a:
    ld a, [hl]
    set 3, a
    ld [hl], a
    ld a, $98
    ld [$cc92], a
    ld a, $28
    ld [$cc93], a
    ld hl, $d800
    ld de, $006e
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_4237

    ld a, [$b9de]
    bit 4, a
    ret z

    ld hl, $b9dc
    jr jr_00f_4240

jr_00f_4237:
    ld a, [$b9f4]
    bit 4, a
    ret z

    ld hl, $b9f2

jr_00f_4240:
    ld a, [hl]
    set 4, a
    ld [hl], a
    ld a, $98
    ld [$cc92], a
    ld a, $2a
    ld [$cc93], a
    ld hl, $d800
    ld de, $0070
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_426d

    ld a, [$b9de]
    bit 5, a
    ret z

    ld hl, $b9dc
    jr jr_00f_4276

jr_00f_426d:
    ld a, [$b9f4]
    bit 5, a
    ret z

    ld hl, $b9f2

jr_00f_4276:
    ld a, [hl]
    set 5, a
    ld [hl], a
    ld a, $98
    ld [$cc92], a
    ld a, $2c
    ld [$cc93], a
    ld hl, $d800
    ld de, $0072
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_42a3

    ld a, [$b9de]
    bit 6, a
    ret z

    ld hl, $b9dc
    jr jr_00f_42ac

jr_00f_42a3:
    ld a, [$b9f4]
    bit 6, a
    ret z

    ld hl, $b9f2

jr_00f_42ac:
    ld a, [hl]
    set 6, a
    ld [hl], a
    ld a, $98
    ld [$cc92], a
    ld a, $2e
    ld [$cc93], a
    ld hl, $d800
    ld de, $0074
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_42d9

    ld a, [$b9de]
    bit 7, a
    ret z

    ld hl, $b9dc
    jr jr_00f_42e2

jr_00f_42d9:
    ld a, [$b9f4]
    bit 7, a
    ret z

    ld hl, $b9f2

jr_00f_42e2:
    ld a, [hl]
    set 7, a
    ld [hl], a
    ld a, $98
    ld [$cc92], a
    ld a, $30
    ld [$cc93], a
    ld hl, $d800
    ld de, $0076
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_430f

    ld a, [$b9df]
    bit 0, a
    ret z

    ld hl, $b9dd
    jr jr_00f_4318

jr_00f_430f:
    ld a, [$b9f5]
    bit 0, a
    ret z

    ld hl, $b9f3

jr_00f_4318:
    ld a, [hl]
    set 0, a
    ld [hl], a
    ld a, $98
    ld [$cc92], a
    ld a, $32
    ld [$cc93], a
    ld hl, $d800
    ld de, $0078
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_4345

    ld a, [$b9df]
    bit 1, a
    ret z

    ld hl, $b9dd
    jr jr_00f_434e

jr_00f_4345:
    ld a, [$b9f5]
    bit 1, a
    ret z

    ld hl, $b9f3

jr_00f_434e:
    ld a, [hl]
    set 1, a
    ld [hl], a
    ld a, $98
    ld [$cc92], a
    ld a, $34
    ld [$cc93], a
    ld hl, $d800
    ld de, $007a
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_437b

    ld a, [$b9df]
    bit 2, a
    ret z

    ld hl, $b9dd
    jr jr_00f_4384

jr_00f_437b:
    ld a, [$b9f5]
    bit 2, a
    ret z

    ld hl, $b9f3

jr_00f_4384:
    ld a, [hl]
    set 2, a
    ld [hl], a
    ld a, $98
    ld [$cc92], a
    ld a, $36
    ld [$cc93], a
    ld hl, $d800
    ld de, $007c
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_43b1

    ld a, [$b9df]
    bit 3, a
    ret z

    ld hl, $b9dd
    jr jr_00f_43ba

jr_00f_43b1:
    ld a, [$b9f5]
    bit 3, a
    ret z

    ld hl, $b9f3

jr_00f_43ba:
    ld a, [hl]
    set 3, a
    ld [hl], a
    ld a, $98
    ld [$cc92], a
    ld a, $38
    ld [$cc93], a
    ld hl, $d800
    ld de, $007e
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_43e7

    ld a, [$b9df]
    bit 4, a
    ret z

    ld hl, $b9dd
    jr jr_00f_43f0

jr_00f_43e7:
    ld a, [$b9f5]
    bit 4, a
    ret z

    ld hl, $b9f3

jr_00f_43f0:
    ld a, [hl]
    set 4, a
    ld [hl], a
    ld a, $98
    ld [$cc92], a
    ld a, $3a
    ld [$cc93], a
    ld hl, $d800
    ld de, $0080
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc94]
    rst $00
    dec hl
    ld b, h
    dec hl
    ld b, h
    ld h, c
    ld b, h
    sub a
    ld b, h
    call $0344
    ld b, l
    add hl, sp
    ld b, l
    ld l, a
    ld b, l
    and l
    ld b, l
    db $db
    ld b, l
    ld de, $4746
    ld b, [hl]
    ld a, l
    ld b, [hl]
    or e
    ld b, [hl]
    ld a, [$cc79]
    cp $04
    jr z, jr_00f_443d

    ld a, [$b9e0]
    bit 0, a
    ret z

    ld hl, $b9de
    jr jr_00f_4446

jr_00f_443d:
    ld a, [$b9f6]
    bit 0, a
    ret z

    ld hl, $b9f4

jr_00f_4446:
    ld a, [hl]
    set 0, a
    ld [hl], a
    ld a, $98
    ld [$cc92], a
    ld a, $62
    ld [$cc93], a
    ld hl, $d800
    ld de, $008a
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_4473

    ld a, [$b9e0]
    bit 1, a
    ret z

    ld hl, $b9de
    jr jr_00f_447c

jr_00f_4473:
    ld a, [$b9f6]
    bit 1, a
    ret z

    ld hl, $b9f4

jr_00f_447c:
    ld a, [hl]
    set 1, a
    ld [hl], a
    ld a, $98
    ld [$cc92], a
    ld a, $64
    ld [$cc93], a
    ld hl, $d800
    ld de, $008c
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_44a9

    ld a, [$b9e0]
    bit 2, a
    ret z

    ld hl, $b9de
    jr jr_00f_44b2

jr_00f_44a9:
    ld a, [$b9f6]
    bit 2, a
    ret z

    ld hl, $b9f4

jr_00f_44b2:
    ld a, [hl]
    set 2, a
    ld [hl], a
    ld a, $98
    ld [$cc92], a
    ld a, $66
    ld [$cc93], a
    ld hl, $d800
    ld de, $008e
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_44df

    ld a, [$b9e0]
    bit 3, a
    ret z

    ld hl, $b9de
    jr jr_00f_44e8

jr_00f_44df:
    ld a, [$b9f6]
    bit 3, a
    ret z

    ld hl, $b9f4

jr_00f_44e8:
    ld a, [hl]
    set 3, a
    ld [hl], a
    ld a, $98
    ld [$cc92], a
    ld a, $68
    ld [$cc93], a
    ld hl, $d800
    ld de, $0090
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_4515

    ld a, [$b9e0]
    bit 4, a
    ret z

    ld hl, $b9de
    jr jr_00f_451e

jr_00f_4515:
    ld a, [$b9f6]
    bit 4, a
    ret z

    ld hl, $b9f4

jr_00f_451e:
    ld a, [hl]
    set 4, a
    ld [hl], a
    ld a, $98
    ld [$cc92], a
    ld a, $6a
    ld [$cc93], a
    ld hl, $d800
    ld de, $0092
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_454b

    ld a, [$b9e0]
    bit 5, a
    ret z

    ld hl, $b9de
    jr jr_00f_4554

jr_00f_454b:
    ld a, [$b9f6]
    bit 5, a
    ret z

    ld hl, $b9f4

jr_00f_4554:
    ld a, [hl]
    set 5, a
    ld [hl], a
    ld a, $98
    ld [$cc92], a
    ld a, $6c
    ld [$cc93], a
    ld hl, $d800
    ld de, $0094
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_4581

    ld a, [$b9e0]
    bit 6, a
    ret z

    ld hl, $b9de
    jr jr_00f_458a

jr_00f_4581:
    ld a, [$b9f6]
    bit 6, a
    ret z

    ld hl, $b9f4

jr_00f_458a:
    ld a, [hl]
    set 6, a
    ld [hl], a
    ld a, $98
    ld [$cc92], a
    ld a, $6e
    ld [$cc93], a
    ld hl, $d800
    ld de, $0096
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_45b7

    ld a, [$b9e0]
    bit 7, a
    ret z

    ld hl, $b9de
    jr jr_00f_45c0

jr_00f_45b7:
    ld a, [$b9f6]
    bit 7, a
    ret z

    ld hl, $b9f4

jr_00f_45c0:
    ld a, [hl]
    set 7, a
    ld [hl], a
    ld a, $98
    ld [$cc92], a
    ld a, $70
    ld [$cc93], a
    ld hl, $d800
    ld de, $0098
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_45ed

    ld a, [$b9e1]
    bit 0, a
    ret z

    ld hl, $b9df
    jr jr_00f_45f6

jr_00f_45ed:
    ld a, [$b9f7]
    bit 0, a
    ret z

    ld hl, $b9f5

jr_00f_45f6:
    ld a, [hl]
    set 0, a
    ld [hl], a
    ld a, $98
    ld [$cc92], a
    ld a, $72
    ld [$cc93], a
    ld hl, $d800
    ld de, $009a
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_4623

    ld a, [$b9e1]
    bit 1, a
    ret z

    ld hl, $b9df
    jr jr_00f_462c

jr_00f_4623:
    ld a, [$b9f7]
    bit 1, a
    ret z

    ld hl, $b9f5

jr_00f_462c:
    ld a, [hl]
    set 1, a
    ld [hl], a
    ld a, $98
    ld [$cc92], a
    ld a, $74
    ld [$cc93], a
    ld hl, $d800
    ld de, $009c
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_4659

    ld a, [$b9e1]
    bit 2, a
    ret z

    ld hl, $b9df
    jr jr_00f_4662

jr_00f_4659:
    ld a, [$b9f7]
    bit 2, a
    ret z

    ld hl, $b9f5

jr_00f_4662:
    ld a, [hl]
    set 2, a
    ld [hl], a
    ld a, $98
    ld [$cc92], a
    ld a, $76
    ld [$cc93], a
    ld hl, $d800
    ld de, $009e
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_468f

    ld a, [$b9e1]
    bit 3, a
    ret z

    ld hl, $b9df
    jr jr_00f_4698

jr_00f_468f:
    ld a, [$b9f7]
    bit 3, a
    ret z

    ld hl, $b9f5

jr_00f_4698:
    ld a, [hl]
    set 3, a
    ld [hl], a
    ld a, $98
    ld [$cc92], a
    ld a, $78
    ld [$cc93], a
    ld hl, $d800
    ld de, $00a0
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_46c5

    ld a, [$b9e1]
    bit 4, a
    ret z

    ld hl, $b9df
    jr jr_00f_46ce

jr_00f_46c5:
    ld a, [$b9f7]
    bit 4, a
    ret z

    ld hl, $b9f5

jr_00f_46ce:
    ld a, [hl]
    set 4, a
    ld [hl], a
    ld a, $98
    ld [$cc92], a
    ld a, $7a
    ld [$cc93], a
    ld hl, $d800
    ld de, $00a2
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc94]
    rst $00
    add hl, bc
    ld b, a
    add hl, bc
    ld b, a
    ccf
    ld b, a
    ld [hl], l
    ld b, a
    xor e
    ld b, a
    pop hl
    ld b, a
    rla
    ld c, b
    ld c, l
    ld c, b
    add e
    ld c, b
    cp c
    ld c, b
    rst $28
    ld c, b
    dec h
    ld c, c
    ld e, e
    ld c, c
    sub c
    ld c, c
    ld a, [$cc79]
    cp $04
    jr z, jr_00f_471b

    ld a, [$b9e2]
    bit 0, a
    ret z

    ld hl, $b9e0
    jr jr_00f_4724

jr_00f_471b:
    ld a, [$b9f8]
    bit 0, a
    ret z

    ld hl, $b9f6

jr_00f_4724:
    ld a, [hl]
    set 0, a
    ld [hl], a
    ld a, $98
    ld [$cc92], a
    ld a, $a2
    ld [$cc93], a
    ld hl, $d800
    ld de, $00ac
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_4751

    ld a, [$b9e2]
    bit 1, a
    ret z

    ld hl, $b9e0
    jr jr_00f_475a

jr_00f_4751:
    ld a, [$b9f8]
    bit 1, a
    ret z

    ld hl, $b9f6

jr_00f_475a:
    ld a, [hl]
    set 1, a
    ld [hl], a
    ld a, $98
    ld [$cc92], a
    ld a, $a4
    ld [$cc93], a
    ld hl, $d800
    ld de, $00ae
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_4787

    ld a, [$b9e2]
    bit 2, a
    ret z

    ld hl, $b9e0
    jr jr_00f_4790

jr_00f_4787:
    ld a, [$b9f8]
    bit 2, a
    ret z

    ld hl, $b9f6

jr_00f_4790:
    ld a, [hl]
    set 2, a
    ld [hl], a
    ld a, $98
    ld [$cc92], a
    ld a, $a6
    ld [$cc93], a
    ld hl, $d800
    ld de, $00b0
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_47bd

    ld a, [$b9e2]
    bit 3, a
    ret z

    ld hl, $b9e0
    jr jr_00f_47c6

jr_00f_47bd:
    ld a, [$b9f8]
    bit 3, a
    ret z

    ld hl, $b9f6

jr_00f_47c6:
    ld a, [hl]
    set 3, a
    ld [hl], a
    ld a, $98
    ld [$cc92], a
    ld a, $a8
    ld [$cc93], a
    ld hl, $d800
    ld de, $00b2
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_47f3

    ld a, [$b9e2]
    bit 4, a
    ret z

    ld hl, $b9e0
    jr jr_00f_47fc

jr_00f_47f3:
    ld a, [$b9f8]
    bit 4, a
    ret z

    ld hl, $b9f6

jr_00f_47fc:
    ld a, [hl]
    set 4, a
    ld [hl], a
    ld a, $98
    ld [$cc92], a
    ld a, $aa
    ld [$cc93], a
    ld hl, $d800
    ld de, $00b4
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_4829

    ld a, [$b9e2]
    bit 5, a
    ret z

    ld hl, $b9e0
    jr jr_00f_4832

jr_00f_4829:
    ld a, [$b9f8]
    bit 5, a
    ret z

    ld hl, $b9f6

jr_00f_4832:
    ld a, [hl]
    set 5, a
    ld [hl], a
    ld a, $98
    ld [$cc92], a
    ld a, $ac
    ld [$cc93], a
    ld hl, $d800
    ld de, $00b6
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_485f

    ld a, [$b9e2]
    bit 6, a
    ret z

    ld hl, $b9e0
    jr jr_00f_4868

jr_00f_485f:
    ld a, [$b9f8]
    bit 6, a
    ret z

    ld hl, $b9f6

jr_00f_4868:
    ld a, [hl]
    set 6, a
    ld [hl], a
    ld a, $98
    ld [$cc92], a
    ld a, $ae
    ld [$cc93], a
    ld hl, $d800
    ld de, $00b8
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_4895

    ld a, [$b9e2]
    bit 7, a
    ret z

    ld hl, $b9e0
    jr jr_00f_489e

jr_00f_4895:
    ld a, [$b9f8]
    bit 7, a
    ret z

    ld hl, $b9f6

jr_00f_489e:
    ld a, [hl]
    set 7, a
    ld [hl], a
    ld a, $98
    ld [$cc92], a
    ld a, $b0
    ld [$cc93], a
    ld hl, $d800
    ld de, $00ba
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_48cb

    ld a, [$b9e3]
    bit 0, a
    ret z

    ld hl, $b9e1
    jr jr_00f_48d4

jr_00f_48cb:
    ld a, [$b9f9]
    bit 0, a
    ret z

    ld hl, $b9f7

jr_00f_48d4:
    ld a, [hl]
    set 0, a
    ld [hl], a
    ld a, $98
    ld [$cc92], a
    ld a, $b2
    ld [$cc93], a
    ld hl, $d800
    ld de, $00bc
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_4901

    ld a, [$b9e3]
    bit 1, a
    ret z

    ld hl, $b9e1
    jr jr_00f_490a

jr_00f_4901:
    ld a, [$b9f9]
    bit 1, a
    ret z

    ld hl, $b9f7

jr_00f_490a:
    ld a, [hl]
    set 1, a
    ld [hl], a
    ld a, $98
    ld [$cc92], a
    ld a, $b4
    ld [$cc93], a
    ld hl, $d800
    ld de, $00be
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_4937

    ld a, [$b9e3]
    bit 2, a
    ret z

    ld hl, $b9e1
    jr jr_00f_4940

jr_00f_4937:
    ld a, [$b9f9]
    bit 2, a
    ret z

    ld hl, $b9f7

jr_00f_4940:
    ld a, [hl]
    set 2, a
    ld [hl], a
    ld a, $98
    ld [$cc92], a
    ld a, $b6
    ld [$cc93], a
    ld hl, $d800
    ld de, $00c0
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_496d

    ld a, [$b9e3]
    bit 3, a
    ret z

    ld hl, $b9e1
    jr jr_00f_4976

jr_00f_496d:
    ld a, [$b9f9]
    bit 3, a
    ret z

    ld hl, $b9f7

jr_00f_4976:
    ld a, [hl]
    set 3, a
    ld [hl], a
    ld a, $98
    ld [$cc92], a
    ld a, $b8
    ld [$cc93], a
    ld hl, $d800
    ld de, $00c2
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_49a3

    ld a, [$b9e3]
    bit 4, a
    ret z

    ld hl, $b9e1
    jr jr_00f_49ac

jr_00f_49a3:
    ld a, [$b9f9]
    bit 4, a
    ret z

    ld hl, $b9f7

jr_00f_49ac:
    ld a, [hl]
    set 4, a
    ld [hl], a
    ld a, $98
    ld [$cc92], a
    ld a, $ba
    ld [$cc93], a
    ld hl, $d800
    ld de, $00c4
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc94]
    rst $00
    rst $20
    ld c, c
    rst $20
    ld c, c
    dec e
    ld c, d
    ld d, e
    ld c, d
    adc c
    ld c, d
    cp a
    ld c, d
    push af
    ld c, d
    dec hl
    ld c, e
    ld h, c
    ld c, e
    sub a
    ld c, e
    call $034b
    ld c, h
    add hl, sp
    ld c, h
    ld l, a
    ld c, h
    ld a, [$cc79]
    cp $04
    jr z, jr_00f_49f9

    ld a, [$b9e4]
    bit 0, a
    ret z

    ld hl, $b9e2
    jr jr_00f_4a02

jr_00f_49f9:
    ld a, [$b9fa]
    bit 0, a
    ret z

    ld hl, $b9f8

jr_00f_4a02:
    ld a, [hl]
    set 0, a
    ld [hl], a
    ld a, $98
    ld [$cc92], a
    ld a, $e2
    ld [$cc93], a
    ld hl, $d800
    ld de, $00ce
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_4a2f

    ld a, [$b9e4]
    bit 1, a
    ret z

    ld hl, $b9e2
    jr jr_00f_4a38

jr_00f_4a2f:
    ld a, [$b9fa]
    bit 1, a
    ret z

    ld hl, $b9f8

jr_00f_4a38:
    ld a, [hl]
    set 1, a
    ld [hl], a
    ld a, $98
    ld [$cc92], a
    ld a, $e4
    ld [$cc93], a
    ld hl, $d800
    ld de, $00d0
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_4a65

    ld a, [$b9e4]
    bit 2, a
    ret z

    ld hl, $b9e2
    jr jr_00f_4a6e

jr_00f_4a65:
    ld a, [$b9fa]
    bit 2, a
    ret z

    ld hl, $b9f8

jr_00f_4a6e:
    ld a, [hl]
    set 2, a
    ld [hl], a
    ld a, $98
    ld [$cc92], a
    ld a, $e6
    ld [$cc93], a
    ld hl, $d800
    ld de, $00d2
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_4a9b

    ld a, [$b9e4]
    bit 3, a
    ret z

    ld hl, $b9e2
    jr jr_00f_4aa4

jr_00f_4a9b:
    ld a, [$b9fa]
    bit 3, a
    ret z

    ld hl, $b9f8

jr_00f_4aa4:
    ld a, [hl]
    set 3, a
    ld [hl], a
    ld a, $98
    ld [$cc92], a
    ld a, $e8
    ld [$cc93], a
    ld hl, $d800
    ld de, $00d4
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_4ad1

    ld a, [$b9e4]
    bit 4, a
    ret z

    ld hl, $b9e2
    jr jr_00f_4ada

jr_00f_4ad1:
    ld a, [$b9fa]
    bit 4, a
    ret z

    ld hl, $b9f8

jr_00f_4ada:
    ld a, [hl]
    set 4, a
    ld [hl], a
    ld a, $98
    ld [$cc92], a
    ld a, $ea
    ld [$cc93], a
    ld hl, $d800
    ld de, $00d6
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_4b07

    ld a, [$b9e4]
    bit 5, a
    ret z

    ld hl, $b9e2
    jr jr_00f_4b10

jr_00f_4b07:
    ld a, [$b9fa]
    bit 5, a
    ret z

    ld hl, $b9f8

jr_00f_4b10:
    ld a, [hl]
    set 5, a
    ld [hl], a
    ld a, $98
    ld [$cc92], a
    ld a, $ec
    ld [$cc93], a
    ld hl, $d800
    ld de, $00d8
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_4b3d

    ld a, [$b9e4]
    bit 6, a
    ret z

    ld hl, $b9e2
    jr jr_00f_4b46

jr_00f_4b3d:
    ld a, [$b9fa]
    bit 6, a
    ret z

    ld hl, $b9f8

jr_00f_4b46:
    ld a, [hl]
    set 6, a
    ld [hl], a
    ld a, $98
    ld [$cc92], a
    ld a, $ee
    ld [$cc93], a
    ld hl, $d800
    ld de, $00da
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_4b73

    ld a, [$b9e4]
    bit 7, a
    ret z

    ld hl, $b9e2
    jr jr_00f_4b7c

jr_00f_4b73:
    ld a, [$b9fa]
    bit 7, a
    ret z

    ld hl, $b9f8

jr_00f_4b7c:
    ld a, [hl]
    set 7, a
    ld [hl], a
    ld a, $98
    ld [$cc92], a
    ld a, $f0
    ld [$cc93], a
    ld hl, $d800
    ld de, $00dc
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_4ba9

    ld a, [$b9e5]
    bit 0, a
    ret z

    ld hl, $b9e3
    jr jr_00f_4bb2

jr_00f_4ba9:
    ld a, [$b9fb]
    bit 0, a
    ret z

    ld hl, $b9f9

jr_00f_4bb2:
    ld a, [hl]
    set 0, a
    ld [hl], a
    ld a, $98
    ld [$cc92], a
    ld a, $f2
    ld [$cc93], a
    ld hl, $d800
    ld de, $00de
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_4bdf

    ld a, [$b9e5]
    bit 1, a
    ret z

    ld hl, $b9e3
    jr jr_00f_4be8

jr_00f_4bdf:
    ld a, [$b9fb]
    bit 1, a
    ret z

    ld hl, $b9f9

jr_00f_4be8:
    ld a, [hl]
    set 1, a
    ld [hl], a
    ld a, $98
    ld [$cc92], a
    ld a, $f4
    ld [$cc93], a
    ld hl, $d800
    ld de, $00e0
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_4c15

    ld a, [$b9e5]
    bit 2, a
    ret z

    ld hl, $b9e3
    jr jr_00f_4c1e

jr_00f_4c15:
    ld a, [$b9fb]
    bit 2, a
    ret z

    ld hl, $b9f9

jr_00f_4c1e:
    ld a, [hl]
    set 2, a
    ld [hl], a
    ld a, $98
    ld [$cc92], a
    ld a, $f6
    ld [$cc93], a
    ld hl, $d800
    ld de, $00e2
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_4c4b

    ld a, [$b9e5]
    bit 3, a
    ret z

    ld hl, $b9e3
    jr jr_00f_4c54

jr_00f_4c4b:
    ld a, [$b9fb]
    bit 3, a
    ret z

    ld hl, $b9f9

jr_00f_4c54:
    ld a, [hl]
    set 3, a
    ld [hl], a
    ld a, $98
    ld [$cc92], a
    ld a, $f8
    ld [$cc93], a
    ld hl, $d800
    ld de, $00e4
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_4c81

    ld a, [$b9e5]
    bit 4, a
    ret z

    ld hl, $b9e3
    jr jr_00f_4c8a

jr_00f_4c81:
    ld a, [$b9fb]
    bit 4, a
    ret z

    ld hl, $b9f9

jr_00f_4c8a:
    ld a, [hl]
    set 4, a
    ld [hl], a
    ld a, $98
    ld [$cc92], a
    ld a, $fa
    ld [$cc93], a
    ld hl, $d800
    ld de, $00e6
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc94]
    rst $00
    push bc
    ld c, h
    push bc
    ld c, h
    ei
    ld c, h
    ld sp, $674d
    ld c, l
    sbc l
    ld c, l
    db $d3
    ld c, l
    add hl, bc
    ld c, [hl]
    ccf
    ld c, [hl]
    ld [hl], l
    ld c, [hl]
    xor e
    ld c, [hl]
    pop hl
    ld c, [hl]
    rla
    ld c, a
    ld c, l
    ld c, a
    ld a, [$cc79]
    cp $04
    jr z, jr_00f_4cd7

    ld a, [$b9e6]
    bit 0, a
    ret z

    ld hl, $b9e4
    jr jr_00f_4ce0

jr_00f_4cd7:
    ld a, [$b9fc]
    bit 0, a
    ret z

    ld hl, $b9fa

jr_00f_4ce0:
    ld a, [hl]
    set 0, a
    ld [hl], a
    ld a, $99
    ld [$cc92], a
    ld a, $22
    ld [$cc93], a
    ld hl, $d800
    ld de, $00f0
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_4d0d

    ld a, [$b9e6]
    bit 1, a
    ret z

    ld hl, $b9e4
    jr jr_00f_4d16

jr_00f_4d0d:
    ld a, [$b9fc]
    bit 1, a
    ret z

    ld hl, $b9fa

jr_00f_4d16:
    ld a, [hl]
    set 1, a
    ld [hl], a
    ld a, $99
    ld [$cc92], a
    ld a, $24
    ld [$cc93], a
    ld hl, $d800
    ld de, $00f2
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_4d43

    ld a, [$b9e6]
    bit 2, a
    ret z

    ld hl, $b9e4
    jr jr_00f_4d4c

jr_00f_4d43:
    ld a, [$b9fc]
    bit 2, a
    ret z

    ld hl, $b9fa

jr_00f_4d4c:
    ld a, [hl]
    set 2, a
    ld [hl], a
    ld a, $99
    ld [$cc92], a
    ld a, $26
    ld [$cc93], a
    ld hl, $d800
    ld de, $00f4
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_4d79

    ld a, [$b9e6]
    bit 3, a
    ret z

    ld hl, $b9e4
    jr jr_00f_4d82

jr_00f_4d79:
    ld a, [$b9fc]
    bit 3, a
    ret z

    ld hl, $b9fa

jr_00f_4d82:
    ld a, [hl]
    set 3, a
    ld [hl], a
    ld a, $99
    ld [$cc92], a
    ld a, $28
    ld [$cc93], a
    ld hl, $d800
    ld de, $00f6
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_4daf

    ld a, [$b9e6]
    bit 4, a
    ret z

    ld hl, $b9e4
    jr jr_00f_4db8

jr_00f_4daf:
    ld a, [$b9fc]
    bit 4, a
    ret z

    ld hl, $b9fa

jr_00f_4db8:
    ld a, [hl]
    set 4, a
    ld [hl], a
    ld a, $99
    ld [$cc92], a
    ld a, $2a
    ld [$cc93], a
    ld hl, $d800
    ld de, $00f8
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_4de5

    ld a, [$b9e6]
    bit 5, a
    ret z

    ld hl, $b9e4
    jr jr_00f_4dee

jr_00f_4de5:
    ld a, [$b9fc]
    bit 5, a
    ret z

    ld hl, $b9fa

jr_00f_4dee:
    ld a, [hl]
    set 5, a
    ld [hl], a
    ld a, $99
    ld [$cc92], a
    ld a, $2c
    ld [$cc93], a
    ld hl, $d800
    ld de, $00fa
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_4e1b

    ld a, [$b9e6]
    bit 6, a
    ret z

    ld hl, $b9e4
    jr jr_00f_4e24

jr_00f_4e1b:
    ld a, [$b9fc]
    bit 6, a
    ret z

    ld hl, $b9fa

jr_00f_4e24:
    ld a, [hl]
    set 6, a
    ld [hl], a
    ld a, $99
    ld [$cc92], a
    ld a, $2e
    ld [$cc93], a
    ld hl, $d800
    ld de, $00fc
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_4e51

    ld a, [$b9e6]
    bit 7, a
    ret z

    ld hl, $b9e4
    jr jr_00f_4e5a

jr_00f_4e51:
    ld a, [$b9fc]
    bit 7, a
    ret z

    ld hl, $b9fa

jr_00f_4e5a:
    ld a, [hl]
    set 7, a
    ld [hl], a
    ld a, $99
    ld [$cc92], a
    ld a, $30
    ld [$cc93], a
    ld hl, $d800
    ld de, $00fe
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_4e87

    ld a, [$b9e7]
    bit 0, a
    ret z

    ld hl, $b9e5
    jr jr_00f_4e90

jr_00f_4e87:
    ld a, [$b9fd]
    bit 0, a
    ret z

    ld hl, $b9fb

jr_00f_4e90:
    ld a, [hl]
    set 0, a
    ld [hl], a
    ld a, $99
    ld [$cc92], a
    ld a, $32
    ld [$cc93], a
    ld hl, $d800
    ld de, $0100
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_4ebd

    ld a, [$b9e7]
    bit 1, a
    ret z

    ld hl, $b9e5
    jr jr_00f_4ec6

jr_00f_4ebd:
    ld a, [$b9fd]
    bit 1, a
    ret z

    ld hl, $b9fb

jr_00f_4ec6:
    ld a, [hl]
    set 1, a
    ld [hl], a
    ld a, $99
    ld [$cc92], a
    ld a, $34
    ld [$cc93], a
    ld hl, $d800
    ld de, $0102
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_4ef3

    ld a, [$b9e7]
    bit 2, a
    ret z

    ld hl, $b9e5
    jr jr_00f_4efc

jr_00f_4ef3:
    ld a, [$b9fd]
    bit 2, a
    ret z

    ld hl, $b9fb

jr_00f_4efc:
    ld a, [hl]
    set 2, a
    ld [hl], a
    ld a, $99
    ld [$cc92], a
    ld a, $36
    ld [$cc93], a
    ld hl, $d800
    ld de, HeaderLogo
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_4f29

    ld a, [$b9e7]
    bit 3, a
    ret z

    ld hl, $b9e5
    jr jr_00f_4f32

jr_00f_4f29:
    ld a, [$b9fd]
    bit 3, a
    ret z

    ld hl, $b9fb

jr_00f_4f32:
    ld a, [hl]
    set 3, a
    ld [hl], a
    ld a, $99
    ld [$cc92], a
    ld a, $38
    ld [$cc93], a
    ld hl, $d800
    ld de, $0106
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_4f5f

    ld a, [$b9e7]
    bit 4, a
    ret z

    ld hl, $b9e5
    jr jr_00f_4f68

jr_00f_4f5f:
    ld a, [$b9fd]
    bit 4, a
    ret z

    ld hl, $b9fb

jr_00f_4f68:
    ld a, [hl]
    set 4, a
    ld [hl], a
    ld a, $99
    ld [$cc92], a
    ld a, $3a
    ld [$cc93], a
    ld hl, $d800
    ld de, $0108
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc94]
    rst $00
    and e
    ld c, a
    and e
    ld c, a
    reti


    ld c, a
    rrca
    ld d, b
    ld b, l
    ld d, b
    ld a, e
    ld d, b
    or c
    ld d, b
    rst $20
    ld d, b
    dec e
    ld d, c
    ld d, e
    ld d, c
    adc c
    ld d, c
    cp a
    ld d, c
    push af
    ld d, c
    dec hl
    ld d, d
    ld a, [$cc79]
    cp $04
    jr z, jr_00f_4fb5

    ld a, [$b9e8]
    bit 0, a
    ret z

    ld hl, $b9e6
    jr jr_00f_4fbe

jr_00f_4fb5:
    ld a, [$b9fe]
    bit 0, a
    ret z

    ld hl, $b9fc

jr_00f_4fbe:
    ld a, [hl]
    set 0, a
    ld [hl], a
    ld a, $99
    ld [$cc92], a
    ld a, $62
    ld [$cc93], a
    ld hl, $d800
    ld de, $0112
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_4feb

    ld a, [$b9e8]
    bit 1, a
    ret z

    ld hl, $b9e6
    jr jr_00f_4ff4

jr_00f_4feb:
    ld a, [$b9fe]
    bit 1, a
    ret z

    ld hl, $b9fc

jr_00f_4ff4:
    ld a, [hl]
    set 1, a
    ld [hl], a
    ld a, $99
    ld [$cc92], a
    ld a, $64
    ld [$cc93], a
    ld hl, $d800
    ld de, $0114
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_5021

    ld a, [$b9e8]
    bit 2, a
    ret z

    ld hl, $b9e6
    jr jr_00f_502a

jr_00f_5021:
    ld a, [$b9fe]
    bit 2, a
    ret z

    ld hl, $b9fc

jr_00f_502a:
    ld a, [hl]
    set 2, a
    ld [hl], a
    ld a, $99
    ld [$cc92], a
    ld a, $66
    ld [$cc93], a
    ld hl, $d800
    ld de, $0116
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_5057

    ld a, [$b9e8]
    bit 3, a
    ret z

    ld hl, $b9e6
    jr jr_00f_5060

jr_00f_5057:
    ld a, [$b9fe]
    bit 3, a
    ret z

    ld hl, $b9fc

jr_00f_5060:
    ld a, [hl]
    set 3, a
    ld [hl], a
    ld a, $99
    ld [$cc92], a
    ld a, $68
    ld [$cc93], a
    ld hl, $d800
    ld de, $0118
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_508d

    ld a, [$b9e8]
    bit 4, a
    ret z

    ld hl, $b9e6
    jr jr_00f_5096

jr_00f_508d:
    ld a, [$b9fe]
    bit 4, a
    ret z

    ld hl, $b9fc

jr_00f_5096:
    ld a, [hl]
    set 4, a
    ld [hl], a
    ld a, $99
    ld [$cc92], a
    ld a, $6a
    ld [$cc93], a
    ld hl, $d800
    ld de, $011a
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_50c3

    ld a, [$b9e8]
    bit 5, a
    ret z

    ld hl, $b9e6
    jr jr_00f_50cc

jr_00f_50c3:
    ld a, [$b9fe]
    bit 5, a
    ret z

    ld hl, $b9fc

jr_00f_50cc:
    ld a, [hl]
    set 5, a
    ld [hl], a
    ld a, $99
    ld [$cc92], a
    ld a, $6c
    ld [$cc93], a
    ld hl, $d800
    ld de, $011c
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_50f9

    ld a, [$b9e8]
    bit 6, a
    ret z

    ld hl, $b9e6
    jr jr_00f_5102

jr_00f_50f9:
    ld a, [$b9fe]
    bit 6, a
    ret z

    ld hl, $b9fc

jr_00f_5102:
    ld a, [hl]
    set 6, a
    ld [hl], a
    ld a, $99
    ld [$cc92], a
    ld a, $6e
    ld [$cc93], a
    ld hl, $d800
    ld de, $011e
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_512f

    ld a, [$b9e8]
    bit 7, a
    ret z

    ld hl, $b9e6
    jr jr_00f_5138

jr_00f_512f:
    ld a, [$b9fe]
    bit 7, a
    ret z

    ld hl, $b9fc

jr_00f_5138:
    ld a, [hl]
    set 7, a
    ld [hl], a
    ld a, $99
    ld [$cc92], a
    ld a, $70
    ld [$cc93], a
    ld hl, $d800
    ld de, $0120
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_5165

    ld a, [$b9e9]
    bit 0, a
    ret z

    ld hl, $b9e7
    jr jr_00f_516e

jr_00f_5165:
    ld a, [$b9ff]
    bit 0, a
    ret z

    ld hl, $b9fd

jr_00f_516e:
    ld a, [hl]
    set 0, a
    ld [hl], a
    ld a, $99
    ld [$cc92], a
    ld a, $72
    ld [$cc93], a
    ld hl, $d800
    ld de, $0122
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_519b

    ld a, [$b9e9]
    bit 1, a
    ret z

    ld hl, $b9e7
    jr jr_00f_51a4

jr_00f_519b:
    ld a, [$b9ff]
    bit 1, a
    ret z

    ld hl, $b9fd

jr_00f_51a4:
    ld a, [hl]
    set 1, a
    ld [hl], a
    ld a, $99
    ld [$cc92], a
    ld a, $74
    ld [$cc93], a
    ld hl, $d800
    ld de, $0124
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_51d1

    ld a, [$b9e9]
    bit 2, a
    ret z

    ld hl, $b9e7
    jr jr_00f_51da

jr_00f_51d1:
    ld a, [$b9ff]
    bit 2, a
    ret z

    ld hl, $b9fd

jr_00f_51da:
    ld a, [hl]
    set 2, a
    ld [hl], a
    ld a, $99
    ld [$cc92], a
    ld a, $76
    ld [$cc93], a
    ld hl, $d800
    ld de, $0126
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_5207

    ld a, [$b9e9]
    bit 3, a
    ret z

    ld hl, $b9e7
    jr jr_00f_5210

jr_00f_5207:
    ld a, [$b9ff]
    bit 3, a
    ret z

    ld hl, $b9fd

jr_00f_5210:
    ld a, [hl]
    set 3, a
    ld [hl], a
    ld a, $99
    ld [$cc92], a
    ld a, $78
    ld [$cc93], a
    ld hl, $d800
    ld de, $0128
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_523d

    ld a, [$b9e9]
    bit 4, a
    ret z

    ld hl, $b9e7
    jr jr_00f_5246

jr_00f_523d:
    ld a, [$b9ff]
    bit 4, a
    ret z

    ld hl, $b9fd

jr_00f_5246:
    ld a, [hl]
    set 4, a
    ld [hl], a
    ld a, $99
    ld [$cc92], a
    ld a, $7a
    ld [$cc93], a
    ld hl, $d800
    ld de, $012a
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc94]
    rst $00
    add c
    ld d, d
    add c
    ld d, d
    or a
    ld d, d
    db $ed
    ld d, d
    inc hl
    ld d, e
    ld e, c
    ld d, e
    adc a
    ld d, e
    push bc
    ld d, e
    ei
    ld d, e
    ld sp, $6754
    ld d, h
    sbc l
    ld d, h
    db $d3
    ld d, h
    add hl, bc
    ld d, l
    ld a, [$cc79]
    cp $04
    jr z, jr_00f_5293

    ld a, [$b9ea]
    bit 0, a
    ret z

    ld hl, $b9e8
    jr jr_00f_529c

jr_00f_5293:
    ld a, [$ba00]
    bit 0, a
    ret z

    ld hl, $b9fe

jr_00f_529c:
    ld a, [hl]
    set 0, a
    ld [hl], a
    ld a, $99
    ld [$cc92], a
    ld a, $a2
    ld [$cc93], a
    ld hl, $d800
    ld de, HeaderTitle
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_52c9

    ld a, [$b9ea]
    bit 1, a
    ret z

    ld hl, $b9e8
    jr jr_00f_52d2

jr_00f_52c9:
    ld a, [$ba00]
    bit 1, a
    ret z

    ld hl, $b9fe

jr_00f_52d2:
    ld a, [hl]
    set 1, a
    ld [hl], a
    ld a, $99
    ld [$cc92], a
    ld a, $a4
    ld [$cc93], a
    ld hl, $d800
    ld de, $0136
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_52ff

    ld a, [$b9ea]
    bit 2, a
    ret z

    ld hl, $b9e8
    jr jr_00f_5308

jr_00f_52ff:
    ld a, [$ba00]
    bit 2, a
    ret z

    ld hl, $b9fe

jr_00f_5308:
    ld a, [hl]
    set 2, a
    ld [hl], a
    ld a, $99
    ld [$cc92], a
    ld a, $a6
    ld [$cc93], a
    ld hl, $d800
    ld de, $0138
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_5335

    ld a, [$b9ea]
    bit 3, a
    ret z

    ld hl, $b9e8
    jr jr_00f_533e

jr_00f_5335:
    ld a, [$ba00]
    bit 3, a
    ret z

    ld hl, $b9fe

jr_00f_533e:
    ld a, [hl]
    set 3, a
    ld [hl], a
    ld a, $99
    ld [$cc92], a
    ld a, $a8
    ld [$cc93], a
    ld hl, $d800
    ld de, $013a
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_536b

    ld a, [$b9ea]
    bit 4, a
    ret z

    ld hl, $b9e8
    jr jr_00f_5374

jr_00f_536b:
    ld a, [$ba00]
    bit 4, a
    ret z

    ld hl, $b9fe

jr_00f_5374:
    ld a, [hl]
    set 4, a
    ld [hl], a
    ld a, $99
    ld [$cc92], a
    ld a, $aa
    ld [$cc93], a
    ld hl, $d800
    ld de, $013c
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_53a1

    ld a, [$b9ea]
    bit 5, a
    ret z

    ld hl, $b9e8
    jr jr_00f_53aa

jr_00f_53a1:
    ld a, [$ba00]
    bit 5, a
    ret z

    ld hl, $b9fe

jr_00f_53aa:
    ld a, [hl]
    set 5, a
    ld [hl], a
    ld a, $99
    ld [$cc92], a
    ld a, $ac
    ld [$cc93], a
    ld hl, $d800
    ld de, $013e
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_53d7

    ld a, [$b9ea]
    bit 6, a
    ret z

    ld hl, $b9e8
    jr jr_00f_53e0

jr_00f_53d7:
    ld a, [$ba00]
    bit 6, a
    ret z

    ld hl, $b9fe

jr_00f_53e0:
    ld a, [hl]
    set 6, a
    ld [hl], a
    ld a, $99
    ld [$cc92], a
    ld a, $ae
    ld [$cc93], a
    ld hl, $d800
    ld de, $0140
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_540d

    ld a, [$b9ea]
    bit 7, a
    ret z

    ld hl, $b9e8
    jr jr_00f_5416

jr_00f_540d:
    ld a, [$ba00]
    bit 7, a
    ret z

    ld hl, $b9fe

jr_00f_5416:
    ld a, [hl]
    set 7, a
    ld [hl], a
    ld a, $99
    ld [$cc92], a
    ld a, $b0
    ld [$cc93], a
    ld hl, $d800
    ld de, $0142
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_5443

    ld a, [$b9eb]
    bit 0, a
    ret z

    ld hl, $b9e9
    jr jr_00f_544c

jr_00f_5443:
    ld a, [$ba01]
    bit 0, a
    ret z

    ld hl, $b9ff

jr_00f_544c:
    ld a, [hl]
    set 0, a
    ld [hl], a
    ld a, $99
    ld [$cc92], a
    ld a, $b2
    ld [$cc93], a
    ld hl, $d800
    ld de, HeaderNewLicenseeCode
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_5479

    ld a, [$b9eb]
    bit 1, a
    ret z

    ld hl, $b9e9
    jr jr_00f_5482

jr_00f_5479:
    ld a, [$ba01]
    bit 1, a
    ret z

    ld hl, $b9ff

jr_00f_5482:
    ld a, [hl]
    set 1, a
    ld [hl], a
    ld a, $99
    ld [$cc92], a
    ld a, $b4
    ld [$cc93], a
    ld hl, $d800
    ld de, HeaderSGBFlag
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_54af

    ld a, [$b9eb]
    bit 2, a
    ret z

    ld hl, $b9e9
    jr jr_00f_54b8

jr_00f_54af:
    ld a, [$ba01]
    bit 2, a
    ret z

    ld hl, $b9ff

jr_00f_54b8:
    ld a, [hl]
    set 2, a
    ld [hl], a
    ld a, $99
    ld [$cc92], a
    ld a, $b6
    ld [$cc93], a
    ld hl, $d800
    ld de, HeaderROMSize
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_54e5

    ld a, [$b9eb]
    bit 3, a
    ret z

    ld hl, $b9e9
    jr jr_00f_54ee

jr_00f_54e5:
    ld a, [$ba01]
    bit 3, a
    ret z

    ld hl, $b9ff

jr_00f_54ee:
    ld a, [hl]
    set 3, a
    ld [hl], a
    ld a, $99
    ld [$cc92], a
    ld a, $b8
    ld [$cc93], a
    ld hl, $d800
    ld de, HeaderDestinationCode
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_551b

    ld a, [$b9eb]
    bit 4, a
    ret z

    ld hl, $b9e9
    jr jr_00f_5524

jr_00f_551b:
    ld a, [$ba01]
    bit 4, a
    ret z

    ld hl, $b9ff

jr_00f_5524:
    ld a, [hl]
    set 4, a
    ld [hl], a
    ld a, $99
    ld [$cc92], a
    ld a, $ba
    ld [$cc93], a
    ld hl, $d800
    ld de, HeaderMaskROMVersion
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc94]
    rst $00
    ld e, a
    ld d, l
    ld e, a
    ld d, l
    sub l
    ld d, l
    bit 2, l
    ld bc, $3756
    ld d, [hl]
    ld l, l
    ld d, [hl]
    and e
    ld d, [hl]
    reti


    ld d, [hl]
    rrca
    ld d, a
    ld b, l
    ld d, a
    ld a, e
    ld d, a
    or c
    ld d, a
    rst $20
    ld d, a
    ld a, [$cc79]
    cp $04
    jr z, jr_00f_5571

    ld a, [$b9ec]
    bit 0, a
    ret z

    ld hl, $b9ea
    jr jr_00f_557a

jr_00f_5571:
    ld a, [$ba02]
    bit 0, a
    ret z

    ld hl, $ba00

jr_00f_557a:
    ld a, [hl]
    set 0, a
    ld [hl], a
    ld a, $99
    ld [$cc92], a
    ld a, $e2
    ld [$cc93], a
    ld hl, $d800
    ld de, $0156
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_55a7

    ld a, [$b9ec]
    bit 1, a
    ret z

    ld hl, $b9ea
    jr jr_00f_55b0

jr_00f_55a7:
    ld a, [$ba02]
    bit 1, a
    ret z

    ld hl, $ba00

jr_00f_55b0:
    ld a, [hl]
    set 1, a
    ld [hl], a
    ld a, $99
    ld [$cc92], a
    ld a, $e4
    ld [$cc93], a
    ld hl, $d800
    ld de, $0158
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_55dd

    ld a, [$b9ec]
    bit 2, a
    ret z

    ld hl, $b9ea
    jr jr_00f_55e6

jr_00f_55dd:
    ld a, [$ba02]
    bit 2, a
    ret z

    ld hl, $ba00

jr_00f_55e6:
    ld a, [hl]
    set 2, a
    ld [hl], a
    ld a, $99
    ld [$cc92], a
    ld a, $e6
    ld [$cc93], a
    ld hl, $d800
    ld de, $015a
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_5613

    ld a, [$b9ec]
    bit 3, a
    ret z

    ld hl, $b9ea
    jr jr_00f_561c

jr_00f_5613:
    ld a, [$ba02]
    bit 3, a
    ret z

    ld hl, $ba00

jr_00f_561c:
    ld a, [hl]
    set 3, a
    ld [hl], a
    ld a, $99
    ld [$cc92], a
    ld a, $e8
    ld [$cc93], a
    ld hl, $d800
    ld de, $015c
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_5649

    ld a, [$b9ec]
    bit 4, a
    ret z

    ld hl, $b9ea
    jr jr_00f_5652

jr_00f_5649:
    ld a, [$ba02]
    bit 4, a
    ret z

    ld hl, $ba00

jr_00f_5652:
    ld a, [hl]
    set 4, a
    ld [hl], a
    ld a, $99
    ld [$cc92], a
    ld a, $ea
    ld [$cc93], a
    ld hl, $d800
    ld de, $015e
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_567f

    ld a, [$b9ec]
    bit 5, a
    ret z

    ld hl, $b9ea
    jr jr_00f_5688

jr_00f_567f:
    ld a, [$ba02]
    bit 5, a
    ret z

    ld hl, $ba00

jr_00f_5688:
    ld a, [hl]
    set 5, a
    ld [hl], a
    ld a, $99
    ld [$cc92], a
    ld a, $ec
    ld [$cc93], a
    ld hl, $d800
    ld de, $0160
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_56b5

    ld a, [$b9ec]
    bit 6, a
    ret z

    ld hl, $b9ea
    jr jr_00f_56be

jr_00f_56b5:
    ld a, [$ba02]
    bit 6, a
    ret z

    ld hl, $ba00

jr_00f_56be:
    ld a, [hl]
    set 6, a
    ld [hl], a
    ld a, $99
    ld [$cc92], a
    ld a, $ee
    ld [$cc93], a
    ld hl, $d800
    ld de, $0162
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_56eb

    ld a, [$b9ec]
    bit 7, a
    ret z

    ld hl, $b9ea
    jr jr_00f_56f4

jr_00f_56eb:
    ld a, [$ba02]
    bit 7, a
    ret z

    ld hl, $ba00

jr_00f_56f4:
    ld a, [hl]
    set 7, a
    ld [hl], a
    ld a, $99
    ld [$cc92], a
    ld a, $f0
    ld [$cc93], a
    ld hl, $d800
    ld de, $0164
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_5721

    ld a, [$b9ed]
    bit 0, a
    ret z

    ld hl, $b9eb
    jr jr_00f_572a

jr_00f_5721:
    ld a, [$ba03]
    bit 0, a
    ret z

    ld hl, $ba01

jr_00f_572a:
    ld a, [hl]
    set 0, a
    ld [hl], a
    ld a, $99
    ld [$cc92], a
    ld a, $f2
    ld [$cc93], a
    ld hl, $d800
    ld de, $0166
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_5757

    ld a, [$b9ed]
    bit 1, a
    ret z

    ld hl, $b9eb
    jr jr_00f_5760

jr_00f_5757:
    ld a, [$ba03]
    bit 1, a
    ret z

    ld hl, $ba01

jr_00f_5760:
    ld a, [hl]
    set 1, a
    ld [hl], a
    ld a, $99
    ld [$cc92], a
    ld a, $f4
    ld [$cc93], a
    ld hl, $d800
    ld de, $0168
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_578d

    ld a, [$b9ed]
    bit 2, a
    ret z

    ld hl, $b9eb
    jr jr_00f_5796

jr_00f_578d:
    ld a, [$ba03]
    bit 2, a
    ret z

    ld hl, $ba01

jr_00f_5796:
    ld a, [hl]
    set 2, a
    ld [hl], a
    ld a, $99
    ld [$cc92], a
    ld a, $f6
    ld [$cc93], a
    ld hl, $d800
    ld de, $016a
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_57c3

    ld a, [$b9ed]
    bit 3, a
    ret z

    ld hl, $b9eb
    jr jr_00f_57cc

jr_00f_57c3:
    ld a, [$ba03]
    bit 3, a
    ret z

    ld hl, $ba01

jr_00f_57cc:
    ld a, [hl]
    set 3, a
    ld [hl], a
    ld a, $99
    ld [$cc92], a
    ld a, $f8
    ld [$cc93], a
    ld hl, $d800
    ld de, $016c
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_57f9

    ld a, [$b9ed]
    bit 4, a
    ret z

    ld hl, $b9eb
    jr jr_00f_5802

jr_00f_57f9:
    ld a, [$ba03]
    bit 4, a
    ret z

    ld hl, $ba01

jr_00f_5802:
    ld a, [hl]
    set 4, a
    ld [hl], a
    ld a, $99
    ld [$cc92], a
    ld a, $fa
    ld [$cc93], a
    ld hl, $d800
    ld de, $016e
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc94]
    rst $00
    dec a
    ld e, b
    dec a
    ld e, b
    ld [hl], e
    ld e, b
    xor c
    ld e, b
    rst $18
    ld e, b
    dec d
    ld e, c
    ld c, e
    ld e, c
    add c
    ld e, c
    or a
    ld e, c
    db $ed
    ld e, c
    inc hl
    ld e, d
    ld e, c
    ld e, d
    adc a
    ld e, d
    push bc
    ld e, d
    ld a, [$cc79]
    cp $04
    jr z, jr_00f_584f

    ld a, [$b9ee]
    bit 0, a
    ret z

    ld hl, $b9ec
    jr jr_00f_5858

jr_00f_584f:
    ld a, [$ba04]
    bit 0, a
    ret z

    ld hl, $ba02

jr_00f_5858:
    ld a, [hl]
    set 0, a
    ld [hl], a
    ld a, $9a
    ld [$cc92], a
    ld a, $22
    ld [$cc93], a
    ld hl, $d800
    ld de, $0178
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_5885

    ld a, [$b9ee]
    bit 1, a
    ret z

    ld hl, $b9ec
    jr jr_00f_588e

jr_00f_5885:
    ld a, [$ba04]
    bit 1, a
    ret z

    ld hl, $ba02

jr_00f_588e:
    ld a, [hl]
    set 1, a
    ld [hl], a
    ld a, $9a
    ld [$cc92], a
    ld a, $24
    ld [$cc93], a
    ld hl, $d800
    ld de, $017a
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_58bb

    ld a, [$b9ee]
    bit 2, a
    ret z

    ld hl, $b9ec
    jr jr_00f_58c4

jr_00f_58bb:
    ld a, [$ba04]
    bit 2, a
    ret z

    ld hl, $ba02

jr_00f_58c4:
    ld a, [hl]
    set 2, a
    ld [hl], a
    ld a, $9a
    ld [$cc92], a
    ld a, $26
    ld [$cc93], a
    ld hl, $d800
    ld de, $017c
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_58f1

    ld a, [$b9ee]
    bit 3, a
    ret z

    ld hl, $b9ec
    jr jr_00f_58fa

jr_00f_58f1:
    ld a, [$ba04]
    bit 3, a
    ret z

    ld hl, $ba02

jr_00f_58fa:
    ld a, [hl]
    set 3, a
    ld [hl], a
    ld a, $9a
    ld [$cc92], a
    ld a, $28
    ld [$cc93], a
    ld hl, $d800
    ld de, $017e
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_5927

    ld a, [$b9ee]
    bit 4, a
    ret z

    ld hl, $b9ec
    jr jr_00f_5930

jr_00f_5927:
    ld a, [$ba04]
    bit 4, a
    ret z

    ld hl, $ba02

jr_00f_5930:
    ld a, [hl]
    set 4, a
    ld [hl], a
    ld a, $9a
    ld [$cc92], a
    ld a, $2a
    ld [$cc93], a
    ld hl, $d800
    ld de, $0180
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_595d

    ld a, [$b9ee]
    bit 5, a
    ret z

    ld hl, $b9ec
    jr jr_00f_5966

jr_00f_595d:
    ld a, [$ba04]
    bit 5, a
    ret z

    ld hl, $ba02

jr_00f_5966:
    ld a, [hl]
    set 5, a
    ld [hl], a
    ld a, $9a
    ld [$cc92], a
    ld a, $2c
    ld [$cc93], a
    ld hl, $d800
    ld de, $0182
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_5993

    ld a, [$b9ee]
    bit 6, a
    ret z

    ld hl, $b9ec
    jr jr_00f_599c

jr_00f_5993:
    ld a, [$ba04]
    bit 6, a
    ret z

    ld hl, $ba02

jr_00f_599c:
    ld a, [hl]
    set 6, a
    ld [hl], a
    ld a, $9a
    ld [$cc92], a
    ld a, $2e
    ld [$cc93], a
    ld hl, $d800
    ld de, $0184
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_59c9

    ld a, [$b9ee]
    bit 7, a
    ret z

    ld hl, $b9ec
    jr jr_00f_59d2

jr_00f_59c9:
    ld a, [$ba04]
    bit 7, a
    ret z

    ld hl, $ba02

jr_00f_59d2:
    ld a, [hl]
    set 7, a
    ld [hl], a
    ld a, $9a
    ld [$cc92], a
    ld a, $30
    ld [$cc93], a
    ld hl, $d800
    ld de, $0186
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_59ff

    ld a, [$b9ef]
    bit 0, a
    ret z

    ld hl, $b9ed
    jr jr_00f_5a08

jr_00f_59ff:
    ld a, [$ba05]
    bit 0, a
    ret z

    ld hl, $ba03

jr_00f_5a08:
    ld a, [hl]
    set 0, a
    ld [hl], a
    ld a, $9a
    ld [$cc92], a
    ld a, $32
    ld [$cc93], a
    ld hl, $d800
    ld de, $0188
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_5a35

    ld a, [$b9ef]
    bit 1, a
    ret z

    ld hl, $b9ed
    jr jr_00f_5a3e

jr_00f_5a35:
    ld a, [$ba05]
    bit 1, a
    ret z

    ld hl, $ba03

jr_00f_5a3e:
    ld a, [hl]
    set 1, a
    ld [hl], a
    ld a, $9a
    ld [$cc92], a
    ld a, $34
    ld [$cc93], a
    ld hl, $d800
    ld de, $018a
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_5a6b

    ld a, [$b9ef]
    bit 2, a
    ret z

    ld hl, $b9ed
    jr jr_00f_5a74

jr_00f_5a6b:
    ld a, [$ba05]
    bit 2, a
    ret z

    ld hl, $ba03

jr_00f_5a74:
    ld a, [hl]
    set 2, a
    ld [hl], a
    ld a, $9a
    ld [$cc92], a
    ld a, $36
    ld [$cc93], a
    ld hl, $d800
    ld de, $018c
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_5aa1

    ld a, [$b9ef]
    bit 3, a
    ret z

    ld hl, $b9ed
    jr jr_00f_5aaa

jr_00f_5aa1:
    ld a, [$ba05]
    bit 3, a
    ret z

    ld hl, $ba03

jr_00f_5aaa:
    ld a, [hl]
    set 3, a
    ld [hl], a
    ld a, $9a
    ld [$cc92], a
    ld a, $38
    ld [$cc93], a
    ld hl, $d800
    ld de, $018e
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_5ad7

    ld a, [$b9ef]
    bit 4, a
    ret z

    ld hl, $b9ed
    jr jr_00f_5ae0

jr_00f_5ad7:
    ld a, [$ba05]
    bit 4, a
    ret z

    ld hl, $ba03

jr_00f_5ae0:
    ld a, [hl]
    set 4, a
    ld [hl], a
    ld a, $9a
    ld [$cc92], a
    ld a, $3a
    ld [$cc93], a
    ld hl, $d800
    ld de, $0190
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc94]
    rst $00
    dec de
    ld e, e
    dec de
    ld e, e
    ld d, c
    ld e, e
    add a
    ld e, e
    cp l
    ld e, e
    di
    ld e, e
    add hl, hl
    ld e, h
    ld e, a
    ld e, h
    sub l
    ld e, h
    bit 3, h
    ld bc, $375d
    ld e, l
    ld l, l
    ld e, l
    and e
    ld e, l
    ld a, [$cc79]
    cp $04
    jr z, jr_00f_5b2d

    ld a, [$b9f0]
    bit 0, a
    ret z

    ld hl, $b9ee
    jr jr_00f_5b36

jr_00f_5b2d:
    ld a, [$ba06]
    bit 0, a
    ret z

    ld hl, $ba04

jr_00f_5b36:
    ld a, [hl]
    set 0, a
    ld [hl], a
    ld a, $9a
    ld [$cc92], a
    ld a, $62
    ld [$cc93], a
    ld hl, $d800
    ld de, $019a
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_5b63

    ld a, [$b9f0]
    bit 1, a
    ret z

    ld hl, $b9ee
    jr jr_00f_5b6c

jr_00f_5b63:
    ld a, [$ba06]
    bit 1, a
    ret z

    ld hl, $ba04

jr_00f_5b6c:
    ld a, [hl]
    set 1, a
    ld [hl], a
    ld a, $9a
    ld [$cc92], a
    ld a, $64
    ld [$cc93], a
    ld hl, $d800
    ld de, $019c
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_5b99

    ld a, [$b9f0]
    bit 2, a
    ret z

    ld hl, $b9ee
    jr jr_00f_5ba2

jr_00f_5b99:
    ld a, [$ba06]
    bit 2, a
    ret z

    ld hl, $ba04

jr_00f_5ba2:
    ld a, [hl]
    set 2, a
    ld [hl], a
    ld a, $9a
    ld [$cc92], a
    ld a, $66
    ld [$cc93], a
    ld hl, $d800
    ld de, $019e
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_5bcf

    ld a, [$b9f0]
    bit 3, a
    ret z

    ld hl, $b9ee
    jr jr_00f_5bd8

jr_00f_5bcf:
    ld a, [$ba06]
    bit 3, a
    ret z

    ld hl, $ba04

jr_00f_5bd8:
    ld a, [hl]
    set 3, a
    ld [hl], a
    ld a, $9a
    ld [$cc92], a
    ld a, $68
    ld [$cc93], a
    ld hl, $d800
    ld de, $01a0
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_5c05

    ld a, [$b9f0]
    bit 4, a
    ret z

    ld hl, $b9ee
    jr jr_00f_5c0e

jr_00f_5c05:
    ld a, [$ba06]
    bit 4, a
    ret z

    ld hl, $ba04

jr_00f_5c0e:
    ld a, [hl]
    set 4, a
    ld [hl], a
    ld a, $9a
    ld [$cc92], a
    ld a, $6a
    ld [$cc93], a
    ld hl, $d800
    ld de, $01a2
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_5c3b

    ld a, [$b9f0]
    bit 5, a
    ret z

    ld hl, $b9ee
    jr jr_00f_5c44

jr_00f_5c3b:
    ld a, [$ba06]
    bit 5, a
    ret z

    ld hl, $ba04

jr_00f_5c44:
    ld a, [hl]
    set 5, a
    ld [hl], a
    ld a, $9a
    ld [$cc92], a
    ld a, $6c
    ld [$cc93], a
    ld hl, $d800
    ld de, $01a4
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_5c71

    ld a, [$b9f0]
    bit 6, a
    ret z

    ld hl, $b9ee
    jr jr_00f_5c7a

jr_00f_5c71:
    ld a, [$ba06]
    bit 6, a
    ret z

    ld hl, $ba04

jr_00f_5c7a:
    ld a, [hl]
    set 6, a
    ld [hl], a
    ld a, $9a
    ld [$cc92], a
    ld a, $6e
    ld [$cc93], a
    ld hl, $d800
    ld de, $01a6
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_5ca7

    ld a, [$b9f0]
    bit 7, a
    ret z

    ld hl, $b9ee
    jr jr_00f_5cb0

jr_00f_5ca7:
    ld a, [$ba06]
    bit 7, a
    ret z

    ld hl, $ba04

jr_00f_5cb0:
    ld a, [hl]
    set 7, a
    ld [hl], a
    ld a, $9a
    ld [$cc92], a
    ld a, $70
    ld [$cc93], a
    ld hl, $d800
    ld de, $01a8
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_5cdd

    ld a, [$b9f1]
    bit 0, a
    ret z

    ld hl, $b9ef
    jr jr_00f_5ce6

jr_00f_5cdd:
    ld a, [$ba07]
    bit 0, a
    ret z

    ld hl, $ba05

jr_00f_5ce6:
    ld a, [hl]
    set 0, a
    ld [hl], a
    ld a, $9a
    ld [$cc92], a
    ld a, $72
    ld [$cc93], a
    ld hl, $d800
    ld de, $01aa
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_5d13

    ld a, [$b9f1]
    bit 1, a
    ret z

    ld hl, $b9ef
    jr jr_00f_5d1c

jr_00f_5d13:
    ld a, [$ba07]
    bit 1, a
    ret z

    ld hl, $ba05

jr_00f_5d1c:
    ld a, [hl]
    set 1, a
    ld [hl], a
    ld a, $9a
    ld [$cc92], a
    ld a, $74
    ld [$cc93], a
    ld hl, $d800
    ld de, $01ac
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_5d49

    ld a, [$b9f1]
    bit 2, a
    ret z

    ld hl, $b9ef
    jr jr_00f_5d52

jr_00f_5d49:
    ld a, [$ba07]
    bit 2, a
    ret z

    ld hl, $ba05

jr_00f_5d52:
    ld a, [hl]
    set 2, a
    ld [hl], a
    ld a, $9a
    ld [$cc92], a
    ld a, $76
    ld [$cc93], a
    ld hl, $d800
    ld de, $01ae
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_5d7f

    ld a, [$b9f1]
    bit 3, a
    ret z

    ld hl, $b9ef
    jr jr_00f_5d88

jr_00f_5d7f:
    ld a, [$ba07]
    bit 3, a
    ret z

    ld hl, $ba05

jr_00f_5d88:
    ld a, [hl]
    set 3, a
    ld [hl], a
    ld a, $9a
    ld [$cc92], a
    ld a, $78
    ld [$cc93], a
    ld hl, $d800
    ld de, $01b0
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_5db5

    ld a, [$b9f1]
    bit 4, a
    ret z

    ld hl, $b9ef
    jr jr_00f_5dbe

jr_00f_5db5:
    ld a, [$ba07]
    bit 4, a
    ret z

    ld hl, $ba05

jr_00f_5dbe:
    ld a, [hl]
    set 4, a
    ld [hl], a
    ld a, $9a
    ld [$cc92], a
    ld a, $7a
    ld [$cc93], a
    ld hl, $d800
    ld de, $01b2
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc94]
    rst $00
    ld sp, hl
    ld e, l
    ld sp, hl
    ld e, l
    inc hl
    ld e, [hl]
    ld c, l
    ld e, [hl]
    ld [hl], a
    ld e, [hl]
    and c
    ld e, [hl]
    bit 3, [hl]
    push af
    ld e, [hl]
    rra
    ld e, a
    ld c, c
    ld e, a
    ld [hl], e
    ld e, a
    sbc l
    ld e, a
    rst $00
    ld e, a
    pop af
    ld e, a
    ld a, [$cc79]
    cp $04
    jr z, jr_00f_5e05

    ld hl, $b9f0
    jr jr_00f_5e08

jr_00f_5e05:
    ld hl, $ba06

jr_00f_5e08:
    ld a, [hl]
    set 0, a
    ld [hl], a
    ld a, $9a
    ld [$cc92], a
    ld a, $a2
    ld [$cc93], a
    ld hl, $d800
    ld de, $01bc
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_5e2f

    ld hl, $b9f0
    jr jr_00f_5e32

jr_00f_5e2f:
    ld hl, $ba06

jr_00f_5e32:
    ld a, [hl]
    set 1, a
    ld [hl], a
    ld a, $9a
    ld [$cc92], a
    ld a, $a4
    ld [$cc93], a
    ld hl, $d800
    ld de, $01be
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_5e59

    ld hl, $b9f0
    jr jr_00f_5e5c

jr_00f_5e59:
    ld hl, $ba06

jr_00f_5e5c:
    ld a, [hl]
    set 2, a
    ld [hl], a
    ld a, $9a
    ld [$cc92], a
    ld a, $a6
    ld [$cc93], a
    ld hl, $d800
    ld de, $01c0
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_5e83

    ld hl, $b9f0
    jr jr_00f_5e86

jr_00f_5e83:
    ld hl, $ba06

jr_00f_5e86:
    ld a, [hl]
    set 3, a
    ld [hl], a
    ld a, $9a
    ld [$cc92], a
    ld a, $a8
    ld [$cc93], a
    ld hl, $d800
    ld de, $01c2
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_5ead

    ld hl, $b9f0
    jr jr_00f_5eb0

jr_00f_5ead:
    ld hl, $ba06

jr_00f_5eb0:
    ld a, [hl]
    set 4, a
    ld [hl], a
    ld a, $9a
    ld [$cc92], a
    ld a, $aa
    ld [$cc93], a
    ld hl, $d800
    ld de, $01c4
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_5ed7

    ld hl, $b9f0
    jr jr_00f_5eda

jr_00f_5ed7:
    ld hl, $ba06

jr_00f_5eda:
    ld a, [hl]
    set 5, a
    ld [hl], a
    ld a, $9a
    ld [$cc92], a
    ld a, $ac
    ld [$cc93], a
    ld hl, $d800
    ld de, $01c6
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_5f01

    ld hl, $b9f0
    jr jr_00f_5f04

jr_00f_5f01:
    ld hl, $ba06

jr_00f_5f04:
    ld a, [hl]
    set 6, a
    ld [hl], a
    ld a, $9a
    ld [$cc92], a
    ld a, $ae
    ld [$cc93], a
    ld hl, $d800
    ld de, $01c8
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_5f2b

    ld hl, $b9f0
    jr jr_00f_5f2e

jr_00f_5f2b:
    ld hl, $ba06

jr_00f_5f2e:
    ld a, [hl]
    set 7, a
    ld [hl], a
    ld a, $9a
    ld [$cc92], a
    ld a, $b0
    ld [$cc93], a
    ld hl, $d800
    ld de, $01ca
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_5f55

    ld hl, $b9f1
    jr jr_00f_5f58

jr_00f_5f55:
    ld hl, $ba07

jr_00f_5f58:
    ld a, [hl]
    set 0, a
    ld [hl], a
    ld a, $9a
    ld [$cc92], a
    ld a, $b2
    ld [$cc93], a
    ld hl, $d800
    ld de, $01cc
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_5f7f

    ld hl, $b9f1
    jr jr_00f_5f82

jr_00f_5f7f:
    ld hl, $ba07

jr_00f_5f82:
    ld a, [hl]
    set 1, a
    ld [hl], a
    ld a, $9a
    ld [$cc92], a
    ld a, $b4
    ld [$cc93], a
    ld hl, $d800
    ld de, $01ce
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_5fa9

    ld hl, $b9f1
    jr jr_00f_5fac

jr_00f_5fa9:
    ld hl, $ba07

jr_00f_5fac:
    ld a, [hl]
    set 2, a
    ld [hl], a
    ld a, $9a
    ld [$cc92], a
    ld a, $b6
    ld [$cc93], a
    ld hl, $d800
    ld de, $01d0
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_5fd3

    ld hl, $b9f1
    jr jr_00f_5fd6

jr_00f_5fd3:
    ld hl, $ba07

jr_00f_5fd6:
    ld a, [hl]
    set 3, a
    ld [hl], a
    ld a, $9a
    ld [$cc92], a
    ld a, $b8
    ld [$cc93], a
    ld hl, $d800
    ld de, $01d2
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_5ffd

    ld hl, $b9f1
    jr jr_00f_6000

jr_00f_5ffd:
    ld hl, $ba07

jr_00f_6000:
    ld a, [hl]
    set 4, a
    ld [hl], a
    ld a, $9a
    ld [$cc92], a
    ld a, $ba
    ld [$cc93], a
    ld hl, $d800
    ld de, $01d4
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


Jump_00f_601b:
    ld a, $03
    ld [$cc16], a
    xor a
    ld [$cc17], a
    xor a
    ld hl, wRightOrUpSideFacingTileID
    ld [hl+], a
    ld [hl], a
    ld a, [$cc79]
    cp $03
    ret nz

    ld a, [$cc95]
    cp $03
    ret nz

    ld a, [$cc94]
    cp $05
    jr z, jr_00f_6046

    cp $07
    jr z, jr_00f_6068

    cp $09
    jr z, jr_00f_6046

    ret


jr_00f_6046:
    ld a, $04
    ld [$cc16], a
    ld a, [$cc94]
    cp $05
    jr z, jr_00f_605d

    ld hl, $d800
    ld de, $0078
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    ret


jr_00f_605d:
    ld hl, $d800
    ld de, $0070
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    ret


jr_00f_6068:
    ld a, $05
    ld [$cc16], a
    ret


    ld a, [$c820]
    or a
    jr z, jr_00f_60bc

    ld a, [$c826]
    sub $06
    ld b, a
    ld a, [$c826]
    add $06
    ld c, a
    ld a, [$c828]
    sub $06
    ld d, a
    ld a, [$c828]
    add $06
    ld e, a
    ld a, [$c606]
    sub $06
    ldh [$ffa4], a
    ld a, [$c606]
    add $06
    ldh [$ffa5], a
    ld a, [$c608]
    sub $0c
    ldh [$ffa6], a
    ld a, [$c608]
    add $0a
    ldh [$ffa7], a
    ldh a, [$ffa6]
    cp d
    jr nc, jr_00f_60bc

    ldh a, [$ffa7]
    cp d
    jr c, jr_00f_60bc

    ldh a, [$ffa4]
    cp c
    jr nc, jr_00f_60bc

    ldh a, [$ffa5]
    cp b
    jr nc, jr_00f_60c2

jr_00f_60bc:
    ld a, $00
    ld [$cc75], a
    ret


jr_00f_60c2:
    ld a, $01
    ld [$cc75], a
    ret


    ld a, [$c820]
    or a
    jr z, jr_00f_6116

    ld a, [$c826]
    sub $06
    ld b, a
    ld a, [$c826]
    add $06
    ld c, a
    ld a, [$c828]
    sub $06
    ld d, a
    ld a, [$c828]
    add $06
    ld e, a
    ld a, [$c606]
    sub $06
    ldh [$ffa4], a
    ld a, [$c606]
    add $06
    ldh [$ffa5], a
    ld a, [$c608]
    sub $0e
    ldh [$ffa6], a
    ld a, [$c608]
    add $08
    ldh [$ffa7], a
    ldh a, [$ffa7]
    cp e
    jr c, jr_00f_6116

    ldh a, [$ffa6]
    cp e
    jr nc, jr_00f_6116

    ldh a, [$ffa4]
    cp c
    jr nc, jr_00f_6116

    ldh a, [$ffa5]
    cp b
    jr nc, jr_00f_611c

jr_00f_6116:
    ld a, $00
    ld [$cc75], a
    ret


jr_00f_611c:
    ld a, $01
    ld [$cc75], a
    ret


    ld a, [$c820]
    or a
    jr z, jr_00f_6170

    ld a, [$c826]
    sub $06
    ld b, a
    ld a, [$c826]
    add $06
    ld c, a
    ld a, [$c828]
    sub $06
    ld d, a
    ld a, [$c828]
    add $06
    ld e, a
    ld a, [$c606]
    sub $0a
    ldh [$ffa4], a
    ld a, [$c606]
    add $08
    ldh [$ffa5], a
    ld a, [$c608]
    sub $0a
    ldh [$ffa6], a
    ld a, [$c608]
    add $06
    ldh [$ffa7], a
    ldh a, [$ffa5]
    cp c
    jr c, jr_00f_6170

    ldh a, [$ffa4]
    cp c
    jr nc, jr_00f_6170

    ldh a, [$ffa6]
    cp e
    jr nc, jr_00f_6170

    ldh a, [$ffa7]
    cp d
    jr nc, jr_00f_6176

jr_00f_6170:
    ld a, $00
    ld [$cc75], a
    ret


jr_00f_6176:
    ld a, $01
    ld [$cc75], a
    ret


    ld a, [$c820]
    or a
    jr z, jr_00f_61ca

    ld a, [$c826]
    sub $06
    ld b, a
    ld a, [$c826]
    add $06
    ld c, a
    ld a, [$c828]
    sub $06
    ld d, a
    ld a, [$c828]
    add $06
    ld e, a
    ld a, [$c606]
    sub $08
    ldh [$ffa4], a
    ld a, [$c606]
    add $0a
    ldh [$ffa5], a
    ld a, [$c608]
    sub $0a
    ldh [$ffa6], a
    ld a, [$c608]
    add $06
    ldh [$ffa7], a
    ldh a, [$ffa4]
    cp b
    jr nc, jr_00f_61ca

    ldh a, [$ffa5]
    cp b
    jr c, jr_00f_61ca

    ldh a, [$ffa6]
    cp e
    jr nc, jr_00f_61ca

    ldh a, [$ffa7]
    cp d
    jr nc, jr_00f_61d0

jr_00f_61ca:
    ld a, $00
    ld [$cc75], a
    ret


jr_00f_61d0:
    ld a, $01
    ld [$cc75], a
    ret

Label_00f_61d5:
    xor a
    ld [sPrayedFlag], a
    ld a, [$ba0d]
    bit 0, a
    jr z, jr_00f_6202

    bit 2, a
    jr nz, jr_00f_6202

    set 2, a
    ld [$ba0d], a
    bit 1, a
    jr nz, jr_00f_6202

    ld a, [sSpriteTotalHappiness]
    cp $0a
    jr c, jr_00f_61fc

    sub $0a
    ld [sSpriteTotalHappiness], a
    jr jr_00f_6202

jr_00f_61fc:
    xor a
    ld [sSpriteTotalHappiness], a
    jr jr_00f_6202

jr_00f_6202:
    xor a
    ld [$ba4e], a
    ld a, [sSpriteDailyHappiness]
    bit 0, a
    call nz, SmallHappinessIncrease
    ld a, [sSpriteDailyHappiness]
    bit 1, a
    call nz, MediumHappinessIncrease
    ld a, [sSpriteDailyHappiness]
    bit 1, a
    call z, Call_00f_6240
    xor a
    ld [sSpriteDailyHappiness], a
    ld a, [sSpriteTotalHappiness]
    cp $64
    ret c

    ld a, $63
    ld [sSpriteTotalHappiness], a
    ret

SmallHappinessIncrease:
    ld a, [sSpriteTotalHappiness]
    inc a
    ld [sSpriteTotalHappiness], a
    ret

MediumHappinessIncrease:
    ld a, [sSpriteTotalHappiness]
    inc a
    inc a
    inc a
    ld [sSpriteTotalHappiness], a
    ret

Call_00f_6240:
    ld a, [sSpriteTotalHappiness]
    cp $03
    jr c, jr_00f_624e

    dec a
    dec a
    dec a
    ld [sSpriteTotalHappiness], a
    ret nc

jr_00f_624e:
    ld a, $00
    ld [sSpriteTotalHappiness], a
    ret


    ld a, $18
    ld hl, $c882
    cp [hl]
    ret z

    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    inc hl
    xor a
    ld [hl], a
    xor a
    ld [$c890], a
    ret


    ld hl, $c88a
    ld a, [hl]
    ld b, a
    ld a, [$cb5a]
    add b
    ld [hl+], a
    ld a, [hl]
    ld b, a
    ld a, [$cb5b]
    add b
    ld [hl], a
    ret


    ld hl, $c800
    ld a, $01
    ld [hl+], a
    ld a, $06
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    inc hl
    xor a
    ld [hl], a
    ld a, [$c60a]
    ld [$c80a], a
    xor a
    ld [$c80b], a
    ld [$c810], a
    ld a, $01
    ld [$c80e], a
    ret


    ld a, [$ba4e]
    bit 0, a
    call nz, Call_00f_62af
    ld a, [$ba4e]
    bit 1, a
    call nz, Call_00f_62c3
    ret


Call_00f_62af:
    ld hl, $d800
    ld de, $013c
    add hl, de
    ld bc, $8103
    call Call_00f_62d7
    ld hl, $9a0a
    call Call_00f_62dc
    ret


Call_00f_62c3:
    ld hl, $d800
    ld de, $0100
    add hl, de
    ld bc, $8103
    call Call_00f_62d7
    ld hl, $9992
    call Call_00f_62dc
    ret


Call_00f_62d7:
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a
    ret


Call_00f_62dc:
    ld a, $f2
    ld [hl+], a
    ld a, $f3
    ld [hl], a
    ld a, $1f
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, $e4
    ld [hl+], a
    ld a, $e5
    ld [hl], a
    ld a, $1f
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, $f4
    ld [hl+], a
    ld a, $f5
    ld [hl], a
    ret


    inc bc
    push af
    inc bc
    ld h, e
    add hl, bc
    ld h, e
    ld [hl-], a
    ld h, e
    ld e, e
    ld h, e
    ld hl, sp+$00
    rst $18
    dec b
    ld hl, sp-$08
    sbc $05
    ldh a, [rP1]
    db $dd
    dec b
    ldh a, [$fff8]
    call c, $e805
    nop
    db $db
    dec b
    add sp, -$08
    jp c, $e005

    nop
    reti


    dec b
    ldh [$fff8], a
    ret c

    dec b
    ret c

    nop
    rst $10
    dec b
    ret c

    ld hl, sp-$2a
    dec b
    add b
    ld hl, sp+$00
    rst $20
    dec b
    ld hl, sp-$08
    and $05
    ldh a, [rP1]
    db $dd
    dec b
    ldh a, [$fff8]
    call c, $e805
    nop
    push hl
    dec b
    add sp, -$08
    db $e4
    dec b
    ldh [rP1], a
    db $e3
    dec b
    ldh [$fff8], a
    ldh [c], a
    dec b
    ret c

    nop
    pop hl
    dec b
    ret c

    ld hl, sp-$20
    dec b
    add b
    ld hl, sp+$00
    rst $28
    dec b
    ld hl, sp-$08
    xor $05
    ldh a, [rP1]
    db $dd
    dec b
    ldh a, [$fff8]
    call c, $e805
    nop
    db $ed
    dec b
    add sp, -$08
    db $ec
    dec b
    ldh [rP1], a
    db $eb
    dec b
    ldh [$fff8], a
    ld [$d805], a
    nop
    jp hl


    dec b
    ret c

    ld hl, sp-$18
    dec b
    add b
    add [hl]
    ld h, e
    rrca
    nop
    rrca
    ld bc, $020f
    rst $38
    push hl
    push af
    ld l, $99
    ld h, $6d
    ld a, $20
    call BankSwitchCallHL
    pop af
    pop hl
    ld a, $01
    ld [$cb81], a
    xor a
    ld [$cbe8], a
    ld [$ccb7], a
    ld [$c90f], a
    ld [$c800], a
    ld [$c820], a
    ld [$c840], a
    ld [$c860], a
    ld [$c880], a
    ld [$c8a0], a
    ld [$c8c0], a
    ld [$c8e0], a
    ld [$c760], a
    ld [$c780], a
    ld [$c7a0], a
    ld [$c800], a
    ld [$c820], a
    call ClearBGMap0
    call ClearBGMap1
    call Call_000_323d
    ld hl, $5efb
    ld a, $0d
    call BankSwitchCallHL
    ld hl, $6de8
    ld c, $10
    ld de, $8800
    call Call_000_31a0
    ld hl, $6691
    ld c, $10
    ld de, $9000
    call Call_000_31a0
    ld hl, $7920
    ld c, $10
    ld de, $9800
    call Call_000_31a0
    ld a, $1d
    ld [$cb4e], a
    ld a, $ff
    ld [$cb52], a
    xor a
    ld [$cb53], a
    ld [$cb54], a
    ld [$cb55], a
    call Call_000_1259
    xor a
    ld [$4000], a
    ld a, $d8
    ld [$b90d], a
    ld a, $00
    ld [$b90e], a
    ld a, $22
    ld [$b90c], a
    call $6aef
    call Call_00f_6c34
    ld a, $a8
    ld [$cb5c], a
    ld a, $d9
    ld [$cb5d], a
    ld [$cb5e], a
    ld a, $83
    ld [$c0a2], a
    ld a, $68
    ldh [$ff95], a
    ld a, $40
    ldh [rSTAT], a
    ld a, $66
    ldh [rLYC], a
    xor a
    ldh [rIF], a
    ld a, $03
    ldh [rIE], a
    ld a, $17
    call Call_000_25c5
    ld a, $ff
    ld [$cb52], a
    xor a
    ld [$cb53], a
    ld [$cb54], a
    ld [$cb55], a
    xor a
    ld [$b88c], a
    ld [$cb56], a
    ld [$cb5f], a
    call Call_000_3efc
    call Call_000_3dfd
    xor a
    ld [$c912], a
    ret


    call Call_000_0d90
    xor a
    ld [$cb5a], a
    ld [$cb5b], a
    call Call_00f_64c2
    call Call_00f_64ca
    ld a, [$ccb7]
    and $18
    cp $18
    jr nz, jr_00f_64ad

    ld a, [$cb52]
    cp $ff
    jr nz, jr_00f_64ad

    ld a, [$cc27]
    or a
    jr nz, jr_00f_64ad

    ld a, $0d
    ld [wRightOrUpSideFacingTileID], a
    jr jr_00f_64b0

jr_00f_64ad:
    call Call_000_3cf8

jr_00f_64b0:
    call Call_00f_68f5
    call Call_000_2d67
    call Call_000_36f4
    ld hl, $6ba5
    ld a, $01
    call BankSwitchCallHL
    ret


Call_00f_64c2:
    ld hl, $c912
    ld a, [hl]
    or a
    ret z

    dec [hl]
    ret


Call_00f_64ca:
    call Call_00f_67a9
    ld a, [$cb4e]
    ld b, a
    ld a, [$cb4f]
    or b
    ret nz

    ld a, [$cc27]
    or a
    ret nz

    ld a, [$c912]
    or a
    ret nz

    ld a, [$cb52]
    cp $ff
    ret nz

    ld a, [$cb56]
    or a
    ret nz

    ldh a, [$ff8b]
    and $01
    jr nz, jr_00f_6533

    ldh a, [$ff8a]
    and $02
    jr z, jr_00f_650c

    call Call_00f_655b
    ld a, [$c603]
    and $01
    ret z

    ld a, [$c605]
    cp $08
    ret nz

    ld a, $34
    call Call_000_25ce
    ret


jr_00f_650c:
    ldh a, [$ff8a]
    and $80
    jp nz, Jump_00f_6671

    ldh a, [$ff8a]
    and $40
    jp nz, Jump_00f_66ad

    ldh a, [$ff8a]
    and $20
    jp nz, Jump_00f_66e9

    ldh a, [$ff8a]
    and $10
    jp nz, Jump_00f_6725

    ld a, [$c912]
    or a
    ret nz

    ld a, $00
    call RST_TableJumpBankSwitch
    ret


jr_00f_6533:
    ld a, [$cb34]
    and $01
    ret z

    ld a, [wRightOrUpSideFacingTileID]
    cp $80
    call z, Call_00f_697f
    cp $81
    call z, Call_00f_69bd
    cp $82
    call z, Call_00f_6a05
    cp $83
    call z, Call_00f_6a4d
    cp $84
    call z, Call_00f_6aad
    ld a, $00
    call RST_TableJumpBankSwitch
    ret


Call_00f_655b:
    ldh a, [$ff8a]
    and $80
    jr nz, jr_00f_6575

    ldh a, [$ff8a]
    and $20
    jr nz, jr_00f_6579

    ldh a, [$ff8a]
    and $10
    jr nz, jr_00f_657d

    ldh a, [$ff8a]
    and $40
    jr nz, jr_00f_6581

    jr jr_00f_6586

jr_00f_6575:
    ld a, $00
    jr jr_00f_6583

jr_00f_6579:
    ld a, $01
    jr jr_00f_6583

jr_00f_657d:
    ld a, $02
    jr jr_00f_6583

jr_00f_6581:
    ld a, $03

jr_00f_6583:
    ld [$c60d], a

jr_00f_6586:
    ld a, $02
    call RST_TableJumpBankSwitch
    ld a, [$c60d]
    cp $00
    jp z, Jump_00f_65d2

    cp $01
    jp z, Jump_00f_6607

    cp $02
    jp z, Jump_00f_663c

    call Call_000_1502
    ld a, [wcb30]
    ld b, a
    ld a, [wcb32]
    or b
    and $01
    jr z, jr_00f_65c0

    ld a, $01
    ld [wCollisionNoMovement], a
    ld a, b
    and $01
    jp z, Jump_00f_6797

    ld a, [wcb32]
    and $01
    jp z, Jump_00f_67a0

    ret


jr_00f_65c0:
    call Call_00f_676a
    call Call_00f_676a
    ld a, [$c608]
    cp $1e
    ret nc

    ld a, $0d
    ld [wRightOrUpSideFacingTileID], a
    ret


Jump_00f_65d2:
    call Call_000_14f9
    ld a, [wcb30]
    ld b, a
    ld a, [wcb32]
    or b
    and $01
    jr z, jr_00f_65f5

    ld a, $01
    ld [wCollisionNoMovement], a
    ld a, b
    and $01
    jp z, Jump_00f_6797

    ld a, [wcb32]
    and $01
    jp z, Jump_00f_67a0

    ret


jr_00f_65f5:
    call Call_00f_6761
    call Call_00f_6761
    ld a, [$c608]
    cp $83
    ret c

    ld a, $0d
    ld [wRightOrUpSideFacingTileID], a
    ret


Jump_00f_6607:
    call Call_000_150b
    ld a, [wcb30]
    ld b, a
    ld a, [wcb32]
    or b
    and $01
    jr z, jr_00f_662a

    ld a, $01
    ld [wCollisionNoMovement], a
    ld a, b
    and $01
    jp z, Jump_00f_678e

    ld a, [wcb32]
    and $01
    jp z, Jump_00f_6785

    ret


jr_00f_662a:
    call Call_00f_6773
    call Call_00f_6773
    ld a, [$c606]
    cp $18
    ret nc

    ld a, $0d
    ld [wRightOrUpSideFacingTileID], a
    ret


Jump_00f_663c:
    call Call_000_1514
    ld a, [wcb30]
    ld b, a
    ld a, [wcb32]
    or b
    and $01
    jr z, jr_00f_665f

    ld a, $01
    ld [wCollisionNoMovement], a
    ld a, b
    and $01
    jp z, Jump_00f_678e

    ld a, [wcb32]
    and $01
    jp z, Jump_00f_6785

    ret


jr_00f_665f:
    call Call_00f_677c
    call Call_00f_677c
    ld a, [$c606]
    cp $8a
    ret c

    ld a, $0d
    ld [wRightOrUpSideFacingTileID], a
    ret


Jump_00f_6671:
    ld a, $00
    ld [$c60d], a
    ld a, $01
    call RST_TableJumpBankSwitch
    call Call_000_14f9
    ld a, [wcb30]
    ld b, a
    ld a, [wcb32]
    or b
    and $01
    jr z, jr_00f_669e

    ld a, $01
    ld [wCollisionNoMovement], a
    ld a, b
    and $01
    jp z, Jump_00f_6797

    ld a, [wcb32]
    and $01
    jp z, Jump_00f_67a0

    ret


jr_00f_669e:
    call Call_00f_6761
    ld a, [$c608]
    cp $83
    ret c

    ld a, $0d
    ld [wRightOrUpSideFacingTileID], a
    ret


Jump_00f_66ad:
    ld a, $03
    ld [$c60d], a
    ld a, $01
    call RST_TableJumpBankSwitch
    call Call_000_1502
    ld a, [wcb30]
    ld b, a
    ld a, [wcb32]
    or b
    and $01
    jr z, jr_00f_66da

    ld a, $01
    ld [wCollisionNoMovement], a
    ld a, b
    and $01
    jp z, Jump_00f_6797

    ld a, [wcb32]
    and $01
    jp z, Jump_00f_67a0

    ret


jr_00f_66da:
    call Call_00f_676a
    ld a, [$c608]
    cp $1e
    ret nc

    ld a, $0d
    ld [wRightOrUpSideFacingTileID], a
    ret


Jump_00f_66e9:
    ld a, $01
    ld [$c60d], a
    ld a, $01
    call RST_TableJumpBankSwitch
    call Call_000_150b
    ld a, [wcb30]
    ld b, a
    ld a, [wcb32]
    or b
    and $01
    jr z, jr_00f_6716

    ld a, $01
    ld [wCollisionNoMovement], a
    ld a, b
    and $01
    jp z, Jump_00f_678e

    ld a, [wcb32]
    and $01
    jp z, Jump_00f_6785

    ret


jr_00f_6716:
    call Call_00f_6773
    ld a, [$c606]
    cp $18
    ret nc

    ld a, $0d
    ld [wRightOrUpSideFacingTileID], a
    ret


Jump_00f_6725:
    ld a, $02
    ld [$c60d], a
    ld a, $01
    call RST_TableJumpBankSwitch
    call Call_000_1514
    ld a, [wcb30]
    ld b, a
    ld a, [wcb32]
    or b
    and $01
    jr z, jr_00f_6752

    ld a, $01
    ld [wCollisionNoMovement], a
    ld a, b
    and $01
    jp z, Jump_00f_678e

    ld a, [wcb32]
    and $01
    jp z, Jump_00f_6785

    ret


jr_00f_6752:
    call Call_00f_677c
    ld a, [$c606]
    cp $8a
    ret c

    ld a, $0d
    ld [wRightOrUpSideFacingTileID], a
    ret


Call_00f_6761:
    ld hl, $573c
    ld a, $02
    call BankSwitchCallHL
    ret


Call_00f_676a:
    ld hl, $578a
    ld a, $02
    call BankSwitchCallHL
    ret


Call_00f_6773:
    ld hl, $57b8
    ld a, $02
    call BankSwitchCallHL
    ret


Call_00f_677c:
    ld hl, $5824
    ld a, $02
    call BankSwitchCallHL
    ret


Jump_00f_6785:
    ld hl, $5729
    ld a, $02
    call BankSwitchCallHL
    ret


Jump_00f_678e:
    ld hl, $5716
    ld a, $02
    call BankSwitchCallHL
    ret


Jump_00f_6797:
    ld hl, $56f0
    ld a, $02
    call BankSwitchCallHL
    ret


Jump_00f_67a0:
    ld hl, $5703
    ld a, $02
    call BankSwitchCallHL
    ret


Call_00f_67a9:
    ld a, [$cb4e]
    ld b, a
    ld a, [$cb4f]
    or b
    ret nz

    ld a, [$cc27]
    or a
    jr nz, jr_00f_6817

    ld a, [wRightOrUpSideFacingTileID]
    cp $0d
    jr z, jr_00f_67f5

    ld a, [$ccb8]
    cp $00
    jr z, jr_00f_67d9

    cp $01
    jr z, jr_00f_67e8

    ld a, [$ccb7]
    and $f8
    cp $f8
    ret nz

    ld a, [$cb56]
    or a
    jr z, jr_00f_67f5

    ret


jr_00f_67d9:
    ld a, [$ccb7]
    and $e0
    cp $e0
    ret nz

    ld a, [$cb56]
    or a
    jr z, jr_00f_67f5

    ret


jr_00f_67e8:
    ld a, [$ccb7]
    and $18
    cp $18
    ret nz

    ld a, [$cb56]
    or a
    ret nz

jr_00f_67f5:
    ld a, $00
    call RST_TableJumpBankSwitch
    ld a, $f0
    ld [$cc27], a
    ld a, [$ccb8]
    cp $01
    jr z, jr_00f_6810

    cp $02
    jr z, jr_00f_6816

    ld a, $cf
    call Call_000_3f52
    ret


jr_00f_6810:
    ld a, $d3
    call Call_000_3f52
    ret


jr_00f_6816:
    ret


jr_00f_6817:
    ld a, [$cb52]
    cp $ff
    ret nz

    ldh a, [$ff8b]
    and $01
    jr z, jr_00f_682f

    ld a, [$cb56]
    or a
    jr nz, jr_00f_682f

    xor a
    ld [$cc27], a
    jr jr_00f_6836

jr_00f_682f:
    ld a, [$cc27]
    dec a
    ld [$cc27], a

jr_00f_6836:
    or a
    ret nz

    ld a, $02
    ld [$cb50], a
    ld a, $1d
    ld [$cb4f], a
    xor a
    ld [$c910], a
    ld [$b880], a
    ld [$b881], a
    ld a, [$ccb8]
    cp $00
    jr z, jr_00f_6859

    ld a, $15
    ld [$b882], a
    ret


jr_00f_6859:
    ld a, $12
    ld [$b882], a
    ret


Call_00f_685f:
    ld hl, $c860
    call Call_00f_696f
    ld a, $00
    ld b, a
    ld a, [$c86d]
    add b
    ld hl, $c862
    cp [hl]
    ret z

    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    inc hl
    xor a
    ld [hl], a
    xor a
    ld [$c870], a
    ret


Call_00f_687d:
    ld hl, $c880
    call Call_00f_696f
    ld a, $0c
    ld b, a
    ld a, [$c88d]
    add b
    ld hl, $c882
    cp [hl]
    ret z

    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    inc hl
    xor a
    ld [hl], a
    xor a
    ld [$c890], a
    ret


Call_00f_689b:
    ld hl, $c8a0
    call Call_00f_696f
    ld a, $10
    ld b, a
    ld a, [$c8ad]
    add b
    ld hl, $c8a2
    cp [hl]
    ret z

    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    inc hl
    xor a
    ld [hl], a
    xor a
    ld [$c8b0], a
    ret


Call_00f_68b9:
    ld hl, $c8c0
    call Call_00f_696f
    ld a, $08
    ld b, a
    ld a, [$c8cd]
    add b
    ld hl, $c8c2
    cp [hl]
    ret z

    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    inc hl
    xor a
    ld [hl], a
    xor a
    ld [$c8d0], a
    ret


Call_00f_68d7:
    ld hl, $c8e0
    call Call_00f_696f
    ld a, $04
    ld b, a
    ld a, [$c8ed]
    add b
    ld hl, $c8e2
    cp [hl]
    ret z

    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    inc hl
    xor a
    ld [hl], a
    xor a
    ld [$c8f0], a
    ret


Call_00f_68f5:
    ld a, [$ccb8]
    cp $00
    jr z, jr_00f_6904

    cp $01
    jr z, jr_00f_6920

    cp $02
    jr z, jr_00f_692d

jr_00f_6904:
    call Call_00f_685f
    call Call_00f_687d
    call Call_00f_689b
    ld hl, $6957
    call SyncLoadSpritePalette6
    ld hl, $695f
    call SyncLoadSpritePalette2
    ld hl, $6967
    call SyncLoadSpritePalette5
    ret


jr_00f_6920:
    call Call_00f_68b9
    call Call_00f_68d7
    ld hl, $6957
    call SyncLoadSpritePalette6
    ret


jr_00f_692d:
    call Call_00f_685f
    call Call_00f_687d
    call Call_00f_689b
    call Call_00f_68b9
    call Call_00f_68d7
    ld hl, $6957
    call SyncLoadSpritePalette6
    ld hl, $695f
    call SyncLoadSpritePalette2
    ld hl, $6967
    call SyncLoadSpritePalette5
    ret


    rst $38
    ld a, a
    add h
    nop
    sbc h
    ld [bc], a
    ld a, a
    ld b, a
    ld a, h
    ld c, [hl]
    add h
    nop
    inc d
    ld a, [de]
    ld a, a
    ld b, a
    ld a, h
    ld c, [hl]
    add h
    nop
    rst $38
    ld h, b
    ld a, a
    ld b, a
    ld a, h
    ld c, [hl]
    add h
    nop
    or d
    add hl, sp
    ld a, a
    ld b, a

Call_00f_696f:
    ld a, $0b
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [$cb5b]
    ld b, a
    ld a, [hl]
    add b
    ld [hl], a
    ret


Call_00f_697f:
    ld hl, $c86d
    ld a, [$c60d]
    ld de, $6aeb
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld a, [de]
    ld [hl], a
    ld a, [$ccb8]
    cp $00
    jr nz, jr_00f_69a5

    ld a, [$ccb7]
    set 7, a
    ld [$ccb7], a
    ld a, $ca
    call Call_000_3f52
    ret


jr_00f_69a5:
    ld a, [$ccb7]
    bit 7, a
    jr nz, jr_00f_69b7

    set 7, a
    ld [$ccb7], a
    ld a, $d4
    call Call_000_3f52
    ret


jr_00f_69b7:
    ld a, $d5
    call Call_000_3f52
    ret


Call_00f_69bd:
    ld hl, $c88d
    ld a, [$c60d]
    ld de, $6aeb
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld a, [de]
    ld [hl], a
    ld a, [$ccb8]
    cp $00
    jr nz, jr_00f_69ed

    ld a, [$ccb7]
    bit 6, a
    jr nz, jr_00f_69e7

    set 6, a
    ld [$ccb7], a
    ld a, $cd
    call Call_000_3f52
    ret


jr_00f_69e7:
    ld a, $ce
    call Call_000_3f52
    ret


jr_00f_69ed:
    ld a, [$ccb7]
    bit 6, a
    jr nz, jr_00f_69ff

    set 6, a
    ld [$ccb7], a
    ld a, $d6
    call Call_000_3f52
    ret


jr_00f_69ff:
    ld a, $d7
    call Call_000_3f52
    ret


Call_00f_6a05:
    ld hl, $c8ad
    ld a, [$c60d]
    ld de, $6aeb
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld a, [de]
    ld [hl], a
    ld a, [$ccb8]
    cp $00
    jr nz, jr_00f_6a35

    ld a, [$ccb7]
    bit 5, a
    jr nz, jr_00f_6a2f

    set 5, a
    ld [$ccb7], a
    ld a, $cb
    call Call_000_3f52
    ret


jr_00f_6a2f:
    ld a, $cc
    call Call_000_3f52
    ret


jr_00f_6a35:
    ld a, [$ccb7]
    bit 5, a
    jr nz, jr_00f_6a47

    set 5, a
    ld [$ccb7], a
    ld a, $d8
    call Call_000_3f52
    ret


jr_00f_6a47:
    ld a, $d9
    call Call_000_3f52
    ret


Call_00f_6a4d:
    ld hl, $c8cd
    ld a, [$c60d]
    ld de, $6aeb
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld a, [de]
    ld [hl], a
    ld a, [$ccb8]
    cp $01
    jr nz, jr_00f_6a7d

    ld a, [$ccb7]
    bit 4, a
    jr nz, jr_00f_6a77

    set 4, a
    ld [$ccb7], a
    ld a, $d0
    call Call_000_3f52
    ret


jr_00f_6a77:
    ld a, $d1
    call Call_000_3f52
    ret


jr_00f_6a7d:
    ld a, [$ccb7]
    bit 4, a
    jr nz, jr_00f_6a9b

    set 4, a
    ld [$ccb7], a
    ld a, [sPlayerGender]
    or a
    jr nz, jr_00f_6a95

    ld a, $dc
    call Call_000_3f52
    ret


jr_00f_6a95:
    ld a, $de
    call Call_000_3f52
    ret


jr_00f_6a9b:
    ld a, [sPlayerGender]
    or a
    jr nz, jr_00f_6aa7

    ld a, $dd
    call Call_000_3f52
    ret


jr_00f_6aa7:
    ld a, $df
    call Call_000_3f52
    ret


Call_00f_6aad:
    ld hl, $c8ed
    ld a, [$c60d]
    ld de, $6aeb
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld a, [de]
    ld [hl], a
    ld a, [$ccb8]
    cp $01
    jr nz, jr_00f_6ad3

    ld a, [$ccb7]
    set 3, a
    ld [$ccb7], a
    ld a, $d2
    call Call_000_3f52
    ret


jr_00f_6ad3:
    ld a, [$ccb7]
    bit 3, a
    jr nz, jr_00f_6ae5

    set 3, a
    ld [$ccb7], a
    ld a, $da
    call Call_000_3f52
    ret


jr_00f_6ae5:
    ld a, $db
    call Call_000_3f52
    ret


    inc bc
    ld [bc], a
    ld bc, $af00
    ldh [$ff93], a
    ldh [$ff91], a
    ld hl, $6bd4
    ld de, $c600
    ld b, $10
    call CopyHLtoDE
    ld a, $00
    call RST_TableJumpBankSwitch
    ld a, [$ccb8]
    cp $00
    jr z, jr_00f_6b13

    cp $01
    jr z, jr_00f_6b26

    cp $02
    jr z, jr_00f_6b33

jr_00f_6b13:
    call Call_00f_6b52
    call Call_00f_685f
    call Call_00f_6b6c
    call Call_00f_687d
    call Call_00f_6b86
    call Call_00f_689b
    ret


jr_00f_6b26:
    call Call_00f_6ba0
    call Call_00f_68b9
    call Call_00f_6bba
    call Call_00f_68d7
    ret


jr_00f_6b33:
    call Call_00f_6b52
    call Call_00f_685f
    call Call_00f_6b6c
    call Call_00f_687d
    call Call_00f_6b86
    call Call_00f_689b
    call Call_00f_6ba0
    call Call_00f_68b9
    call Call_00f_6bba
    call Call_00f_68d7
    ret


Call_00f_6b52:
    ld hl, $6be4
    ld de, $c860
    ld b, $10
    call CopyHLtoDE
    ld hl, $d800
    ld de, $0072
    add hl, de
    ld bc, $8180
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a
    ret


Call_00f_6b6c:
    ld hl, $6bf4
    ld de, $c880
    ld b, $10
    call CopyHLtoDE
    ld hl, $d800
    ld de, $00f4
    add hl, de
    ld bc, $8181
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a
    ret


Call_00f_6b86:
    ld hl, $6c04
    ld de, $c8a0
    ld b, $10
    call CopyHLtoDE
    ld hl, $d800
    ld de, $00ae
    add hl, de
    ld bc, $8182
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a
    ret


Call_00f_6ba0:
    ld hl, $6c14
    ld de, $c8c0
    ld b, $10
    call CopyHLtoDE
    ld hl, $d800
    ld de, $006c
    add hl, de
    ld bc, $8183
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a
    ret


Call_00f_6bba:
    ld hl, $6c24
    ld de, $c8e0
    ld b, $10
    call CopyHLtoDE
    ld hl, $d800
    ld de, $00fa
    add hl, de
    ld bc, $8184
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a
    ret


    ld bc, rJOYP
    nop
    nop
    ld [$0078], sp
    ld d, b
    nop
    ld a, b
    ld d, b
    nop
    ld bc, $0001
    ld bc, $0208
    nop
    nop
    ld [$0068], sp
    jr nc, jr_00f_6bee

jr_00f_6bee:
    ld l, b
    jr nc, jr_00f_6bf1

jr_00f_6bf1:
    nop
    nop
    nop
    ld bc, $0208
    nop
    nop
    ld [$0038], sp
    ld [hl], b
    nop
    jr c, jr_00f_6c70

    nop
    inc bc
    nop
    nop
    ld bc, $0208
    nop
    nop
    ld [$0028], sp
    ld d, b
    nop
    jr z, jr_00f_6c60

    nop
    ld [bc], a
    nop
    nop
    ld bc, $0208
    nop
    nop
    ld [$0038], sp
    jr nc, jr_00f_6c1e

jr_00f_6c1e:
    jr c, jr_00f_6c50

    nop
    nop
    nop
    nop
    ld bc, $0208
    nop
    nop
    ld [$0068], sp
    ld [hl], b
    nop
    ld l, b
    ld [hl], b
    nop
    inc bc
    nop
    nop

Call_00f_6c34:
    ld hl, vBGMap1
    ld de, $6c42
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

jr_00f_6c50:
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

jr_00f_6c60:
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

jr_00f_6c70:
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
    push hl
    push af
    ld l, $d3
    ld h, $6d
    ld a, $20
    call BankSwitchCallHL
    pop af
    pop hl
    xor a
    ld [$c800], a
    ld [$c820], a
    ld [$c840], a
    ld [$c860], a
    ld [$c760], a
    ld [$c780], a
    ld [$c7a0], a
    ld [$c800], a
    ld [$c820], a
    call ClearBGMap0
    call ClearBGMap1
    call Call_000_323d
    ld hl, $7729
    ld c, $10
    ld de, $8800
    call Call_000_31a0
    ld hl, $72aa
    ld c, $10
    ld de, $9000
    call Call_000_31a0
    ld hl, $77d5
    ld c, $10
    ld de, $9800
    call Call_000_31a0
    ld hl, $5fa1
    ld a, $0d
    call BankSwitchCallHL
    ld a, $10
    ld [$cb5c], a
    ld a, $a8
    ld [$cb5d], a
    ld [$cb5e], a
    ld a, $1d
    ld [$cb4e], a
    xor a
    ld [$ccb9], a
    call Call_00f_6e3b
    call Call_00f_6e7f
    ld a, $83
    ld [$c0a2], a
    ld a, $68
    ldh [$ff95], a
    xor a
    ldh [rIF], a
    ld a, $03
    ldh [rIE], a
    ld a, $1b
    call Call_000_25c8
    ld hl, $c0a3
    inc hl
    ld a, $72
    ld [hl+], a
    ld [hl], a
    call Call_00f_6ddc
    call Call_00f_6ef1
    ret


    call Call_000_0d90
    xor a
    ld [$cb5a], a
    ld [$cb5b], a
    call Call_00f_6d58
    call Call_00f_6e23
    call Call_000_2d67
    call Call_000_36f4
    ret


Call_00f_6d58:
    ld a, [$cb4e]
    ld b, a
    ld a, [$cb4f]
    or b
    ret nz

    ld a, [$ccb9]
    rst $00
    ld l, c
    ld l, l
    or b
    ld l, l
    ld a, [$ccba]
    cp $03
    jr z, jr_00f_6d7c

    cp $02
    jr z, jr_00f_6d8b

    cp $01
    jr z, jr_00f_6d9a

    ld a, $e2
    jr jr_00f_6da7

jr_00f_6d7c:
    ld hl, $cc04
    ld de, $cc00
    ld b, $04
    call CopyHLtoDE
    ld a, $e3
    jr jr_00f_6da7

jr_00f_6d8b:
    ld hl, $cc08
    ld de, $cc00
    ld b, $04
    call CopyHLtoDE
    ld a, $e4
    jr jr_00f_6da7

jr_00f_6d9a:
    ld hl, $cc0c
    ld de, $cc00
    ld b, $04
    call CopyHLtoDE
    ld a, $e5

jr_00f_6da7:
    call Call_000_3f52
    ld a, $01
    ld [$ccb9], a
    ret


    ld a, [$cb52]
    cp $ff
    ret nz

    ldh a, [$ff8b]
    and $01
    ret z

    ld a, [$ccba]
    ld b, a

jr_00f_6dbf:
    push bc
    ld a, $ce
    call Call_000_0f47
    ld a, $ce
    call Call_000_0f47
    pop bc
    dec b
    jr nz, jr_00f_6dbf

    ld a, $02
    ld [$cb50], a
    ld a, $1d
    ld [$cb4f], a
    call Call_00f_6f59
    ret


Call_00f_6ddc:
    ld hl, $ccbb
    ld a, $ff
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ld hl, $ccbb
    ld de, $ccba
    ld a, $00
    ld [de], a
    ld a, [$b9a1]
    bit 4, a
    jr z, jr_00f_6dfb

    ld a, [de]
    inc a
    ld [de], a
    ld a, $00
    ld [hl+], a

jr_00f_6dfb:
    ld a, [$b9a1]
    bit 5, a
    jr z, jr_00f_6e08

    ld a, [de]
    inc a
    ld [de], a
    ld a, $01
    ld [hl+], a

jr_00f_6e08:
    ld a, [$b9a1]
    bit 6, a
    jr z, jr_00f_6e15

    ld a, [de]
    inc a
    ld [de], a
    ld a, $02
    ld [hl+], a

jr_00f_6e15:
    ld a, [$b9a1]
    bit 7, a
    jr z, jr_00f_6e22

    ld a, [de]
    inc a
    ld [de], a
    ld a, $03
    ld [hl], a

jr_00f_6e22:
    ret


Call_00f_6e23:
    ld a, $14
    ld b, a
    ld a, [$c8cd]
    add b
    ld hl, $c8c2
    cp [hl]
    ret z

    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    inc hl
    xor a
    ld [hl], a
    xor a
    ld [$c8d0], a
    ret


Call_00f_6e3b:
    xor a
    ldh [$ff93], a
    ldh [$ff91], a
    ld hl, $6e5f
    ld de, $c600
    ld b, $10
    call CopyHLtoDE
    ld a, $00
    call RST_TableJumpBankSwitch
    ld hl, $6e6f
    ld de, $c8c0
    ld b, $10
    call CopyHLtoDE
    call Call_00f_6e23
    ret


    ld bc, rJOYP
    nop
    nop
    ld [$0000], sp
    nop
    nop
    ld h, b
    ld l, b
    nop
    inc bc
    ld bc, $0100
    ld [$0000], sp
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, b
    ld e, b
    nop
    ld [bc], a
    nop
    nop

Call_00f_6e7f:
    ld hl, vBGMap1
    ld de, $6e8d
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
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    and a
    and [hl]
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    and a
    and [hl]
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
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

Call_00f_6ef1:
    ld de, $cc10
    ld a, [sPlayerGender]
    or a
    jr z, jr_00f_6eff

    ld hl, $6f35
    jr jr_00f_6f02

jr_00f_6eff:
    ld hl, $6f32

jr_00f_6f02:
    ld b, $03
    call CopyHLtoDE
    ld bc, $ccbb
    ld a, [$ccba]
    cp $03
    jr z, jr_00f_6f1f

    cp $02
    jr z, jr_00f_6f25

    cp $01
    jr z, jr_00f_6f2b

    ld de, $cc00
    call Call_00f_6f38

jr_00f_6f1f:
    ld de, $cc04
    call Call_00f_6f38

jr_00f_6f25:
    ld de, $cc08
    call Call_00f_6f38

jr_00f_6f2b:
    ld de, $cc0c
    call Call_00f_6f38
    ret


    xor a
    ret z

    ld [de], a
    ld [hl], e
    jr nc, jr_00f_6f59

Call_00f_6f38:
    ld hl, $6f51
    ld a, [bc]
    sla a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    inc hl
    inc bc
    push bc
    ld b, $04
    call CopyHLtoDE
    pop bc
    ret


    ld c, c
    cp c
    ld e, a
    cp c
    ld [hl], l
    cp c
    adc e
    cp c

Call_00f_6f59:
jr_00f_6f59:
    ld a, [$b9a1]
    and $0f
    ld [$b9a1], a
    ld de, $ccbb

jr_00f_6f64:
    ld hl, $6f51
    ld a, [de]
    call Call_000_0a3e
    inc de
    ld a, $ff
    ld [hl+], a
    ld a, $af
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ld a, [$ccba]
    dec a
    ld [$ccba], a
    or a
    jr nz, jr_00f_6f64

    ret


    ld hl, $98e1
    ld a, $2d
    ld [hl+], a
    ld a, $2e
    ld [hl], a
    ld a, $1f
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, $3d
    ld [hl+], a
    ld a, $3e
    ld [hl], a
    ld hl, $d800
    ld a, $45
    sla a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld de, $8320
    ld a, e
    ld [hl+], a
    ld a, d
    ld [hl], a
    ret


    ld hl, $98a1
    ld a, $0d
    ld [hl+], a
    ld a, $0e
    ld [hl], a
    ld a, $1f
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, $1d
    ld [hl+], a
    ld a, $1e
    ld [hl], a
    ld hl, $d800
    ld a, $34
    sla a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld de, $8321
    ld a, e
    ld [hl+], a
    ld a, d
    ld [hl], a
    ret


    ld hl, sInventory
    ld a, [hl+]
    cp $10
    ret z

    ld a, [hl]
    cp $10
    ret z

    ld hl, $9a65
    ld a, $05
    ld [hl+], a
    ld a, $06
    ld [hl+], a
    ld a, $1e
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, $15
    ld [hl+], a
    ld a, $16
    ld [hl], a
    ld de, $015a
    ld hl, $d800
    add hl, de
    ld bc, $011d
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a
    ret


    ld a, $01
    ld [$cc23], a
    ld a, [$b949]
    cp $03
    ret z

    cp $02
    jr nz, jr_00f_7025

    ld a, [$b953]
    bit 7, a
    ret nz

jr_00f_7025:
    ld a, [$b95f]
    cp $03
    ret z

    cp $02
    jr nz, jr_00f_7035

    ld a, [$b969]
    bit 7, a
    ret nz

jr_00f_7035:
    ld a, [$b975]
    cp $03
    ret z

    cp $02
    jr nz, jr_00f_7045

    ld a, [$b97f]
    bit 7, a
    ret nz

jr_00f_7045:
    ld a, [$b98b]
    cp $03
    ret z

    cp $02
    jr nz, jr_00f_7055

    ld a, [$b995]
    bit 7, a
    ret nz

jr_00f_7055:
    xor a
    ld [$cc23], a
    ret


    ld a, [$b948]
    bit 0, a
    call nz, Call_00f_7083
    ld a, [$b948]
    bit 1, a
    call nz, Call_00f_7088
    ld a, [$b948]
    bit 2, a
    call nz, Call_00f_708d
    ld a, [$b948]
    bit 3, a
    call nz, Call_00f_7092
    ld a, [$b948]
    bit 4, a
    call nz, Call_00f_7097
    ret


Call_00f_7083:
    ld hl, $98ca
    jr jr_00f_709a

Call_00f_7088:
    ld hl, $998a
    jr jr_00f_709a

Call_00f_708d:
    ld hl, $98d0
    jr jr_00f_709a

Call_00f_7092:
    ld hl, $9990
    jr jr_00f_709a

Call_00f_7097:
    ld hl, $9a54

jr_00f_709a:
    call Call_00f_70b2
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
    ld a, $b8
    ld [hl+], a
    ld a, $b9
    ld [hl], a
    ret


Call_00f_70b2:
    push hl
    ld c, $4f
    ld a, $01
    ldh [c], a
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
    pop hl
    ret


    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    inc e
    inc e
    inc e
    inc e
    inc e
    inc d
    inc d
    inc d
    inc d
    inc d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc e
    inc e
    inc e
    inc e
    inc e
    ld [$0808], sp
    ld [$0408], sp
    inc b
    inc b
    inc b
    inc b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc l
    inc l
    inc l
    inc l
    inc l
    jr jr_00f_712f

    jr jr_00f_7131

    jr jr_00f_711f

    inc b
    inc b
    inc b
    inc b

jr_00f_711f:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    cp l

jr_00f_712f:
    cp l
    cp l

jr_00f_7131:
    cp l
    cp l
    ld l, b
    ld l, b
    ld l, b
    ld l, b
    ld l, b
    inc d
    inc d
    inc d
    inc d
    inc d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [$cd23]
    or a
    jr z, jr_00f_7159

    ld a, [$c0bb]
    or a
    jp nz, Jump_00f_71cf

jr_00f_7159:
    ld a, [$dd00]
    ld b, a
    ld a, [$cb4e]
    or a
    ret z

    bit 0, b
    jr z, jr_00f_716f

    cp $1d
    jr nz, jr_00f_716f

    ld a, $0d
    ld [$cb4e], a

jr_00f_716f:
    ld a, [$c0a7]
    cp $01
    jr nz, jr_00f_7197

    ld a, [$b882]
    cp $06
    jr c, jr_00f_7184

    ld a, [$b882]
    cp $12
    jr c, jr_00f_7197

jr_00f_7184:
    ld hl, $712e
    ld a, [$cb4e]
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ld hl, $c0a3
    ld [hl], a
    jr jr_00f_71a8

jr_00f_7197:
    ld hl, $70d4
    ld a, [$cb4e]
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ld hl, $c0a3
    ld [hl], a

jr_00f_71a8:
    ld hl, $70f2
    ld a, [$cb4e]
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ld hl, $c0a4
    ld [hl], a
    ld hl, $7110
    ld a, [$cb4e]
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ld hl, $c0a5
    ld [hl], a
    ld hl, $cb4e
    dec [hl]
    ret


Jump_00f_71cf:
    ld a, [$cb4e]
    or a
    ret z

    cp $09
    jr c, jr_00f_71e1

    ld a, $08
    ld [$cb4e], a
    xor a
    ld [$cd22], a

jr_00f_71e1:
    ld a, [$cd22]
    inc a
    ld [$cd22], a
    cp $04
    ret c

    xor a
    ld [$cd22], a
    ld a, [$cb4e]
    dec a
    ld [$cb4e], a
    jr z, jr_00f_7259

    add a
    add a
    ld c, a
    ld b, $00
    sla c
    rl b
    sla c
    rl b
    sla c
    rl b
    sla c
    rl b
    sla c
    rl b
    push af
    sla a
    sla a
    or b
    ld b, a
    pop af
    or c
    ld c, a
    ld hl, $dd02
    push bc
    pop de
    di
    call SyncToBlankPeriod
    ld c, $68
    ld a, $80
    ldh [c], a
    ei
    ld b, $20
    inc c

jr_00f_722d:
    di
    call SyncToBlankPeriod
    ld a, [hl+]
    or e
    ldh [c], a
    ld a, [hl+]
    or d
    ldh [c], a
    ei
    dec b
    jr nz, jr_00f_722d

    inc c
    ld hl, $dd42
    di
    call SyncToBlankPeriod
    ld a, $80
    ldh [c], a
    ei
    ld b, $20
    inc c

jr_00f_724a:
    di
    call SyncToBlankPeriod
    ld a, [hl+]
    or e
    ldh [c], a
    ld a, [hl+]
    or d
    ldh [c], a
    ei
    dec b
    jr nz, jr_00f_724a

    ret


jr_00f_7259:
    ld hl, $dd02
    call CGBBackgroundPaletteUpload
    ld hl, $dd42
    call BGPBackgroundPaletteUpload
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
    inc d
    inc d
    inc d
    inc d
    inc d
    inc e
    inc e
    inc e
    inc e
    inc e
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    inc b
    inc b
    inc b
    inc b
    ld [$0808], sp
    ld [$1c08], sp
    inc e
    inc e
    inc e
    inc e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    inc b
    inc b
    inc b
    inc b
    jr jr_00f_72d0

    jr jr_00f_72d2

    jr jr_00f_72e8

    inc l
    inc l
    inc l
    inc l
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc d

jr_00f_72d0:
    inc d
    inc d

jr_00f_72d2:
    inc d
    inc d
    ld l, b
    ld l, b
    ld l, b
    ld l, b
    ld l, b
    cp l
    cp l
    cp l
    cp l
    cp l
    ld a, [$cd23]
    or a
    jr z, jr_00f_72eb

    ld a, [$c0bb]
    or a

jr_00f_72e8:
    jp nz, Jump_00f_7370

jr_00f_72eb:
    ld a, [$dd00]
    ld b, a
    ld a, [$cb4f]
    or a
    ret z

    bit 0, b
    jr z, jr_00f_7301

    cp $0f
    jr nz, jr_00f_7301

    ld a, $07
    ld [$cb4f], a

jr_00f_7301:
    cp $01
    jr nz, jr_00f_7310

    ld a, [$cb50]
    ld [$c0a7], a
    ld a, $01
    ld [$c0a6], a

jr_00f_7310:
    ld a, [$c0a7]
    cp $01
    jr nz, jr_00f_7338

    ld a, [$b882]
    cp $06
    jr c, jr_00f_7325

    ld a, [$b882]
    cp $12
    jr c, jr_00f_7338

jr_00f_7325:
    ld hl, $72c0
    ld a, [$cb4f]
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ld hl, $c0a3
    ld [hl], a
    jr jr_00f_7349

jr_00f_7338:
    ld hl, $7266
    ld a, [$cb4f]
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ld hl, $c0a3
    ld [hl], a

jr_00f_7349:
    ld hl, $7284
    ld a, [$cb4f]
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ld hl, $c0a4
    ld [hl], a
    ld hl, $72a2
    ld a, [$cb4f]
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ld hl, $c0a5
    ld [hl], a
    ld hl, $cb4f
    dec [hl]
    ret


Jump_00f_7370:
    ld a, [$cb4f]
    or a
    ret z

    cp $09
    jr c, jr_00f_7382

    ld a, $08
    ld [$cb4f], a
    xor a
    ld [$cd22], a

jr_00f_7382:
    ld a, [$cd22]
    inc a
    ld [$cd22], a
    cp $04
    ret c

    xor a
    ld [$cd22], a
    ld a, [$cb4f]
    dec a
    ld [$cb4f], a
    jr z, jr_00f_740b

    ld b, a
    ld a, $08
    sub b
    add a
    add a
    ld c, a
    ld b, $00
    sla c
    rl b
    sla c
    rl b
    sla c
    rl b
    sla c
    rl b
    sla c
    rl b
    push af
    sla a
    sla a
    or b
    ld b, a
    pop af
    or c
    ld c, a
    ld hl, $dd02
    push bc
    pop de
    di
    call SyncToBlankPeriod
    ld c, $68
    ld a, $80
    ldh [c], a
    ei
    ld b, $20
    inc c

jr_00f_73d2:
    di
    call SyncToBlankPeriod
    ld a, [hl+]
    or e
    ldh [c], a
    ld a, [hl+]
    or d
    ldh [c], a
    ei
    dec b
    jr nz, jr_00f_73d2

    inc c
    ld hl, $dd42
    di
    call SyncToBlankPeriod
    ld a, $80
    ldh [c], a
    ei
    ld b, $20
    inc c

jr_00f_73ef:
    di
    call SyncToBlankPeriod
    ld a, [hl+]
    or e
    ldh [c], a
    ld a, [hl+]
    or d
    ldh [c], a
    ei
    dec b
    jr nz, jr_00f_73ef

    ret


Call_00f_73fe:
    ld hl, $dd02
    call CGBBackgroundPaletteUpload
    ld hl, $dd42
    call BGPBackgroundPaletteUpload
    ret


jr_00f_740b:
    ld b, $40
    ld hl, $dd02

jr_00f_7410:
    ld a, $ff
    ld [hl+], a
    ld a, $7f
    ld [hl+], a
    dec b
    jr nz, jr_00f_7410

    call Call_00f_73fe
    ld a, [$cb50]
    ld [$c0a7], a
    ld a, $01
    ld [$c0a6], a
    xor a
    ld [$cd23], a
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

jr_00f_7448:
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
    jr nc, @-$56

    sbc d
    ld [hl+], a
    nop
    rst $38
    jr nc, jr_00f_7480

    rst $38
    rst $38

jr_00f_7480:
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
    jr nc, jr_00f_7448

    jr nc, jr_00f_74b9

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

jr_00f_74b9:
    ld d, d
    rst $28
    rst $38
    rst $10
    rst $28
    rst $18
    ldh [$ffbf], a
    rst $08
    ld hl, sp+$3f
    rst $38
    rst $20
    ld a, a
    ret z

    cp a
    pop af
    rst $18
    ld c, b
    rst $30
    rst $38
    ld l, l
    rst $30
    db $fd
    rlca
    rst $38
    pop af
    adc l
    ld a, [$c7ff]
    ld sp, hl
    ccf
    cp $8f
    pop af
    rst $38
    ld a, a
    ei
    add e
    ld a, a
    add c
    ld b, $06
    ld bc, $0207
    inc bc
    cp $f0
    dec bc
    ldh [rIE], a
    ldh a, [c]
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    ld a, [hl]
    rst $18
    db $ed
    ld e, [hl]
    ld a, a
    cp $14
    dec c
    inc bc
    nop
    dec e
    inc bc
    ld [hl], a
    rrca
    cp a
    or a
    ld l, a
    rst $30
    ld l, a
    ld b, e
    dec c
    rst $38
    rra
    db $10
    ld [bc], a
    rst $18
    rst $28
    rst $28
    rst $18
    cp a
    rst $18
    ld b, e
    inc c
    rst $38
    ld hl, sp-$01
    rst $38
    ei
    rst $38
    ei
    push de
    ei
    db $fd
    ei
    ld bc, $00ff
    rlca
    nop
    dec c
    rlca
    rlca
    inc bc
    rlca
    rst $38
    ld bc, $050b
    rrca
    dec b
    rra
    rrca
    rra
    db $fd
    ld a, [bc]
    jr nz, jr_00f_753a

jr_00f_753a:
    ld b, $0f
    rlca
    inc c

jr_00f_753e:
    rlca
    inc c
    db $eb
    inc bc
    rlca
    ld bc, $a80f
    jr nz, jr_00f_7548

jr_00f_7548:
    or b
    ld hl, sp-$10
    rst $18
    jr jr_00f_753e

    db $10
    ldh [$fff0], a
    ldh a, [rNR12]
    rra
    dec bc
    ld l, a
    rra
    ld [$071f], sp
    ld bc, $0502
    inc bc
    ld bc, $bf08
    db $fc
    add sp, -$04
    adc b
    db $fc
    ldh a, [$ff03]
    ld [bc], a
    ldh [$fffe], a
    call nz, $0507
    inc bc
    dec bc
    rlca
    rrca
    ld b, $17
    rst $18
    add hl, bc
    ld e, $05
    rra
    dec bc
    jr nz, jr_00f_7586

    nop
    db $10
    rst $38
    ldh [$ff88], a
    ldh a, [$ffe8]
    or b
    db $f4
    ld c, b

jr_00f_7586:
    xor h
    cp a
    ret nc

    call c, $14e8
    rrca
    inc e
    jr nz, jr_00f_7590

jr_00f_7590:
    rla
    rst $28
    dec c
    add hl, bc
    ld b, $05
    ld [bc], a
    inc c
    inc d
    ld hl, sp+$1c
    rst $38
    ld hl, sp-$44
    ld hl, sp-$0c
    ld e, b
    ret z

    or b
    ret nc

    db $fd
    jr nz, jr_00f_75a8

    inc b

jr_00f_75a8:
    rst $10
    cpl
    ld a, [$e79f]
    rra
    cp a
    db $fd
    ld a, $f3
    call z, $e3dc
    db $10
    dec bc
    rst $28
    rst $38
    rst $08
    ldh a, [c]
    dec de
    db $fd
    rst $38
    ldh [$ffcf], a
    jr c, @+$01

    rst $30
    inc c
    rst $28
    pop af
    rst $28
    rst $30
    rst $28
    rst $30
    ld a, [$1b27]
    add b
    jp nc, $3c1b

    ld hl, sp+$7c
    ld hl, sp-$0c
    rst $38
    ld hl, sp-$08
    ldh a, [rBCPS]
    ldh a, [$ffd0]
    ld h, b
    ld h, b
    rst $38
    ret nz

    ret nz

    nop
    rst $38
    ld l, a
    cp [hl]
    ld l, a
    rst $10
    rst $38
    ld l, a
    rst $18
    ld l, a
    or $6f
    or a
    ld l, a
    sbc [hl]
    rst $38
    ld l, a
    cp d
    ld l, a
    ei
    rst $18
    cp d
    rst $18
    or [hl]
    rst $28
    rst $18
    rst $20
    rst $18
    db $ed
    ldh [rIF], a
    rst $20
    rst $18
    db $eb
    db $eb
    rst $18
    rst $18
    add b
    rrca
    rst $18
    and b
    rrca
    push de
    ei
    ld b, l
    rst $38
    ei
    dec b

jr_00f_7611:
    ei
    sub [hl]
    ei
    daa
    nop
    rst $38
    rst $38
    ld hl, $edd3
    rst $20

jr_00f_761c:
    ei
    di
    cp a
    rst $38
    rrca
    cp a
    cp $bf
    db $fc
    ldh a, [rNR34]
    rrca
    inc c
    add hl, bc
    inc c
    inc bc
    db $10
    ld e, l
    rra
    ld [bc], a
    ld [de], a
    rrca
    inc b
    inc b

jr_00f_7634:
    inc b
    db $10
    db $fc
    nop
    ld [de], a
    ld a, a
    jr jr_00f_761c

    ld hl, sp+$10
    stop
    ld bc, $19a0
    sbc $e0
    inc bc
    rlca
    rla
    ld c, $1f
    ld [bc], a
    inc b
    ret nz

    nop
    ld a, e
    jr nc, jr_00f_7611

    ldh [rIF], a
    ldh a, [$fff4]
    cp b
    db $fc
    ld [bc], a
    db $10
    db $fd
    nop
    jr nz, @+$04

    rlca
    ld bc, $050a
    dec b
    ld [bc], a
    ld a, [$0281]
    ld c, $30
    ld d, $40
    nop
    ldh a, [rLCDC]
    cp b
    rst $38
    ret nc

    ldh a, [rNR41]
    jr nc, jr_00f_7634

    add sp, -$10
    cp b
    ld a, a
    ldh a, [rDIV]
    nop
    rra
    nop
    scf
    rra
    add b
    jr @+$01

    ld b, $2f
    ld d, $3f
    ld d, $7f
    ccf
    sbc a
    rst $38
    nop
    rst $38
    add a
    ld c, a
    or a
    sbc a
    rst $28
    rst $08
    db $db
    rst $38
    db $fd
    ld d, b
    dec de
    ldh a, [rIE]
    inc bc
    dec b
    add $f8
    sbc a
    rst $20
    ld a, [$fc3a]
    ld e, $20
    nop
    ld b, $03
    ld c, $ff
    ccf
    dec d
    ccf
    dec d

jr_00f_76ae:
    ld a, a
    ccf
    reti


jr_00f_76b1:
    ld l, a
    rst $38
    jp c, $f96f

    ld l, a
    db $db
    ld l, a
    push af
    ld l, a
    db $dd
    cp c
    ldh [rIF], a
    sub d
    ld l, a
    db $eb
    ret nz

    rrca
    push af
    rst $18
    rst $38
    ld h, l
    rst $18
    xor b
    rst $18
    ld a, [hl+]
    rst $18
    jr nz, jr_00f_76ae

    rst $38
    jr z, jr_00f_76b1

    ld d, a
    ei
    ld d, [hl]
    ei
    ld e, l
    ei
    db $fd
    inc d
    jr nz, jr_00f_76dc

jr_00f_76dc:
    dec h
    ei
    and h
    ei
    add [hl]
    ei
    rst $38
    ldh [rP1], a
    sbc [hl]
    ldh [$ffc7], a
    ld a, [$fce2]
    rra
    ld a, [$4dfc]
    cp $07
    jr nz, jr_00f_76f3

jr_00f_76f3:
    inc bc
    jr nz, jr_00f_76fe

    ld c, $ac
    ld [bc], a
    jr nz, @+$09

    ld c, $1f
    add hl, bc

jr_00f_76fe:
    jr nz, jr_00f_7722

    ld [bc], a
    ld [$c810], sp
    ldh a, [c]
    jr nz, jr_00f_7729

    and b
    ld [$0202], sp
    ld [hl+], a
    rla
    rrca
    inc d
    rrca
    di
    rrca
    inc bc
    ld de, $0322
    ld [hl+], a
    db $f4
    ld hl, sp+$14
    ld hl, sp+$39
    jr jr_00f_7720

    ld [hl+], a
    dec b

jr_00f_7720:
    jr nz, jr_00f_772f

jr_00f_7722:
    ld b, $0b
    ld [hl+], a
    jr nz, @+$06

    jr nz, @+$01

jr_00f_7729:
    ld a, b
    ld hl, sp-$10
    add sp, $30
    ld d, b

jr_00f_772f:
    jr nz, jr_00f_7791

    ld e, l
    nop
    dec b
    ld l, $0f
    dec b
    rlca
    ret nz

    inc d
    ld bc, $2e06
    ld a, a
    rst $38
    cp a
    rst $38
    ld a, a
    xor [hl]
    rst $18
    rst $38
    ld b, $1f

jr_00f_7747:
    rst $38
    add sp, -$30
    ret nc

    ldh [$ffb0], a
    ld h, b
    ld h, b
    nop
    cp $08
    ld [de], a
    ld a, a
    ld hl, sp+$7f
    ldh a, [rIE]
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

    ccf
    jr nz, jr_00f_7747

jr_00f_7768:
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
    jr nc, jr_00f_7768

    rst $38
    nop
    ld l, $fb
    inc b
    ei
    rst $38
    db $fc
    inc bc

jr_00f_7782:
    rlca
    ld hl, sp+$0c
    ei
    inc c
    ei
    db $e3
    jr jr_00f_7782

    sub b
    dec a
    inc b
    dec [hl]
    and l
    ld b, b

jr_00f_7791:
    inc d
    nop
    ld a, a
    rst $38
    inc b
    ld a, [$7d5d]
    ld a, $7f
    rla
    cp a
    rst $28
    ld d, a
    rst $38
    ld d, a
    rst $38
    db $10
    dec [hl]
    ld hl, sp+$00
    rst $00
    cp a
    ld a, b
    di
    db $fd
    db $fd
    cp $af
    ld [bc], a
    ld [de], a
    add d
    rst $38
    ld a, a
    ld b, e
    dec a
    ld a, $01
    inc bc
    ld bc, $fe01
    or h
    ld b, e
    xor l
    cp $fa
    db $fc
    xor h
    ld hl, sp-$02
    ld e, h
    and b
    jr nz, jr_00f_77d4

    inc b
    dec sp
    rst $38
    ld d, l
    jr nz, jr_00f_77ce

jr_00f_77ce:
    ld a, a
    ld b, $05
    rlca
    ccf
    rst $38

jr_00f_77d4:
    inc de
    add b
    ld a, [hl-]
    ld c, $05
    jr z, jr_00f_77e2

    ld [hl+], a
    ld [bc], a
    inc b
    rlca
    cp c
    ld a, l
    dec b

jr_00f_77e2:
    rlca
    inc b
    inc sp
    rrca
    rrca
    rlca
    inc bc
    inc de
    ld e, a
    rst $38
    ld a, $3f
    dec e
    dec l
    ld e, $17
    inc c
    ld a, [bc]
    ei
    inc b
    ld b, $d2
    ld c, e
    ld a, [$fcbc]
    ld e, b
    ld d, h
    ld sp, hl
    cp b
    jp $e113


    ld c, h
    rrca
    inc b
    dec c
    inc bc
    rla
    rst $38
    rrca
    ld l, $1f
    inc a
    rra
    ld e, b
    ccf
    ld a, b
    cp a
    ccf
    ld a, c
    ccf
    ldh a, [rNR41]
    or b
    add b
    dec h
    ld [hl], h
    ld l, a
    ld hl, sp+$3c
    ld hl, sp+$1a
    nop
    inc hl
    cp $fc
    dec h
    ld c, a
    ld a, a
    ld [bc], a
    nop
    rra
    ld [bc], a
    dec h
    dec de
    dec de
    ld sp, $fe3e
    ld d, d
    ld d, b
    ld b, b
    nop
    ld hl, sp+$40
    cp h
    ret c

    ld hl, sp-$1b
    ldh [rSB], a
    ld c, $3f
    and d
    ld b, l
    add hl, bc
    ld c, $fc
    adc b
    adc b
    ld [hl], b
    or h
    ld d, d
    inc bc
    ld [bc], a
    jp Jump_000_0707


    db $10
    ld hl, sp+$50
    ld d, b
    dec c
    inc d
    ld a, [hl]
    inc b
    rrca
    add d
    ld a, a
    ld h, e
    inc a
    ccf
    ld bc, $0507
    ld a, a
    xor a
    db $fc
    ei
    cp $76
    ld hl, sp-$08
    sub [hl]
    ld d, a
    ld e, $00
    ld c, l
    ld a, h
    db $e3
    ld a, l
    ld a, a
    db $d3
    dec bc
    rrca
    ld [bc], a
    ld b, $42
    ld [hl], e
    ret c

    or b
    inc bc
    ld [hl+], a
    inc bc
    db $10
    rra
    inc c
    ld d, $20
    db $10

jr_00f_7883:
    db $fd
    ld c, $02
    db $10
    cp h
    ld a, b
    ld [hl], h
    ld hl, sp-$08
    jr nc, jr_00f_7883

    ld l, b
    ldh [rNR44], a
    ld [hl], b
    ldh a, [$ff5c]
    ld e, a
    ld a, $3e
    rra
    jp $1f2f


    add hl, bc
    ld [bc], a
    ld bc, $0712
    ld [bc], a
    ld b, $36
    rrca
    ccf
    rla
    inc b
    ccf
    rra
    ld a, [bc]
    ld [hl], $7f
    ld bc, $ff36
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
