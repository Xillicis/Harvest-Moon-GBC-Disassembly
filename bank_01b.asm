; Disassembly of "harvest_moon.gbc"
; This file was created with:
; mgbdis v2.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

MACRO text_block 
    dw Village_TextWindowClear
    dw PrepareTextBlock
    dw \1
    db VILLAGE_MAX_NUM_CHARACTERS,
    db FIRST_TEXTBOX_TILE
    dw VillagePrintCharacter
    dw Label_01b_4134
ENDM

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

PrepareTextBlock: ; 1bx4021
    ld h, b
    ld l, c
    ld a, [hl+]
    ld [wVillageCharacterPointer], a
    ld a, [hl+]
    ld [wVillageCharacterPointer+1], a
    ld a, [hl+]
    ld [wVillageTextCharacterCounter], a
    ld a, [hl+]
    ld [wVillageTextTileNumber], a
    ret

VillagePrintCharacter: ; 1bx4034
    ld h, b
    ld l, c
    push hl
    ld a, [wVillageCharacterPointer]
    ld e, a
    ld a, [wVillageCharacterPointer+1]
    ld d, a
    ld a, [de]
    cp $af
    jr z, jr_01b_409b

jr_01b_4044:
    push af
    inc de
    ld a, e
    ld [wVillageCharacterPointer], a
    ld a, d
    ld [wVillageCharacterPointer+1], a
    pop af
    ld c, a
    ld a, [wVillageTextTileNumber]
    ld e, a
    push af
    inc a
    ld [wVillageTextTileNumber], a
    ld hl, TextFontTileset
    ld d, BANK(TextFontTileset)
    call Call_000_095c
    pop af
    ld b, a
    ld de, vBGMap0 + $1c2
    cp $90 ; end of first line (tile number)
    jr c, .printCharacter
    ld de, vBGMap0 + $1f2

.printCharacter
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
    ld a, [wVillageTextCharacterCounter]
    dec a
    ld [wVillageTextCharacterCounter], a
    jr z, .finishedPrintingLine

    dec hl
    dec hl
    ret

.finishedPrintingLine
    xor a
    ld [$cd98], a
    ret


jr_01b_409b:
    inc de
    ld a, [wVillageTextTileNumber]
    inc a
    ld [wVillageTextTileNumber], a
    ld a, [wVillageTextCharacterCounter]
    dec a
    ld [wVillageTextCharacterCounter], a
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
    ld hl, $99c2 ; BG map address of beginning of text window
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

    ld hl, $9a02 ; BG map address of second line of text window
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

LoadTextString_Village: ; 1bx4113
    ld h, b
    ld l, c
    call LoadTextBuffer

; second time getting here seems to load sPlayerName pointer in DE.
LoadTextBuffer: ; 1bx4118
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
    ld b, a ; loop counter

.loadTextLoop
    ld a, [de] ; DE points to the text address
    inc de
    ld [hl+], a ; HL is a WRAM buffer address
    dec b
    jr nz, .loadTextLoop
    pop hl
    ret

Label_01b_412d:
    ld h, b
    ld l, c
    xor a
    ld [$cd99], a
    ret

Label_01b_4134:
    ld h, b
    ld l, c
    ldh a, [$ff8b]
    and $03
    jr nz, jr_01b_4167

    push hl
    ld de, vBGMap0 + $211
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
    jr nz, .jr_01b_433b

    ld hl, $4380
    call Call_000_20de
    ret

.jr_01b_433b
    sub $34
    ld l, a
    add a
    add a
    add l
    ld hl, Label_01b_434e
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    call Call_000_20de
    ret

Label_01b_434e:
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

Label_01b_4474:
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


Label_01b_4888:
    db $E6, $40, $56, $47, $AA, $48, $13, $41, $8B, $4A, $72, $CD, $20, $F4, $B8, $75,
    db $CD, $04, $21, $40, $72, $CD, $20, $80, $34, $40, $34, $41, $3D, $45, $8F, $46,
    db $A6, $48, $13, $41, $AB, $4A, $72, $CD, $20, $CB, $4A, $8E, $CD, $01, $8F, $46,
    db $9A, $48, $E6, $40, $21, $40, $CC, $4A, $20, $80, $34, $40, $34, $41, $E6, $40,
    db $21, $40, $EC, $4A, $20, $80, $34, $40, $34, $41, $E6, $40, $21, $40, $0C, $4B,
    db $20, $80, $34, $40, $2D, $41, $68, $41, $E4, $48, $73, $4A, $85, $43, $20, $03,
    db $3A, $4A, $F1, $43, $AD, $B8, $8F, $46, $5B, $4A, $E6, $40, $21, $40, $AC, $4B,
    db $20, $80, $34, $40, $34, $41, $E6, $40, $21, $40, $CC, $4B, $20, $80, $34, $40,
    db $34, $41, $E6, $40, $21, $40, $EC, $4B, $20, $80, $34, $40, $2D, $41, $68, $41,
    db $1C, $49, $73, $4A, $85, $43, $08, $07, $3A, $4A, $F1, $43, $AC, $B8, $8F, $46,
    db $5B, $4A, $E6, $40, $21, $40, $0C, $4C, $20, $80, $34, $40, $34, $41, $E6, $40,
    db $D7, $43, $AE, $B8, $0A, $49, $49, $21, $40, $6C, $4C, $20, $80, $8F, $46, $5B,
    db $49, $21, $40, $2C, $4C, $20, $80, $34, $40, $34, $41, $E6, $40, $21, $40, $4C,
    db $4C, $20, $80, $34, $40, $2D, $41, $68, $41, $65, $49, $73, $4A, $85, $43, $D0,
    db $07, $3A, $4A, $F1, $43, $AF, $B8, $18, $44, $AE, $B8, $0A, $8F, $46, $5B, $4A,
    db $E6, $40, $21, $40, $8C, $4C, $20, $80, $34, $40, $34, $41, $E6, $40, $21, $40,
    db $AC, $4C, $20, $80, $34, $40, $34, $41, $E6, $40, $21, $40, $CC, $4C, $20, $80,
    db $34, $40, $34, $41, $E6, $40, $21, $40, $EC, $4C, $20, $80, $34, $40, $2D, $41,
    db $68, $41, $AE, $49, $73, $4A, $85, $43, $30, $75, $3A, $4A, $F1, $43, $43, $B9,
    db $8F, $46, $5B, $4A, $E6, $40, $21, $40, $0C, $4D, $20, $80, $34, $40, $34, $41,
    db $E6, $40, $21, $40, $2C, $4D, $20, $80, $34, $40, $34, $41, $E6, $40, $21, $40,
    db $4C, $4D, $20, $80, $34, $40, $34, $41, $E6, $40, $21, $40, $6C, $4D, $20, $80,
    db $34, $40, $2D, $41, $68, $41, $F2, $49, $73, $4A, $85, $43, $30, $75, $3A, $4A,
    db $F1, $43, $44, $B9, $8F, $46, $5B, $4A, $E6, $40, $21, $40, $8C, $4D, $20, $80,
    db $34, $40, $34, $41, $E6, $40, $21, $40, $AC, $4D, $20, $80, $34, $40, $34, $41,
    db $E6, $40, $21, $40, $CC, $4D, $20, $80, $34, $40, $2D, $41, $68, $41, $2A, $4A,
    db $73, $4A, $85, $43, $C4, $09, $3A, $4A, $F1, $43, $C2, $B8, $C2, $46, $8F, $46,
    db $5B, $4A, $E6, $40, $21, $40, $3C, $55, $20, $80, $34, $40, $23, $45, $2A, $45,
    db $FF, $3D, $45, $8F, $46, $4B, $4A, $E6, $40, $21, $40, $EC, $4D, $20, $80, $8F,
    db $46, $42, $4A, $E6, $40, $21, $40, $2C, $4B, $20, $80, $34, $40, $34, $41, $E6,
    db $40, $21, $40, $4C, $4B, $20, $80, $8F, $46, $42, $4A, $E6, $40, $21, $40, $6C,
    db $4B, $20, $80, $34, $40, $34, $41, $E6, $40, $21, $40, $8C, $4B, $20, $80, $8F,
    db $46, $42, $4A, 

    db "Hi     !What can"
    db "I do for you?  ▽"

    db "Hi! The Sprinkl-"
    db "er is ready!   ▽"

