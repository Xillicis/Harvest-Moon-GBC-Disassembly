; Disassembly of "harvest_moon.gbc"
; This file was created with:
; mgbdis v2.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $01b", ROMX[$4000], BANK[$1b]

    db $1b ; Bank number

Label_01b_4001:
    ld hl, $cd6c
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    inc hl
    ld bc, Label_01b_4014
    push bc
    ld b, h
    ld c, l
    ld h, d
    ld l, e
    jp hl

Label_01b_4014:
    ld a, l
    ld [$cd6c], a
    ld a, h
    ld [$cd6d], a
    ld hl, $cd98
    inc [hl]
    ret

Label_01b_4021:
    ld h, b
    ld l, c
    ld a, [hl+]
    ld [$cd70], a
    ld a, [hl+]
    ld [$cd71], a
    ld a, [hl+]
    ld [$cd6e], a
    ld a, [hl+]
    ld [$cd6f], a
    ret

Label_01b_4034:
    ld h, b
    ld l, c
    push hl
    ld a, [$cd70]
    ld e, a
    ld a, [$cd71]
    ld d, a
    ld a, [de]
    cp $af
    jr z, jr_01b_409b

jr_01b_4044:
    push af
    inc de
    ld a, e
    ld [$cd70], a
    ld a, d
    ld [$cd71], a
    pop af
    ld c, a
    ld a, [$cd6f]
    ld e, a
    push af
    inc a
    ld [$cd6f], a
    ld hl, TextFontTileset
    ld d, $11
    call Call_000_095c
    pop af
    ld b, a
    ld de, $99c2
    cp $90
    jr c, jr_01b_406d

    ld de, $99f2

jr_01b_406d:
    sub $80
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    call Call_000_0924
    ld [hl], d
    inc hl
    ld [hl], e
    inc hl
    ld a, $01
    ld [hl+], a
    ld [hl], b
    inc hl
    xor a
    ld [hl], a
    ldh a, [$ff97]
    add $04
    ldh [$ff97], a
    pop hl
    ld a, [$cd6e]
    dec a
    ld [$cd6e], a
    jr z, jr_01b_4096

    dec hl
    dec hl
    ret


jr_01b_4096:
    xor a
    ld [$cd98], a
    ret


jr_01b_409b:
    inc de
    ld a, [$cd6f]
    inc a
    ld [$cd6f], a
    ld a, [$cd6e]
    dec a
    ld [$cd6e], a
    jr z, jr_01b_40b3

    ld a, [de]
    cp $af
    jr nz, jr_01b_4044

    jr jr_01b_409b

jr_01b_40b3:
    pop hl
    xor a
    ld [$cd98], a
    ret


    ld h, b
    ld l, c
    ld c, [hl]
    inc hl
    ld e, [hl]
    inc hl
    push hl
    ld hl, $4001
    ld d, $11
    call Call_000_095c
    pop hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    inc hl
    ld b, [hl]
    inc hl
    push hl
    call Call_000_0924
    ld [hl], d
    inc hl
    ld [hl], e
    inc hl
    ld a, $01
    ld [hl+], a
    ld [hl], b
    inc hl
    xor a
    ld [hl], a
    ldh a, [$ff97]
    add $04
    ldh [$ff97], a
    pop hl
    ret

; clear text window I think
Village_TextWindowClear: ; 1bx40e6
    push bc
    ld hl, $99c2 ; map address of beginning of text window
    ld b, $04

jr_01b_40ec:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_01b_40ec

    ld a, [$cb5c]
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    dec b
    jr nz, jr_01b_40ec

    ld hl, $9a02 ; map address of second line of text window
    ld b, $04

jr_01b_4101:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_01b_4101

    ld a, [$cb5c]
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    dec b
    jr nz, jr_01b_4101

    pop hl
    ret

Label_01b_4113:
    ld h, b
    ld l, c
    call Call_01b_4118

Call_01b_4118:
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld b, a
    ld a, [hl+]
    push hl
    ld h, b
    ld l, c
    ld b, a

jr_01b_4125:
    ld a, [de]
    inc de
    ld [hl+], a
    dec b
    jr nz, jr_01b_4125

    pop hl
    ret


    ld h, b
    ld l, c
    xor a
    ld [$cd99], a
    ret


    ld h, b
    ld l, c
    ldh a, [$ff8b]
    and $03
    jr nz, jr_01b_4167

    push hl
    ld de, $9a11
    ld a, [$cd9b]
    ld b, a
    ld a, [$cd98]
    bit 4, a
    jr nz, jr_01b_414f

    ld a, [$cd9b]
    ld b, a

Jump_01b_414f:
jr_01b_414f:
    call Call_000_0924
    ld [hl], d
    inc hl
    ld [hl], e
    inc hl
    ld a, $01
    ld [hl+], a
    ld [hl], b
    inc hl
    xor a
    ld [hl], a
    ldh a, [$ff97]
    add $04
    ldh [$ff97], a
    pop hl
    dec hl
    dec hl
    ret


jr_01b_4167:
    ret


    ld h, b
    ld l, c
    ldh a, [$ff8b]
    bit 0, a
    jr nz, jr_01b_4199

    bit 1, a
    jr nz, jr_01b_41ac

    bit 4, a
    jr nz, jr_01b_41b7

    bit 5, a
    jr nz, jr_01b_41d7

    push hl
    ld de, $9a02
    ld a, [$cd99]
    or a
    jr z, jr_01b_4188

    ld e, $08

jr_01b_4188:
    ld a, [$cd9a]
    ld b, a
    ld a, [$cd98]
    bit 4, a
    jr z, jr_01b_414f

    ld a, [$cb5c]
    ld b, a
    jr jr_01b_414f

jr_01b_4199:
    ld a, $42
    call Call_000_25cb
    ld a, [$cd99]
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


jr_01b_41ac:
    ld a, $51
    call Call_000_25cb
    inc hl
    inc hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


jr_01b_41b7:
    ld a, [$cd99]
    or a
    jr nz, jr_01b_41d4

    inc a
    ld [$cd99], a
    xor a
    ld [$cd98], a
    ld a, $48
    call Call_000_25ce
    ld de, $9a02
    ld a, [$cb5c]
    ld b, a
    jp Jump_01b_414f


jr_01b_41d4:
    dec hl
    dec hl
    ret


jr_01b_41d7:
    ld a, [$cd99]
    or a
    jr z, jr_01b_41f4

    dec a
    ld [$cd99], a
    xor a
    ld [$cd98], a
    ld a, $48
    call Call_000_25ce
    ld de, $9a08
    ld a, [$cb5c]
    ld b, a
    jp Jump_01b_414f


jr_01b_41f4:
    dec hl
    dec hl
    ret


    ld h, b
    ld l, c
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld b, a
    ld a, [bc]
    ld b, a
    ld a, $63
    sub b
    ld [$cd92], a
    ld a, [hl+]
    ld [$cd94], a
    ld a, [hl+]
    ld [$cd95], a
    xor a
    ld [$cd93], a
    ld [$cd96], a
    ld [$cd97], a
    ret


    push bc
    call Call_01b_42b4
    call Call_01b_42e0
    call Call_01b_42f9
    pop hl
    ldh a, [$ff8b]
    bit 0, a
    jr nz, jr_01b_423b

    bit 1, a
    jr nz, jr_01b_424a

    ld a, [$cd24]
    bit 4, a
    jr nz, jr_01b_4284

    bit 5, a
    jr nz, jr_01b_4255

    dec hl
    dec hl
    ret


jr_01b_423b:
    ld a, [$cd93]
    or a
    jr z, jr_01b_424a

    ld a, $42
    call Call_000_25cb
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


jr_01b_424a:
    ld a, $51
    call Call_000_25cb
    inc hl
    inc hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


jr_01b_4255:
    ld a, [$cd92]
    ld b, a
    ld a, [$cd93]
    cp b
    jr nc, jr_01b_4281

    inc a
    ld [$cd93], a
    push hl
    ld a, [$cd94]
    ld e, a
    ld a, [$cd95]
    ld d, a
    ld hl, $cd96
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, de
    ld a, l
    ld [$cd96], a
    ld a, h
    ld [$cd97], a
    ld a, $48
    call Call_000_25ce
    pop hl

jr_01b_4281:
    dec hl
    dec hl
    ret


jr_01b_4284:
    ld a, [$cd93]
    or a
    jr z, jr_01b_42b1

    dec a
    ld [$cd93], a
    push hl
    ld a, [$cd94]
    ld e, a
    ld a, [$cd95]
    ld d, a
    ld hl, $cd96
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, l
    sub e
    ld l, a
    ld a, h
    sbc d
    ld h, a
    ld a, l
    ld [$cd96], a
    ld a, h
    ld [$cd97], a
    ld a, $48
    call Call_000_25ce
    pop hl

jr_01b_42b1:
    dec hl
    dec hl
    ret


Call_01b_42b4:
    ld a, [$cd93]
    or a
    jr z, jr_01b_42c3

    ld bc, $7081
    ld hl, $42db
    call Call_000_20de

jr_01b_42c3:
    ld a, [$cd92]
    ld b, a
    ld a, [$cd93]
    cp b
    ret nc

    ld bc, $7060
    ld hl, $42d6
    call Call_000_20de
    ret


    nop
    nop
    db $ec
    nop
    add b
    nop
    nop
    db $ed
    nop
    add b

Call_01b_42e0:
    ld a, [$cd93]
    call Call_000_3304
    ld a, [wDecimalDigitTileID+3]
    ld bc, $7068
    call Call_01b_4330
    ld a, [wDecimalDigitTileID+4]
    ld bc, $7070
    call Call_01b_4330
    ret


Call_01b_42f9:
    ld hl, $cd96
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_000_325c
    ld a, [wDecimalDigitTileID]
    ld bc, $8050
    call Call_01b_4330
    ld a, [wDecimalDigitTileID+1]
    ld bc, $8058
    call Call_01b_4330
    ld a, [wDecimalDigitTileID+2]
    ld bc, $8060
    call Call_01b_4330
    ld a, [wDecimalDigitTileID+3]
    ld bc, $8068
    call Call_01b_4330
    ld a, [wDecimalDigitTileID+4]
    ld bc, $8070
    call Call_01b_4330
    ret


Call_01b_4330:
    cp $af
    jr nz, jr_01b_433b

    ld hl, $4380
    call Call_000_20de
    ret


jr_01b_433b:
    sub $34
    ld l, a
    add a
    add a
    add l
    ld hl, $434e
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    call Call_000_20de
    ret


    nop
    nop
    ldh [c], a
    nop
    add b
    nop
    nop
    db $e3
    nop
    add b
    nop
    nop
    db $e4
    nop
    add b
    nop
    nop
    push hl
    nop
    add b
    nop
    nop
    and $00
    add b
    nop
    nop
    rst $20
    nop
    add b
    nop
    nop
    add sp, $00
    add b
    nop
    nop
    jp hl


    nop
    add b
    nop
    nop
    ld [$8000], a
    nop
    nop
    db $eb
    nop
    add b
    nop
    nop
    xor $00
    add b
    ld h, b
    ld l, c
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    push hl
    call Call_01b_46a4
    jr nc, jr_01b_439b

    pop hl
    ld a, $51
    call Call_000_25cb
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


jr_01b_439b:
    call Call_01b_46b1
    ld a, $42
    call Call_000_25cb
    pop hl
    inc hl
    inc hl
    ret


    ld a, [$cd96]
    ld e, a
    ld a, [$cd97]
    ld d, a
    call Call_01b_46a4
    jr nc, jr_01b_43bf

    ld a, $51
    call Call_000_25cb
    ld h, b
    ld l, c
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


jr_01b_43bf:
    call Call_01b_46b1
    ld a, $42
    call Call_000_25cb
    ld h, b
    ld l, c
    inc hl
    inc hl
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    ld a, [$cd93]
    ld b, a
    ld a, [de]
    add b
    ld [de], a
    ret


    ld h, b
    ld l, c
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    ld a, [de]
    or a
    jr nz, jr_01b_43ec

    ld a, [hl+]
    push hl
    call Call_01b_4699
    pop hl
    jr z, jr_01b_43ed

    inc hl
    inc hl
    ret


jr_01b_43ec:
    inc hl

jr_01b_43ed:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


    ld h, b
    ld l, c
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    ld a, $01
    ld [de], a
    ret


    ld h, b
    ld l, c
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    ld a, $0c
    ld [de], a
    ret


    ld h, b
    ld l, c
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    push de
    ld a, [hl+]
    push hl
    call Call_01b_4699
    pop hl
    pop de
    ret z

    ld a, $01
    ld [de], a
    ret


    ld h, b
    ld l, c
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    push de
    ld a, [hl+]
    push hl
    call Call_01b_4699
    jr nz, jr_01b_4428

    ld [hl], $ff

jr_01b_4428:
    pop hl
    pop de
    xor a
    ld [de], a
    ret


    ld h, b
    ld l, c
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    ld a, [hl+]
    ld c, a
    ld a, [de]
    add c
    cp $63
    jr c, jr_01b_443d

    ld a, $63

jr_01b_443d:
    ld [de], a
    ret


    ld h, b
    ld l, c
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    ld a, [hl+]
    ld c, a
    push hl
    push de
    push bc
    ld h, d
    ld l, e
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    pop bc
    ld a, l
    add c
    ld l, a
    ld a, h
    adc $00
    ld h, a
    push hl
    ld de, $03e7
    ld a, l
    sub e
    ld l, a
    ld a, h
    sbc d
    pop hl
    jr c, jr_01b_446c

    pop hl
    ld a, $e7
    ld [hl+], a
    ld a, $03
    ld [hl], a
    pop hl
    ret


jr_01b_446c:
    pop de
    ld a, l
    ld [de], a
    inc de
    ld a, h
    ld [de], a
    pop hl
    ret


    ld h, b
    ld l, c
    ldh a, [$ff8b]
    bit 0, a
    jr nz, jr_01b_44b4

    bit 1, a
    jr nz, jr_01b_44c7

    bit 7, a
    jr nz, jr_01b_44d4

    bit 6, a
    jr nz, jr_01b_44f4

    ld b, a
    ld a, [$b8d1]
    or a
    jr z, jr_01b_4494

    bit 2, b
    jp nz, Jump_01b_4514

jr_01b_4494:
    push hl
    ld de, $99c2
    ld a, [$cd99]
    or a
    jr z, jr_01b_44a1

    ld de, $9a02

jr_01b_44a1:
    ld a, [$cd9a]
    ld b, a
    ld a, [$cd98]
    bit 4, a
    jp z, Jump_01b_414f

    ld a, [$cb5c]
    ld b, a
    jp Jump_01b_414f


jr_01b_44b4:
    ld a, $42
    call Call_000_25cb
    ld a, [$cd99]
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


jr_01b_44c7:
    ld a, $51
    call Call_000_25cb
    inc hl
    inc hl
    inc hl
    inc hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


jr_01b_44d4:
    ld a, [$cd99]
    or a
    jr nz, jr_01b_44f1

    inc a
    ld [$cd99], a
    xor a
    ld [$cd98], a
    ld a, $48
    call Call_000_25ce
    ld de, $99c2
    ld a, [$cb5c]
    ld b, a
    jp Jump_01b_414f


jr_01b_44f1:
    dec hl
    dec hl
    ret


jr_01b_44f4:
    ld a, [$cd99]
    or a
    jr z, jr_01b_4511

    dec a
    ld [$cd99], a
    xor a
    ld [$cd98], a
    ld a, $48
    call Call_000_25ce
    ld de, $9a02
    ld a, [$cb5c]
    ld b, a
    jp Jump_01b_414f


jr_01b_4511:
    dec hl
    dec hl
    ret


Jump_01b_4514:
    ld a, $42
    call Call_000_25cb
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


    ld h, b
    ld l, c
    xor a
    ld [$cd98], a
    ret


    ld h, b
    ld l, c
    ldh a, [$ff8b]
    and $03
    jr nz, jr_01b_453b

    ld a, [$cd98]
    cp [hl]
    jr z, jr_01b_453b

    dec hl
    dec hl
    ret


jr_01b_453b:
    inc hl
    ret


    ld h, b
    ld l, c
    ld a, $01
    ld [$cd6b], a
    ret


    ld a, [$cd98]
    and $0f
    ld hl, $4560
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ld h, b
    ld l, c
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


    nop
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    inc b

; Getting a good fortune result increases energy by 10 and happiness by 10
GoodFortuneTellingResult:
    push bc
    ld a, [sPlayerMaxEnergy]
    ld d, a
    ld a, [sPlayerEnergy]
    add 10
    cp d
    jr c, .updateEnergy
    ld a, d

.updateEnergy
    ld [sPlayerEnergy], a
    ld a, [sPlayerHappiness]
    add 10
    jr nc, .updateHappiness
    ld a, $ff

.updateHappiness
    ld [sPlayerHappiness], a
    pop hl
    ret


    ld h, b
    ld l, c
    ret


; Getting a bad fortune result decreases energy by 10 and happiness by 10
BadFortuneTellingResult: ; 1bx4592
    push bc
    ld a, [sPlayerEnergy]
    sub 10
    jr nc, .lowerEnergy
    xor a

.lowerEnergy ; 1bx459b
    ld [sPlayerEnergy], a
    ld a, [sPlayerHappiness]
    sub 10
    jr nc, .lowerHappiness
    xor a

.lowerHappiness ; 1bx45a6
    ld [sPlayerHappiness], a
    pop hl
    ret


Label_01b_45ab:
    push bc
    ld a, [sPlayerHappiness]
    add $14
    jr nc, jr_01b_45b5

    ld a, $ff

jr_01b_45b5:
    ld [sPlayerHappiness], a
    pop hl
    ret

Label_01b_45ba:
    push bc
    ld a, [sPlayerHappiness]
    sub $28
    jr nc, jr_01b_45c3
    xor a

jr_01b_45c3:
    ld [sPlayerHappiness], a
    pop hl
    ret

Label_01b_45c8:
    push bc
    ld a, [sPlayerHappiness]
    sub $14
    jr nc, jr_01b_45d1
    xor a

jr_01b_45d1:
    ld [sPlayerHappiness], a
    pop hl
    ret

Label_01b_45d6:
    ld h, b
    ld l, c
    ld a, [sPlayerMaxEnergy]
    ld e, a
    ld d, a
    ld a, [hl+]
    or a
    jr z, jr_01b_45e6

jr_01b_45e1:
    srl e
    dec a
    jr nz, jr_01b_45e1

jr_01b_45e6:
    ld a, [sPlayerEnergy]
    add e
    cp d
    jr c, jr_01b_45ee

    ld a, d

jr_01b_45ee:
    ld [sPlayerEnergy], a
    ret


    push bc
    ld hl, $b949
    ld b, $04
    ld c, $16

jr_01b_45fa:
    ld a, [hl]
    inc a
    jr z, jr_01b_460d

    ld a, c
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    dec b
    jr nz, jr_01b_45fa

    pop hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


jr_01b_460d:
    pop hl
    inc hl
    inc hl
    ret


    push bc
    ld hl, $b9a7
    ld b, $04
    ld c, $0c
    jr jr_01b_45fa

    ld h, b
    ld l, c
    ld a, [hl+]
    ld e, a
    ld d, $00
    push hl
    ld bc, $0c40
    ld hl, $a000

jr_01b_4628:
    ld a, [hl+]
    and $f0
    cp $40
    jr nz, jr_01b_4639

    ld a, [hl]
    cp $48
    jr nz, jr_01b_4639

    inc d
    ld a, d
    cp e
    jr nc, jr_01b_4644

jr_01b_4639:
    inc hl
    dec bc
    ld a, b
    or c
    jr nz, jr_01b_4628

    pop hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


jr_01b_4644:
    pop hl
    inc hl
    inc hl
    ret


    ld a, $1d
    ld [$cb50], a
    ld a, $1d
    ld [wPlayerIdleWhenExitingCurrentMap], a
    ld h, b
    ld l, c
    ret


    ld a, $1e
    ld [$cb50], a
    ld a, $1d
    ld [wPlayerIdleWhenExitingCurrentMap], a
    ld h, b
    ld l, c
    ret


    ld a, $1f
    ld [$cb50], a
    ld a, $1d
    ld [wPlayerIdleWhenExitingCurrentMap], a
    ld h, b
    ld l, c
    ret


    ld hl, $b9a7
    ld e, $04