ToolShop_BrushText::
    db $AF
    db "That<'s> a Brush   "
    db "used on cows.  ▽"
    db "It is specially "
    db "made. The cost ▽"
    db "is 800G.        "
    db " Buy   Don't Buy"

ToolShop_BuyBrushText::
    db "Thank you!      "
    db "               ▽"
    db "Be sure not to  "
    db "mistreat it.    "

ToolShop_DontBuyBrushText::
    db "What! Are you   "
    db "sure?          ▽"
    db "I worked very   "
    db "hard on it...   "

ToolShop_MilkerText::
    db "That<'s> a Milker. "
    db "It is used to  ▽"
    db "milk a cow.     "
    db "The cost       ▽"
    db "is 1800G.       "
    db " Buy   Don't Buy"

    db "That<'s> a         "
    db "Sprinkler.     ▽"
    db "It is 2000G     "
    db "along with     ▽"
    db "A Water Can     "
    db " Buy   Don't Buy"

    db "It is 2000G.    "
    db " Buy   Don't Buy"

ToolShop_ButterMakerText::
    db "That<'s> a Butter  "
    db "Maker.         ▽"
    db "It should turn  "
    db "milk into      ▽"
    db "butter.The cost "
    db "is 30000G,but  ▽"
    db "well worth it!  "
    db " Buy   Don't Buy"