jr_01b_4674:
    ld a, [hl]
    inc a
    jr z, jr_01b_4686

    ld a, $0c
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    dec e
    jr nz, jr_01b_4674

    ld h, b
    ld l, c
    ret


jr_01b_4686:
    ld a, $02
    ld [hl+], a
    xor a
    ld [hl+], a
    ld [hl+], a
    ld h, b
    ld l, c
    ret


    ld a, [bc]
    inc bc
    ld l, a
    ld a, [bc]
    ld h, a
    ret


    adc a
    ld b, [hl]
    sub l
    ld b, [hl]

Call_01b_4699:
    ld hl, sInventory
    cp [hl]
    ret z

    inc hl
    cp [hl]
    ret z

    inc hl
    cp [hl]
    ret


Call_01b_46a4:
    push bc
    ld hl, sPlayerMoney
    ld a, [hl+]
    sub e
    ld a, [hl+]
    sbc d
    ld a, [hl+]
    sbc $00
    pop bc
    ret


Call_01b_46b1:
    push bc
    ld b, $00
    ld hl, sPlayerMoney
    ld a, [hl]
    sub e
    ld [hl+], a
    ld a, [hl]
    sbc d
    ld [hl+], a
    ld a, [hl]
    sbc b
    ld [hl], a
    pop bc
    ret


    ld h, b
    ld l, c
    ld a, $03
    ld [$b8ea], a
    ret


    ld h, b
    ld l, c
    ld b, $04
    ld a, [$b949]
    cp b
    jr z, jr_01b_46e8

    ld a, [$b95f]
    cp b
    jr z, jr_01b_46e8

    ld a, [$b975]
    cp b
    jr z, jr_01b_46e8

    ld a, [$b98b]
    cp b
    jr z, jr_01b_46e8

    inc hl
    inc hl

jr_01b_46e8:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


    ld h, b
    ld l, c
    ld a, [hl+]
    ld b, a
    ld a, [sPrayedFlag]
    or a
    jr nz, jr_01b_4701

    ld a, $01
    ld [sPrayedFlag], a
    ld a, [$cd98]
    and b
    jr z, jr_01b_4703

jr_01b_4701:
    inc hl
    inc hl

jr_01b_4703:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


    push bc
    ld b, $04
    ld hl, $b949

jr_01b_470d:
    ld a, [hl]
    cp $04
    jr z, jr_01b_471f

    ld a, $16
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    dec b
    jr nz, jr_01b_470d

    pop hl
    ret


jr_01b_471f:
    ld a, $02
    ld [hl+], a
    inc hl
    inc hl
    inc hl
    inc hl
    xor a
    ld [hl], a
    pop hl
    ret


    push bc
    ld b, $04
    ld hl, $b949

jr_01b_4730:
    call Call_01b_4740
    ld a, $16
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    dec b
    jr nz, jr_01b_4730

    pop hl
    ret


Call_01b_4740:
    push hl
    ld a, [hl]
    cp $02
    jr nz, jr_01b_4754

    ld a, $14
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    or a
    jr nz, jr_01b_4754

    ld [hl], $07

jr_01b_4754:
    pop hl
    ret


    ld h, b
    ld l, c
    ld a, [$ba3e]
    cp $01
    jr z, jr_01b_4762

    inc hl
    inc hl
    ret


jr_01b_4762:
    ld a, $02
    ld [$ba3e], a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


    ld h, b
    ld l, c
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    push hl
    ld h, d
    ld l, e
    call Call_01b_7c4b
    pop hl
    ret


    ld h, b
    ld l, c
    xor a
    ld [$cb68], a
    push hl
    call Call_000_2527
    pop hl
    ret


    ld h, b
    ld l, c
    push hl
    push hl
    push af
    ld l, $82
    ld h, $68
    ld a, $09
    call BankSwitchCallHL
    pop af
    pop hl
    pop hl
    ret


    ld h, b
    ld l, c
    ldh a, [$ff8b]
    bit 0, a
    jr nz, jr_01b_47b1

    bit 1, a
    jr nz, jr_01b_47c3

    ld a, [$cd24]
    bit 4, a
    jr nz, jr_01b_47cb

    bit 5, a
    jr nz, jr_01b_47db

    dec hl
    dec hl
    ret


jr_01b_47b1:
    push hl
    push hl
    push af
    ld l, $24
    ld h, $6a
    ld a, $09
    call BankSwitchCallHL
    pop af
    pop hl
    pop hl
    dec hl
    dec hl
    ret


jr_01b_47c3:
    ld a, $51
    call Call_000_25cb
    inc hl
    inc hl
    ret


jr_01b_47cb:
    ld a, [$cb68]
    or a
    jr nz, jr_01b_47d3

    ld a, $28

jr_01b_47d3:
    dec a
    ld [$cb68], a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


jr_01b_47db:
    ld a, [$cb68]
    inc a
    cp $28
    jr c, jr_01b_47e4

    xor a

jr_01b_47e4:
    ld [$cb68], a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


    ld h, b
    ld l, c
    xor a
    ld [$cb68], a
    ld a, $54
    call Call_000_25c5
    ret


    ld h, b
    ld l, c
    ldh a, [$ff8b]
    bit 0, a
    jr nz, jr_01b_482a

    bit 1, a
    jr nz, jr_01b_483d

    bit 4, a
    jr nz, jr_01b_4848

    bit 5, a
    jr nz, jr_01b_4868

    push hl
    ld de, $9a02
    ld a, [$cd99]
    or a
    jr z, jr_01b_4817

    ld e, $0f

jr_01b_4817:
    ld a, [$cd9a]
    ld b, a
    ld a, [$cd98]
    bit 4, a
    jp z, Jump_01b_414f

    ld a, [$cb5c]
    ld b, a
    jp Jump_01b_414f


jr_01b_482a:
    ld a, $42
    call Call_000_25cb
    ld a, [$cd99]
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


jr_01b_483d:
    ld a, $51
    call Call_000_25cb

jr_01b_4842:
    inc hl
    inc hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


jr_01b_4848:
    ld a, [$cd99]
    or a
    jr nz, jr_01b_4865

jr_01b_484e:
    inc a
    ld [$cd99], a
    xor a
    ld [$cd98], a
    ld a, $48
    call Call_000_25ce
    ld de, $9a02
    ld a, [$cb5c]
    ld b, a
    jp Jump_01b_414f


jr_01b_4865:
    dec hl
    dec hl
    ret


jr_01b_4868:
    ld a, [$cd99]
    or a
    jr z, jr_01b_4885

    dec a
    ld [$cd99], a
    xor a
    ld [$cd98], a
    ld a, $48
    call Call_000_25ce
    ld de, $9a0f
    ld a, [$cb5c]
    ld b, a
    jp Jump_01b_414f


jr_01b_4885:
    dec hl

jr_01b_4886:
    dec hl
    ret


    and $40
    ld d, [hl]
    ld b, a
    xor d
    ld c, b
    inc de
    ld b, c
    adc e
    ld c, d

jr_01b_4892:
    ld [hl], d
    call $f420
    cp b
    ld [hl], l
    call $2104
    ld b, b
    ld [hl], d
    call $8020
    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    dec a
    ld b, l
    adc a
    ld b, [hl]
    and [hl]
    ld c, b
    inc de
    ld b, c
    xor e
    ld c, d
    ld [hl], d
    call $cb20

jr_01b_48b2:
    ld c, d
    adc [hl]
    call $8f01
    ld b, [hl]
    sbc d
    ld c, b
    and $40
    ld hl, $cc40
    ld c, d
    jr nz, jr_01b_4842

    inc [hl]
    ld b, b
    inc [hl]

jr_01b_48c5:
    ld b, c
    and $40
    ld hl, $ec40
    ld c, d
    jr nz, jr_01b_484e

    inc [hl]

jr_01b_48cf:
    ld b, b
    inc [hl]
    ld b, c
    and $40
    ld hl, $0c40
    ld c, e
    jr nz, @-$7e

    inc [hl]

jr_01b_48db:
    ld b, b
    dec l
    ld b, c
    ld l, b
    ld b, c
    db $e4
    ld c, b
    ld [hl], e
    ld c, d
    add l
    ld b, e
    jr nz, jr_01b_48eb

    ld a, [hl-]
    ld c, d
    pop af

jr_01b_48eb:
    ld b, e
    xor l
    cp b
    adc a
    ld b, [hl]
    ld e, e
    ld c, d
    and $40
    ld hl, $ac40
    ld c, e
    jr nz, @-$7e

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40

jr_01b_4900:
    ld hl, $cc40
    ld c, e
    jr nz, jr_01b_4886

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40

jr_01b_490c:
    ld hl, $ec40
    ld c, e
    jr nz, jr_01b_4892

    inc [hl]
    ld b, b
    dec l
    ld b, c
    ld l, b
    ld b, c

jr_01b_4918:
    inc e
    ld c, c
    ld [hl], e
    ld c, d
    add l
    ld b, e
    ld [$3a07], sp
    ld c, d
    pop af
    ld b, e

jr_01b_4924:
    xor h
    cp b
    adc a
    ld b, [hl]
    ld e, e
    ld c, d
    and $40
    ld hl, $0c40
    ld c, h
    jr nz, jr_01b_48b2

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40
    rst $10
    ld b, e
    xor [hl]
    cp b
    ld a, [bc]
    ld c, c
    ld c, c
    ld hl, $6c40
    ld c, h
    jr nz, jr_01b_48c5

    adc a
    ld b, [hl]
    ld e, e
    ld c, c
    ld hl, $2c40
    ld c, h
    jr nz, jr_01b_48cf

    inc [hl]

jr_01b_4950:
    ld b, b
    inc [hl]
    ld b, c
    and $40
    ld hl, $4c40
    ld c, h
    jr nz, jr_01b_48db

    inc [hl]

jr_01b_495c:
    ld b, b
    dec l
    ld b, c
    ld l, b
    ld b, c
    ld h, l
    ld c, c
    ld [hl], e
    ld c, d
    add l
    ld b, e
    ret nc

jr_01b_4968:
    rlca
    ld a, [hl-]
    ld c, d
    pop af
    ld b, e
    xor a
    cp b
    jr jr_01b_49b5

    xor [hl]
    cp b
    ld a, [bc]
    adc a
    ld b, [hl]
    ld e, e
    ld c, d
    and $40
    ld hl, $8c40
    ld c, h
    jr nz, jr_01b_4900

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40
    ld hl, $ac40
    ld c, h
    jr nz, jr_01b_490c

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40
    ld hl, $cc40
    ld c, h
    jr nz, jr_01b_4918

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40
    ld hl, $ec40
    ld c, h
    jr nz, jr_01b_4924

    inc [hl]
    ld b, b
    dec l
    ld b, c
    ld l, b
    ld b, c
    xor [hl]
    ld c, c
    ld [hl], e
    ld c, d
    add l
    ld b, e
    jr nc, jr_01b_4a27

    ld a, [hl-]
    ld c, d
    pop af

jr_01b_49b5:
    ld b, e
    ld b, e
    cp c
    adc a
    ld b, [hl]
    ld e, e
    ld c, d
    and $40
    ld hl, $0c40
    ld c, l

jr_01b_49c2:
    jr nz, @-$7e

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40
    ld hl, $2c40
    ld c, l
    jr nz, jr_01b_4950

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40
    ld hl, $4c40
    ld c, l
    jr nz, jr_01b_495c

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40
    ld hl, $6c40
    ld c, l
    jr nz, jr_01b_4968

    inc [hl]
    ld b, b
    dec l
    ld b, c
    ld l, b
    ld b, c
    ldh a, [c]

jr_01b_49ef:
    ld c, c
    ld [hl], e
    ld c, d
    add l
    ld b, e
    jr nc, @+$77

    ld a, [hl-]
    ld c, d
    pop af
    ld b, e
    ld b, h

jr_01b_49fb:
    cp c
    adc a
    ld b, [hl]
    ld e, e
    ld c, d
    and $40
    ld hl, $8c40
    ld c, l
    jr nz, @-$7e

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40
    ld hl, $ac40
    ld c, l
    jr nz, @-$7e

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40
    ld hl, $cc40
    ld c, l
    jr nz, @-$7e

Call_01b_4a20:
    inc [hl]
    ld b, b
    dec l
    ld b, c
    ld l, b
    ld b, c
    ld a, [hl+]

jr_01b_4a27:
    ld c, d
    ld [hl], e
    ld c, d
    add l
    ld b, e
    call nz, $3a09
    ld c, d
    pop af
    ld b, e
    jp nz, $c2b8

    ld b, [hl]
    adc a
    ld b, [hl]
    ld e, e
    ld c, d
    and $40
    ld hl, $3c40
    ld d, l
    jr nz, jr_01b_49c2

    inc [hl]
    ld b, b
    inc hl
    ld b, l
    ld a, [hl+]
    ld b, l
    rst $38
    dec a
    ld b, l
    adc a
    ld b, [hl]
    ld c, e
    ld c, d
    and $40
    ld hl, $ec40
    ld c, l
    jr nz, @-$7e

    adc a
    ld b, [hl]
    ld b, d
    ld c, d
    and $40
    ld hl, $2c40
    ld c, e
    jr nz, @-$7e

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40
    ld hl, $4c40
    ld c, e
    jr nz, jr_01b_49ef

    adc a
    ld b, [hl]
    ld b, d
    ld c, d
    and $40
    ld hl, $6c40
    ld c, e
    jr nz, jr_01b_49fb

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40
    ld hl, $8c40
    ld c, e
    jr nz, @-$7e

    adc a
    ld b, [hl]
    ld b, d
    ld c, d
    rlca
    ld [hl+], a
    rst $28
    rst $28

jr_01b_4a8f:
    rst $28
    rst $28
    rst $28
    ld b, b
    ld d, $21
    ld a, [de]
    dec l
    rst $28
    inc e
    ld a, [de]
    daa
    ld [$1def], sp
    jr z, jr_01b_4a8f

    rra
    jr z, @+$2d

    rst $28
    ld [hl-], a
    jr z, @+$30

    ld b, c
    rst $28
    rst $28
    jp hl


    rlca
    ld [hl+], a
    ld b, b
    rst $28
    inc de
    ld hl, $ef1e
    ld [de], a
    add hl, hl
    dec hl
    ld [hl+], a
    daa
    inc h
    dec h
    ld b, h
    ld e, $2b
    rst $28
    ld [hl+], a
    inc l
    rst $28
    dec hl
    ld e, $1a
    dec e
    ld [hl-], a
    ld b, b
    rst $28
    rst $28
    rst $28
    jp hl


    xor a
    inc de
    ld hl, $2d1a
    ld d, e
    rst $28
    ld a, [de]
    rst $28
    ld bc, $2e2b
    inc l
    ld hl, $efef
    rst $28
    ld l, $2c
    ld e, $1d
    rst $28
    jr z, jr_01b_4b0a

    rst $28
    inc e
    jr z, jr_01b_4b17

    inc l
    ld c, h
    rst $28
    rst $28
    jp hl


    ld [$ef2d], sp
    ld [hl+], a
    inc l
    rst $28
    inc l
    add hl, hl
    ld e, $1c
    ld [hl+], a
    ld a, [de]
    dec h
    dec h
    ld [hl-], a
    rst $28
    ld h, $1a
    dec e
    ld e, $4c
    rst $28
    inc de
    ld hl, $ef1e
    inc e
    jr z, jr_01b_4b35

    dec l

jr_01b_4b0a:
    rst $28
    jp hl


    ld [hl+], a
    inc l
    rst $28
    inc a
    inc [hl]
    inc [hl]
    ld b, $4c
    rst $28
    rst $28
    rst $28

jr_01b_4b17:
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    ld bc, $322e
    rst $28
    rst $28
    rst $28
    inc bc
    jr z, @+$29

    ld c, e
    dec l
    rst $28
    ld bc, $322e
    inc de
    ld hl, $271a
    inc h
    rst $28
    ld [hl-], a
    jr z, jr_01b_4b63

jr_01b_4b35:
    ld b, b
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28

jr_01b_4b4a:
    rst $28
    jp hl


    ld bc, $ef1e
    inc l
    ld l, $2b
    ld e, $ef
    daa
    jr z, jr_01b_4b84

    rst $28
    dec l
    jr z, jr_01b_4b4a

    rst $28
    ld h, $22
    inc l
    dec l
    dec hl
    ld e, $1a

jr_01b_4b63:
    dec l
    rst $28
    ld [hl+], a
    dec l
    ld c, h
    rst $28
    rst $28
    rst $28
    rst $28
    ld d, $21
    ld a, [de]
    dec l
    ld b, b
    rst $28
    nop
    dec hl
    ld e, $ef
    ld [hl-], a
    jr z, jr_01b_4ba7

    rst $28
    rst $28
    rst $28
    inc l
    ld l, $2b
    ld e, $41
    rst $28
    rst $28
    rst $28

jr_01b_4b84:
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    jp hl


    ld [$30ef], sp
    jr z, jr_01b_4bbc

    inc h
    ld e, $1d
    rst $28
    cpl
    ld e, $2b
    ld [hl-], a
    rst $28
    rst $28
    rst $28
    ld hl, $2b1a
    dec e
    rst $28
    jr z, jr_01b_4bca

    rst $28
    ld [hl+], a
    dec l
    ld c, h

jr_01b_4ba7:
    ld c, h
    ld c, h
    rst $28
    rst $28
    rst $28
    inc de
    ld hl, $2d1a
    ld d, e
    rst $28
    ld a, [de]
    rst $28
    inc c
    ld [hl+], a
    dec h
    inc h
    ld e, $2b
    ld c, h
    rst $28

jr_01b_4bbc:
    ld [$ef2d], sp
    ld [hl+], a
    inc l
    rst $28
    ld l, $2c
    ld e, $1d
    rst $28
    dec l
    jr z, @-$0f

jr_01b_4bca:
    rst $28
    jp hl


    ld h, $22
    dec h
    inc h
    rst $28
    ld a, [de]
    rst $28
    inc e
    jr z, jr_01b_4c06

    ld c, h
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    inc de
    ld hl, $ef1e
    inc e
    jr z, @+$2e

    dec l
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    jp hl


    ld [hl+], a
    inc l
    rst $28
    dec [hl]
    inc a
    inc [hl]
    inc [hl]
    ld b, $4c
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    ld bc, $322e
    rst $28
    rst $28
    rst $28
    inc bc
    jr z, @+$29

jr_01b_4c06:
    ld c, e
    dec l
    rst $28
    ld bc, $322e
    inc de
    ld hl, $2d1a
    ld d, e
    rst $28
    ld a, [de]
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    ld [de], a
    add hl, hl
    dec hl
    ld [hl+], a
    daa
    inc h
    dec h
    ld e, $2b
    ld c, h
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    jp hl


    ld [$ef2d], sp
    ld [hl+], a
    inc l

jr_01b_4c31:
    rst $28
    ld [hl], $34
    inc [hl]
    inc [hl]
    ld b, $ef
    rst $28
    rst $28
    rst $28
    rst $28
    ld a, [de]
    dec h
    jr z, jr_01b_4c67

    jr nz, jr_01b_4c31

    jr nc, jr_01b_4c66

    dec l
    ld hl, $efef
    rst $28
    rst $28
    rst $28
    jp hl


    nop
    rst $28
    ld d, $1a
    dec l
    ld e, $2b
    rst $28
    ld [bc], a
    ld a, [de]
    daa
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    ld bc, $322e
    rst $28
    rst $28
    rst $28
    inc bc
    jr z, jr_01b_4c8d

jr_01b_4c66:
    ld c, e

jr_01b_4c67:
    dec l
    rst $28
    ld bc, $322e
    ld [$ef2d], sp
    ld [hl+], a
    inc l
    rst $28
    ld [hl], $34
    inc [hl]
    inc [hl]
    ld b, $4c
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    ld bc, $322e
    rst $28
    rst $28
    rst $28
    inc bc
    jr z, @+$29

    ld c, e
    dec l
    rst $28
    ld bc, $322e
    inc de

jr_01b_4c8d:
    ld hl, $2d1a
    ld d, e
    rst $28
    ld a, [de]
    rst $28
    ld bc, $2d2e
    dec l
    ld e, $2b
    rst $28
    rst $28
    inc c
    ld a, [de]
    inc h
    ld e, $2b
    ld c, h
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    jp hl


    ld [$ef2d], sp
    inc l
    ld hl, $2e28
    dec h
    dec e

jr_01b_4cb5:
    rst $28
    dec l
    ld l, $2b
    daa
    rst $28
    rst $28
    ld h, $22
    dec h
    inc h
    rst $28
    ld [hl+], a
    daa
    dec l
    jr z, jr_01b_4cb5

    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    jp hl


    dec de
    ld l, $2d
    dec l
    ld e, $2b
    ld c, h
    inc de
    ld hl, $ef1e
    inc e
    jr z, jr_01b_4d06

    dec l
    rst $28
    ld [hl+], a
    inc l
    rst $28
    scf
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    ld b, $8e
    dec de
    ld l, $2d
    rst $28
    rst $28
    jp hl


    jr nc, jr_01b_4d0c

    dec h
    dec h
    rst $28
    jr nc, jr_01b_4d1b

    dec hl
    dec l
    ld hl, $22ef
    dec l
    ld b, b
    rst $28
    rst $28
    rst $28
    ld bc, $322e
    rst $28
    rst $28
    rst $28
    inc bc
    jr z, @+$29

jr_01b_4d06:
    ld c, e
    dec l
    rst $28
    ld bc, $322e

jr_01b_4d0c:
    inc de
    ld hl, $2d1a
    ld d, e
    rst $28
    ld a, [de]
    rst $28
    ld [bc], a
    ld hl, $1e1e
    inc l
    ld e, $ef

jr_01b_4d1b:
    rst $28
    inc c
    ld a, [de]
    inc h
    ld e, $2b
    ld c, h
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    jp hl


    ld [$ef2d], sp
    inc l
    ld hl, $2e28
    dec h
    dec e

jr_01b_4d35:
    rst $28
    dec l
    ld l, $2b
    daa
    rst $28
    rst $28
    ld h, $22
    dec h
    inc h
    rst $28
    ld [hl+], a
    daa
    dec l
    jr z, jr_01b_4d35

    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    jp hl


    inc e
    ld hl, $1e1e
    inc l
    ld e, $4c
    inc de
    ld hl, $ef1e
    inc e
    jr z, jr_01b_4d86

    dec l
    rst $28
    ld [hl+], a
    inc l
    rst $28
    scf
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    ld b, $8e
    dec de
    ld l, $2d
    rst $28
    rst $28
    jp hl


    jr nc, jr_01b_4d8c

    dec h
    dec h
    rst $28
    jr nc, jr_01b_4d9b

    dec hl
    dec l
    ld hl, $22ef
    dec l
    ld b, b
    rst $28
    rst $28
    rst $28
    ld bc, $322e
    rst $28
    rst $28
    rst $28
    inc bc
    jr z, jr_01b_4dad

jr_01b_4d86:
    ld c, e
    dec l
    rst $28
    ld bc, $322e

jr_01b_4d8c:
    jr @+$2a

    ld l, $ef
    inc e
    ld a, [de]
    daa
    rst $28
    inc l
    ld hl, $2922
    rst $28
    rst $28
    rst $28

jr_01b_4d9b:
    rst $28
    ld [hl-], a
    jr z, @+$30

    dec hl
    rst $28
    inc e
    dec hl
    jr z, jr_01b_4dce

    inc l
    rst $28
    rra
    dec hl
    jr z, @+$28

    jp hl


jr_01b_4dac:
    dec l

jr_01b_4dad:
    ld hl, $ef1e
    ld [de], a
    ld a, [de]
    dec e
    dec e
    dec h
    ld e, $1b
    ld a, [de]
    jr nz, jr_01b_4e06

    rst $28
    rst $28
    inc de
    ld hl, $ef1e
    inc e
    jr z, jr_01b_4def

    dec l
    rst $28
    ld [hl+], a
    inc l
    rst $28
    rst $28
    rst $28

jr_01b_4dca:
    rst $28
    jp hl


    ld [hl], $39

jr_01b_4dce:
    inc [hl]
    inc [hl]
    ld b, $4c
    rst $28
    rst $28
    rst $28
    rst $28

jr_01b_4dd6:
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    ld bc, $322e
    rst $28
    rst $28

jr_01b_4de2:
    rst $28
    inc bc
    jr z, @+$29

    ld c, e
    dec l
    rst $28
    ld bc, $322e
    ld [de], a
    ld e, $1e

jr_01b_4def:
    rst $28
    ld [hl-], a
    jr z, jr_01b_4e21

    rst $28
    dec h
    ld a, [de]
    dec l
    ld e, $2b
    ld c, h
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28

jr_01b_4dff:
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28

jr_01b_4e06:
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28

jr_01b_4e0b:
    rst $28
    and $40
    inc de
    ld b, c
    db $fc
    ld c, [hl]
    ld [hl], d
    call $f420
    cp b

jr_01b_4e17:
    halt
    call $2104
    ld b, b
    ld [hl], d
    call $8020
    inc [hl]

jr_01b_4e21:
    ld b, b
    inc [hl]

jr_01b_4e23:
    ld b, c
    and $40
    ld hl, $1c40
    ld c, a
    jr nz, jr_01b_4dac

    inc [hl]
    ld b, b
    inc [hl]

jr_01b_4e2f:
    ld b, c
    dec a
    ld b, l
    adc a
    ld b, [hl]
    ld [hl-], a
    ld c, [hl]
    and $40
    ld hl, $bc40

jr_01b_4e3b:
    ld c, a
    jr nz, @-$7e

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40
    ld hl, $dc40

jr_01b_4e47:
    ld c, a
    jr nz, jr_01b_4dca

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40
    ld hl, $fc40
    ld c, a
    jr nz, jr_01b_4dd6

    inc [hl]

jr_01b_4e57:
    ld b, b
    inc [hl]
    ld b, c
    and $40
    ld hl, $1c40
    ld d, b
    jr nz, jr_01b_4de2

    inc [hl]

jr_01b_4e63:
    ld b, b
    dec l
    ld b, c
    ld l, b
    ld b, c
    ld l, h
    ld c, [hl]
    adc a
    ld c, [hl]
    add l
    ld b, e
    db $f4

jr_01b_4e6f:
    ld bc, $4ecf
    ccf
    ld b, h
    jr c, jr_01b_4e2f

    ld [hl-], a
    and $40
    ld hl, $3c40
    ld d, b
    jr nz, jr_01b_4dff

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40
    ld hl, $5c40
    ld d, b
    jr nz, jr_01b_4e0b

    adc a
    ld b, [hl]
    rst $28
    ld c, [hl]
    and $40
    ld hl, $7c40
    ld d, b
    jr nz, jr_01b_4e17

    adc a
    ld b, [hl]
    rst $28
    ld c, [hl]
    and $40
    ld hl, $3c40
    ld c, a
    jr nz, jr_01b_4e23

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40
    ld hl, $5c40
    ld c, a
    jr nz, jr_01b_4e2f

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40
    ld hl, $7c40
    ld c, a
    jr nz, jr_01b_4e3b

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40
    ld hl, $9c40
    ld c, a
    jr nz, jr_01b_4e47

    pop af
    ld b, e
    cp $b8
    adc a
    ld b, [hl]
    rst $28
    ld c, [hl]
    and $40
    ld hl, $9c40
    ld d, b
    jr nz, jr_01b_4e57

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40
    ld hl, $3c40
    ld d, l
    jr nz, jr_01b_4e63

    adc a
    ld b, [hl]
    rst $28
    ld c, [hl]
    and $40
    ld hl, $bc40
    ld d, b
    jr nz, jr_01b_4e6f

    inc [hl]
    ld b, b
    inc hl
    ld b, l
    ld a, [hl+]
    ld b, l
    rst $38
    dec a
    ld b, l
    adc a
    ld b, [hl]
    ld hl, sp+$4e
    rlca
    ld e, $32
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    ld c, h
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28

jr_01b_4f19:
    rst $28
    jp hl


    rst $28
    ld d, $21
    ld a, [de]
    dec l
    rst $28
    inc e
    ld a, [de]
    daa
    rst $28
    ld [$1def], sp
    jr z, jr_01b_4f19

    rst $28
    rst $28
    rra
    jr z, jr_01b_4f5a

    rst $28
    ld [hl-], a
    jr z, @+$30

    ld b, c
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    jp hl


    rst $28
    ld [$2cef], sp
    ld e, $1e
    adc [hl]
    rst $28
    ld [hl-], a
    jr z, jr_01b_4f74

    rst $28
    jr nc, jr_01b_4f63

    daa
    dec l
    rst $28
    dec l
    jr z, @-$0f

    ld e, $31
    add hl, hl
    ld a, [de]
    daa
    dec e
    rst $28
    ld [hl-], a
    jr z, @+$30

    dec hl

jr_01b_4f5a:
    rst $28
    jp hl


    ld hl, $2e28
    inc l
    ld e, $4c
    rst $28

jr_01b_4f63:
    nop
    dec h
    dec hl
    ld [hl+], a
    jr nz, jr_01b_4f8a

    dec l
    ld b, b
    rst $28
    inc de
    jr z, jr_01b_4f95

    jr z, jr_01b_4f9c

    dec hl
    jr z, jr_01b_4fa4

jr_01b_4f74:
    rst $28
    ld [$30ef], sp
    ld [hl+], a
    dec h
    dec h
    jp hl


    dec h
    ld e, $2d
    rst $28
    ld [hl-], a
    jr z, jr_01b_4fb1

    rst $28
    inc h
    daa
    jr z, jr_01b_4fb8

    rst $28
    dec l

jr_01b_4f8a:
    ld hl, $1c1e
    jr z, jr_01b_4fbb

    dec l
    rst $28
    ld a, [de]
    daa
    dec e
    rst $28

jr_01b_4f95:
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    jp hl


jr_01b_4f9c:
    ld h, $1a
    dec l
    ld e, $2b
    ld [hl+], a
    ld a, [de]
    dec h

jr_01b_4fa4:
    rst $28
    daa
    ld e, $1e
    dec e
    ld e, $1d
    rst $28
    rra
    jr z, jr_01b_4fda

    rst $28
    dec l

jr_01b_4fb1:
    ld hl, $ef1e
    inc hl
    jr z, jr_01b_4fd2

    ld c, h

jr_01b_4fb8:
    rst $28
    rst $28
    rst $28

jr_01b_4fbb:
    rst $28
    inc c
    ld a, [de]
    dec l
    ld e, $2b
    ld [hl+], a
    ld a, [de]
    dec h
    ld b, c
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28

jr_01b_4fd2:
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28

jr_01b_4fda:
    rst $28
    jp hl


    ld [$ef2d], sp
    ld [hl+], a
    inc l
    rst $28
    ld l, $2c
    ld e, $1d
    rst $28
    rra
    jr z, jr_01b_5015

    rst $28
    rst $28
    ld e, $31
    add hl, hl
    ld a, [de]
    daa
    inc l
    ld [hl+], a
    jr z, jr_01b_501c

    rst $28
    ld a, [de]
    daa
    dec e
    rst $28
    rst $28
    jp hl


    rra
    jr z, jr_01b_502a

    rst $28
    ld [hl-], a
    jr z, jr_01b_5031

    dec hl
    rst $28
    rra
    ld e, $27
    inc e
    ld e, $4c
    rst $28
    add hl, sp
    inc [hl]
    rst $28
    inc c
    ld a, [de]
    dec l
    ld e, $2b
    ld [hl+], a

jr_01b_5015:
    ld a, [de]
    dec h
    inc l
    rst $28
    rst $28
    rst $28
    jp hl


jr_01b_501c:
    rra
    jr z, jr_01b_504a

    rst $28
    add hl, sp
    inc [hl]
    inc [hl]
    ld b, $4c
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28

jr_01b_502a:
    rst $28
    rst $28
    rst $28
    ld bc, $322e
    rst $28

jr_01b_5031:
    rst $28
    rst $28
    inc bc
    jr z, @+$29

    ld c, e
    dec l
    rst $28
    ld bc, $322e
    inc de
    ld hl, $321e
    rst $28
    ld a, [de]
    dec hl
    ld e, $ef
    ld a, [de]
    rst $28
    dec h
    ld [hl+], a
    dec l

jr_01b_504a:
    dec l
    ld b, h
    dec h
    ld e, $ef
    ld hl, $1a1e
    cpl
    ld [hl-], a
    adc [hl]
    rst $28
    ld [$efef], sp
    rst $28
    rst $28
    jp hl


    jr nc, jr_01b_5080

jr_01b_505e:
    dec h
    dec h
    rst $28
    dec l
    ld a, [de]
    inc h

jr_01b_5064:
    ld e, $ef
    dec l
    ld hl, $261e
    rst $28
    rst $28
    dec l
    jr z, jr_01b_505e

    ld [hl-], a
    jr z, @+$30

    dec hl
    rst $28
    dec hl
    ld a, [de]

jr_01b_5076:
    daa
    inc e
    ld hl, $ef4c
    rst $28
    inc de
    ld hl, $271e

jr_01b_5080:
    rst $28
    dec e

jr_01b_5082:
    jr z, jr_01b_50ab

    ld c, e
    dec l
    rst $28
    jr nc, @+$1c

    inc l
    dec l
    ld e, $26
    ld [hl-], a

jr_01b_508e:
    rst $28
    dec l
    ld [hl+], a
    ld h, $1e
    ld c, h
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rlca
    ld a, [de]
    rst $28
    ld hl, $ef1a
    ld hl, $8e1a
    rst $28
    ld [hl-], a
    jr z, jr_01b_50d7

    rst $28
    rst $28

jr_01b_50ab:
    rst $28
    ld h, $2e
    inc l
    dec l
    rst $28
    dec de
    ld e, $ef
    inc hl
    jr z, jr_01b_50db

    ld [hl+], a
    daa

jr_01b_50b9:
    jr nz, @+$4e

    jp hl


    ld d, $1e
    dec h
    dec h
    adc [hl]
    rst $28
    inc l
    ld e, $1e

jr_01b_50c5:
    rst $28
    ld [hl-], a
    ld a, [de]
    ld c, h
    rst $28
    rst $28
    rst $28
    inc de
    ld a, [de]
    inc h
    ld e, $ef

jr_01b_50d1:
    inc e
    ld a, [de]
    dec hl
    ld e, $4c
    rst $28

jr_01b_50d7:
    rst $28
    rst $28
    rst $28
    rst $28

jr_01b_50db:
    rst $28
    and $40
    ld hl, $7c40
    ld d, d
    jr nz, jr_01b_5064

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    dec a
    ld b, l
    adc a
    ld b, [hl]
    ld [$e650], a
    ld b, b

jr_01b_50f0:
    ld hl, $9c40
    ld d, d
    jr nz, jr_01b_5076

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40

jr_01b_50fc:
    ld hl, $bc40
    ld d, d
    jr nz, jr_01b_5082

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40

jr_01b_5108:
    ld hl, $dc40
    ld d, d
    jr nz, jr_01b_508e

    inc [hl]
    ld b, b
    dec l
    ld b, c
    ld l, b
    ld b, c

jr_01b_5114:
    jr jr_01b_5167

    ld [hl], b
    ld d, d
    add l
    ld b, e
    inc l
    ld bc, $522b
    sub $45
    ld bc, $468f
    ld e, b
    ld d, d
    and $40
    ld hl, $3c40
    ld d, e
    jr nz, @-$7e

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40
    ld hl, $5c40
    ld d, e
    jr nz, jr_01b_50b9

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40
    ld hl, $7c40
    ld d, e
    jr nz, jr_01b_50c5

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40
    ld hl, $9c40
    ld d, e
    jr nz, jr_01b_50d1

    inc [hl]
    ld b, b
    dec l
    ld b, c
    ld l, b
    ld b, c
    ld e, e
    ld d, c

jr_01b_5159:
    ld [hl], b
    ld d, d
    add l
    ld b, e
    db $f4
    ld bc, $522b
    sub $45
    nop
    adc a
    ld b, [hl]
    ld h, h

jr_01b_5167:
    ld d, d
    and $40
    ld hl, $dc40
    ld d, e
    jr nz, jr_01b_50f0

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40
    ld hl, $fc40
    ld d, e

jr_01b_517a:
    jr nz, jr_01b_50fc

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40
    ld hl, $1c40
    ld d, h

jr_01b_5186:
    jr nz, jr_01b_5108

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40
    ld hl, $3c40
    ld d, h

jr_01b_5192:
    jr nz, jr_01b_5114

    inc [hl]
    ld b, b
    dec l
    ld b, c
    ld l, b
    ld b, c
    sbc [hl]
    ld d, c
    ld [hl], b
    ld d, d
    add l
    ld b, e
    inc l
    ld bc, $522b
    dec l
    ld b, h
    jp z, $0ab8

    adc a
    ld b, [hl]
    ld h, h
    ld d, d
    and $40
    ld hl, $5c40
    ld d, h

jr_01b_51b3:
    jr nz, @-$7e

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40
    ld hl, $7c40
    ld d, h
    jr nz, @-$7e

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40
    ld hl, $9c40
    ld d, h
    jr nz, @-$7e

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40
    ld hl, $bc40
    ld d, h
    jr nz, jr_01b_5159

    inc [hl]
    ld b, b
    dec l
    ld b, c
    ld l, b
    ld b, c
    db $e3

jr_01b_51e0:
    ld d, c
    ld [hl], b
    ld d, d
    add l
    ld b, e
    ret z

    nop
    dec hl
    ld d, d
    dec l
    ld b, h
    res 7, b
    ld a, [bc]
    adc a
    ld b, [hl]
    ld e, b
    ld d, d
    and $40
    ld hl, $dc40
    ld d, h

jr_01b_51f8:
    jr nz, jr_01b_517a

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40
    ld hl, $fc40
    ld d, h
    jr nz, jr_01b_5186

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40
    ld hl, $1c40
    ld d, l
    jr nz, jr_01b_5192

    inc [hl]
    ld b, b
    dec l
    ld b, c
    ld l, b
    ld b, c
    inc e
    ld d, d
    ld [hl], b
    ld d, d
    add l
    ld b, e
    ld h, h
    nop
    dec hl
    ld d, d
    dec l
    ld b, h
    call z, $0ab8
    adc a
    ld b, [hl]
    ld e, b
    ld d, d
    and $40
    ld hl, $3c40
    ld d, l
    jr nz, jr_01b_51b3

    inc [hl]
    ld b, b
    inc hl
    ld b, l
    ld a, [hl+]
    ld b, l
    rst $38
    dec a
    ld b, l
    adc a
    ld b, [hl]
    inc a
    ld d, d
    and $40
    ld hl, $5c40
    ld d, l
    jr nz, @-$7e

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40
    ld hl, $7c40
    ld d, l
    jr nz, @-$7e

    adc a
    ld b, [hl]
    inc sp
    ld d, d
    and $40
    ld hl, $fc40
    ld d, d
    jr nz, jr_01b_51e0

    adc a
    ld b, [hl]
    inc sp
    ld d, d
    and $40
    ld hl, $bc40
    ld d, e
    jr nz, @-$7e

    adc a
    ld b, [hl]
    inc sp
    ld d, d
    and $40
    ld hl, $1c40
    ld d, e
    jr nz, jr_01b_51f8

    adc a
    ld b, [hl]
    inc sp
    ld d, d
    rlca
    ld [hl+], a
    ld c, h
    rst $28
    ld d, $28
    ld l, $25
    dec e
    rst $28
    ld [hl-], a
    jr z, jr_01b_52b7

    rst $28
    rst $28
    rst $28
    dec h
    ld [hl+], a
    inc h
    ld e, $ef
    ld a, [de]
    rst $28
    dec e
    dec hl
    ld [hl+], a
    daa
    inc h
    ld b, c
    rst $28
    rst $28
    jp hl


    ld c, $2b
    ld a, [de]
    daa
    jr nz, jr_01b_52c0

    rst $28
    add hl, bc
    ld l, $22
    inc e
    ld e, $ef
    ld [hl+], a
    inc l
    rst $28
    ld a, [de]
    rst $28
    inc l
    add hl, hl
    ld e, $1c
    ld [hl+], a
    ld a, [de]
    dec h
    dec l
    ld [hl-], a

jr_01b_52b7:
    rst $28
    jr z, @+$21

    rst $28
    jp hl


    dec l
    ld hl, $2c22