ToolShop_CheeseMakerText::
    db "That<'s> a Cheese  "
    db "Maker.         ▽"
    db "It should turn  "
    db "milk into      ▽"
    db "cheese.The cost "
    db "is 30000G,but  ▽"
    db "well worth it!  "
    db " Buy   Don't Buy"

    db "You can ship    "
    db "your crops from▽"
    db "the Saddlebag.  "
    db "The cost is    ▽"
    db "2500G.          "
    db " Buy   Don't Buy"

    db "See you later.  "
    db "                "
    db $E6, $40, $13, $41, $FC, $4E, $72, $CD, $20, $F4, $B8, $76, $CD, $04, $21, $40,
    db $72, $CD, $20, $80, $34, $40, $34, $41, $E6, $40, $21, $40, $1C, $4F, $20, $80,
    db $34, $40, $34, $41, $3D, $45, $8F, $46, $32, $4E, $E6, $40, $21, $40, $BC, $4F,
    db $20, $80, $34, $40, $34, $41, $E6, $40, $21, $40, $DC, $4F, $20, $80, $34, $40,
    db $34, $41, $E6, $40, $21, $40, $FC, $4F, $20, $80, $34, $40, $34, $41, $E6, $40,
    db $21, $40, $1C, $50, $20, $80, $34, $40, $2D, $41, $68, $41, $6C, $4E, $8F, $4E,
    db $85, $43, $F4, $01, $CF, $4E, $3F, $44, $38, $B9, $32, $E6, $40, $21, $40, $3C,
    db $50, $20, $80, $34, $40, $34, $41, $E6, $40, $21, $40, $5C, $50, $20, $80, $8F,
    db $46, $EF, $4E, $E6, $40, $21, $40, $7C, $50, $20, $80, $8F, $46, $EF, $4E, $E6,
    db $40, $21, $40, $3C, $4F, $20, $80, $34, $40, $34, $41, $E6, $40, $21, $40, $5C,
    db $4F, $20, $80, $34, $40, $34, $41, $E6, $40, $21, $40, $7C, $4F, $20, $80, $34,
    db $40, $34, $41, $E6, $40, $21, $40, $9C, $4F, $20, $80, $F1, $43, $FE, $B8, $8F,
    db $46, $EF, $4E, $E6, $40, $21, $40, $9C, $50, $20, $80, $34, $40, $34, $41, $E6,
    db $40, $21, $40, $3C, $55, $20, $80, $8F, $46, $EF, $4E, $E6, $40, $21, $40, $BC,
    db $50, $20, $80, $34, $40, $23, $45, $2A, $45, $FF, $3D, $45, $8F, $46, $F8, $4E,
    db "Hey     .       "
    db "              ▽ "
    db "What can I do   "
    db "for you?      ▽ "
    db "I see, you want "
    db "to expand your ▽"
    db "house. Alright! "
    db "Tomorrow I will▽"
    db $25, $1E, $2D, $EF, $32, $28, $2E, $EF, $24, $27, $28, $30, $EF, $2D, $21, $1E,
    db $1C, $28, $2C, $2D, $EF, $1A, $27, $1D, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $E9,
    db $26, $1A, $2D, $1E, $2B, $22, $1A, $25, $EF, $27, $1E, $1E, $1D, $1E, $1D, $EF,
    db $1F, $28, $2B, $EF, $2D, $21, $1E, $EF, $23, $28, $1B, $4C, $EF, $EF, $EF, $EF,
    db $0C, $1A, $2D, $1E, $2B, $22, $1A, $25, $41, $EF, $EF, $EF, $EF, $EF, $EF, $EF,
    db $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $E9,
    db $08, $2D, $EF, $22, $2C, $EF, $2E, $2C, $1E, $1D, $EF, $1F, $28, $2B, $EF, $EF,
    db $1E, $31, $29, $1A, $27, $2C, $22, $28, $27, $EF, $1A, $27, $1D, $EF, $EF, $E9,
    db $1F, $28, $2B, $EF, $32, $28, $2E, $2B, $EF, $1F, $1E, $27, $1C, $1E, $4C, $EF,
    db $39, $34, $EF, $0C, $1A, $2D, $1E, $2B, $22, $1A, $25, $2C, $EF, $EF, $EF, $E9,
    db $1F, $28, $2B, $EF, $39, $34, $34, $06, $4C, $EF, $EF, $EF, $EF, $EF, $EF, $EF,
    db $EF, $01, $2E, $32, $EF, $EF, $EF, $03, $28, $27, $4B, $2D, $EF, $01, $2E, $32,
    db $13, $21, $1E, $32, $EF, $1A, $2B, $1E, $EF, $1A, $EF, $25, $22, $2D, $2D, $44,
    db $25, $1E, $EF, $21, $1E, $1A, $2F, $32, $8E, $EF, $08, $EF, $EF, $EF, $EF, $E9,
    db $30, $22, $25, $25, $EF, $2D, $1A, $24, $1E, $EF, $2D, $21, $1E, $26, $EF, $EF,
    db $2D, $28, $EF, $32, $28, $2E, $2B, $EF, $2B, $1A, $27, $1C, $21, $4C, $EF, $EF,
    db $13, $21, $1E, $27, $EF, $1D, $28, $27, $4B, $2D, $EF, $30, $1A, $2C, $2D, $1E,
    db $26, $32, $EF, $2D, $22, $26, $1E, $4C, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF,
    db $07, $1A, $EF, $21, $1A, $EF, $21, $1A, $8E, $EF, $32, $28, $2E, $EF, $EF, $EF,
    db $26, $2E, $2C, $2D, $EF, $1B, $1E, $EF, $23, $28, $24, $22, $27, $20, $4C, $E9,
    db $16, $1E, $25, $25, $8E, $EF, $2C, $1E, $1E, $EF, $32, $1A, $4C, $EF, $EF, $EF,
    db $13, $1A, $24, $1E, $EF, $1C, $1A, $2B, $1E, $4C, $EF, $EF, $EF, $EF, $EF, $EF,
    db $E6, $40, $21, $40, $7C, $52, $20, $80, $34, $40, $34, $41, $3D, $45, $8F, $46,
    db $EA, $50, $E6, $40, $21, $40, $9C, $52, $20, $80, $34, $40, $34, $41, $E6, $40,
    db $21, $40, $BC, $52, $20, $80, $34, $40, $34, $41, $E6, $40, $21, $40,
    db $DC, $52, $20, $80, $34, $40, $2D, $41, $68, $41, $18, $51, $70, $52, $85, $43,
    db $2C, $01, $2B, $52, $D6, $45, $01, $8F, $46, $58, $52, $E6, $40, $21, $40, $3C,
    db $53, $20, $80, $34, $40, $34, $41, $E6, $40, $21, $40, $5C, $53, $20, $80, $34,
    db $40, $34, $41, $E6, $40, $21, $40, $7C, $53, $20, $80, $34, $40, $34, $41, $E6,
    db $40, $21, $40, $9C, $53, $20, $80, $34, $40, $2D, $41, $68, $41, $5B, $51, $70,
    db $52, $85, $43, $F4, $01, $2B, $52, $D6, $45, $00, $8F, $46, $64, $52, $E6, $40,
    db $21, $40, $DC, $53, $20, $80, $34, $40, $34, $41, $E6, $40, $21, $40, $FC, $53,
    db $20, $80, $34, $40, $34, $41, $E6, $40, $21, $40, $1C, $54, $20, $80, $34, $40,
    db $34, $41, $E6, $40, $21, $40, $3C, $54, $20, $80, $34, $40, $2D, $41, $68, $41,
    db $9E, $51, $70, $52, $85, $43, $2C, $01, $2B, $52, $2D, $44, $CA, $B8, $0A, $8F,
    db $46, $64, $52, $E6, $40, $21, $40, $5C, $54, $20, $80, $34, $40, $34, $41, $E6,
    db $40, $21, $40, $7C, $54, $20, $80, $34, $40, $34, $41, $E6, $40, $21, $40, $9C,
    db $54, $20, $80, $34, $40, $34, $41, $E6, $40, $21, $40, $BC, $54, $20, $80, $34,
    db $40, $2D, $41, $68, $41, $E3, $51, $70, $52, $85, $43, $C8, $00, $2B, $52, $2D,
    db $44, $CB, $B8, $0A, $8F, $46, $58, $52, $E6, $40, $21, $40, $DC, $54, $20, $80,
    db $34, $40, $34, $41, $E6, $40, $21, $40, $FC, $54, $20, $80, $34, $40, $34, $41,
    db $E6, $40, $21, $40, $1C, $55, $20, $80, $34, $40, $2D, $41, $68, $41, $1C, $52,
    db $70, $52, $85, $43, $64, $00, $2B, $52, $2D, $44, $CC, $B8, $0A, $8F, $46, $58,
    db $52, $E6, $40, $21, $40, $3C, $55, $20, $80, $34, $40, $23, $45, $2A, $45, $FF,
    db $3D, $45, $8F, $46, $3C, $52, $E6, $40, $21, $40, $5C, $55, $20, $80, $34, $40,
    db $34, $41, $E6, $40, $21, $40, $7C, $55, $20, $80, $8F, $46, $33, $52, $E6, $40,
    db $21, $40, $FC, $52, $20, $80, $8F, $46, $33, $52, $E6, $40, $21, $40, $BC, $53,
    db $20, $80, $8F, $46, $33, $52, $E6, $40, $21, $40, $1C, $53, $20, $80, $8F, $46,
    db $33, $52, $07, $22, $4C, $EF, $16, $28, $2E, $25, $1D, $EF, $32, $28, $2E, $EF,
    db $EF, $EF, $25, $22, $24, $1E, $EF, $1A, $EF, $1D, $2B, $22, $27, $24, $41, $EF,
    db $EF, $E9, $0E, $2B, $1A, $27, $20, $1E, $EF, $09, $2E, $22, $1C, $1E, $EF, $22,
    db $2C, $EF, $1A, $EF, $2C, $29, $1E, $1C, $22, $1A, $25, $2D, $32, $EF, $28, $1F,
    db $EF, $E9, $2D, $21, $22, $2C, $EF, $2D, $28, $30, $27, $4C, $EF, $0F, $25, $1E,
    db $1A, $44, $2C, $1E, $EF, $1E, $27, $23, $28, $32, $4C, $EF, $13, $21, $1E, $EF,
    db $EF, $E9, $29, $2B, $22, $1C, $1E, $EF, $22, $2C, $EF, $37, $34, $34, $06, $4C,
    db $EF, $EF, $EF, $01, $2E, $32, $EF, $EF, $EF, $03, $28, $27, $4B, $2D, $EF, $01,
    db $2E, $32, $07, $1E, $2B, $1E, $EF, $32, $28, $2E, $EF, $20, $28, $4C, $EF, $EF,
    db $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF,
    db $EF, $EF, $11, $1E, $1A, $25, $25, $32, $41, $EF, $08, $2D, $EF, $1A, $25, $25,
    db $EF, $EF, $2D, $1A, $2C, $2D, $1E, $2C, $EF, $20, $28, $28, $1D, $4C, $EF, $EF,
    db $EF, $EF, $13, $21, $1A, $2D, $EF, $22, $2C, $EF, $1A, $EF, $EF, $EF, $EF, $EF,
    db $EF, $EF, $2C, $29, $1E, $1C, $22, $1A, $25, $25, $32, $EF, $26, $1A, $1D, $1E,
    db $EF, $E9, $00, $29, $29, $25, $1E, $EF, $09, $2E, $22, $1C, $1E, $EF, $EF, $EF,
    db $EF, $EF, $30, $21, $22, $1C, $21, $EF, $22, $2C, $EF, $EF, $EF, $EF, $EF, $EF,
    db $EF, $E9, $2C, $1E, $25, $25, $22, $27, $20, $EF, $2A, $2E, $22, $2D, $1E, $EF,
    db $EF, $EF, $30, $1E, $25, $25, $4C, $EF, $13, $21, $1E, $EF, $29, $2B, $22, $1C,
    db $1E, $E9, $22, $2C, $EF, $39, $34, $34, $06, $4C, $EF, $EF, $EF, $EF, $EF, $EF,
    db $EF, $EF, $EF, $01, $2E, $32, $EF, $EF, $EF, $03, $28, $27, $4B, $2D, $EF, $01,
    db $2E, $32, $07, $1E, $2B, $1E, $EF, $32, $28, $2E, $EF, $20, $28, $4C, $EF, $EF,
    db $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF,
    db $EF, $EF, $13, $21, $1A, $2D, $EF, $22, $2C, $EF, $16, $22, $25, $1D, $EF, $EF,
    db $EF, $EF, $06, $2B, $1A, $29, $1E, $EF, $09, $2E, $22, $1C, $1E, $EF, $EF, $EF,
    db $EF, $E9, $2D, $21, $1A, $2D, $EF, $30, $22, $25, $25, $EF, $EF, $EF, $EF, $EF,
    db $EF, $EF, $22, $27, $1C, $2B, $1E, $1A, $2C, $1E, $EF, $32, $28, $2E, $2B, $EF,
    db $EF, $E9, $29, $28, $30, $1E, $2B, $4C, $EF, $13, $21, $1E, $EF, $1C, $28, $2C,
    db $2D, $EF, $22, $2C, $EF, $37, $34, $34, $06, $EF, $EF, $EF, $EF, $EF, $EF, $EF,
    db $EF, $E9, $1F, $28, $2B, $EF, $35, $34, $EF, $1C, $2E, $29, $2C, $4C, $EF, $EF,
    db $EF, $EF, $EF, $01, $2E, $32, $EF, $EF, $EF, $03, $28, $27, $4B, $2D, $EF, $01,
    db $2E, $32, $13, $21, $1A, $2D, $53, $EF, $1A, $EF, $21, $22, $20, $21, $EF, $EF,
    db $EF, $EF, $2A, $2E, $1A, $25, $22, $2D, $32, $EF, $06, $2B, $1E, $1E, $27, $EF,
    db $EF, $E9, $13, $1E, $1A, $4C, $EF, $0E, $27, $1E, $EF, $1C, $2E, $29, $EF, $EF,
    db $EF, $EF, $30, $22, $25, $25, $EF, $2C, $2E, $2B, $1E, $25, $32, $EF, $EF, $EF,
    db $EF, $E9, $30, $1A, $24, $1E, $EF, $32, $28, $2E, $EF, $2E, $29, $40, $EF, $13,
    db $21, $1E, $1C, $28, $2C, $2D, $EF, $22, $2C, $EF, $36, $34, $34, $06, $EF, $EF,
    db $EF, $E9, $1F, $28, $2B, $EF, $35, $34, $EF, $1C, $2E, $29, $2C, $4C, $EF, $EF,
    db $EF, $EF, $EF, $01, $2E, $32, $EF, $EF, $EF, $03, $28, $27, $4B, $2D, $EF, $01,
    db $2E, $32, $13, $21, $1A, $2D, $53, $EF, $0C, $22, $25, $24, $EF, $30, $21, $22,
    db $1C, $21, $30, $1A, $2C, $EF, $29, $2B, $28, $1D, $2E, $1C, $1E, $1D, $EF, $1A,
    db $2D, $E9, $32, $28, $2E, $2B, $EF, $2B, $1A, $27, $1C, $21, $4C, $EF, $13, $21,
    db $1E, $EF, $1C, $28, $2C, $2D, $EF, $22, $2C, $EF, $35, $34, $34, $06, $EF, $EF,
    db $EF, $E9, $1F, $28, $2B, $EF, $35, $34, $EF, $1C, $2E, $29, $2C, $4C, $EF, $EF,
    db $EF, $EF, $EF, $01, $2E, $32, $EF, $EF, $EF, $03, $28, $27, $4B, $2D, $EF, $01,
    db $2E, $32, $18, $28, $2E, $EF, $1D, $28, $27, $4B, $2D, $EF, $21, $1A, $2F, $1E,
    db $EF, $EF, $1E, $27, $28, $2E, $20, $21, $EF, $26, $28, $27, $1E, $32, $4C, $EF,
    db $EF, $EF, $0B, $1E, $1A, $2F, $22, $27, $20, $41, $EF, $00, $2B, $1E, $EF, $32,
    db $28, $2E, $2B, $1E, $1F, $2B, $1E, $2C, $21, $1E, $1D, $EF, $27, $28, $30, $41,
    db $EF, $E9, $02, $28, $26, $1E, $EF, $1B, $1A, $1C, $24, $EF, $2C, $28, $28, $27,
    db $4C, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF,
    db $EF, $EF, $E6, $40, $21, $40, $6C, $5A, $20, $80, $34, $40, $34, $41, $3D, $45,
    db $8F, $46, $AA, $55, $E6, $40, $21, $40, $8C, $5A, $20, $80, $34, $40, $34, $41,
    db $E6, $40, $21, $40, $AC, $5A, $20, $80, $34, $40, $2D, $41, $68, $41, $CC, $55,
    db $60, $5A, $1B, $46, $36, $E8, $59, $F2, $45, $C4, $59, $85, $43, $88, $13, $A3,
    db $59, $6B, $47, $88, $13, $E6, $40, $21, $40, $CC, $5E, $20, $80, $34, $40, $34,
    db $41, $48, $46, $8F, $46, $ED, $55, $E6, $40, $13, $41, $EC, $5E, $72, $CD, $20,
    db $2C, $CD, $72, $CD, $04, $21, $40, $72, $CD, $20, $80, $34, $40, $AB, $45, $34,
    db $41, $D7, $43, $B3, $B8, $02, $2E, $56, $F1, $43, $B3, $B8, $E6, $40, $21, $40,
    db $0C, $5F, $20, $80, $34, $40, $34, $41, $E6, $40, $21, $40, $2C, $5F, $20, $80,
    db $34, $40, $34, $41, $E6, $40, $13, $41, $4C, $5F, $72, $CD, $20, $2C, $CD, $82,
    db $CD, $04, $21, $40, $72, $CD, $20, $80, $34, $40, $34, $41, $E6, $40, $21, $40,
    db $6C, $5F, $20, $80, $8F, $46, $AB, $59, $E6, $40, $21, $40, $EC, $5A, $20, $80,
    db $34, $40, $34, $41, $E6, $40, $21, $40, $AC, $5A, $20, $80, $34, $40, $2D, $41,
    db $68, $41, $70, $56, $60, $5A, $1B, $46, $24, $18, $5A, $11, $46, $C4, $59, $85,
    db $43, $F4, $01, $A3, $59, $6F, $46, $E6, $40, $21, $40, $6C, $60, $20, $80, $34,
    db $40, $34, $41, $E6, $40, $21, $40, $8C, $60, $20, $80, $8F, $46, $AB, $59, $E6,
    db $40, $21, $40, $4C, $5C, $20, $80, $34, $40, $34, $41, $E6, $40, $21, $40, $AC,
    db $5C, $20, $80, $34, $40, $34, $41, $E6, $40, $21, $40, $CC, $5C, $20, $80, $34,
    db $40, $34, $41, $E6, $40, $21, $40, $6C, $5C, $20, $80, $34, $40, $34, $41, $E6,
    db $40, $21, $40, $8C, $5D, $20, $80, $34, $40, $2D, $41, $68, $41, $DB, $56, $60,
    db $5A, $85, $43, $BC, $02, $A3, $59, $F1, $43, $C0, $B8, $FB, $43, $46, $B9, $8F,
    db $46, $54, $5A, $E6, $40, $21, $40, $8C, $5C, $20, $80, $34, $40, $34, $41, $E6,
    db $40, $21, $40, $AC, $5C, $20, $80, $34, $40, $34, $41, $E6, $40, $21, $40, $CC,
    db $5C, $20, $80, $34, $40, $34, $41, $E6, $40, $21, $40, $EC, $5C, $20, $80, $34,
    db $40, $34, $41, $E6, $40, $21, $40, $8C, $5D, $20, $80, $34, $40, $2D, $41, $68,
    db $41, $2F, $57, $60, $5A, $85, $43, $F4, $01, $A3, $59, $F1, $43, $C1, $B8, $FB,
    db $43, $47, $B9, $8F, $46, $54, $5A, $E6, $40, $21, $40, $6C, $5B, $20, $80, $34,
    db $40, $34, $41, $E6, $40, $21, $40, $8C, $5B, $20, $80, $34, $40, $34, $41, $E6,
    db $40, $21, $40, $AC, $5B, $20, $80, $34, $40, $34, $41, $E6, $40, $21, $40, $8C,
    db $5D, $20, $80, $34, $40, $2D, $41, $68, $41, $77, $57, $60, $5A, $85, $43, $E8,
    db $03, $A3, $59, $F1, $43, $AB, $B8, $8F, $46, $54, $5A, $E6, $40, $21, $40, $EC,
    db $5B, $20, $80, $34, $40, $34, $41, $E6, $40, $21, $40, $0C, $5C, $20, $80, $34,
    db $40, $34, $41, $E6, $40, $21, $40, $2C, $5C, $20, $80, $34, $40, $34, $41, $E6,
    db $40, $21, $40, $8C, $5D, $20, $80, $34, $40, $2D, $41, $68, $41, $BB, $57, $60,
    db $5A, $85, $43, $A0, $0F, $A3, $59, $F1, $43, $B2, $B8, $8F, $46, $54, $5A, $E6,
    db $40, $21, $40, $2C, $5D, $20, $80, $34, $40, $34, $41, $E6, $40, $21, $40, $4C,
    db $5D, $20, $80, $34, $40, $34, $41, $E6, $40, $21, $40, $6C, $5D, $20, $80, $34,
    db $40, $34, $41, $E6, $40, $21, $40, $8C, $5D, $20, $80, $34, $40, $2D, $41, $68,
    db $41, $FF, $57, $60, $5A, $85, $43, $D0, $07, $A3, $59, $F1, $43, $B1, $B8, $8F,
    db $46, $54, $5A, $E6, $40, $21, $40, $8C, $5F, $20, $80, $34, $40, $34, $41, $E6,
    db $40, $21, $40, $AC, $5F, $20, $80, $34, $40, $2D, $41, $F7, $47, $2B, $58, $60,
    db $5A, $55, $46, $8F, $46, $2D, $58, $E6, $40, $21, $40, $CC, $5F, $20, $80, $34,
    db $40, $34, $41, $E6, $40, $21, $40, $EC, $5F, $20, $80, $51, $7B, $34, $41, $3D,
    db $45, $8F, $46, $4B, $58, $E6, $40, $13, $41, $8C, $61, $72, $CD, $20, $CD, $CC,
    db $87, $CD, $01, $CE, $7B, $AC, $61, $21, $40, $72, $CD, $20, $80, $51, $7B, $8F,
    db $46, $69, $58, $E6, $40, $13, $41, $CC, $61, $72, $CD, $20, $4A, $B9, $8D, $CD,
    db $01, $08, $7C, $21, $40, $72, $CD, $20, $80, $51, $7B, $34, $41, $E6, $40, $21,
    db $40, $EC, $61, $20, $80, $34, $40, $2D, $41, $68, $41, $99, $58, $C6, $58, $33,
    db $7C, $BA, $45, $E6, $40, $21, $40, $0C, $60, $20, $80, $34, $40, $34, $41, $E6,
    db $40, $21, $40, $2C, $60, $20, $80, $34, $40, $34, $41, $E6, $40, $21, $40, $4C,
    db $60, $20, $80, $51, $7B, $23, $45, $2A, $45, $FF, $CF, $7C, $E6, $40, $21, $40,
    db $CC, $5A, $20, $80, $8F, $46, $BD, $58, $BA, $7C, $8F, $46, $D4, $58, $E6, $40,
    db $21, $40, $AC, $60, $20, $80, $34, $40, $34, $41, $E6, $40, $21, $40, $CC, $60,
    db $20, $80, $34, $40, $2D, $41, $F7, $47, $F6, $58, $60, $5A, $62, $46, $8F, $46,
    db $F8, $58, $E6, $40, $21, $40, $EC, $60, $20, $80, $34, $40, $34, $41, $E6, $40,
    db $21, $40, $0C, $61, $20, $80, $51, $7B, $34, $41, $3D, $45, $8F, $46, $16, $59,
    db $E6, $40, $13, $41, $8C, $61, $72, $CD, $20, $CD, $CC, $87, $CD, $01, $F6, $7C,
    db $AC, $61, $21, $40, $72, $CD, $20, $80, $51, $7B, $8F, $46, $34, $59, $E6, $40,
    db $13, $41, $CC, $61, $72, $CD, $20, $A8, $B9, $8C, $CD, $01, $2C, $7D, $21, $40,
    db $72, $CD, $20, $80, $51, $7B, $34, $41, $E6, $40, $21, $40, $EC, $61, $20, $80,
    db $34, $40, $2D, $41, $68, $41, $64, $59, $91, $59, $E4, $7C, $C8, $45, $E6, $40,
    db $21, $40, $2C, $61, $20, $80, $34, $40, $34, $41, $E6, $40, $21, $40, $4C, $61,
    db $20, $80, $34, $40, $34, $41, $E6, $40, $21, $40, $6C, $61, $20, $80, $51, $7B,
    db $23, $45, $2A, $45, $FF, $CF, $7C, $E6, $40, $21, $40, $CC, $5A, $20, $80, $8F,
    db $46, $BD, $58, $BA, $7C, $8F, $46, $9F, $59, $E6, $40, $21, $40, $3C, $55, $20,
    db $80, $34, $40, $23, $45, $2A, $45, $FF, $3D, $45, $8F, $46, $B4, $59, $E6, $40,
    db $21, $40, $0C, $5D, $20, $80, $8F, $46, $AB, $59, $E6, $40, $21, $40, $0C, $5B,
    db $20, $80, $34, $40, $34, $41, $E6, $40, $21, $40, $2C, $5B, $20, $80, $34, $40,
    db $34, $41, $E6, $40, $21, $40, $4C, $5B, $20, $80, $8F, $46, $AB, $59, $E6, $40,
    db $21, $40, $AC, $5D, $20, $80, $34, $40, $34, $41, $E6, $40, $21, $40, $CC, $5D,
    db $20, $80, $34, $40, $34, $41, $E6, $40, $21, $40, $EC, $5D, $20, $80, $34, $40,
    db $34, $41, $E6, $40, $21, $40, $0C, $5E, $20, $80, $8F, $46, $AB, $59, $E6, $40,
    db $21, $40, $2C, $5E, $20, $80, $34, $40, $34, $41, $E6, $40, $21, $40, $4C, $5E,
    db $20, $80, $34, $40, $34, $41, $E6, $40, $21, $40, $6C, $5E, $20, $80, $34, $40,
    db $34, $41, $E6, $40, $21, $40, $8C, $5E, $20, $80, $34, $40, $34, $41, $E6, $40,
    db $21, $40, $AC, $5E, $20, $80, $8F, $46, $AB, $59, $E6, $40, $21, $40, $CC, $5B,
    db $20, $80, $8F, $46, $AB, $59, $E6, $40, $21, $40, $CC, $5A, $20, $80, $8F, $46,
    db $AB, $59, 

    db "How are you     "
    db "doing today?   ▽"

    db "A cow costs 5000"
    db "G. Would you   ▽"
    db "like to buy one?"
    db " Buy   Don't Buy"

    db "Is that so?     "
    db "                "
    db "A chicken costs "
    db "500G. Would you▽"
    db "If you buy too  "
    db "many animals at▽"
    db "once, they will "
    db "get upset.     ▽"
    db "You should stop "
    db "buying.         "

    db "That<'s> Cow Medic-"
    db "ine.Be sure to ▽"
    db "face the cow    "
    db "when using it. ▽"

    db "It is 1000G.    "
    db "Would you like ▽"

    db "Thank You!      "
    db "                "

    db "That is a       "
    db "M. Potion      ▽"
    db "for breeding    "
    db "cows.          ▽"
    db "It is 4000G.    "
    db "Would you like ▽"
    db "That<'s> Cow       "
    db "Feed, but it is▽"
    db "It is 700G.     "
    db "Would you like ▽"
    db "That<'s> Chicken   "
    db "Feed, but it is▽"
    db "best to feed    "
    db "them fodder    ▽"
    db "as much as      "
    db "possible       ▽"
    db "It is 500G.     "

    db "Would you like ▽"

    db "See you later.  "
    db "                "
    db "That will preve-"
    db "nt a cow from  ▽"
    db "getting sick for"
    db "30days.        ▽"
    db "It is 2000G.    "
    db "Would you like ▽"
    db "to buy it?      "

    db " Buy   Don't Buy"

    db "Hold on, I can't"
    db "sell you a cow.▽"
    db "You don't have  "
    db "enough grass   ▽"
    db "planted. Please "
    db "come back when ▽"
    db "you plant more  "
    db "grass.          "

    db "Hold on, I can't"
    db "sell you a     ▽"
    db "chicken.        "
    db "You do not have▽"
    db "enough grass    "
    db "planted.       ▽"
    db "Please come back"
    db "when you plant ▽"
    db "more grass.     "
    db "                "

    db "Please name the "
    db "cow.           ▽"
    db "    , is a good "
    db "name.          ▽"
    db "Here, take this "
    db "cow bell as a  ▽"
    db "gift.           "
    db "               ▽"
    db "Now I will take "
    db "     to your   ▽"
    db "barn.           "
    db "                "

    db "Would you       "
    db "like to        ▽"
    db "sell a cow?     "
    db " Yes          No"
    db "Which cow?      "
    db "Choose a name  ▽"
    db "and press the   "
    db "A button.      ▽"
    db "I will take the "
    db "cow from the   ▽"
    db "barn. But don't "
    db "let me buy     ▽"
    db "anymore.        "
    db "                "

    db "I will take the "
    db "chicken to your▽"
    db "chicken coop.   "
    db "                "

    db "Would you like  "
    db "to sell a      ▽"
    db "chicken?        "
    db " Yes          No"
    db "Which chicken?  "
    db "Please select a▽"
    db "number and press"
    db "the A button.  ▽"
    db "I will take the "
    db "chicken from   ▽"
    db "the chicken coop"
    db "But don't let  ▽"
    db "me buy anymore. "
    db "                "

    db "Selling Price   "
    db "           G.   "

    db "I can't buy it. "
    db "                "

    db "I will give you "
    db "     G for     ▽"
    db "                "
    db " Sell  No", $8D, "Sell  "