jr_01b_52c0:
    rst $28
    dec l
    jr z, jr_01b_52f4

    daa
    ld c, h
    rst $28
    rrca
    dec h
    ld e, $1a
    ld b, h
    inc l
    ld e, $ef
    ld e, $27
    inc hl
    jr z, @+$34

    ld c, h
    rst $28
    inc de
    ld hl, $ef1e
    rst $28
    jp hl


    add hl, hl
    dec hl
    ld [hl+], a
    inc e
    ld e, $ef
    ld [hl+], a
    inc l
    rst $28
    scf
    inc [hl]
    inc [hl]
    ld b, $4c
    rst $28
    rst $28
    rst $28
    ld bc, $322e
    rst $28
    rst $28
    rst $28
    inc bc

jr_01b_52f4:
    jr z, @+$29

    ld c, e
    dec l
    rst $28
    ld bc, $322e
    rlca
    ld e, $2b
    ld e, $ef
    ld [hl-], a
    jr z, jr_01b_5332

    rst $28
    jr nz, jr_01b_532f

    ld c, h
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    ld de, $1a1e
    dec h
    dec h
    ld [hl-], a
    ld b, c
    rst $28
    ld [$ef2d], sp
    ld a, [de]
    dec h
    dec h
    rst $28
    rst $28
    dec l
    ld a, [de]
    inc l

jr_01b_532f:
    dec l
    ld e, $2c

jr_01b_5332:
    rst $28
    jr nz, jr_01b_535d

    jr z, jr_01b_5354

    ld c, h
    rst $28
    rst $28
    rst $28
    rst $28
    inc de
    ld hl, $2d1a
    rst $28
    ld [hl+], a
    inc l
    rst $28
    ld a, [de]
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    inc l
    add hl, hl
    ld e, $1c
    ld [hl+], a
    ld a, [de]
    dec h
    dec h

jr_01b_5354:
    ld [hl-], a
    rst $28
    ld h, $1a
    dec e
    ld e, $ef
    jp hl


    nop

jr_01b_535d:
    add hl, hl
    add hl, hl
    dec h
    ld e, $ef
    add hl, bc
    ld l, $22
    inc e
    ld e, $ef
    rst $28
    rst $28
    rst $28
    rst $28
    jr nc, jr_01b_538f

    ld [hl+], a
    inc e
    ld hl, $22ef

jr_01b_5373:
    inc l
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    jp hl


    inc l
    ld e, $25
    dec h
    ld [hl+], a
    daa
    jr nz, jr_01b_5373

    ld a, [hl+]
    ld l, $22
    dec l
    ld e, $ef
    rst $28
    rst $28
    jr nc, jr_01b_53ac

    dec h

jr_01b_538f:
    dec h
    ld c, h
    rst $28
    inc de
    ld hl, $ef1e
    add hl, hl
    dec hl
    ld [hl+], a
    inc e
    ld e, $e9
    ld [hl+], a
    inc l
    rst $28
    add hl, sp
    inc [hl]
    inc [hl]
    ld b, $4c
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28

jr_01b_53ac:
    rst $28
    ld bc, $322e
    rst $28
    rst $28
    rst $28
    inc bc
    jr z, jr_01b_53dd

    ld c, e
    dec l
    rst $28
    ld bc, $322e
    rlca
    ld e, $2b
    ld e, $ef
    ld [hl-], a
    jr z, jr_01b_53f2

    rst $28
    jr nz, jr_01b_53ef

    ld c, h
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    inc de

jr_01b_53dd:
    ld hl, $2d1a
    rst $28
    ld [hl+], a
    inc l
    rst $28
    ld d, $22
    dec h
    dec e
    rst $28
    rst $28
    rst $28
    rst $28
    ld b, $2b
    ld a, [de]

jr_01b_53ef:
    add hl, hl
    ld e, $ef

jr_01b_53f2:
    add hl, bc
    ld l, $22
    inc e
    ld e, $ef
    rst $28
    rst $28
    rst $28
    jp hl


    dec l
    ld hl, $2d1a
    rst $28
    jr nc, @+$24

    dec h
    dec h
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    ld [hl+], a
    daa
    inc e
    dec hl
    ld e, $1a
    inc l
    ld e, $ef
    ld [hl-], a
    jr z, jr_01b_5446

    dec hl
    rst $28
    rst $28
    jp hl


    add hl, hl
    jr z, @+$32

    ld e, $2b
    ld c, h
    rst $28
    inc de
    ld hl, $ef1e
    inc e
    jr z, jr_01b_5456

    dec l
    rst $28
    ld [hl+], a
    inc l
    rst $28
    scf
    inc [hl]
    inc [hl]
    ld b, $ef
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    jp hl


    rra
    jr z, jr_01b_546a

    rst $28
    dec [hl]
    inc [hl]
    rst $28
    inc e
    ld l, $29

jr_01b_5446:
    inc l
    ld c, h
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    ld bc, $322e
    rst $28
    rst $28
    rst $28
    inc bc
    jr z, jr_01b_547d

jr_01b_5456:
    ld c, e
    dec l
    rst $28
    ld bc, $322e
    inc de
    ld hl, $2d1a
    ld d, e
    rst $28
    ld a, [de]
    rst $28
    ld hl, $2022
    ld hl, $efef

jr_01b_546a:
    rst $28
    rst $28
    ld a, [hl+]
    ld l, $1a
    dec h
    ld [hl+], a
    dec l
    ld [hl-], a
    rst $28
    ld b, $2b
    ld e, $1e
    daa
    rst $28
    rst $28
    jp hl


    inc de

jr_01b_547d:
    ld e, $1a
    ld c, h
    rst $28
    ld c, $27
    ld e, $ef
    inc e
    ld l, $29
    rst $28
    rst $28
    rst $28
    rst $28
    jr nc, jr_01b_54b0

    dec h
    dec h
    rst $28
    inc l
    ld l, $2b
    ld e, $25
    ld [hl-], a
    rst $28
    rst $28
    rst $28
    rst $28
    jp hl


    jr nc, @+$1c

    inc h
    ld e, $ef
    ld [hl-], a
    jr z, jr_01b_54d2

    rst $28
    ld l, $29
    ld b, b
    rst $28
    inc de
    ld hl, $1c1e
    jr z, @+$2e

    dec l

jr_01b_54b0:
    rst $28
    ld [hl+], a
    inc l
    rst $28
    ld [hl], $34
    inc [hl]
    ld b, $ef
    rst $28
    rst $28
    jp hl


    rra
    jr z, jr_01b_54ea

    rst $28
    dec [hl]
    inc [hl]
    rst $28
    inc e
    ld l, $29
    inc l
    ld c, h
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    ld bc, $322e
    rst $28
    rst $28

jr_01b_54d2:
    rst $28
    inc bc
    jr z, jr_01b_54fd

    ld c, e
    dec l
    rst $28
    ld bc, $322e
    inc de
    ld hl, $2d1a
    ld d, e
    rst $28
    inc c
    ld [hl+], a
    dec h
    inc h
    rst $28
    jr nc, @+$23

    ld [hl+], a

jr_01b_54ea:
    inc e
    ld hl, $1a30
    inc l
    rst $28
    add hl, hl
    dec hl
    jr z, jr_01b_5511

    ld l, $1c
    ld e, $1d
    rst $28
    ld a, [de]
    dec l
    jp hl


    ld [hl-], a

jr_01b_54fd:
    jr z, jr_01b_552d

    dec hl
    rst $28
    dec hl
    ld a, [de]
    daa
    inc e
    ld hl, $ef4c
    inc de
    ld hl, $ef1e
    inc e
    jr z, @+$2e

    dec l
    rst $28

jr_01b_5511:
    ld [hl+], a
    inc l
    rst $28
    dec [hl]
    inc [hl]
    inc [hl]
    ld b, $ef
    rst $28
    rst $28
    jp hl


    rra
    jr z, @+$2d

    rst $28
    dec [hl]
    inc [hl]
    rst $28
    inc e

jr_01b_5524:
    ld l, $29
    inc l
    ld c, h
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28

jr_01b_552d:
    ld bc, $322e
    rst $28
    rst $28
    rst $28
    inc bc
    jr z, jr_01b_555d

jr_01b_5536:
    ld c, e
    dec l
    rst $28
    ld bc, $322e
    jr jr_01b_5566

    ld l, $ef
    dec e
    jr z, jr_01b_556a

    ld c, e
    dec l
    rst $28
    ld hl, $2f1a
    ld e, $ef
    rst $28
    ld e, $27
    jr z, @+$30

    jr nz, @+$23

    rst $28
    ld h, $28
    daa
    ld e, $32
    ld c, h
    rst $28
    rst $28
    rst $28
    dec bc

jr_01b_555d:
    ld e, $1a
    cpl
    ld [hl+], a
    daa
    jr nz, jr_01b_55a5

    rst $28
    nop

jr_01b_5566:
    dec hl

jr_01b_5567:
    ld e, $ef
    ld [hl-], a

jr_01b_556a:
    jr z, jr_01b_559a

    dec hl
    ld e, $1f
    dec hl
    ld e, $2c
    ld hl, $1d1e
    rst $28
    daa
    jr z, jr_01b_55a9

    ld b, c
    rst $28
    jp hl


    ld [bc], a
    jr z, jr_01b_55a5

    ld e, $ef
    dec de
    ld a, [de]
    inc e
    inc h
    rst $28
    inc l
    jr z, @+$2a

    daa
    ld c, h
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28

jr_01b_559a:
    rst $28
    rst $28
    and $40

jr_01b_559e:
    ld hl, $6c40
    ld e, d
    jr nz, jr_01b_5524

    inc [hl]

jr_01b_55a5:
    ld b, b
    inc [hl]
    ld b, c
    dec a

jr_01b_55a9:
    ld b, l

jr_01b_55aa:
    adc a
    ld b, [hl]
    xor d
    ld d, l
    and $40
    ld hl, $8c40
    ld e, d
    jr nz, jr_01b_5536

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40
    ld hl, $ac40
    ld e, d
    jr nz, @-$7e

    inc [hl]
    ld b, b
    dec l
    ld b, c
    ld l, b
    ld b, c
    call z, Call_01b_6055
    ld e, d
    dec de
    ld b, [hl]

jr_01b_55ce:
    ld [hl], $e8
    ld e, c
    ldh a, [c]
    ld b, l
    call nz, $8559
    ld b, e
    adc b
    inc de
    and e

jr_01b_55da:
    ld e, c
    ld l, e
    ld b, a
    adc b
    inc de
    and $40
    ld hl, $cc40
    ld e, [hl]
    jr nz, jr_01b_5567

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    ld c, b
    ld b, [hl]
    adc a
    ld b, [hl]
    db $ed
    ld d, l
    and $40
    inc de
    ld b, c
    db $ec
    ld e, [hl]
    ld [hl], d
    call $2c20
    call $cd72
    inc b
    ld hl, $7240
    call $8020
    inc [hl]
    ld b, b
    xor e
    ld b, l

jr_01b_5609:
    inc [hl]
    ld b, c
    rst $10
    ld b, e
    or e
    cp b
    ld [bc], a
    ld l, $56
    pop af
    ld b, e
    or e

jr_01b_5615:
    cp b
    and $40
    ld hl, $0c40
    ld e, a
    jr nz, jr_01b_559e

    inc [hl]
    ld b, b
    inc [hl]

jr_01b_5621:
    ld b, c
    and $40
    ld hl, $2c40
    ld e, a
    jr nz, jr_01b_55aa

    inc [hl]
    ld b, b
    inc [hl]

jr_01b_562d:
    ld b, c
    and $40
    inc de
    ld b, c
    ld c, h
    ld e, a
    ld [hl], d
    call $2c20
    call $cd82
    inc b
    ld hl, $7240
    call $8020
    inc [hl]
    ld b, b
    inc [hl]

jr_01b_5645:
    ld b, c
    and $40
    ld hl, $6c40
    ld e, a
    jr nz, jr_01b_55ce

    adc a
    ld b, [hl]
    xor e

jr_01b_5651:
    ld e, c
    and $40
    ld hl, $ec40
    ld e, d
    jr nz, jr_01b_55da

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40
    ld hl, $ac40
    ld e, d
    jr nz, @-$7e

    inc [hl]
    ld b, b
    dec l
    ld b, c
    ld l, b
    ld b, c
    ld [hl], b
    ld d, [hl]
    ld h, b
    ld e, d
    dec de
    ld b, [hl]
    inc h
    jr jr_01b_56cf

jr_01b_5675:
    ld de, $c446
    ld e, c
    add l
    ld b, e
    db $f4
    ld bc, $59a3
    ld l, a
    ld b, [hl]

jr_01b_5681:
    and $40
    ld hl, $6c40
    ld h, b
    jr nz, jr_01b_5609

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c

jr_01b_568d:
    and $40
    ld hl, $8c40
    ld h, b
    jr nz, jr_01b_5615

    adc a
    ld b, [hl]
    xor e
    ld e, c

jr_01b_5699:
    and $40
    ld hl, $4c40
    ld e, h
    jr nz, jr_01b_5621

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c

jr_01b_56a5:
    and $40
    ld hl, $ac40
    ld e, h
    jr nz, jr_01b_562d

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40
    ld hl, $cc40
    ld e, h
    jr nz, @-$7e

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40
    ld hl, $6c40
    ld e, h
    jr nz, jr_01b_5645

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c

jr_01b_56c9:
    and $40
    ld hl, $8c40
    ld e, l

jr_01b_56cf:
    jr nz, jr_01b_5651

    inc [hl]
    ld b, b
    dec l
    ld b, c

jr_01b_56d5:
    ld l, b
    ld b, c
    db $db
    ld d, [hl]
    ld h, b
    ld e, d
    add l
    ld b, e
    cp h
    ld [bc], a
    and e
    ld e, c

jr_01b_56e1:
    pop af
    ld b, e
    ret nz

    cp b
    ei
    ld b, e
    ld b, [hl]
    cp c
    adc a
    ld b, [hl]
    ld d, h
    ld e, d

jr_01b_56ed:
    and $40
    ld hl, $8c40
    ld e, h
    jr nz, jr_01b_5675

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40
    ld hl, $ac40
    ld e, h
    jr nz, jr_01b_5681

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40
    ld hl, $cc40
    ld e, h
    jr nz, jr_01b_568d

jr_01b_570d:
    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40
    ld hl, $ec40
    ld e, h
    jr nz, jr_01b_5699

jr_01b_5719:
    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40
    ld hl, $8c40
    ld e, l
    jr nz, jr_01b_56a5

jr_01b_5725:
    inc [hl]
    ld b, b
    dec l
    ld b, c
    ld l, b
    ld b, c
    cpl
    ld d, a
    ld h, b
    ld e, d
    add l
    ld b, e

jr_01b_5731:
    db $f4
    ld bc, $59a3
    pop af
    ld b, e
    pop bc
    cp b
    ei
    ld b, e
    ld b, a
    cp c
    adc a
    ld b, [hl]
    ld d, h
    ld e, d
    and $40
    ld hl, $6c40
    ld e, e
    jr nz, jr_01b_56c9

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40
    ld hl, $8c40
    ld e, e
    jr nz, jr_01b_56d5

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40
    ld hl, $ac40
    ld e, e
    jr nz, jr_01b_56e1

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40
    ld hl, $8c40
    ld e, l
    jr nz, jr_01b_56ed

    inc [hl]
    ld b, b
    dec l
    ld b, c
    ld l, b
    ld b, c
    ld [hl], a
    ld d, a

jr_01b_5775:
    ld h, b
    ld e, d
    add l
    ld b, e
    add sp, $03
    and e
    ld e, c
    pop af
    ld b, e
    xor e
    cp b
    adc a
    ld b, [hl]
    ld d, h
    ld e, d
    and $40
    ld hl, $ec40
    ld e, e
    jr nz, jr_01b_570d

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40
    ld hl, $0c40
    ld e, h
    jr nz, jr_01b_5719

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40
    ld hl, $2c40
    ld e, h
    jr nz, jr_01b_5725

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40
    ld hl, $8c40
    ld e, l
    jr nz, jr_01b_5731

    inc [hl]
    ld b, b
    dec l
    ld b, c
    ld l, b
    ld b, c
    cp e
    ld d, a

jr_01b_57b9:
    ld h, b
    ld e, d
    add l
    ld b, e
    and b
    rrca
    and e
    ld e, c
    pop af
    ld b, e
    or d
    cp b

jr_01b_57c5:
    adc a
    ld b, [hl]
    ld d, h
    ld e, d
    and $40
    ld hl, $2c40
    ld e, l
    jr nz, @-$7e

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40
    ld hl, $4c40
    ld e, l
    jr nz, @-$7e

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40
    ld hl, $6c40
    ld e, l
    jr nz, @-$7e

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40
    ld hl, $8c40
    ld e, l
    jr nz, jr_01b_5775

    inc [hl]
    ld b, b
    dec l
    ld b, c
    ld l, b
    ld b, c
    rst $38
    ld d, a
    ld h, b
    ld e, d
    add l
    ld b, e
    ret nc

    rlca
    and e
    ld e, c
    pop af
    ld b, e
    or c
    cp b
    adc a
    ld b, [hl]
    ld d, h
    ld e, d
    and $40

jr_01b_580f:
    ld hl, $8c40
    ld e, a
    jr nz, @-$7e

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40
    ld hl, $ac40
    ld e, a
    jr nz, @-$7e

    inc [hl]
    ld b, b
    dec l
    ld b, c

jr_01b_5825:
    rst $30
    ld b, a
    dec hl
    ld e, b
    ld h, b
    ld e, d
    ld d, l
    ld b, [hl]
    adc a
    ld b, [hl]
    dec l
    ld e, b

jr_01b_5831:
    and $40
    ld hl, $cc40
    ld e, a
    jr nz, jr_01b_57b9

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c

jr_01b_583d:
    and $40
    ld hl, $ec40
    ld e, a
    jr nz, jr_01b_57c5

    ld d, c
    ld a, e
    inc [hl]
    ld b, c
    dec a
    ld b, l
    adc a
    ld b, [hl]
    ld c, e

jr_01b_584e:
    ld e, b
    and $40
    inc de
    ld b, c
    adc h
    ld h, c
    ld [hl], d
    call $cd20
    call z, $cd87
    ld bc, $7bce
    xor h

jr_01b_5860:
    ld h, c
    ld hl, $7240
    call $8020
    ld d, c
    ld a, e
    adc a
    ld b, [hl]
    ld l, c

jr_01b_586c:
    ld e, b
    and $40
    inc de
    ld b, c
    call z, $7261
    call Call_01b_4a20
    cp c
    adc l
    call $0801
    ld a, h
    ld hl, $7240
    call $8020
    ld d, c

jr_01b_5884:
    ld a, e
    inc [hl]
    ld b, c
    and $40
    ld hl, $ec40
    ld h, c
    jr nz, jr_01b_580f

    inc [hl]

jr_01b_5890:
    ld b, b
    dec l
    ld b, c
    ld l, b
    ld b, c
    sbc c
    ld e, b
    add $58
    inc sp
    ld a, h
    cp d
    ld b, l
    and $40
    ld hl, $0c40
    ld h, b
    jr nz, jr_01b_5825

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40
    ld hl, $2c40
    ld h, b
    jr nz, jr_01b_5831

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40
    ld hl, $4c40
    ld h, b
    jr nz, jr_01b_583d

    ld d, c
    ld a, e
    inc hl
    ld b, l
    ld a, [hl+]
    ld b, l
    rst $38
    rst $08
    ld a, h
    and $40
    ld hl, $cc40
    ld e, d
    jr nz, jr_01b_584e

    adc a
    ld b, [hl]
    cp l
    ld e, b
    cp d
    ld a, h
    adc a
    ld b, [hl]
    call nc, $e658
    ld b, b

jr_01b_58da:
    ld hl, $ac40
    ld h, b
    jr nz, jr_01b_5860

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40
    ld hl, $cc40
    ld h, b
    jr nz, jr_01b_586c

    inc [hl]
    ld b, b
    dec l
    ld b, c

jr_01b_58f0:
    rst $30
    ld b, a
    or $58
    ld h, b
    ld e, d
    ld h, d
    ld b, [hl]
    adc a
    ld b, [hl]
    ld hl, sp+$58

jr_01b_58fc:
    and $40
    ld hl, $ec40
    ld h, b
    jr nz, jr_01b_5884

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c

jr_01b_5908:
    and $40
    ld hl, $0c40
    ld h, c
    jr nz, jr_01b_5890

    ld d, c
    ld a, e
    inc [hl]
    ld b, c
    dec a
    ld b, l
    adc a
    ld b, [hl]
    ld d, $59
    and $40
    inc de
    ld b, c
    adc h
    ld h, c
    ld [hl], d
    call $cd20
    call z, $cd87
    ld bc, $7cf6
    xor h

jr_01b_592b:
    ld h, c
    ld hl, $7240
    call $8020
    ld d, c
    ld a, e
    adc a
    ld b, [hl]
    inc [hl]
    ld e, c
    and $40
    inc de
    ld b, c
    call z, $7261
    call $a820
    cp c
    adc h
    call $2c01
    ld a, l
    ld hl, $7240
    call $8020
    ld d, c
    ld a, e
    inc [hl]
    ld b, c
    and $40
    ld hl, $ec40
    ld h, c

jr_01b_5958:
    jr nz, jr_01b_58da

    inc [hl]
    ld b, b
    dec l
    ld b, c
    ld l, b
    ld b, c
    ld h, h
    ld e, c
    sub c
    ld e, c

jr_01b_5964:
    db $e4
    ld a, h
    ret z

    ld b, l
    and $40
    ld hl, $2c40
    ld h, c
    jr nz, jr_01b_58f0

jr_01b_5970:
    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40
    ld hl, $4c40
    ld h, c
    jr nz, jr_01b_58fc

jr_01b_597c:
    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40
    ld hl, $6c40
    ld h, c
    jr nz, jr_01b_5908

jr_01b_5988:
    ld d, c
    ld a, e
    inc hl
    ld b, l
    ld a, [hl+]
    ld b, l
    rst $38
    rst $08
    ld a, h
    and $40
    ld hl, $cc40
    ld e, d
    jr nz, @-$7e

    adc a
    ld b, [hl]
    cp l
    ld e, b
    cp d
    ld a, h
    adc a

jr_01b_59a0:
    ld b, [hl]
    sbc a
    ld e, c
    and $40
    ld hl, $3c40
    ld d, l
    jr nz, jr_01b_592b

    inc [hl]

jr_01b_59ac:
    ld b, b
    inc hl
    ld b, l
    ld a, [hl+]
    ld b, l
    rst $38
    dec a
    ld b, l
    adc a
    ld b, [hl]
    or h
    ld e, c

jr_01b_59b8:
    and $40
    ld hl, $0c40
    ld e, l
    jr nz, @-$7e

    adc a
    ld b, [hl]
    xor e
    ld e, c

jr_01b_59c4:
    and $40
    ld hl, $0c40
    ld e, e
    jr nz, @-$7e

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c

jr_01b_59d0:
    and $40
    ld hl, $2c40
    ld e, e
    jr nz, jr_01b_5958

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c

jr_01b_59dc:
    and $40
    ld hl, $4c40
    ld e, e
    jr nz, jr_01b_5964

    adc a
    ld b, [hl]
    xor e
    ld e, c

jr_01b_59e8:
    and $40
    ld hl, $ac40
    ld e, l
    jr nz, jr_01b_5970

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40
    ld hl, $cc40
    ld e, l
    jr nz, jr_01b_597c

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40
    ld hl, $ec40
    ld e, l
    jr nz, jr_01b_5988

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40
    ld hl, $0c40
    ld e, [hl]
    jr nz, @-$7e

    adc a
    ld b, [hl]
    xor e
    ld e, c
    and $40
    ld hl, $2c40
    ld e, [hl]
    jr nz, jr_01b_59a0

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40
    ld hl, $4c40
    ld e, [hl]
    jr nz, jr_01b_59ac

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40
    ld hl, $6c40
    ld e, [hl]
    jr nz, jr_01b_59b8

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40
    ld hl, $8c40
    ld e, [hl]
    jr nz, jr_01b_59c4

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40
    ld hl, $ac40
    ld e, [hl]
    jr nz, jr_01b_59d0

    adc a
    ld b, [hl]
    xor e
    ld e, c
    and $40
    ld hl, $cc40
    ld e, e
    jr nz, jr_01b_59dc

    adc a
    ld b, [hl]
    xor e
    ld e, c
    and $40
    ld hl, $cc40
    ld e, d
    jr nz, jr_01b_59e8

    adc a
    ld b, [hl]
    xor e
    ld e, c
    rlca
    jr z, jr_01b_5a9f

    rst $28
    ld a, [de]

jr_01b_5a71:
    dec hl
    ld e, $ef
    ld [hl-], a
    jr z, jr_01b_5aa5

    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    dec e
    jr z, jr_01b_5aa1

    daa
    jr nz, jr_01b_5a71

    dec l
    jr z, @+$1f

    ld a, [de]
    ld [hl-], a
    ld b, c
    rst $28
    rst $28
    rst $28
    jp hl


    nop
    rst $28
    inc e
    jr z, jr_01b_5ac1

    rst $28
    inc e
    jr z, jr_01b_5ac1

    dec l
    inc l
    rst $28
    add hl, sp
    inc [hl]
    inc [hl]
    inc [hl]
    ld b, $4c
    rst $28

jr_01b_5a9f:
    ld d, $28

jr_01b_5aa1:
    ld l, $25

jr_01b_5aa3:
    dec e
    rst $28

jr_01b_5aa5:
    ld [hl-], a
    jr z, @+$30

    rst $28
    rst $28
    rst $28
    jp hl


    dec h
    ld [hl+], a
    inc h
    ld e, $ef
    dec l
    jr z, jr_01b_5aa3

    dec de
    ld l, $32
    rst $28
    jr z, jr_01b_5ae1

    ld e, $41
    rst $28
    ld bc, $322e
    rst $28

jr_01b_5ac1:
    rst $28
    rst $28
    inc bc
    jr z, jr_01b_5aed

    ld c, e
    dec l
    rst $28
    ld bc, $322e
    ld [$ef2c], sp
    dec l
    ld hl, $2d1a
    rst $28
    inc l
    jr z, jr_01b_5b18

    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28

jr_01b_5ae1:
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    nop

jr_01b_5aed:
    rst $28
    inc e
    ld hl, $1c22
    inc h
    ld e, $27
    rst $28
    inc e
    jr z, @+$2e

    dec l
    inc l
    rst $28
    add hl, sp
    inc [hl]
    inc [hl]
    ld b, $4c
    rst $28
    ld d, $28
    ld l, $25
    dec e
    rst $28
    ld [hl-], a
    jr z, jr_01b_5b39

    jp hl


    ld [$ef1f], sp
    ld [hl-], a
    jr z, jr_01b_5b40

    rst $28
    dec de
    ld l, $32
    rst $28
    dec l

jr_01b_5b18:
    jr z, jr_01b_5b42

    rst $28
    rst $28
    ld h, $1a
    daa
    ld [hl-], a
    rst $28
    ld a, [de]
    daa
    ld [hl+], a
    ld h, $1a
    dec h
    inc l
    rst $28
    ld a, [de]
    dec l
    jp hl


    jr z, jr_01b_5b55

    inc e
    ld e, $8e
    rst $28
    dec l
    ld hl, $321e
    rst $28
    jr nc, jr_01b_5b5b

jr_01b_5b39:
    dec h
    dec h
    rst $28
    jr nz, jr_01b_5b5c

    dec l
    rst $28

jr_01b_5b40:
    ld l, $29

jr_01b_5b42:
    inc l
    ld e, $2d
    ld c, h
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    jp hl


    jr jr_01b_5b76

    ld l, $ef
    inc l
    ld hl, $2e28
    dec h

jr_01b_5b55:
    dec e
    rst $28
    inc l
    dec l
    jr z, jr_01b_5b84

jr_01b_5b5b:
    rst $28

jr_01b_5b5c:
    dec de
    ld l, $32
    ld [hl+], a
    daa
    jr nz, jr_01b_5baf

    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    inc de
    ld hl, $2d1a
    ld d, e
    rst $28
    ld [bc], a
    jr z, jr_01b_5ba5

    rst $28

jr_01b_5b76:
    inc c
    ld e, $1d
    ld [hl+], a

jr_01b_5b7a:
    inc e
    ld b, h
    ld [hl+], a
    daa
    ld e, $4c
    ld bc, $ef1e
    inc l

jr_01b_5b84:
    ld l, $2b
    ld e, $ef
    dec l
    jr z, jr_01b_5b7a

    jp hl


    rra
    ld a, [de]
    inc e
    ld e, $ef
    dec l
    ld hl, $ef1e
    inc e

jr_01b_5b96:
    jr z, jr_01b_5bc8

    rst $28
    rst $28
    rst $28
    rst $28
    jr nc, @+$23

    ld e, $27
    rst $28
    ld l, $2c
    ld [hl+], a
    daa

jr_01b_5ba5:
    jr nz, jr_01b_5b96

    ld [hl+], a
    dec l
    ld c, h
    rst $28
    jp hl


    ld [$ef2d], sp