ChurchTextPointerList:: ; 1bx620c
    dw Village_TextWindowClear
    dw LoadTextString_Village
    dw ChurchMaria1Text
    dw wVillageTextBuffer
    db VILLAGE_MAX_NUM_CHARACTERS,
    dw sPlayerName
    dw wVillageTextBuffer + $10
    db NAME_TEXT_LENGTH

    dw PrepareTextBlock
    dw wVillageTextBuffer
    db VILLAGE_MAX_NUM_CHARACTERS,
    db FIRST_TEXTBOX_TILE
    dw VillagePrintCharacter
    dw Label_01b_4134

    text_block ChurchMaria2Text

    dw Village_TextWindowClear 
    dw PrepareTextBlock
    dw ChurchMaria3Text
    db VILLAGE_MAX_NUM_CHARACTERS,
    db FIRST_TEXTBOX_TILE
    dw VillagePrintCharacter
    dw Label_01b_412d
    dw Label_01b_4474
    db $46, $62, $1E, $63, $2B, $64, $67, $63, 

    text_block Pray1Text
    text_block Pray2Text

    dw Village_TextWindowClear 
    dw PrepareTextBlock
    db $EC, $64, 
    db VILLAGE_MAX_NUM_CHARACTERS,
    db FIRST_TEXTBOX_TILE
    dw VillagePrintCharacter
    db $23, $45, $2A, $45,
    db $FF, $CA, $46, $73, $62, $DE, $62, $EC, $46, $0F, $99, $62, $7A, $62, 

    dw Village_TextWindowClear 
    dw PrepareTextBlock
    db $6C, $68, 
    db VILLAGE_MAX_NUM_CHARACTERS,
    db FIRST_TEXTBOX_TILE
    dw VillagePrintCharacter
    db $34, $41, 

    dw Village_TextWindowClear 
    dw PrepareTextBlock
    db $8C, $68,
    db VILLAGE_MAX_NUM_CHARACTERS,
    db FIRST_TEXTBOX_TILE
    dw VillagePrintCharacter
    db $23, $45, $2A, $45, $FF, $8F, $46, $24, $62, $07, $47,
    dw Village_TextWindowClear 

    dw PrepareTextBlock
    db $6C, $67, $20, $80, 
    dw VillagePrintCharacter
    db $34, $41, 

    dw Village_TextWindowClear 
    dw PrepareTextBlock
    db $8C,
    db $67, $20, $80, $34, $40, $34, $41, 

    dw Village_TextWindowClear 
    dw PrepareTextBlock
    db $AC, $67, $20, $80, $34,
    db $40, $34, $41, 
    dw Village_TextWindowClear 

    dw PrepareTextBlock
    db $CC, $67, $20, $80, $34, $40, $34, $41
    dw Village_TextWindowClear 

    dw PrepareTextBlock
    db $EC, $67, $20, $80, $34, $40, $23, $45, $2A, $45, $FF, $8F, $46,
    db $24, $62, $EC, $46, $1F, $E5, $62, $7A, $62, $2A, $47, 
    dw Village_TextWindowClear 

    dw PrepareTextBlock
    db $6C,
    db $67, $20, $80, $34, $40, $34, $41, 
    dw Village_TextWindowClear 

    dw PrepareTextBlock
    db $0C, $68, $20, $80, $34,
    db $40, $34, $41, 

    dw Village_TextWindowClear 
    dw PrepareTextBlock
    db $2C, $68, $20, $80, $34, $40, $34, $41, $E6,
    db $40, 
    dw PrepareTextBlock

    db $4C, $68, $20, $80, $34, $40, $23, $45, $2A, $45, $FF, $8F, $46,
    db $24, $62, 

    text_block AskForFortune1Text
    text_block AskForFortune2Text

    dw Village_TextWindowClear 
    dw LoadTextString_Village
    dw AskForFortune3Text
    dw wVillageTextBuffer
    db VILLAGE_MAX_NUM_CHARACTERS,
    dw sPlayerName
    dw wVillageTextBuffer + $07
    db NAME_TEXT_LENGTH

    dw PrepareTextBlock
    dw wVillageTextBuffer
    db VILLAGE_MAX_NUM_CHARACTERS,
    db $80, $34, $40,
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
    db $85, $47, $21, $40, 
    dw wVillageTextBuffer
    db VILLAGE_MAX_NUM_CHARACTERS,
    db $80, $34, $40, $97, $47, $8D, $63,
    db $EB, $47, 

    dw Village_TextWindowClear 
    db $21, $40, $4C, $67, $20, $80, $34, $40, $23, $45, $2A, $45,
    db $FF, $8F, $46, $24, $62

    dw Village_TextWindowClear 
    dw PrepareTextBlock
    dw GoodFortuneText
    db VILLAGE_MAX_NUM_CHARACTERS,
    db $80, $34, $40, $34, $41, 

    dw Village_TextWindowClear
    dw PrepareTextBlock
    db $AC, $65, $20, $80, $34, $40, $34, $41, $70, $45

    dw Village_TextWindowClear 
    dw PrepareTextBlock
    db $CC, $65, $20, $80, $34, $40, $23, $45, $2A, $45, $C8, $8F, $46,
    db $24, $62

    text_block NormalFortune1Text

    dw Village_TextWindowClear
    db $21, $40
    dw NormalFortune2Text
    db VILLAGE_MAX_NUM_CHARACTERS,
    db $80, $34, $40, $34, $41, $8F, $45, 

    dw Village_TextWindowClear
    dw PrepareTextBlock
    dw NormalFortune3Text
    db VILLAGE_MAX_NUM_CHARACTERS,
    db $80, $8F, $46, $D4, $63, 

    text_block BadFortune1Text

    dw Village_TextWindowClear
    db $21, $40
    dw BadFortune2Text 
    db $20, $80, $34, $40, $34, $41, $92, $45
    dw Village_TextWindowClear 
    db $21, $40, $8C, $66, $20, $80, $8F, $46, $D4, $63
    text_block GoodLuckGoodFortune1Text

    dw Village_TextWindowClear 
    db $21, $40, $CC, $66,
    db $20, $80, $34, $40, $23, $45, $2A, $45, $80, $3D, $45, $8F, $46, $48, $64, 

ChurchMaria1Text:: ; 1bx644c
    db "Good Afternoon  "
    db "    .          ▽"
ChurchMaria2Text:: ; 1bx646c
    db "How can I help  "
    db "you today?     ▽"
ChurchMaria3Text:: ; 1bx648c
    db " Pray           "
    db " Fortune Telling"

Pray1Text:: ; 1bx64ac
    db "You really have "
    db "a righteous    ▽"
Pray2Text:: ; 1bx64ac
    db "heart and soul. "
    db "Please come in ▽"
Pray3Text:: ; 1bx64ac
    db "and join        "
    db "the service.    "

AskForFortune1Text:: ; 1bx650c
    db "Would you like  "
    db "me to tell you ▽"
AskForFortune2Text:: ; 1bx652c
    db "your fortune?   "
    db "I am happy to  ▽"
AskForFortune3Text:: ; 1bx654c
    db "do it.     ,    "
    db "your fortune   ▽"
AskForFortune4Text:: ; 1bx656c
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
BadFortune3Text:: ; 1bx668c
    db "will happen for "
    db "you tomorrow.   "

GoodLuckGoodFortune1Text:: ; 1bx66ac
    db "Wishing you     "
    db "good luck and  ▽"
GoodLuckGoodFortune2Text:: ; 1bx66cc
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
    dw Village_TextWindowClear
    db $21, $40, $C8, $6B, $20, $80, $8F, $46, $3F, $6A, 

    db "Ahh,     .      "
    db "Would you like ▽"
    db "to have         "
    db "something?     ▽"
    db "That's a Cake.  "
    db "It is a little ▽"
    db "sweet, but it is"
    db "very delicious.▽"
    db "When you eat the"
    db "cake, it will  ▽"
    db "make you        "
    db "refreshed.     ▽"
    db "The cost is 300G"
    db " Buy   Don't Buy"

    db "Thank you for   "
    db "waiting...     ▽"
    db "Here you go.    "
    db "Enjoy!          "

    db "You don't want  "
    db "to buy         ▽"
    db "anything?       "
    db "Oh, I see...    "