jr_01b_5baf:
    ld [hl+], a
    inc l
    rst $28
    dec [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    ld b, $4c
    rst $28
    rst $28
    rst $28
    rst $28
    ld d, $28
    ld l, $25
    dec e
    rst $28
    ld [hl-], a
    jr z, jr_01b_5bf3

    rst $28
    dec h
    ld [hl+], a

jr_01b_5bc8:
    inc h
    ld e, $ef
    jp hl


    inc de
    ld hl, $271a
    inc h
    rst $28
    jr jr_01b_5bfc

    ld l, $40
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    inc de
    ld hl, $2d1a
    rst $28
    ld [hl+], a
    inc l

jr_01b_5bf3:
    rst $28
    ld a, [de]
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28

jr_01b_5bfc:
    inc c
    ld c, h
    rst $28
    rrca
    jr z, jr_01b_5c2f

    ld [hl+], a
    jr z, jr_01b_5c2c

    rst $28
    rst $28
    rst $28

jr_01b_5c08:
    rst $28
    rst $28
    rst $28
    jp hl


    rra
    jr z, jr_01b_5c3a

    rst $28
    dec de
    dec hl
    ld e, $1e
    dec e
    ld [hl+], a
    daa
    jr nz, jr_01b_5c08

    rst $28
    rst $28
    rst $28
    inc e
    jr z, @+$32

    inc l
    ld c, h
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    jp hl


jr_01b_5c2c:
    ld [$ef2d], sp

jr_01b_5c2f:
    ld [hl+], a
    inc l
    rst $28
    jr c, jr_01b_5c68

    inc [hl]
    inc [hl]
    ld b, $4c
    rst $28
    rst $28

jr_01b_5c3a:
    rst $28
    rst $28
    ld d, $28
    ld l, $25
    dec e
    rst $28
    ld [hl-], a
    jr z, jr_01b_5c73

    rst $28
    dec h
    ld [hl+], a
    inc h
    ld e, $ef
    jp hl


    inc de
    ld hl, $2d1a
    ld d, e
    rst $28
    ld [bc], a
    jr z, jr_01b_5c85

    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    dec b
    ld e, $1e
    dec e
    adc [hl]
    rst $28
    dec de
    ld l, $2d
    rst $28
    ld [hl+], a
    dec l

jr_01b_5c68:
    rst $28
    ld [hl+], a
    inc l
    jp hl


    ld [$ef2d], sp
    ld [hl+], a
    inc l
    rst $28
    dec sp

jr_01b_5c73:
    inc [hl]
    inc [hl]
    ld b, $4c
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    ld d, $28
    ld l, $25
    dec e
    rst $28
    ld [hl-], a
    jr z, @+$30

jr_01b_5c85:
    rst $28
    dec h
    ld [hl+], a
    inc h
    ld e, $ef
    jp hl


    inc de
    ld hl, $2d1a
    ld d, e
    rst $28
    ld [bc], a
    ld hl, $1c22
    inc h
    ld e, $27
    rst $28
    rst $28
    rst $28
    dec b
    ld e, $1e
    dec e
    adc [hl]
    rst $28
    dec de

jr_01b_5ca3:
    ld l, $2d
    rst $28
    ld [hl+], a
    dec l
    rst $28
    ld [hl+], a
    inc l
    jp hl


    dec de
    ld e, $2c
    dec l
    rst $28
    dec l
    jr z, jr_01b_5ca3

    rra
    ld e, $1e
    dec e
    rst $28
    rst $28
    rst $28
    rst $28
    dec l
    ld hl, $261e
    rst $28
    rra
    jr z, jr_01b_5ce1

    dec e
    ld e, $2b
    rst $28
    rst $28
    rst $28
    rst $28
    jp hl


    ld a, [de]
    inc l
    rst $28
    ld h, $2e
    inc e
    ld hl, $1aef
    inc l
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    add hl, hl
    jr z, jr_01b_5d0b

    inc l
    ld [hl+], a

jr_01b_5ce1:
    dec de
    dec h
    ld e, $ef
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    jp hl


    ld [$ef2d], sp
    ld [hl+], a
    inc l
    rst $28
    add hl, sp
    inc [hl]
    inc [hl]
    ld b, $4c
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    ld d, $28
    ld l, $25
    dec e
    rst $28
    ld [hl-], a
    jr z, jr_01b_5d33

    rst $28
    dec h
    ld [hl+], a
    inc h
    ld e, $ef

jr_01b_5d0b:
    jp hl


    ld [de], a
    ld e, $1e
    rst $28
    ld [hl-], a
    jr z, jr_01b_5d41

    rst $28
    dec h
    ld a, [de]
    dec l
    ld e, $2b
    ld c, h
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    inc de
    ld hl, $2d1a
    rst $28
    jr nc, jr_01b_5d55

jr_01b_5d33:
    dec h
    dec h
    rst $28
    add hl, hl
    dec hl
    ld e, $2f
    ld e, $44
    daa
    dec l
    rst $28
    ld a, [de]
    rst $28

jr_01b_5d41:
    inc e
    jr z, jr_01b_5d74

    rst $28
    rra
    dec hl
    jr z, jr_01b_5d6f

    rst $28
    rst $28
    jp hl


    jr nz, jr_01b_5d6c

    dec l
    dec l
    ld [hl+], a
    daa
    jr nz, @-$0f

    inc l

jr_01b_5d55:
    ld [hl+], a
    inc e
    inc h
    rst $28
    rra
    jr z, jr_01b_5d87

    scf
    inc [hl]
    dec e
    ld a, [de]
    ld [hl-], a
    inc l
    ld c, h
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    jp hl


jr_01b_5d6c:
    ld [$ef2d], sp

jr_01b_5d6f:
    ld [hl+], a
    inc l
    rst $28
    ld [hl], $34

jr_01b_5d74:
    inc [hl]
    inc [hl]
    ld b, $4c
    rst $28
    rst $28
    rst $28
    rst $28
    ld d, $28

jr_01b_5d7e:
    ld l, $25
    dec e
    rst $28
    ld [hl-], a
    jr z, jr_01b_5db3

    rst $28
    dec h

jr_01b_5d87:
    ld [hl+], a
    inc h
    ld e, $ef
    jp hl


    dec l
    jr z, jr_01b_5d7e

    dec de
    ld l, $32
    rst $28
    ld [hl+], a
    dec l
    ld b, c
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    ld bc, $322e
    rst $28
    rst $28
    rst $28
    inc bc
    jr z, @+$29

    ld c, e
    dec l
    rst $28
    ld bc, $322e
    rlca
    jr z, jr_01b_5dd4

    dec e
    rst $28
    jr z, @+$29

jr_01b_5db3:
    adc [hl]
    rst $28
    ld [$1cef], sp
    ld a, [de]
    daa
    ld c, e
    dec l
    inc l
    ld e, $25
    dec h
    rst $28
    ld [hl-], a
    jr z, @+$30

    rst $28
    ld a, [de]
    rst $28
    inc e
    jr z, jr_01b_5dfa

    ld c, h
    jp hl


    jr jr_01b_5df6

    ld l, $ef
    dec e
    jr z, jr_01b_5dfa

    ld c, e

jr_01b_5dd4:
    dec l
    rst $28
    ld hl, $2f1a
    ld e, $ef
    rst $28
    ld e, $27
    jr z, @+$30

    jr nz, jr_01b_5e03

    rst $28
    jr nz, jr_01b_5e10

    ld a, [de]
    inc l
    inc l
    rst $28
    rst $28
    rst $28
    jp hl


    add hl, hl
    dec h
    ld a, [de]
    daa
    dec l
    ld e, $1d
    ld c, h
    rst $28
    rrca

jr_01b_5df6:
    dec h
    ld e, $1a
    inc l

jr_01b_5dfa:
    ld e, $ef
    inc e
    jr z, jr_01b_5e25

    ld e, $ef
    dec de
    ld a, [de]

jr_01b_5e03:
    inc e
    inc h
    rst $28
    jr nc, jr_01b_5e29

    ld e, $27
    rst $28
    jp hl


    ld [hl-], a
    jr z, jr_01b_5e3d

    rst $28

jr_01b_5e10:
    add hl, hl
    dec h
    ld a, [de]
    daa
    dec l
    rst $28
    ld h, $28
    dec hl
    ld e, $ef
    rst $28
    jr nz, jr_01b_5e49

    ld a, [de]
    inc l
    inc l
    ld c, h
    rst $28
    rst $28
    rst $28

jr_01b_5e25:
    rst $28
    rst $28
    rst $28
    rst $28

jr_01b_5e29:
    rst $28
    rst $28
    rst $28
    rlca
    jr z, jr_01b_5e54

    dec e
    rst $28
    jr z, jr_01b_5e5a

    adc [hl]
    rst $28
    ld [$1cef], sp
    ld a, [de]
    daa
    ld c, e
    dec l
    inc l

jr_01b_5e3d:
    ld e, $25
    dec h
    rst $28
    ld [hl-], a
    jr z, jr_01b_5e72

    rst $28
    ld a, [de]
    rst $28
    rst $28
    rst $28

jr_01b_5e49:
    rst $28
    rst $28
    jp hl


    inc e
    ld hl, $1c22
    inc h
    ld e, $27
    ld c, h

jr_01b_5e54:
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28

jr_01b_5e5a:
    rst $28
    rst $28
    jr jr_01b_5e86

    ld l, $ef
    dec e
    jr z, @-$0f

    daa
    jr z, jr_01b_5e93

    rst $28
    ld hl, $2f1a
    ld e, $e9
    ld e, $27
    jr z, jr_01b_5e9e

    jr nz, jr_01b_5e93

jr_01b_5e72:
    rst $28
    jr nz, jr_01b_5ea0

    ld a, [de]
    inc l
    inc l
    rst $28
    rst $28
    rst $28
    rst $28
    add hl, hl
    dec h
    ld a, [de]
    daa
    dec l
    ld e, $1d
    ld c, h
    rst $28
    rst $28

jr_01b_5e86:
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    jp hl


    rrca
    dec h
    ld e, $1a
    inc l
    ld e, $ef

jr_01b_5e93:
    inc e
    jr z, jr_01b_5ebc

    ld e, $ef
    dec de
    ld a, [de]
    inc e
    inc h
    jr nc, jr_01b_5ebf

jr_01b_5e9e:
    ld e, $27

jr_01b_5ea0:
    rst $28
    ld [hl-], a
    jr z, @+$30

    rst $28
    add hl, hl
    dec h
    ld a, [de]
    daa
    dec l
    rst $28
    jp hl


    ld h, $28
    dec hl
    ld e, $ef
    jr nz, @+$2d

    ld a, [de]
    inc l
    inc l
    ld c, h
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28

jr_01b_5ebc:
    rst $28
    rst $28
    rst $28

jr_01b_5ebf:
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rrca
    dec h
    ld e, $1a
    inc l
    ld e, $ef
    daa
    ld a, [de]
    ld h, $1e
    rst $28
    dec l
    ld hl, $ef1e
    inc e
    jr z, jr_01b_5f0f

    ld c, h
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    jp hl


    rst $28
    rst $28
    rst $28
    rst $28
    adc [hl]
    rst $28
    ld [hl+], a
    inc l
    rst $28
    ld a, [de]
    rst $28
    jr nz, jr_01b_5f21

    jr z, jr_01b_5f18

    rst $28
    daa
    ld a, [de]
    ld h, $1e
    ld c, h
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    jp hl


    rlca
    ld e, $2b

jr_01b_5f0f:
    ld e, $8e
    rst $28
    dec l
    ld a, [de]
    inc h
    ld e, $ef
    dec l

jr_01b_5f18:
    ld hl, $2c22
    rst $28
    inc e
    jr z, jr_01b_5f4f

    rst $28
    dec de

jr_01b_5f21:
    ld e, $25
    dec h
    rst $28
    ld a, [de]
    inc l
    rst $28
    ld a, [de]
    rst $28
    rst $28
    jp hl


    jr nz, jr_01b_5f50

    rra
    dec l
    ld c, h
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    jp hl


    dec c
    jr z, jr_01b_5f7f

jr_01b_5f4f:
    rst $28

jr_01b_5f50:
    ld [$30ef], sp

jr_01b_5f53:
    ld [hl+], a
    dec h
    dec h
    rst $28
    dec l
    ld a, [de]
    inc h
    ld e, $ef
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    dec l
    jr z, jr_01b_5f53

    ld [hl-], a
    jr z, jr_01b_5f95

    dec hl
    rst $28
    rst $28
    rst $28
    jp hl


    dec de
    ld a, [de]
    dec hl
    daa
    ld c, h
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28

jr_01b_5f7f:
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    ld d, $28
    ld l, $25
    dec e
    rst $28
    ld [hl-], a

jr_01b_5f93:
    jr z, jr_01b_5fc3

jr_01b_5f95:
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    dec h
    ld [hl+], a
    inc h
    ld e, $ef
    dec l
    jr z, jr_01b_5f93

    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    jp hl


    inc l
    ld e, $25
    dec h
    rst $28
    ld a, [de]
    rst $28
    inc e
    jr z, jr_01b_5fe6

    ld b, c
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    jr jr_01b_5fdd

    inc l
    rst $28
    rst $28
    rst $28

jr_01b_5fc3:
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    dec c
    jr z, jr_01b_5fe3

    ld hl, $1c22
    ld hl, $1cef
    jr z, jr_01b_6005

    ld b, c
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    ld [bc], a

jr_01b_5fdd:
    ld hl, $2828
    inc l
    ld e, $ef

jr_01b_5fe3:
    ld a, [de]
    rst $28
    daa

jr_01b_5fe6:
    ld a, [de]
    ld h, $1e
    rst $28
    rst $28
    jp hl


    ld a, [de]
    daa
    dec e
    rst $28
    add hl, hl
    dec hl
    ld e, $2c
    inc l
    rst $28
    dec l
    ld hl, $ef1e
    rst $28
    rst $28
    nop
    rst $28
    dec de
    ld l, $2d
    dec l
    jr z, jr_01b_602b

    ld c, h

jr_01b_6005:
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    jp hl


    ld [$30ef], sp
    ld [hl+], a
    dec h
    dec h
    rst $28
    dec l
    ld a, [de]
    inc h
    ld e, $ef
    dec l
    ld hl, $ef1e
    inc e
    jr z, jr_01b_604f

    rst $28
    rra
    dec hl
    jr z, jr_01b_604a

    rst $28
    dec l
    ld hl, $ef1e
    rst $28
    rst $28

jr_01b_602b:
    jp hl


    dec de
    ld a, [de]
    dec hl
    daa
    ld c, h
    rst $28
    ld bc, $2d2e
    rst $28
    dec e
    jr z, jr_01b_6060

    ld c, e
    dec l
    rst $28
    dec h
    ld e, $2d
    rst $28
    ld h, $1e
    rst $28
    dec de
    ld l, $32
    rst $28
    rst $28
    rst $28
    rst $28

jr_01b_604a:
    rst $28
    jp hl


    ld a, [de]
    daa
    ld [hl-], a

jr_01b_604f:
    ld h, $28
    dec hl
    ld e, $4c
    rst $28

Call_01b_6055:
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28

jr_01b_6060:
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    ld [$30ef], sp
    ld [hl+], a
    dec h
    dec h
    rst $28
    dec l
    ld a, [de]
    inc h

jr_01b_6076:
    ld e, $ef
    dec l
    ld hl, $ef1e
    inc e
    ld hl, $1c22
    inc h
    ld e, $27
    rst $28
    dec l
    jr z, jr_01b_6076

    ld [hl-], a
    jr z, jr_01b_60b8

    dec hl
    jp hl


    inc e
    ld hl, $1c22
    inc h
    ld e, $27
    rst $28
    inc e
    jr z, jr_01b_60bf

    add hl, hl
    ld c, h
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    ld d, $28

jr_01b_60ae:
    ld l, $25
    dec e
    rst $28
    ld [hl-], a
    jr z, jr_01b_60e3

    rst $28
    dec h
    ld [hl+], a

jr_01b_60b8:
    inc h
    ld e, $ef
    rst $28
    dec l
    jr z, jr_01b_60ae

jr_01b_60bf:
    inc l
    ld e, $25
    dec h
    rst $28
    ld a, [de]
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    jp hl


    inc e
    ld hl, $1c22
    inc h
    ld e, $27
    ld b, c
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    jr jr_01b_60fd

    inc l
    rst $28
    rst $28
    rst $28

jr_01b_60e3:
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    dec c
    jr z, jr_01b_6103

    ld hl, $1c22
    ld hl, $1cef
    ld hl, $1c22
    inc h
    ld e, $27
    ld b, c
    rst $28
    rst $28
    rrca

jr_01b_60fd:
    dec h
    ld e, $1a
    inc l
    ld e, $ef

jr_01b_6103:
    inc l
    ld e, $25
    ld e, $1c
    dec l
    rst $28
    ld a, [de]
    jp hl


    daa
    ld l, $26
    dec de
    ld e, $2b
    rst $28
    ld a, [de]
    daa
    dec e
    rst $28
    add hl, hl
    dec hl
    ld e, $2c
    inc l
    dec l
    ld hl, $ef1e
    nop
    rst $28
    dec de
    ld l, $2d
    dec l
    jr z, @+$29

    ld c, h
    rst $28
    rst $28
    jp hl


    ld [$30ef], sp
    ld [hl+], a
    dec h
    dec h
    rst $28
    dec l
    ld a, [de]
    inc h
    ld e, $ef
    dec l
    ld hl, $ef1e
    inc e
    ld hl, $1c22
    inc h
    ld e, $27
    rst $28
    rra
    dec hl
    jr z, jr_01b_616e

    rst $28
    rst $28
    rst $28
    jp hl


    dec l
    ld hl, $ef1e
    inc e
    ld hl, $1c22
    inc h
    ld e, $27
    rst $28
    inc e
    jr z, jr_01b_6183

    add hl, hl
    ld bc, $2d2e
    rst $28
    dec e
    jr z, jr_01b_618a

    ld c, e
    dec l
    rst $28
    dec h
    ld e, $2d
    rst $28
    rst $28
    jp hl


    ld h, $1e

jr_01b_616e:
    rst $28
    dec de
    ld l, $32
    rst $28
    ld a, [de]
    daa
    ld [hl-], a
    ld h, $28
    dec hl
    ld e, $4c
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28

jr_01b_6183:
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28

jr_01b_618a:
    rst $28
    rst $28
    ld [de], a
    ld e, $25
    dec h
    ld [hl+], a
    daa
    jr nz, jr_01b_6183

    rrca
    dec hl
    ld [hl+], a
    inc e
    ld e, $ef
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    ld b, $4c
    rst $28
    rst $28
    rst $28

jr_01b_61ac:
    ld [$1cef], sp
    ld a, [de]
    daa
    ld c, e
    dec l
    rst $28
    dec de
    ld l, $32
    rst $28

jr_01b_61b8:
    ld [hl+], a
    dec l
    ld c, h
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    ld [$30ef], sp
    ld [hl+], a
    dec h
    dec h
    rst $28
    jr nz, jr_01b_61f7

    cpl
    ld e, $ef
    ld [hl-], a
    jr z, jr_01b_6209

    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    ld b, $ef
    rra
    jr z, $6211

jr_01b_61e6:
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    jp hl


    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28

jr_01b_61f7:
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    ld [de], a
    ld e, $25
    dec h
    rst $28

jr_01b_6202:
    rst $28
    dec c
    jr z, @-$71

    ld [de], a
    ld e, $25

jr_01b_6209:
    dec h
    rst $28
    rst $28

Data_01b_620c:
    dw Village_TextWindowClear
    dw Label_01b_4113
    dw ChurchMariaText
    db $72, $CD, $20, $F4, $B8, $82, $CD, $04, $21, $40,
    db $72, $CD, $20, $80, $34, $40, $34, $41,
    dw Village_TextWindowClear
    db $21, $40,
    db $6C, $64, $20, $80,
    db $34, $40, $34, $41, 
    dw Village_TextWindowClear 
    db $21, $40, 
    db $8C, $64, $20, $80, 
    db $34, $40, $2D, $41,
    db $74, $44, $46, $62, $1E, $63, $2B, $64, $67, $63, 
    dw Village_TextWindowClear 
    db $21, $40, 
    dw PrayText
    db $20, $80, $34, $40, $34, $41, 
    dw Village_TextWindowClear 
    db $21, $40, $CC, $64, $20, $80, $34, $40,
    db $34, $41, 
    dw Village_TextWindowClear 
    db $21, $40, $EC, $64, $20, $80, $34, $40, $23, $45, $2A, $45,
    db $FF, $CA, $46, $73, $62, $DE, $62, $EC, $46, $0F, $99, $62, $7A, $62, 
    dw Village_TextWindowClear 
    db $21, $40, $6C, $68, $20, $80, $34, $40, $34, $41, 
    dw Village_TextWindowClear 
    db $21, $40, $8C, $68,
    db $20, $80, $34, $40, $23, $45, $2A, $45, $FF, $8F, $46, $24, $62, $07, $47,
    dw Village_TextWindowClear 
    db $21, $40, $6C, $67, $20, $80, $34, $40, $34, $41, 
    dw Village_TextWindowClear 
    db $21, $40, $8C,
    db $67, $20, $80, $34, $40, $34, $41, 
    dw Village_TextWindowClear 
    db $21, $40, $AC, $67, $20, $80, $34,
    db $40, $34, $41, 
    dw Village_TextWindowClear 
    db $21, $40, $CC, $67, $20, $80, $34, $40, $34, $41
    dw Village_TextWindowClear 
    db $21, $40, $EC, $67, $20, $80, $34, $40, $23, $45, $2A, $45, $FF, $8F, $46,
    db $24, $62, $EC, $46, $1F, $E5, $62, $7A, $62, $2A, $47, 
    dw Village_TextWindowClear 
    db $21, $40, $6C,
    db $67, $20, $80, $34, $40, $34, $41, 
    dw Village_TextWindowClear 
    db $21, $40, $0C, $68, $20, $80, $34,
    db $40, $34, $41, 
    dw Village_TextWindowClear 
    db $21, $40, $2C, $68, $20, $80, $34, $40, $34, $41, $E6,
    db $40, $21, $40, $4C, $68, $20, $80, $34, $40, $23, $45, $2A, $45, $FF, $8F, $46,
    db $24, $62, 
    dw Village_TextWindowClear
    db $21, $40, 
    dw AskForFortuneText
    db $20, $80, $34, $40, $34, $41,
    dw Village_TextWindowClear
    db $21, $40,
    db $2C, $65, $20, $80, $34, $40, $34, $41, 
    dw Village_TextWindowClear 
    db $13, $41, $4C, $65,
    db $72, $CD, $20, $F4, $B8, $79, $CD, $04, $21, $40, $72, $CD, $20, $80, $34, $40,
    db $34, $41, 
    dw Village_TextWindowClear
    db $21, $40, $6C, $65, $20, $80, $34, $40, $34, $41, $23, $45,
    db $2A, $45, $80, $45, $45, $B2, $63, $DF, $63, $05, $64, 
    dw Village_TextWindowClear 
    db $21, $40, $EC,
    db $66, $20, $80, $34, $40, $34, $41, 
    dw Village_TextWindowClear 
    db $21, $40, $0C, $67, $20, $80, $34,
    db $40, $34, $41, 
    dw Village_TextWindowClear 
    db $21, $40, $2C, $67, $20, $80, $34, $40, $34, $41, $79,
    db $47, 
    dw Village_TextWindowClear 
    db $85, $47, $21, $40, $72, $CD, $20, $80, $34, $40, $97, $47, $8D, $63,
    db $EB, $47, 
    dw Village_TextWindowClear 
    db $21, $40, $4C, $67, $20, $80, $34, $40, $23, $45, $2A, $45,
    db $FF, $8F, $46, $24, $62
    dw Village_TextWindowClear 
    dw Label_01b_4021
    dw GoodFortuneText
    db $20, $80, $34, $40, $34, $41, 
    dw Village_TextWindowClear
    db $21, $40
    db $AC, $65, $20, $80, $34, $40, $34, $41, $70, $45
    dw Village_TextWindowClear 
    db $21, $40, $CC, $65, $20, $80, $34, $40, $23, $45, $2A, $45, $C8, $8F, $46,
    db $24, $62
    dw Village_TextWindowClear 
    db $21, $40, 
    dw NormalFortune1Text
    db $20, $80, $34, $40, $34, $41, 
    dw Village_TextWindowClear
    db $21, $40
    dw NormalFortune2Text
    db $20, $80, $34, $40, $34, $41, $8F, $45, 
    dw Village_TextWindowClear
    dw Label_01b_4021
    dw NormalFortune3Text
    db $20, $80, $8F, $46, $D4, $63, 
    dw Village_TextWindowClear
    db $21, $40, 
    dw BadFortune1Text
    db $20, $80, $34, $40, $34, $41, 
    dw Village_TextWindowClear
    db $21, $40
    dw BadFortune2Text 
    db $20, $80, $34, $40, $34, $41, $92, $45
    dw Village_TextWindowClear 
    db $21, $40, $8C, $66, $20, $80, $8F, $46, $D4, $63
    dw Village_TextWindowClear 
    db $21, $40, $AC, $66, $20, $80, $34, $40, $34, $41
    dw Village_TextWindowClear 
    db $21, $40, $CC, $66,
    db $20, $80, $34, $40, $23, $45, $2A, $45, $80, $3D, $45, $8F, $46, $48, $64, 



ChurchMariaText:: ; 1bx644c
    db "Good Afternoon  "
    db "    .          ▽"
    db "How can I help  "
    db "you today?     ▽"
    db " Pray           "
    db " Fortune Telling"

PrayText:: ; 1bx64ac
    db "You really have "
    db "a righteous    ▽"
    db "heart and soul. "
    db "Please come in ▽"
    db "and join        "
    db "the service.    "

AskForFortuneText:: ; 1bx650c
    db "Would you like  "
    db "me to tell you ▽"
    db "your fortune?   "
    db "I am happy to  ▽"
    db "do it.     ,    "
    db "your fortune   ▽"
    db "today is ....   "
    db "               ▽"

GoodFortuneText:: ; 1bx658c
    db "Your fortune    "
    db "looks great!   ▽"
    db "I feel something"
    db "good will      ▽"
    db "happen to you.  "
    db "                "

NormalFortune1Text:: ; 1bx65ec
    db "Your fortune    "
    db "looks normal.  ▽"
NormalFortune2Text:: ; 1bx660c
    db "I hope          "
    db "everything     ▽"
NormalFortune3Text:: ; 1bx662c
    db "stays the same  "
    db "for you.        "

BadFortune1Text:: ; 1bx664c
    db "Your fortune    "
    db "doesn't look   ▽"
BadFortune2Text:: ; 1bx666c
    db "good I hope     "
    db "something good ▽"
    db "will happen for "
    db "you tomorrow.   "

    db "Wishing you     "
    db "good luck and  ▽"
    db "good fortune.   "
    db "                "

    db "Would you like  "
    db "to listen to   ▽"
    db "the organ?      "
    db "It will put you▽"
    db "in a good mood. "
    db "               ▽"
    db "Please come     "
    db "again.         ▽"

    db "I have heard and"
    db "understood your▽"
    db "serious thoughts"
    db "Now, please go ▽"
    db "to your barn.   "
    db "               ▽"
    db "You will see a  "
    db "miracle there  ▽"
    db "by the          "
    db "Harvest Goddess."
    db "serious thoughts"
    db "The Harvest    ▽"
    db "Goddess will    "
    db "bless your cow.▽"
    db "Your cow is now "
    db "protected!!     "

PrayersWillBeHeardText::
    db "Some day your   "
    db "prayers will be▽"
    db "heard by the    "
    db "Harvest Goddess."
    
    db $E6, $40, $13, $41, $88, $6A, $72, $CD, $20, $F4, $B8, $77, $CD, $04, $21, $40,
    db $72, $CD, $20, $80, $34, $40, $34, $41, $E6, $40, $21, $40, $A8, $6A, $20, $80,
    db $34, $40, $34, $41, $3D, $45, $8F, $46, $D2, $68, $E6, $40, $21, $40, $C8, $6A,
    db $20, $80, $34, $40, $34, $41, $E6, $40, $21, $40, $E8, $6A, $20, $80, $34, $40,
    db $34, $41, $E6, $40, $21, $40, $08, $6B, $20, $80, $34, $40, $34, $41, $E6, $40,
    db $21, $40, $28, $6B, $20, $80, $34, $40, $34, $41, $E6, $40, $21, $40, $48, $6B,
    db $20, $80, $34, $40, $2D, $41, $68, $41, $18, $69, $70, $6A, $85, $43, $2C, $01,
    db $2B, $6A, $D6, $45, $02, $8F, $46, $58, $6A, $E6, $40, $21, $40, $E8, $6B, $20,
    db $80, $34, $40, $34, $41, $E6, $40, $21, $40, $08, $6C, $20, $80, $34, $40, $34,
    db $41, $E6, $40, $21, $40, $28, $6C, $20, $80, $34, $40, $34, $41, $E6, $40, $21,
    db $40, $48, $6C, $20, $80, $34, $40, $2D, $41, $68, $41, $5B, $69, $70, $6A, $85,
    db $43, $F4, $01, $2B, $6A, $D6, $45, $01, $8F, $46, $58, $6A, $E6, $40, $21, $40,
    db $68, $6C, $20, $80, $34, $40, $34, $41, $E6, $40, $21, $40, $88, $6C, $20, $80,
    db $34, $40, $34, $41, $E6, $40, $21, $40, $A8, $6C, $20, $80, $34, $40, $2D, $41,
    db $68, $41, $92, $69, $70, $6A, $85, $43, $2C, $01, $2B, $6A, $2D, $44, $C5, $B8,
    db $0A, $8F, $46, $58, $6A, $E6, $40, $21, $40, $C8, $6C, $20, $80, $34, $40, $34,
    db $41, $E6, $40, $21, $40, $E8, $6C, $20, $80, $34, $40, $34, $41, $E6, $40, $21,
    db $40, $08, $6D, $20, $80, $34, $40, $34, $41, $E6, $40, $21, $40, $28, $6D, $20,
    db $80, $34, $40, $2D, $41, $68, $41, $D7, $69, $70, $6A, $85, $43, $C8, $00, $2B,
    db $6A, $2D, $44, $C6, $B8, $0A, $8F, $46, $58, $6A, $E6, $40, $21, $40, $48, $6D,
    db $20, $80, $34, $40, $34, $41, $E6, $40, $21, $40, $68, $6D, $20, $80, $34, $40,
    db $34, $41, $E6, $40, $21, $40, $88, $6D, $20, $80, $34, $40, $34, $41, $E6, $40,
    db $21, $40, $A8, $6D, $20, $80, $34, $40, $2D, $41, $68, $41, $1C, $6A, $70, $6A,
    db $85, $43, $64, $00, $2B, $6A, $2D, $44, $C7, $B8, $0A, $8F, $46, $58, $6A, $E6,
    db $40, $21, $40, $C8, $6D, $20, $80, $34, $40, $34, $41, $E6, $40, $21, $40, $3C,
    db $55, $20, $80, $34, $40, $23, $45, $2A, $45, $FF, $3D, $45, $8F, $46, $48, $6A,
    db $E6, $40, $21, $40, $E8, $6D, $20, $80, $8F, $46, $3F, $6A, $E6, $40, $21, $40,
    db $68, $6B, $20, $80, $34, $40, $34, $41, $E6, $40, $21, $40, $88, $6B, $20, $80,
    db $8F, $46, $3F, $6A, $E6, $40, $21, $40, $A8, $6B, $20, $80, $34, $40, $34, $41,
    db $E6, $40, $21, $40, $C8, $6B, $20, $80, $8F, $46, $3F, $6A, $00, $21, $21, $8E,
    db $EF, $EF, $EF, $EF, $EF, $4C, $EF, $EF, $EF, $EF, $EF, $EF, $16, $28, $2E, $25,
    db $1D, $EF, $32, $28, $2E, $EF, $25, $22, $24, $1E, $EF, $E9, $2D, $28, $EF, $21,
    db $1A, $2F, $1E, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $2C, $28, $26, $1E,
    db $2D, $21, $22, $27, $20, $41, $EF, $EF, $EF, $EF, $EF, $E9, $13, $21, $1A, $2D,
    db $4B, $2C, $EF, $1A, $EF, $02, $1A, $24, $1E, $4C, $EF, $EF, $08, $2D, $EF, $22,
    db $2C, $EF, $1A, $EF, $25, $22, $2D, $2D, $25, $1E, $EF, $E9, $2C, $30, $1E, $1E,
    db $2D, $8E, $EF, $1B, $2E, $2D, $EF, $22, $2D, $EF, $22, $2C, $2F, $1E, $2B, $32,
    db $EF, $1D, $1E, $25, $22, $1C, $22, $28, $2E, $2C, $4C, $E9, $16, $21, $1E, $27,
    db $EF, $32, $28, $2E, $EF, $1E, $1A, $2D, $EF, $2D, $21, $1E, $1C, $1A, $24, $1E,
    db $8E, $EF, $22, $2D, $EF, $30, $22, $25, $25, $EF, $EF, $E9, $26, $1A, $24, $1E,
    db $EF, $32, $28, $2E, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $2B, $1E, $1F, $2B,
    db $1E, $2C, $21, $1E, $1D, $4C, $EF, $EF, $EF, $EF, $EF, $E9, $13, $21, $1E, $EF,
    db $1C, $28, $2C, $2D, $EF, $22, $2C, $EF, $37, $34, $34, $06, $EF, $01, $2E, $32,
    db $EF, $EF, $EF, $03, $28, $27, $4B, $2D, $EF, $01, $2E, $32, $13, $21, $1A, $27,
    db $24, $EF, $32, $28, $2E, $EF, $1F, $28, $2B, $EF, $EF, $EF, $30, $1A, $22, $2D,
    db $22, $27, $20, $4C, $4C, $4C, $EF, $EF, $EF, $EF, $EF, $E9, $07, $1E, $2B, $1E,
    db $EF, $32, $28, $2E, $EF, $20, $28, $4C, $EF, $EF, $EF, $EF, $04, $27, $23, $28,
    db $32, $40, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $18, $28, $2E, $EF,
    db $1D, $28, $27, $4B, $2D, $EF, $30, $1A, $27, $2D, $EF, $EF, $2D, $28, $EF, $1B,
    db $2E, $32, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $E9, $1A, $27, $32, $2D,
    db $21, $22, $27, $20, $41, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $0E, $21, $8E, $EF,
    db $08, $EF, $2C, $1E, $1E, $4C, $4C, $4C, $EF, $EF, $EF, $EF, $13, $21, $1A, $2D,
    db $53, $EF, $1A, $EF, $0B, $2E, $27, $1C, $21, $EF, $EF, $EF, $01, $28, $31, $4C,
    db $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $E9, $08, $2D, $EF, $22,
    db $2C, $EF, $2F, $1E, $2B, $32, $EF, $2D, $1A, $2C, $2D, $32, $1A, $27, $1D, $EF,
    db $22, $2D, $EF, $30, $22, $25, $25, $EF, $EF, $EF, $EF, $E9, $2B, $1E, $1C, $28,
    db $2F, $1E, $2B, $EF, $32, $28, $2E, $2B, $EF, $EF, $EF, $EF, $21, $1E, $1A, $25,
    db $2D, $21, $4C, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $E9, $08, $2D, $EF, $22,
    db $2C, $EF, $39, $34, $34, $06, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $01, $2E, $32,
    db $EF, $EF, $EF, $03, $28, $27, $4B, $2D, $EF, $01, $2E, $32, $13, $21, $1A, $2D,
    db $4B, $2C, $EF, $1A, $EF, $02, $2B, $28, $22, $2C, $2C, $44, $1A, $27, $2D, $EF,
    db $30, $21, $22, $1C, $21, $EF, $08, $EF, $EF, $EF, $EF, $E9, 
    db "handmade. The   "
    db "cost is 300G   ▽"
    db "for 10 of them. "
    db " Buy   Don't Buy"

RiceBallText::
    db "That's a Rice    "
    db "Ball which was ▽"
    db "just prepared   "
    db "from a famous  ▽"
    db "brand of rice.  "
    db "It is 200G for ▽"
    db "10 of them.     "
    db " Buy   Don't Buy"

MeatDumplingText::
    db "That's a Meat Du-"
    db "mpling. They   ▽"
    db "were just made, "
    db "so they are    ▽"
    db "very hot and fr-"
    db "esh. It is 100G▽"
    db "for 10 of them. "
    db " Buy   Don't buy"

DeclinePurchaseText::
    db "Oh, I'm sorry.  "
    db "               ▽"
    db "Take care and   "
    db "thank you!!     "



 
    db $E6, $40, $13, $41, $D1, $71, $72, $CD, $20, $F4, $B8, $82, $CD, $04, $21, $40,
    db $72, $CD, $20, $80, $34, $40, $34, $41, $3D, $45, $8F, $46, $22, $6E, $E6, $40,
    db $21, $40, $F1, $71, $20, $80, $34, $40, $34, $41, $E6, $40, $21, $40, $11, $72,
    db $20, $80, $34, $40, $34, $41, $E6, $40, $21, $40, $31, $72, $20, $80, $34, $40,
    db $34, $41, $E6, $40, $21, $40, $D1, $76, $20, $80, $34, $40, $34, $41, $E6, $40,
    db $21, $40, $F1, $76, $20, $80, $34, $40, $F7, $41, $D2, $B8, $78, $00, $18, $42,
    db $6C, $6E, $B9, $71, $A7, $43, $37, $71, $D2, $B8, $05, $44, $B5, $B8, $04, $8F,
    db $46, $58, $71, $E6, $40, $21, $40, $F1, $72, $20, $80, $34, $40, $34, $41, $E6,
    db $40, $21, $40, $11, $73, $20, $80, $34, $40, $34, $41, $E6, $40, $21, $40, $31,
    db $73, $20, $80, $34, $40, $34, $41, $E6, $40, $21, $40, $D1, $76, $20, $80, $34,
    db $40, $34, $41, $E6, $40, $21, $40, $F1, $76, $20, $80, $34, $40, $F7, $41, $D3,
    db $B8, $96, $00, $18, $42, $C1, $6E, $B9, $71, $A7, $43, $37, $71, $D3, $B8, $05,
    db $44, $B6, $B8, $05, $8F, $46, $58, $71, $E6, $40, $21, $40, $51, $73, $20, $80,
    db $34, $40, $34, $41, $E6, $40, $21, $40, $71, $73, $20, $80, $34, $40, $34, $41,
    db $E6, $40, $21, $40, $91, $73, $20, $80, $34, $40, $34, $41, $E6, $40, $21, $40,
db $D1, $76,
db $20, $80, $34, $40, $34, $41, $E6, $40, $21, $40, $F1, $76, $20, $80, $34, $40,
    db $F7, $41, $D4, $B8, $C8, $00, $18, $42, $16, $6F, $B9, $71, $A7, $43, $37, $71,
    db $D4, $B8, $05, $44, $B7, $B8, $06, $8F, $46, $58, $71, $E6, $40, $21, $40, $B1,
    db $73, $20, $80, $34, $40, $34, $41, $E6, $40, $21, $40, $D1, $73, $20, $80, $34,
    db $40, $34, $41, $E6, $40, $21, $40, $F1, $73, $20, $80, $34, $40, $34, $41, $E6,
    db $40, $21, $40, $D1, $76, $20, $80, $34, $40, $34, $41, $E6, $40, $21, $40, $F1,
    db $76, $20, $80, $34, $40, $F7, $41, $D5, $B8, $2C, $01, $18, $42, $6B, $6F, $B9,
    db $71, $A7, $43, $37, $71, $D5, $B8, $05, $44, $B8, $B8, $07, $8F, $46, $58, $71,
    db $E6, $40, $21, $40, $11, $74, $20, $80, $34, $40, $34, $41, $E6, $40, $21, $40,
    db $31, $74, $20, $80, $34, $40, $34, $41, $E6, $40, $21, $40, $51, $74, $20, $80,
    db $34, $40, $34, $41, $E6, $40, $21, $40, $D1, $76, $20, $80, $34, $40, $34, $41,
    db $E6, $40, $21, $40, $F1, $76, $20, $80, $34, $40, $F7, $41, $D6, $B8, $96, $00,
    db $18, $42, $C0, $6F, $B9, $71, $A7, $43, $37, $71, $D6, $B8, $05, $44, $B9, $B8,
    db $4E, $8F, $46, $58, $71, $E6, $40, $21, $40, $71, $74, $20, $80, $34, $40, $34,
    db $41, $E6, $40, $21, $40, $91, $74, $20, $80, $34, $40, $34, $41, $E6, $40, $21,
    db $40, $B1, $74, $20, $80, $34, $40, $34, $41, $E6, $40, $21, $40, $D1, $76, $20,
    db $80, $34, $40, $34, $41, $E6, $40, $21, $40, $F1, $76, $20, $80, $34, $40, $F7,
    db $41, $D7, $B8, $C8, $00, $18, $42, $15, $70, $B9, $71, $A7, $43, $37, $71, $D7,
    db $B8, $05, $44, $BA, $B8, $4F, $8F, $46, $58, $71, $E6, $40, $21, $40, $D1, $74,
    db $20, $80, $34, $40, $34, $41, $E6, $40, $21, $40, $F1, $74, $20, $80, $34, $40,
    db $34, $41, $E6, $40, $21, $40, $11, $75, $20, $80, $34, $40, $34, $41, $E6, $40,
    db $21, $40, $D1, $76, $20, $80, $34, $40, $34, $41, $E6, $40, $21, $40, $F1, $76,
    db $20, $80, $34, $40, $F7, $41, $D8, $B8, $2C, $01, $18, $42, $6A, $70, $B9, $71,
    db $A7, $43, $37, $71, $D8, $B8, $05, $44, $BB, $B8, $50, $8F, $46, $58, $71, $E6,
    db $40, $21, $40, $31, $75, $20, $80, $34, $40, $34, $41, $E6, $40, $21, $40, $51,
    db $75, $20, $80, $34, $40, $34, $41, $E6, $40, $21, $40, $71, $75, $20, $80, $34,
    db $40, $34, $41, $E6, $40, $21, $40, $91, $75, $20, $80, $34, $40, $34, $41, $E6,
    db $40, $21, $40, $D1, $76, $20, $80, $34, $40, $34, $41, $E6, $40, $21, $40, $F1,
    db $76, $20, $80, $34, $40, $F7, $41, $D9, $B8, $F4, $01, $18, $42, $CB, $70, $B9,
    db $71, $A7, $43, $37, $71, $D9, $B8, $05, $44, $BC, $B8, $51, $8F, $46, $58, $71,
    db $E6, $40, $21, $40, $B1, $75, $20, $80, $34, $40, $34, $41, $E6, $40, $21, $40,
    db $D1, $75, $20, $80, $34, $40, $34, $41, $E6, $40, $21, $40, $F1, $75, $20, $80,
    db $34, $40, $34, $41, $E6, $40, $21, $40, $D1, $76, $20, $80, $34, $40, $34, $41,
    db $E6, $40, $21, $40, $F1, $76, $20, $80, $34, $40, $F7, $41, $DA, $B8, $F4, $01,
    db $18, $42, $20, $71, $B9, $71, $A7, $43, $37, $71, $DA, $B8, $05, $44, $B4, $B8,
    db $03, $E6, $40, $21, $40, $11, $76, $20, $80, $8F, $46, $3F, $71, $E6, $40, $21,
    db $40, $31, $76, $20, $80, $34, $40, $23, $45, $2A, $45, $FF, $3D, $45, $8F, $46,
    db $48, $71, $E6, $40, $21, $40, $B1, $76, $20, $80, $8F, $46, $3F, $71, $E6, $40,
    db $21, $40, $51, $72, $20, $80, $34, $40, $34, $41, $E6, $40, $21, $40, $71, $72,
    db $20, $80, $34, $40, $34, $41, $E6, $40, $21, $40, $91, $72, $20, $80, $34, $40,
    db $D7, $43, $AE, $B8, $0A, $41, $71, $D7, $43, $AF, $B8, $12, $41, $71, $F1, $43,
    db $AE, $B8, $B9, $40, $AE, $9F, $11, $9A, $9F, $34, $41, $E6, $40, $21, $40, $51,
    db $76, $20, $80, $34, $40, $34, $41, $E6, $40, $21, $40, $71, $76, $20, $80, $34,
    db $40, $34, $41, $E6, $40, $21, $40, $91, $76, $20, $80, $8F, $46, $3F, $71, $E6,
    db $40, $21, $40, $B1, $72, $20, $80, $34, $40, $34, $41, $E6, $40, $21, $40, $D1,
    db $72, $20, $80, $8F, $46, $3F, $71, $16, $1E, $25, $1C, $28, $26, $1E, $8E, $EF,
    db $1C, $28, $26, $1E, $EF, $22, $27, $EF, $EF, $EF, $EF, $4C, $EF, $EF, $EF, $EF,
    db $EF, $EF, $EF, $EF, $EF, $EF, $E9, $13, $21, $28, $2C, $1E, $EF, $1A, $2B, $1E,
    db $EF, $13, $2E, $2B, $27, $22, $29, $12, $1E, $1E, $1D, $2C, $4C, $EF, $EF, $EF,
    db $EF, $EF, $EF, $EF, $EF, $EF, $E9, $13, $21, $1E, $32, $EF, $20, $2B, $28, $30,
    db $EF, $1F, $1A, $2C, $2D, $8E, $EF, $1B, $2E, $2D, $EF, $1A, $2B, $1E, $EF, $27,
    db $28, $2D, $EF, $EF, $EF, $EF, $E9, $30, $28, $2B, $2D, $21, $EF, $26, $2E, $1C,
    db $21, $4C, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF,
    db $EF, $EF, $EF, $EF, $EF, $EF, $EF, $13, $21, $1A, $27, $24, $EF, $32, $28, $2E,
    db $EF, $2F, $1E, $2B, $32, $EF, $EF, $26, $2E, $1C, $21, $4C, $EF, $EF, $EF, $EF,
    db $EF, $EF, $EF, $EF, $EF, $EF, $E9, $0F, $25, $1E, $1A, $2C, $1E, $EF, $26, $1A,
    db $24, $1E, $EF, $2C, $2E, $2B, $1E, $32, $28, $2E, $EF, $30, $1A, $2D, $1E, $2B,
    db $EF, $2D, $21, $1E, $26, $EF, $E9, $1E, $2F, $1E, $2B, $32, $1D, $1A, $32, $4C,
    db $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF,
    db $EF, $EF, $EF, $EF, $EF, $EF, $EF, $07, $2E, $21, $4C, $4C, $4C, $EF, $EF, $EF,
    db $EF, $EF, $EF, $EF, $EF, $EF, $EF, $18, $28, $2E, $EF, $1D, $28, $27, $4B, $2D,
    db $EF, $30, $1A, $27, $2D, $EF, $E9, $2D, $28, $EF, $1B, $2E, $32, $EF, $1A, $27,
    db $32, $2D, $21, $22, $27, $20, $41, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF,
    db $EF, $EF, $EF, $EF, $EF, $EF, $EF, $13, $21, $28, $2C, $1E, $EF, $1A, $2B, $1E,
    db $EF, $0F, $28, $2D, $1A, $2D, $28, $12, $1E, $1E, $1D, $2C, $4C, $EF, $EF, $EF,
    db $EF, $EF, $EF, $EF, $EF, $EF, $E9, $13, $21, $1E, $32, $EF, $20, $2B, $28, $30,
    db $EF, $1A, $EF, $EF, $EF, $EF, $EF, $25, $22, $2D, $2D, $25, $1E, $EF, $2C, $25,
    db $28, $30, $1E, $2B, $EF, $EF, $E9, $2D, $21, $1A, $27, $EF, $2D, $2E, $2B, $27,
    db $22, $29, $2C, $4C, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF,
    db $EF, $EF, $EF, $EF, $EF, $EF, $E9, $13, $21, $28, $2C, $1E, $EF, $1A, $2B, $1E,
    db $EF, $13, $28, $26, $1A, $2D, $28, $12, $1E, $1E, $1D, $2C, $4C, $EF, $08, $1F,
    db $EF, $32, $28, $2E, $EF, $EF, $E9, $30, $1A, $2D, $1E, $2B, $EF, $2D, $21, $1E,
    db $26, $EF, $EF, $EF, $EF, $EF, $EF, $1D, $2E, $2B, $22, $27, $20, $EF, $12, $2E,
    db $26, $26, $1E, $2B, $8E, $EF, $E9, $2D, $21, $1E, $32, $EF, $30, $22, $25, $25,
    db $EF, $24, $1E, $1E, $29, $EF, $EF, $20, $2B, $28, $30, $22, $27, $20, $4C, $EF,
    db $EF, $EF, $EF, $EF, $EF, $EF, $E9, $13, $21, $28, $2C, $1E, $EF, $1A, $2B, $1E,
    db $EF, $02, $28, $2B, $27, $EF, $EF, $12, $1E, $1E, $1D, $2C, $4C, $EF, $EF, $EF,
    db $EF, $EF, $EF, $EF, $EF, $EF, $E9, $13, $21, $1E, $32, $EF, $2B, $1E, $2A, $2E,
    db $22, $2B, $1E, $EF, $EF, $EF, $EF, $1A, $EF, $25, $28, $2D, $EF, $28, $1F, $EF,
    db $EF, $EF, $EF, $EF, $EF, $EF, $E9, $1A, $2D, $2D, $1E, $27, $2D, $22, $28, $27,
    db $8E, $EF, $1B, $2E, $2D, $EF, $EF, $1A, $2B, $1E, $EF, $1D, $1E, $25, $22, $1C,
    db $22, $28, $2E, $2C, $4C, $EF, $E9, $13, $21, $28, $2C, $1E, $EF, $1A, $2B, $1E,
    db $EF, $EF, $EF, $EF, $EF, $EF, $EF, $04, $20, $20, $29, $25, $1A, $27, $2D, $EF,
    db $12, $1E, $1E, $1D, $2C, $4C, $E9, $13, $21, $1E, $32, $EF, $20, $2B, $28, $30,
    db $EF, $1F, $1A, $2C, $2D, $8E, $EF, $1B, $2E, $2D, $EF, $1A, $2B, $1E, $EF, $27,
    db $28, $2D, $EF, $EF, $EF, $EF, $E9, $30, $28, $2B, $2D, $21, $EF, $26, $2E, $1C,
    db $21, $4C, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF,
    db $EF, $EF, $EF, $EF, $EF, $EF, $E9, $13, $21, $28, $2C, $1E, $EF, $1A, $2B, $1E,
    db $EF, $0F, $1E, $1A, $27, $2E, $2D, $12, $1E, $1E, $1D, $2C, $4C, $EF, $EF, $EF,
    db $EF, $EF, $EF, $EF, $EF, $EF, $E9, $13, $21, $1E, $32, $EF, $20, $2B, $28, $30,
    db $EF, $EF, $EF, $EF, $EF, $EF, $EF, $1A, $EF, $25, $22, $2D, $2D, $25, $1E, $EF,
    db $2C, $25, $28, $30, $1E, $2B, $E9, $2D, $21, $1A, $27, $EF, $1E, $20, $20, $29,
    db $25, $1A, $27, $2D, $2C, $4C, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF,
    db $EF, $EF, $EF, $EF, $EF, $EF, $E9, $13, $21, $28, $2C, $1E, $EF, $1A, $2B, $1E,
    db $EF, $02, $1A, $2B, $2B, $28, $2D, $12, $1E, $1E, $1D, $2C, $4C, $EF, $EF, $EF,
    db $EF, $EF, $EF, $EF, $EF, $EF, $E9, $13, $21, $1E, $32, $EF, $20, $2B, $28, $30,
    db $EF, $EF, $EF, $EF, $EF, $EF, $EF, $1A, $EF, $25, $22, $2D, $2D, $25, $1E, $EF,
    db $2C, $25, $28, $30, $1E, $2B, $E9, $2D, $21, $1A, $27, $EF, $1E, $20, $20, $29,
    db $25, $1A, $27, $2D, $2C, $4C, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF,
    db $EF, $EF, $EF, $EF, $EF, $EF, $E9, $13, $21, $28, $2C, $1E, $EF, $1A, $2B, $1E,
    db $EF, $01, $2B, $28, $1C, $1C, $44, $28, $25, $22, $EF, $12, $1E, $1E, $1D, $2C,
    db $4C, $EF, $EF, $EF, $EF, $EF, $E9, $13, $21, $1E, $32, $EF, $2B, $1E, $2A, $2E,
    db $22, $2B, $1E, $EF, $EF, $EF, $EF, $1A, $EF, $25, $28, $2D, $EF, $28, $1F, $EF,
    db $EF, $EF, $EF, $EF, $EF, $EF, $E9, $1A, $2D, $2D, $1E, $27, $2D, $22, $28, $27,
    db $8E, $EF, $1B, $2E, $2D, $EF, $EF, $32, $28, $2E, $EF, $1C, $1A, $27, $EF, $21,
    db $1A, $2B, $2F, $1E, $2C, $2D, $E9, $2D, $21, $1E, $26, $EF, $26, $1A, $27, $32,
    db $EF, $2D, $22, $26, $1E, $2C, $4C, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF,
    db $EF, $EF, $EF, $EF, $EF, $EF, $E9, $13, $21, $28, $2C, $1E, $EF, $1A, $2B, $1E,
    db $EF, $06, $2B, $1A, $2C, $2C, $EF, $12, $1E, $1E, $1D, $2C, $4C, $EF, $EF, $EF,
    db $EF, $EF, $EF, $EF, $EF, $EF, $E9, $14, $2C, $1E, $EF, $20, $2B, $1A, $2C, $2C,
    db $EF, $2D, $28, $EF, $EF, $EF, $EF, $1F, $1E, $1E, $1D, $EF, $32, $28, $2E, $2B,
    db $EF, $EF, $EF, $EF, $EF, $EF, $E9, $1A, $27, $22, $26, $1A, $25, $2C, $4C, $EF,
    db $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF,
    db $EF, $EF, $EF, $EF, $EF, $EF, $E9, $13, $21, $1A, $27, $24, $EF, $32, $28, $2E,
    db $EF, $2F, $1E, $2B, $32, $EF, $EF, $26, $2E, $1C, $21, $4C, $EF, $EF, $EF, $EF,
    db $EF, $EF, $EF, $EF, $EF, $EF, $EF, $32, $28, $2E, $EF, $1D, $28, $27, $4B, $2D,
    db $EF, $21, $1A, $2F, $1E, $EF, $EF, $1E, $27, $28, $2E, $20, $21, $EF, $26, $28,
    db $27, $1E, $32, $4C, $EF, $EF, $EF, $12, $22, $27, $1C, $1E, $EF, $2D, $21, $22,
    db $2C, $EF, $22, $2C, $EF, $EF, $EF, $32, $28, $2E, $2B, $EF, $1F, $22, $2B, $2C,
    db $2D, $EF, $EF, $EF, $EF, $EF, $E9, $29, $2E, $2B, $1C, $21, $1A, $2C, $1E, $8E,
    db $EF, $08, $EF, $30, $22, $25, $25, $20, $22, $2F, $1E, $EF, $32, $28, $2E, $EF,
    db $2D, $21, $22, $2C, $EF, $EF, $E9, $16, $1A, $2D, $1E, $2B, $EF, $02, $1A, $27,
    db $4C, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF,
    db $EF, $EF, $EF, $EF, $EF, $EF, $EF, $0A, $1E, $1E, $29, $EF, $2E, $29, $EF, $2D,
    db $21, $1E, $EF, $20, $28, $28, $1D, $30, $28, $2B, $24, $40, $EF, $01, $32, $1E,
    db $44, $01, $32, $1E, $4C, $EF, $EF, $07, $28, $30, $EF, $26, $1A, $27, $32, $EF,
    db $1D, $28, $EF, $32, $28, $2E, $EF, $30, $1A, $27, $2D, $41, $EF, $EF, $EF, $EF,
    db $EF, $EF, $EF, $EF, $EF, $EF, $E9, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF,
    db $EF, $EF, $EF, $EF, $EF, $EF, $EF, $08, $2D, $EF, $22, $2C, $EF, $EF, $EF, $EF,
    db $EF, $EF, $EF, $EF, $06, $4C, $EF, $E6, $40, $34, $40, $8F, $46, $15, $77, $21,
    db $40, $73, $77, $20, $80, $8F, $46, $11, $77, $21, $40, $93, $77, $20, $80, $8F,
    db $46, $11, $77, $21, $40, $B3, $77, $20, $80, $8F, $46, $11, $77, $21, $40, $D3,
    db $77, $20, $80, $8F, $46, $11, $77, $21, $40, $F3, $77, $20, $80, $8F, $46, $11,
    db $77, $21, $40, $13, $78, $20, $80, $8F, $46, $11, $77, $21, $40, $33, $78, $20,
    db $80, $8F, $46, $11, $77, $21, $40, $53, $78, $20, $80, $8F, $46, $11, $77, $21,
    db $40, $73, $78, $20, $80, $8F, $46, $11, $77, $13, $2E, $2B, $27, $22, $29, $EF,
    db $12, $1E, $1E, $1D, $2C, $EF, $EF, $EF, $EF, $35, $EF, $1B, $1A, $20, $EF, $22,
    db $2C, $EF, $35, $36, $34, $06, $4C, $EF, $EF, $0F, $28, $2D, $1A, $2D, $28, $EF,
    db $12, $1E, $1E, $1D, $2C, $EF, $EF, $EF, $EF, $35, $EF, $1B, $1A, $20, $EF, $22,
    db $2C, $EF, $35, $39, $34, $06, $4C, $EF, $EF, $13, $28, $26, $1A, $2D, $28, $EF,
    db $12, $1E, $1E, $1D, $2C, $EF, $EF, $EF, $EF, $35, $EF, $1B, $1A, $20, $EF, $22,
    db $2C, $EF, $36, $34, $34, $06, $4C, $EF, $EF, $02, $28, $2B, $27, $EF, $12, $1E,
    db $1E, $1D, $2C, $EF, $EF, $EF, $EF, $EF, $EF, $35, $EF, $1B, $1A, $20, $EF, $22,
    db $2C, $EF, $37, $34, $34, $06, $4C, $EF, $EF, $04, $20, $20, $29, $25, $1A, $27,
    db $2D, $EF, $12, $1E, $1E, $1D, $2C, $EF, $EF, $35, $EF, $1B, $1A, $20, $EF, $22,
    db $2C, $EF, $35, $39, $34, $06, $4C, $EF, $EF, $0F, $1E, $1A, $27, $2E, $2D, $EF,
    db $12, $1E, $1E, $1D, $2C, $EF, $EF, $EF, $EF, $35, $EF, $1B, $1A, $20, $EF, $22,
    db $2C, $EF, $36, $34, $34, $06, $4C, $EF, $EF, $02, $1A, $2B, $2B, $28, $2D, $EF,
    db $12, $1E, $1E, $1D, $2C, $EF, $EF, $EF, $EF, $35, $EF, $1B, $1A, $20, $EF, $22,
    db $2C, $EF, $37, $34, $34, $06, $4C, $EF, $EF, $01, $2B, $28, $1C, $1C, $28, $25,
    db $22, $EF, $12, $1E, $1E, $1D, $2C, $EF, $EF, $35, $EF, $1B, $1A, $20, $EF, $22,
    db $2C, $EF, $39, $34, $34, $06, $4C, $EF, $EF, $06, $2B, $1A, $2C, $2C, $EF, $12,
    db $1E, $1E, $1D, $2C, $EF, $EF, $EF, $EF, $EF, $35, $EF, $1B, $1A, $20, $EF, $22,
    db $2C, $EF, $39, $34, $34, $06, $4C, $EF, $EF, $21, $40, $A7, $78, $10, $80, $8F,
    db $46, $11, $77, $21, $40, $B7, $78, $10, $80, $8F, $46, $11, $77, $0C, $1A, $2D,
    db $1E, $2B, $22, $1A, $25, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $07, $28, $26,
    db $1E, $EF, $04, $31, $29, $1A, $27, $2C, $22, $28, $27, $EF, $EF, $21, $40, $03,
    db $79, $10, $80, $8F, $46, $11, $77, $21, $40, $13, $79, $10, $80, $8F, $46, $11,
    db $77, $21, $40, $23, $79, $10, $80, $8F, $46, $11, $77, $21, $40, $33, $79, $10,
    db $80, $8F, $46, $11, $77, $21, $40, $43, $79, $10, $80, $8F, $46, $11, $77, $21,
    db $40, $53, $79, $10, $80, $8F, $46, $11, $77, $12, $29, $2B, $22, $27, $24, $25,
    db $1E, $2B, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $01, $2B, $2E, $2C, $21, $EF, $EF,
    db $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $12, $1A, $1D, $1D, $25, $1E, $1B,
    db $1A, $20, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $0C, $22, $25, $24, $1E, $2B, $EF,
    db $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $02, $21, $1E, $1E, $2C, $1E, $EF,
    db $0C, $1A, $24, $1E, $2B, $EF, $EF, $EF, $EF, $01, $2E, $2D, $2D, $1E, $2B, $EF,
    db $0C, $1A, $24, $1E, $2B, $EF, $EF, $EF, $EF, $21, $40, $BD, $79, $10, $80, $8F,
    db $46, $11, $77, $21, $40, $CD, $79, $10, $80, $8F, $46, $11, $77, $21, $40, $DD,
    db $79, $10, $80, $8F, $46, $11, $77, $21, $40, $ED, $79, $10, $80, $8F, $46, $11,
    db $77, $21, $40, $FD, $79, $10, $80, $8F, $46, $11, $77, $21, $40, $0D, $7A, $10,
    db $80, $8F, $46, $11, $77, $21, $40, $1D, $7A, $10, $80, $8F, $46, $11, $77, $21,
    db $40, $2D, $7A, $10, $80, $8F, $46, $11, $77, $21, $40, $3D, $7A, $10, $80, $8F,
    db $46, $11, $77, $01, $2E, $32, $EF, $1A, $EF, $1C, $28, $30, $EF, $EF, $EF, $EF,
    db $EF, $EF, $EF, $01, $2E, $32, $EF, $1A, $EF, $1C, $21, $22, $1C, $24, $1E, $27,
    db $EF, $EF, $EF, $02, $28, $30, $EF, $05, $1E, $1E, $1D, $EF, $EF, $EF, $EF, $EF,
    db $EF, $EF, $EF, $02, $21, $22, $1C, $24, $1E, $27, $EF, $05, $1E, $1E, $1D, $EF,
    db $EF, $EF, $EF, $02, $28, $30, $EF, $0C, $1E, $1D, $22, $1C, $22, $27, $1E, $EF,
    db $EF, $EF, $EF, $0C, $4C, $0F, $28, $2D, $22, $28, $27, $EF, $EF, $EF, $EF, $EF,
    db $EF, $EF, $EF, $0F, $4C, $0C, $1E, $1D, $22, $1C, $22, $27, $1E, $EF, $EF, $EF,
    db $EF, $EF, $EF, $12, $1E, $25, $25, $EF, $1A, $EF, $1C, $28, $30, $EF, $EF, $EF,
    db $EF, $EF, $EF, $12, $1E, $25, $25, $EF, $1A, $EF, $1C, $21, $22, $1C, $24, $1E,
    db $27, $EF, $EF, $21, $40, $7F, $7A, $10, $80, $8F, $46, $11, $77, $21, $40, $8F,
    db $7A, $10, $80, $8F, $46, $11, $77, $21, $40, $9F, $7A, $10, $80, $8F, $46, $11,
    db $77, $21, $40, $AF, $7A, $10, $80, $8F, $46, $11, $77, $21, $40, $BF, $7A, $10,
    db $80, $8F, $46, $11, $77, $02, $1A, $24, $1E, $EF, $EF, $EF, $EF, $EF, $EF, $EF,
    db $EF, $EF, $EF, $EF, $EF, $0B, $2E, $27, $1C, $21, $EF, $01, $28, $31, $EF, $EF,
    db $EF, $EF, $EF, $EF, $EF, $02, $2B, $28, $22, $2C, $2C, $1A, $27, $2D, $EF, $EF,
    db $EF, $EF, $EF, $EF, $EF, $11, $22, $1C, $1E, $EF, $01, $1A, $25, $25, $EF, $EF,
    db $EF, $EF, $EF, $EF, $EF, $0C, $1E, $1A, $2D, $EF, $03, $2E, $26, $29, $25, $22,
    db $27, $20, $EF, $EF, $EF, $21, $40, $01, $7B, $10, $80, $8F, $46, $11, $77, $21,
    db $40, $11, $7B, $10, $80, $8F, $46, $11, $77, $21, $40, $21, $7B, $10, $80, $8F,
    db $46, $11, $77, $21, $40, $31, $7B, $10, $80, $8F, $46, $11, $77, $21, $40, $41,
    db $7B, $10, $80, $8F, $46, $11, $77, $0E, $2B, $1A, $27, $20, $1E, $EF, $09, $2E,
    db $22, $1C, $1E, $EF, $EF, $EF, $EF, $00, $29, $29, $25, $1E, $EF, $09, $2E, $22,
    db $1C, $1E, $EF, $EF, $EF, $EF, $EF, $16, $22, $25, $1D, $EF, $06, $2B, $1A, $29,
    db $1E, $EF, $09, $2E, $22, $1C, $1E, $06, $2B, $1E, $1E, $27, $EF, $13, $1E, $1A,
    db $EF, $EF, $EF, $EF, $EF, $EF, $EF, $0C, $22, $25, $24, $EF, $EF, $EF, $EF, $EF,
    db $EF, $EF, $EF, $EF, $EF, $EF, 

    rst $28
    ld h, b
    ld l, c
    push hl
    ld a, [$cd70]
    ld e, a
    ld a, [$cd71]
    ld d, a
    ld a, [de]
    cp $af
    jr z, jr_01b_7bb0

jr_01b_7b61:
    push af
    inc de
    ld a, e
    ld [$cd70], a
    ld a, d
    ld [$cd71], a
    pop af
    ld c, a
    push bc
    ld a, [$cd6f]
    push af
    inc a
    ld [$cd6f], a
    pop af
    ld de, $99c2
    cp $90
    jr c, jr_01b_7b81

    ld de, $99f2

jr_01b_7b81:
    sub $80
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    call Call_000_0924
    ld [hl], d
    inc hl
    ld [hl], e
    inc hl
    ld a, $01
    ld [hl+], a
    pop bc
    ld [hl], c
    inc hl
    xor a
    ld [hl], a
    ldh a, [$ff97]
    add $04
    ldh [$ff97], a
    pop hl
    ld a, [$cd6e]
    dec a
    ld [$cd6e], a
    jr z, jr_01b_7bab

    dec hl
    dec hl
    ret


jr_01b_7bab:
    xor a
    ld [$cd98], a
    ret


jr_01b_7bb0:
    inc de
    ld a, [$cd6f]
    inc a
    ld [$cd6f], a
    ld a, [$cd6e]
    dec a
    ld [$cd6e], a
    jr z, jr_01b_7bc8

    ld a, [de]
    cp $af
    jr nz, jr_01b_7b61

    jr jr_01b_7bb0

jr_01b_7bc8:
    pop hl
    xor a
    ld [$cd98], a
    ret


    push bc
    ld hl, $7caa
    call Call_01b_7c8c
    ld a, [hl+]
    cp $02
    jr z, jr_01b_7bdc

    jr jr_01b_7bf7

jr_01b_7bdc:
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    ld a, [hl]
    call Call_01b_7c72
    call Call_000_325c
    ld hl, wDecimalDigitTileID
    ld de, $cd87
    ld b, $05
    call CopyHLtoDE
    pop hl
    inc hl
    inc hl
    ret


jr_01b_7bf7:
    pop hl
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    push hl
    ld l, e
    ld h, a
    ld de, $cd72
    ld b, $20
    call CopyHLtoDE
    pop hl
    ret


    push bc
    ld hl, $7caa
    call Call_01b_7c8c
    inc hl
    ld de, $cd8d
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc hl
    ld a, [hl]
    call Call_01b_7c72
    call Call_000_325c
    ld hl, wDecimalDigitTileID
    ld de, $cd82
    ld b, $05
    call CopyHLtoDE
    pop hl
    ret


    push bc
    ld hl, $7caa
    call Call_01b_7c8c
    ld [hl], $ff
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    ld a, [hl]
    call Call_01b_7c72
    call Call_01b_7c4b
    pop hl
    ret


Call_01b_7c4b:
    ld b, h
    ld c, l
    ld hl, sPlayerMoney
    call AddSignedBCToHL
    ld a, [$b8f1]
    or a
    ret z

    ld hl, sPlayerMoney
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $869f
    ld a, l
    sub e
    ld a, h
    sbc d
    ret c

    ld hl, $869f
    ld a, l
    ld [sPlayerMoney], a
    ld a, h
    ld [sPlayerMoney+1], a
    ret


Call_01b_7c72:
    ld hl, $2ee0
    cp $a0
    ret nc

    ld hl, $1f40
    cp $50
    ret nc

    ld hl, $1388
    ret


Call_01b_7c82:
    ld hl, $3a98
    cp $03
    ret z

    ld hl, $01f4
    ret


Call_01b_7c8c:
    push hl
    ld hl, $cd9c
    ld a, [$cd64]
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    pop hl
    call Call_01b_7c9f
    ret


Call_01b_7c9f:
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


    ld c, c
    cp c
    ld e, a
    cp c
    ld [hl], l
    cp c
    adc e
    cp c
    and a
    cp c
    or e
    cp c
    cp a
    cp c
    res 7, c
    ld a, $03
    ld [$cd2b], a
    ld a, $07
    ld [$cd2a], a
    ld a, $19
    ld [$cb50], a
    ld a, $1d
    ld [wPlayerIdleWhenExitingCurrentMap], a
    ret


    ld a, $02
    ld [$cd2b], a
    ld a, $07
    ld [$cd2a], a
    ld a, $19
    ld [$cb50], a
    ld a, $1d
    ld [wPlayerIdleWhenExitingCurrentMap], a
    ret


    push bc
    ld hl, $7cb2
    call Call_01b_7c8c
    ld a, [hl]
    ld [hl], $ff
    call Call_01b_7c82
    call Call_01b_7c4b
    pop hl
    ret


    push bc
    ld hl, $7cb2
    call Call_01b_7c8c
    ld a, [hl+]
    cp $02
    jr z, jr_01b_7d06

    cp $03
    jr nz, jr_01b_7d1b

jr_01b_7d06:
    call Call_01b_7c82
    call Call_000_325c
    ld hl, wDecimalDigitTileID
    ld de, $cd87
    ld b, $05
    call CopyHLtoDE
    pop hl
    inc hl
    inc hl
    ret


jr_01b_7d1b:
    pop hl
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    push hl
    ld l, e
    ld h, a
    ld de, $cd72
    ld b, $20
    call CopyHLtoDE
    pop hl
    ret


    push bc
    ld a, [$cd64]
    add a
    add a
    ld hl, $7d63
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld de, $cd8c
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    ld hl, $7cb2
    call Call_01b_7c8c
    ld a, [hl]
    call Call_01b_7c82
    call Call_000_325c
    ld hl, wDecimalDigitTileID
    ld de, $cd82
    ld b, $05
    call CopyHLtoDE
    pop hl
    ret


    xor a
    dec [hl]
    ld [de], a
    inc de
    xor a
    ld [hl], $0d
    inc bc
    xor a
    scf
    ld de, $af03
    jr c, jr_01b_7d85

    rlca

    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff

jr_01b_7d85:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