LunchBoxText::
    db "That<'s> a Lunch   "
    db "Box.           ▽"
    db "It is very tasty"
    db "and it will    ▽"
    db "recover your    "
    db "health.        ▽"
    db "It is 500G      "
    db " Buy   Don't Buy"

CroissantText::
    db "That's a Croiss-"
    db "ant which I    ▽"
    db "handmade. The   "
    db "cost is 300G   ▽"
    db "for 10 of them. "
    db " Buy   Don't Buy"

RiceBallText::
    db "That<'s> a Rice    "
    db "Ball which was ▽"
    db "just prepared   "
    db "from a famous  ▽"
    db "brand of rice.  "
    db "It is 200G for ▽"
    db "10 of them.     "
    db " Buy   Don't Buy"

MeatDumplingText::
    db "That<'s> a Meat Du-"
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
    db $72, $20, $80, $8F, $46, $3F, $71, 

    db "Welcome, come in"
    db "    .          ▽"
    db "Those are Turnip"
    db "Seeds.         ▽"
    db "They grow fast, "
    db "but are not    ▽"
    db "worth much.     "
    db "                "

    db "Thank you very  "
    db "much.          ▽"
    db "Please make sure"
    db "you water them ▽"
    db "everyday.       "
    db "                "

    db "Huh...          "
    db "You don't want ▽"
    db "to buy anything?"
    db "                "

PotatoSeedsText::
    db "Those are Potato"
    db "Seeds.         ▽"
    db "They grow a     "
    db "little slower  ▽"
    db "than turnips.   "
    db "               ▽"

TomatoSeedsText::
    db "Those are Tomato"
    db "Seeds. If you  ▽"
    db "water them      "
    db "during Summer, ▽"
    db "they will keep  "
    db "growing.       ▽"

CornSeedsText::
    db "Those are Corn  "
    db "Seeds.         ▽"
    db "They require    "
    db "a lot of       ▽"
    db "attention, but  "
    db "are delicious. ▽"

EggplantSeedsText::
    db "Those are       "
    db "Eggplant Seeds.▽"
    db "They grow fast, "
    db "but are not    ▽"
    db "worth much.     "
    db "               ▽"

PeanuSeedsText::
    db "Those are Peanut"
    db "Seeds.         ▽"
    db "They grow       "
    db "a little slower▽"
    db "than eggplants. "
    db "               ▽"

CarrotSeedsText::
    db "Those are Carrot"
    db "Seeds.         ▽"
    db "They grow       "
    db "a little slower▽"
    db "than eggplants. "
    db "               ▽"

BroccoliSeedsText::
    db "Those are Brocc-"
    db "oli Seeds.     ▽"
    db "They require    "
    db "a lot of       ▽"
    db "attention, but  "
    db "you can harvest▽"
    db "them many times."
    db "               ▽"

GrassSeedsText::
    db "Those are Grass "
    db "Seeds.         ▽"
    db "Use grass to    "
    db "feed your      ▽"
    db "animals.        "
    db "               ▽"

    db "Thank you very  "
    db "much.           "

    db "you don't have  "
    db "enough money.   "

    db "Since this is   "
    db "your first     ▽"
    db "purchase, I will"
    db "give you this  ▽"
    db "Water Can.      "
    db "                "

    db "Keep up the good"
    db "work! Bye-Bye.  "
    db "How many do you "
    db "want?          ▽"
    db "                "
    db "It is        G. "
    db $E6, $40, $34, $40, $8F, $46, $15, $77, $21, $40, $73, $77, $20, $80, $8F, $46,
    db $11, $77, $21, $40, $93, $77, $20, $80, $8F, $46, $11, $77, $21, $40, $B3, $77,
    db $20, $80, $8F, $46, $11, $77, $21, $40, $D3, $77, $20, $80, $8F, $46, $11, $77,
    db $21, $40, $F3, $77, $20, $80, $8F, $46, $11, $77, $21, $40, $13, $78, $20, $80,
    db $8F, $46, $11, $77, $21, $40, $33, $78, $20, $80, $8F, $46, $11, $77, $21, $40,
    db $53, $78, $20, $80, $8F, $46, $11, $77, $21, $40, $73, $78, $20, $80, $8F, $46,
    db $11, $77, 
TurnipSeedPriceText::
    db "Turnip Seeds    "
    db "1 bag is 120G.  "

PotatoSeedPriceText::
    db "Potato Seeds    "
    db "1 bag is 150G.  "

TomatoSeedPriceText::
    db "Tomato Seeds    "
    db "1 bag is 200G.  "

CornSeedPriceText::
    db "Corn Seeds      "
    db "1 bag is 300G.  "

EggplantSeedPriceText::
    db "Eggplant Seeds  "
    db "1 bag is 150G.  "

PeanutSeedPriceText::
    db "Peanut Seeds    "
    db "1 bag is 200G.  "

CarrotSeedPriceText::
    db "Carrot Seeds    "
    db "1 bag is 300G.  "

BroccoliSeedPriceText::
    db "Broccoli Seeds  "
    db "1 bag is 500G.  "

GrassSeedPriceText::
    db "Grass Seeds     "
    db "1 bag is 500G.  "
    db $21, $40, $A7, $78, $10, $80, $8F, $46, $11, $77, $21, $40, $B7, $78, $10, $80,
    db $8F, $46, $11, $77, $0C, $1A, $2D, $1E, $2B, $22, $1A, $25, $EF, $EF, $EF, $EF,
    db $EF, $EF, $EF, $EF, $07, $28, $26, $1E, $EF, $04, $31, $29, $1A, $27, $2C, $22,
    db $28, $27, $EF, $EF, $21, $40, $03, $79, $10, $80, $8F, $46, $11, $77, $21, $40,
    db $13, $79, $10, $80, $8F, $46, $11, $77, $21, $40, $23, $79, $10, $80, $8F, $46,
    db $11, $77, $21, $40, $33, $79, $10,
    db $80, $8F, $46, $11, $77, $21, $40, $43, $79, $10, $80, $8F, $46, $11, $77, $21,
    db $40, $53, $79, $10, $80, $8F, $46, $11, $77, 
    db "Sprinkler       "
    db "Brush           "
    db "Saddlebag       "
    db "Milker          "
    db "Cheese Maker    "
    db "Butter Maker    "
    db $21, $40, $BD, $79, $10, $80, $8F, $46, $11, $77, $21, $40, $CD, $79, $10, $80,
    db $8F, $46, $11, $77, $21, $40, $DD, $79, $10, $80, $8F, $46, $11, $77, $21, $40,
    db $ED, $79, $10, $80, $8F, $46, $11, $77, $21, $40, $FD, $79, $10, $80, $8F, $46,
    db $11, $77, $21, $40, $0D, $7A, $10, $80, $8F, $46, $11, $77, $21, $40, $1D, $7A,
    db $10, $80, $8F, $46, $11, $77, $21,
    db $40, $2D, $7A, $10, $80, $8F, $46, $11, $77, $21, $40, $3D, $7A, $10, $80, $8F,
    db $46, $11, $77, 
; text
    db "Buy a cow       "
    db "Buy a chicken   "
    db "Cow Feed        "
    db "Chicken Feed    "
    db "Cow Medicine    "
    db "M.Potion        "
    db "P.Medicine      "
    db "Sell a cow      "
    db "Sell a chicken  "

    db $21, $40, $7F, $7A, $10, $80, $8F, $46, $11, $77, $21, $40, $8F,
    db $7A, $10, $80, $8F, $46, $11, $77, $21, $40, $9F, $7A, $10, $80, $8F, $46, $11,
    db $77, $21, $40, $AF, $7A, $10, $80, $8F, $46, $11, $77, $21, $40, $BF, $7A, $10,
    db $80, $8F, $46, $11, $77, 

; text
    db "Cake            "
    db "Lunch Box       "
    db "Croissant       "
    db "Rice Ball       "
    db "Meat Dumpling   "

    db $21, $40, $01, $7B, $10, $80, $8F, $46, $11, $77, $21,
    db $40, $11, $7B, $10, $80, $8F, $46, $11, $77, $21, $40, $21, $7B, $10, $80, $8F,
    db $46, $11, $77, $21, $40, $31, $7B, $10, $80, $8F, $46, $11, $77, $21, $40, $41,
    db $7B, $10, $80, $8F, $46, $11, $77, 

; text
    db $0E, $2B, $1A, $27, $20, $1E, $EF, $09, $2E, $22, $1C, $1E, $EF, $EF, $EF, $EF,
    db $00, $29, $29, $25, $1E, $EF, $09, $2E, $22, $1C, $1E, $EF, $EF, $EF, $EF, $EF,
    db $16, $22, $25, $1D, $EF, $06, $2B, $1A, $29, $1E, $EF, $09, $2E, $22, $1C, $1E,
    db $06, $2B, $1E, $1E, $27, $EF, $13, $1E, $1A, $EF, $EF, $EF, $EF, $EF, $EF, $EF,
    db $0C, $22, $25, $24, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF

Label_01b_something:
    ld h, b
    ld l, c
    push hl
    ld a, [wVillageCharacterPointer]
    ld e, a
    ld a, [wVillageCharacterPointer+1]
    ld d, a
    ld a, [de] ; charmap character
    cp $af
    jr z, jr_01b_7bb0

jr_01b_7b61:
    push af
    inc de
    ld a, e
    ld [wVillageCharacterPointer], a
    ld a, d
    ld [wVillageCharacterPointer+1], a
    pop af
    ld c, a
    push bc
    ld a, [wVillageTextTileNumber]
    push af
    inc a
    ld [wVillageTextTileNumber], a
    pop af
    ld de, vBGMap0 + $1c2
    cp $90 ; end of first line (tile number)
    jr c, .printCharacter
    ld de, vBGMap0 + $1f2

.printCharacter
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
    ld a, [wVillageTextCharacterCounter]
    dec a
    ld [wVillageTextCharacterCounter], a
    jr z, .finishedPrintingLine

    dec hl
    dec hl
    ret

.finishedPrintingLine
    xor a
    ld [$cd98], a
    ret


jr_01b_7bb0:
    inc de
    ld a, [wVillageTextTileNumber]
    inc a
    ld [wVillageTextTileNumber], a
    ld a, [wVillageTextCharacterCounter]
    dec a
    ld [wVillageTextCharacterCounter], a
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
    ld de, wVillageTextBuffer
    ld b, VILLAGE_MAX_NUM_CHARACTERS
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
    ld de, wVillageTextBuffer
    ld b, VILLAGE_MAX_NUM_CHARACTERS
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
