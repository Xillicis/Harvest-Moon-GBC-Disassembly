; Disassembly of "harvest_moon.gbc"
; This file was created with:
; mgbdis v2.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $013", ROMX[$4000], BANK[$13]

    inc de
    nop
    ld bc, $4141
    nop
    ld bc, $414b
    nop
    ld bc, $4155
    nop
    ld bc, $415f
    nop
    ld bc, $43fd
    nop
    ld bc, $4493
    ld bc, $3101
    ld b, l
    ld bc, $3701
    ld b, l
    ld bc, $3b01
    ld b, l
    ld bc, $4101
    ld b, l
    ld bc, $2601
    ld b, [hl]
    ld bc, $3e01
    ld b, [hl]
    ld bc, $4c01
    ld b, [hl]
    ld bc, $5601
    ld b, [hl]
    ld bc, $0701
    ld c, b
    ld bc, $d001
    ld c, c
    ld bc, $d401
    ld c, c
    ld bc, $d801
    ld c, c
    ld bc, $dc01
    ld c, c
    ld bc, $6801
    ld c, d
    ld bc, $6c01
    ld c, d
    ld bc, $7001
    ld c, d
    ld bc, $7401
    ld c, d
    ld bc, $0001
    ld c, e

Call_013_4061:
    ld bc, $0c01
    ld c, e
    ld [bc], a
    ld bc, $4c21
    ld [bc], a
    ld bc, $4c35
    ld [bc], a
    ld bc, $4c57
    ld [bc], a
    ld bc, $4c5b
    ld [bc], a
    ld bc, $4c79
    ld [bc], a
    ld bc, $4c7d
    ld [bc], a
    ld bc, $4c81
    ld [bc], a
    ld bc, $4c9d
    ld [bc], a
    ld bc, $4f8c
    ld [bc], a
    ld bc, $4f92
    ld [bc], a
    ld bc, $4f98
    ld [bc], a
    ld bc, $4f9e
    ld [bc], a
    ld bc, $5298
    ld [bc], a
    ld bc, $52a6
    ld [bc], a
    ld bc, $52b4
    ld [bc], a
    ld bc, $52c2
    ld [bc], a
    ld bc, $56d4
    ld [bc], a
    ld bc, $56d6
    ld [bc], a
    ld bc, $56d8
    ld [bc], a
    ld bc, $56da
    inc bc
    ld bc, $59d0
    inc bc
    ld bc, $59d4
    inc bc
    ld bc, $59d8
    inc bc
    ld bc, $59dc
    inc bc
    ld bc, $5a8a
    inc bc
    ld bc, $5a94
    inc bc
    ld bc, $5a9e
    inc bc
    ld bc, $5aa8
    ld bc, $2d01
    ld c, b
    nop
    nop
    ld a, d
    ld e, e
    nop
    nop
    ld a, d
    ld e, e
    nop
    nop
    ld a, d
    ld e, e
    nop
    nop
    ld a, d
    ld e, e
    nop
    nop
    ld a, d
    ld e, e
    nop
    nop
    ld a, d
    ld e, e
    nop
    nop
    ld a, d
    ld e, e
    nop
    nop
    ld a, d
    ld e, e
    nop
    nop
    ld a, d
    ld e, e
    nop
    nop
    ld a, d
    ld e, e
    nop
    nop
    ld a, d
    ld e, e
    nop
    nop
    ld a, d
    ld e, e
    nop
    nop
    ld a, d
    ld e, e
    nop
    nop
    ld a, d
    ld e, e
    nop
    nop
    ld a, d
    ld e, e
    nop
    nop
    ld a, d
    ld e, e
    nop
    nop
    ld a, d
    ld e, e
    nop
    nop
    ld a, d
    ld e, e
    nop
    nop
    ld a, d
    ld e, e
    nop
    nop
    ld a, d
    ld e, e
    nop
    nop
    ld a, d
    ld e, e
    nop
    nop
    ld a, d
    ld e, e
    nop
    nop
    ld a, d
    ld e, e
    nop
    nop
    ld a, d
    ld e, e
    nop
    nop
    ld a, d
    ld e, e
    nop
    nop
    ld a, d
    ld e, e
    ld l, c
    ld b, c
    adc d
    ld b, c
    xor e
    ld b, c
    call z, $ed41
    ld b, c
    ld c, $42
    cpl
    ld b, d
    ld d, b
    ld b, d
    ld [hl], c
    ld b, d
    sub d
    ld b, d
    or e
    ld b, d
    call nc, $f542
    ld b, d
    ld d, $43
    scf
    ld b, e
    ld e, b
    ld b, e
    ld a, c
    ld b, e
    sbc d
    ld b, e
    cp e
    ld b, e
    call c, $fa43
    nop
    ld b, [hl]
    db $10
    ld a, [$45f8]
    db $10
    ldh a, [c]
    nop
    ld b, h
    ld de, $f8f2
    ld b, e
    ld de, $00ea
    ld b, d
    db $10
    ld [$41f8], a
    ld [de], a
    ldh [c], a
    nop
    ld b, b
    ld [de], a
    ldh [c], a
    ld hl, sp+$3f
    ld [de], a
    add b
    ld hl, sp+$00
    ld c, h
    db $10
    ld hl, sp-$08
    ld c, e
    db $10
    ldh a, [rP1]
    ld c, d
    ld de, $f8f0
    ld c, c
    ld de, $f8e0
    ccf
    ld [de], a
    ldh [rP1], a
    ld b, b
    ld [de], a
    add sp, $00
    ld c, b
    db $10
    add sp, -$08
    ld b, a
    ld [de], a
    add b
    nop
    nop
    ld d, h
    ld [de], a
    nop
    ld hl, sp+$53
    ld [de], a
    ld hl, sp+$00
    ld d, d
    ld [de], a
    ld hl, sp-$08
    ld d, c
    ld [de], a
    ldh a, [rP1]
    ld d, b
    db $10
    ldh a, [$fff8]
    ld c, a
    ld [de], a
    add sp, $00
    ld c, [hl]
    db $10
    add sp, -$08
    ld c, l
    db $10
    add b
    nop
    nop
    ld e, h
    ld [de], a
    nop
    ld hl, sp+$5b
    ld [de], a
    ld hl, sp+$00
    ld e, d
    ld [de], a
    ld hl, sp-$08
    ld e, c
    ld [de], a
    ldh a, [rP1]
    ld e, b
    ld de, $f8f0
    ld d, a
    ld de, $00e8
    ld d, [hl]
    db $10
    add sp, -$08
    ld d, l
    db $10
    add b
    ld [bc], a
    nop
    ld h, d
    ld [de], a
    ld [bc], a
    ld hl, sp+$61
    ld [de], a
    ld a, [$6000]
    ld [de], a
    ld a, [$5ff8]
    ld [de], a
    ldh a, [c]
    nop
    ld e, [hl]
    ld [de], a
    ldh a, [c]
    ld hl, sp+$5d
    ld [de], a
    ld [$5600], a
    db $10
    ld [$55f8], a
    db $10
    add b
    ld hl, sp+$00
    ld l, d
    db $10
    ld hl, sp-$08
    ld l, c
    db $10
    ldh a, [rP1]
    ld l, b
    ld de, $f8f0
    ld h, a
    ld de, $00e8
    ld h, [hl]
    ld [de], a
    add sp, -$08
    ld h, l
    ld [de], a
    ldh [rP1], a
    ld h, h
    ld [de], a
    ldh [$fff8], a
    ld h, e
    ld [de], a
    add b
    ld hl, sp+$01
    ld [hl], d
    db $10
    ld hl, sp-$07
    ld [hl], c
    db $10
    ldh a, [$ff09]
    ld [hl], b
    ld [de], a
    ldh a, [rSB]
    ld l, a
    ld [de], a
    ldh a, [$fff9]
    ld l, [hl]
    ld de, $09e8
    ld l, l
    ld [de], a
    add sp, $01
    ld l, h
    ld [de], a
    add sp, -$07
    ld l, e
    db $10
    add b
    ld hl, sp-$03
    ld a, d
    db $10
    ld hl, sp-$0b
    ld a, c
    ld [de], a
    ld hl, sp-$13
    ld a, b
    ld [de], a
    ldh a, [$fffd]
    ld [hl], a
    ld de, $f5f0
    halt
    ld [de], a
    ldh a, [$ffed]
    ld [hl], l
    ld [de], a
    add sp, -$03
    ld [hl], h
    db $10
    add sp, -$0b
    ld [hl], e
    db $10
    add b
    ld sp, hl
    db $fd
    add d
    db $10

jr_013_4275:
    ld sp, hl
    push af
    add c
    ld [de], a
    ld sp, hl
    db $ed
    add b
    ld [de], a
    pop af
    db $fd
    ld a, a
    ld de, $f5f1
    ld a, [hl]
    ld [de], a
    pop af
    db $ed
    ld a, l
    ld [de], a
    jp hl


    db $fd
    ld a, h
    db $10
    jp hl


    push af
    ld a, e
    db $10
    add b
    ld hl, sp-$01
    adc d
    db $10

jr_013_4296:
    ld hl, sp-$09
    adc c
    ld [de], a
    ld hl, sp-$11
    adc b
    ld [de], a
    ldh a, [rIE]
    add a
    ld de, $f7f0
    add [hl]
    ld [de], a
    ldh a, [$ffef]
    add l
    ld [de], a
    add sp, -$01

jr_013_42ac:
    add h
    db $10
    add sp, -$09

jr_013_42b0:
    add e
    db $10
    add b
    ld hl, sp-$08
    ld l, d
    jr nc, jr_013_42b0

    nop
    ld l, c
    jr nc, jr_013_42ac

    ld hl, sp+$68
    ld sp, $00f0
    ld h, a
    ld sp, $f8e8
    ld h, [hl]
    ld [hl-], a
    add sp, $00
    ld h, l
    ld [hl-], a
    ldh [$fff8], a

jr_013_42cd:
    ld h, h
    ld [hl-], a
    ldh [rP1], a

jr_013_42d1:
    ld h, e
    ld [hl-], a
    add b
    ld hl, sp-$09
    ld [hl], d
    jr nc, jr_013_42d1

    rst $38
    ld [hl], c
    jr nc, jr_013_42cd

    rst $28
    ld [hl], b
    ld [hl-], a
    ldh a, [$fff7]
    ld l, a
    ld [hl-], a
    ldh a, [rIE]
    ld l, [hl]
    ld sp, $efe8
    ld l, l
    ld [hl-], a
    add sp, -$09
    ld l, h
    ld [hl-], a
    add sp, -$01

jr_013_42f2:
    ld l, e
    jr nc, jr_013_4275

    ld hl, sp-$05
    ld a, d
    jr nc, jr_013_42f2

jr_013_42fa:
    inc bc
    ld a, c
    ld [hl-], a
    ld hl, sp+$0b
    ld a, b
    ld [hl-], a
    ldh a, [$fffb]
    ld [hl], a
    ld sp, $03f0
    halt
    ld [hl-], a
    ldh a, [$ff0b]
    ld [hl], l
    ld [hl-], a
    add sp, -$05
    ld [hl], h
    jr nc, jr_013_42fa

    inc bc
    ld [hl], e

jr_013_4314:
    jr nc, jr_013_4296

    ld sp, hl
    ei
    add d
    jr nc, jr_013_4314

    inc bc

jr_013_431c:
    add c
    ld [hl-], a
    ld sp, hl
    dec bc
    add b
    ld [hl-], a
    pop af
    ei
    ld a, a
    ld sp, $03f1
    ld a, [hl]
    ld [hl-], a
    pop af
    dec bc
    ld a, l
    ld [hl-], a
    jp hl


    ei
    ld a, h
    jr nc, jr_013_431c

    inc bc

jr_013_4334:
    ld a, e
    jr nc, @-$7e

    ld hl, sp-$07
    adc d
    jr nc, jr_013_4334

jr_013_433c:
    ld bc, $3289
    ld hl, sp+$09
    adc b
    ld [hl-], a
    ldh a, [$fff9]
    add a
    ld sp, $01f0
    add [hl]
    ld [hl-], a
    ldh a, [$ff09]
    add l
    ld [hl-], a
    add sp, -$07
    add h
    jr nc, jr_013_433c

    ld bc, $3083
    add b
    ld hl, sp+$01
    sub d
    db $10
    ld hl, sp-$07
    sub c
    db $10
    ldh a, [$ff09]
    sub b
    ld [de], a
    ldh a, [rSB]
    adc a
    ld de, $f9f0
    adc [hl]
    ld de, $05e8
    adc l
    ld [de], a
    add sp, -$03
    adc h
    db $10
    add sp, -$0b
    adc e
    db $10
    add b
    ld hl, sp+$01
    sbc d
    db $10
    ld hl, sp-$07
    sbc c
    db $10
    ldh a, [$ff09]
    sbc b
    ld [de], a
    ldh a, [rSB]
    sub a
    ld [de], a
    ldh a, [$fff9]
    sub [hl]
    ld de, $04e8
    sub l
    ld [de], a
    add sp, $01
    sub h
    db $10
    add sp, -$07
    sub e
    db $10
    add b
    ld sp, hl
    ld bc, $12a2
    ld sp, hl
    ld sp, hl
    and c
    ld [de], a
    pop af
    ld bc, $11a0
    pop af
    ld sp, hl
    sbc a
    ld de, $01e9
    sbc [hl]
    db $10
    jp hl


    ld sp, hl
    sbc l
    db $10
    pop hl
    ld bc, $109c
    pop hl
    ld sp, hl
    sbc e
    db $10
    add b
    cp $01
    xor d
    ld [de], a
    cp $f9
    xor c
    ld [de], a
    or $01
    xor b
    db $10
    or $f9
    and a
    db $10
    xor $01
    and [hl]
    ld de, $f9ee
    and l
    ld de, $01e6
    and h
    db $10
    and $f9
    and e
    db $10
    add b
    rst $38
    ld bc, $1262
    rst $38
    ld sp, hl
    or c
    ld [de], a
    rst $30
    ld bc, $10b0
    rst $30
    ld sp, hl
    xor a
    db $10
    rst $28
    ld bc, $11ae
    rst $28
    ld sp, hl
    xor l
    ld de, $01e7
    xor h
    db $10
    rst $20
    ld sp, hl
    xor e
    db $10
    add b
    rrca
    ld b, h
    jr nc, jr_013_4445

    ld d, c
    ld b, h
    ld [hl], d
    ld b, h
    ld d, c
    ld b, h
    ld [hl], d
    ld b, h
    ld d, c
    ld b, h
    ld [hl], d
    ld b, h
    jr nc, jr_013_4453

    ld a, [$b900]
    db $10
    ld a, [sInventory]
    db $10
    ldh a, [c]
    nop
    or a
    ld de, $f8f2
    or [hl]
    ld de, $f0f2
    or l
    ld [de], a
    ld [$b400], a
    db $10
    ld [$b3f8], a
    db $10
    ld [$b2f0], a
    ld [de], a
    add b
    ld hl, sp-$01
    pop bc
    db $10
    ei
    rst $30
    ret nz

    db $10
    ldh a, [rIE]
    cp a
    db $10
    di
    rst $30
    cp [hl]
    db $10
    add sp, -$01
    cp l
    db $10
    db $eb

jr_013_4445:
    rst $30
    cp h
    db $10
    add sp, -$11
    cp e
    ld [de], a
    db $e3
    rst $30
    cp d
    ld [de], a
    add b
    ld hl, sp+$08

jr_013_4453:
    ret


    ld [de], a
    ld hl, sp+$00
    ret z

    ld [de], a
    ld hl, sp-$08
    rst $00
    ld [de], a
    ldh a, [$ff08]
    add $12
    ldh a, [rP1]
    push bc
    ld [de], a
    ldh a, [$fff8]
    call nz, $e811
    nop
    jp $e810


    ld hl, sp-$3e
    db $10
    add b
    ld hl, sp+$00
    pop de
    db $10
    ld hl, sp-$08
    ret nc

    ld [de], a
    ld hl, sp-$10
    rst $08
    ld [de], a
    ldh a, [rP1]
    adc $11
    ldh a, [$fff8]
    call $f012
    ldh a, [$ffcc]
    ld [de], a
    add sp, $00
    rl b
    add sp, -$08
    jp z, $8010

    or c
    ld b, h
    adc $44
    rst $28
    ld b, h
    db $10
    ld b, l
    rst $28
    ld b, h
    db $10
    ld b, l
    rst $28
    ld b, h
    db $10
    ld b, l
    rst $28
    ld b, h
    db $10
    ld b, l
    rst $28
    ld b, h
    db $10
    ld b, l
    rst $28
    ld b, h
    db $10
    ld b, l
    adc $44
    ld hl, sp+$01
    ret c

    db $10
    ld hl, sp-$07
    rst $10
    db $10
    ldh a, [rSB]
    sub $11
    ldh a, [$fff9]
    push de
    ld de, $09e8
    call nc, $e810
    ld bc, $10d3
    add sp, -$07
    jp nc, $8010

    ld hl, sp+$01
    ldh [rNR10], a
    ld hl, sp-$07
    rst $18
    db $10
    ldh a, [rSB]
    sbc $11
    ldh a, [$fff9]
    db $dd
    ld de, $09e8
    call c, $e810
    ld bc, $10db
    add sp, -$07
    jp c, $e810

    pop af
    reti


    db $10
    add b
    ld hl, sp+$01
    add sp, $10
    ld hl, sp-$07
    rst $20
    db $10
    ldh a, [rSB]
    and $11
    ldh a, [$fff9]
    push hl
    ld de, $09e8
    db $e4
    db $10
    add sp, $01
    db $e3
    db $10
    add sp, -$07
    ldh [c], a
    db $10
    ldh [rSB], a
    pop hl
    db $10
    add b
    ld hl, sp+$01
    add sp, $10
    ld hl, sp-$07
    rst $20
    db $10
    ldh a, [$ff09]
    xor $10
    ldh a, [rSB]
    db $ed
    ld de, $f9f0
    db $ec
    ld de, $09e8
    db $eb
    db $10
    add sp, $01
    ld [$e810], a
    ld sp, hl
    jp hl


    db $10
    add b
    ld b, e
    ld b, l
    ld h, b
    ld b, l
    add c
    ld b, l
    and d
    ld b, l
    jp $e445


    ld b, l
    dec b
    ld b, [hl]
    ld b, e
    ld b, l
    and d
    ld b, l
    ld a, [$0600]
    db $10
    ld a, [$05f8]
    db $10
    ldh a, [c]
    nop
    inc b
    ld de, $f8f2
    inc bc
    ld de, $00ea
    ld [bc], a
    db $10
    ld [$01f8], a
    db $10
    ld [$00f0], a
    db $10
    add b
    ld a, [$0e00]
    db $10
    ld a, [$0df8]
    db $10
    ldh a, [c]
    nop
    inc c
    ld de, $f8f2
    dec bc
    ld de, $00ea
    ld a, [bc]
    db $10
    ld [$09f8], a
    db $10
    ldh [c], a
    ld hl, sp+$08
    db $10
    ldh [c], a
    ldh a, [rTAC]
    db $10
    add b
    ld a, [$1600]
    db $10
    ld a, [$15f8]
    db $10
    ldh a, [c]
    nop
    inc d
    ld de, $f8f2
    inc de
    ld de, $00ea
    ld [de], a
    db $10
    ld [$11f8], a
    db $10
    ldh [c], a
    cp $10
    db $10
    jp c, $0ffa

    db $10
    add b
    ld [$0200], a
    db $10
    ld [$11f8], a
    db $10
    ld a, [$1c00]
    db $10
    ld a, [$1bf8]
    db $10
    ldh a, [rNR10]
    ld a, [de]
    db $10
    ldh a, [$ff08]
    add hl, de
    db $10
    ldh a, [c]
    nop
    jr jr_013_45ce

    ldh a, [c]
    ld hl, sp+$17
    ld de, $f080
    db $10
    ld e, $10
    ldh a, [$ff08]
    dec e
    db $10
    ld a, [$1c00]

jr_013_45ce:
    db $10
    ld a, [$1bf8]
    db $10
    ldh a, [c]
    nop
    jr jr_013_45e7

    ldh a, [c]
    ld hl, sp+$17
    ld de, $f8ea
    ld de, $ea10
    nop
    ld [bc], a
    db $10
    add b
    ld a, [$2600]

jr_013_45e7:
    db $10
    ld a, [$25f8]
    db $10
    ldh a, [c]
    nop
    inc h
    ld de, $f8f2
    inc hl
    ld de, $00ea
    ld [hl+], a
    db $10
    ld [$21f8], a
    db $10
    ldh [c], a
    ld [$1020], sp
    ldh [c], a
    nop
    rra
    db $10
    add b
    ld a, [$2e00]
    db $10
    ld a, [$2df8]
    db $10
    ldh a, [c]
    rst $38
    inc l
    ld de, $f7f2
    dec hl
    ld de, $ffea
    ld a, [hl+]
    db $10
    ld [$29f7], a
    db $10
    ldh [c], a
    rst $30
    jr z, jr_013_4631

    ldh [c], a
    rst $28
    daa
    db $10
    add b
    ld l, h
    ld b, [hl]
    add l
    ld b, [hl]
    ld l, h
    ld b, [hl]
    add l
    ld b, [hl]
    sbc [hl]
    ld b, [hl]
    or a

jr_013_4631:
    ld b, [hl]
    sbc [hl]
    ld b, [hl]
    or a
    ld b, [hl]
    ld l, h
    ld b, [hl]
    add l
    ld b, [hl]
    ld l, h
    ld b, [hl]
    add l
    ld b, [hl]
    call nc, $ed46
    ld b, [hl]
    ld a, [bc]
    ld b, a
    db $ed
    ld b, [hl]
    ld a, [bc]
    ld b, a
    db $ed
    ld b, [hl]
    ld a, [bc]
    ld b, a
    call nc, $2346
    ld b, a
    ld d, l
    ld b, a
    inc a
    ld b, a
    ld a, [bc]
    ld b, a
    ld l, [hl]
    ld b, a
    adc a
    ld b, a
    ld l, [hl]
    ld b, a
    adc a
    ld b, a
    ld l, [hl]
    ld b, a
    adc a
    ld b, a
    or b
    ld b, a
    call $e647
    ld b, a
    inc a
    ld b, a
    ld a, [bc]
    ld b, a
    ld hl, sp+$00
    inc [hl]
    db $10
    ld hl, sp-$08
    inc sp
    db $10
    ldh a, [rP1]
    ld [hl-], a
    ld de, $f8f0
    ld sp, $e811
    nop
    jr nc, jr_013_4690

    add sp, -$08
    cpl
    db $10
    add b
    ld hl, sp-$08
    ld [hl], $10
    ldh a, [$fff8]
    dec [hl]
    ld de, $00f8
    inc [hl]

jr_013_4690:
    db $10
    ldh a, [rP1]
    ld [hl-], a
    ld de, $00e8
    jr nc, jr_013_46a9

    add sp, -$08
    cpl
    db $10
    add b
    ld hl, sp+$00
    inc a
    db $10
    ld hl, sp-$08
    dec sp
    db $10
    ldh a, [rP1]
    ld a, [hl-]

jr_013_46a9:
    ld de, $f8f0
    add hl, sp
    ld de, $00e8
    jr c, jr_013_46c2

    add sp, -$08
    scf
    db $10
    add b
    ld hl, sp-$08
    ld a, $10
    ldh a, [$fff8]
    dec a
    ld de, $00f8
    inc a

jr_013_46c2:
    db $10
    ldh a, [rP1]
    ld a, [hl-]
    ld de, $00e8
    jr c, jr_013_46db

    add sp, -$08
    scf
    db $10
    add sp, $08
    ccf
    db $10
    add b
    ld hl, sp+$00
    ld b, l
    db $10
    ld hl, sp-$08
    ld b, h

jr_013_46db:
    db $10
    ldh a, [rP1]
    ld b, e
    ld de, $f8f0
    ld b, d
    ld de, $00e8
    ld b, c
    db $10
    add sp, -$08
    ld b, b
    db $10
    add b
    db $eb
    ld [$103f], sp
    ei
    nop
    ld c, e
    db $10
    ei
    ld hl, sp+$4a
    db $10
    di
    nop
    ld c, c
    ld de, $f8f3
    ld c, b
    ld de, $00eb
    ld b, a
    db $10
    db $eb
    ld hl, sp+$46
    db $10
    add b
    ld a, [$5100]
    db $10
    ld a, [$50f8]
    db $10
    ldh a, [c]
    nop
    ld c, a
    ld de, $f8f2
    ld c, [hl]
    ld de, $00ea
    ld c, l
    db $10
    ld [$4cf8], a
    db $10
    add b
    db $fc
    ld bc, $1057
    db $fc
    ld sp, hl
    ld d, [hl]
    db $10
    db $f4
    ld bc, $1155
    db $f4
    ld sp, hl
    ld d, h
    ld de, $01ec
    ld d, e
    db $10
    db $ec
    ld sp, hl
    ld d, d
    db $10
    add b
    db $fc
    ld bc, $1057
    db $fc
    ld sp, hl
    ld d, [hl]
    db $10
    db $ec
    ld bc, $1053
    db $ec
    ld sp, hl
    ld d, d
    db $10
    db $f4
    ld bc, $1159
    db $f4
    ld sp, hl
    ld e, b
    ld de, $fc80
    ld bc, $105f
    db $fc
    ld sp, hl
    ld e, [hl]
    db $10
    db $f4
    ld bc, $115d
    db $f4
    ld sp, hl
    ld e, h
    ld de, $01ec
    ld e, e
    db $10
    db $ec
    ld sp, hl
    ld e, d
    db $10
    add b
    ld hl, sp+$00
    ld h, a
    db $10
    ld hl, sp-$08
    ld h, [hl]
    db $10
    ldh a, [$ff08]
    ld h, l
    db $10
    ldh a, [rP1]
    ld h, h
    ld de, $f8f0
    ld h, e
    ld de, $09e8
    ld h, d
    db $10
    add sp, $01
    ld h, c
    db $10
    add sp, -$07
    ld h, b
    db $10
    add b
    add sp, $06
    ld h, d
    db $10
    add sp, -$02
    ld h, c
    db $10
    add sp, -$0a
    ld h, b
    db $10
    ld hl, sp+$00

jr_013_479d:
    ld l, h
    db $10
    ld hl, sp-$08
    ld l, e
    db $10
    ldh a, [rP1]
    ld l, d
    ld de, $f8f0
    ld l, c
    ld de, $f0f0
    ld l, b
    db $10
    add b
    di
    db $ec
    ld h, d
    jr nc, jr_013_479d

    cp $6e
    db $10
    add sp, -$0a
    ld l, l
    db $10
    ld hl, sp-$04
    ld [hl], d
    db $10
    ld hl, sp-$0c
    ld [hl], c
    db $10
    ldh a, [$fffc]
    ld [hl], b
    ld de, $f4f0
    ld l, a
    ld de, $f880
    nop
    ld a, b
    db $10
    ld hl, sp-$08
    ld [hl], a
    ld de, $f0f8
    halt
    ld de, $00f0
    ld [hl], l
    db $10
    ldh a, [$fff8]
    ld [hl], h
    db $10
    ldh a, [$fff0]
    ld [hl], e
    db $10
    add b
    ld sp, hl
    ld bc, $1080
    ld sp, hl
    ld sp, hl
    ld a, a
    ld de, $f1f9
    ld a, [hl]
    ld de, $01f1
    ld a, l
    db $10
    pop af
    ld sp, hl
    ld a, h
    db $10
    pop af
    pop af
    ld a, e
    db $10
    jp hl


    ld sp, hl
    ld a, d
    db $10
    jp hl


    pop af
    ld a, c
    db $10
    add b
    scf
    ld c, b
    ld d, h
    ld c, b
    ld [hl], l
    ld c, b
    sub [hl]
    ld c, b
    or e
    ld c, b
    ret nc

    ld c, b
    pop af
    ld c, b
    ret nc

    ld c, b
    ld [de], a
    ld c, c
    inc sp
    ld c, c
    ld d, h
    ld c, c
    inc sp
    ld c, c
    ld [hl], l
    ld c, c
    ret nc

    ld c, b
    pop af
    ld c, b
    ret nc

    ld c, b
    ld [de], a
    ld c, c
    sub [hl]
    ld c, c
    or a
    ld c, c
    scf
    ld c, b
    ld d, h
    ld c, b
    ld [hl], l
    ld c, b
    sub [hl]
    ld c, b
    or e
    ld c, b
    ldh a, [rSB]
    add l
    ld de, $f9f0
    add h
    db $10
    ldh a, [$fff1]
    add e
    db $10
    add sp, $01
    add d
    db $10
    add sp, -$07
    add c
    db $10
    ld hl, sp+$00
    add a
    db $10
    ld hl, sp-$08
    add [hl]
    db $10
    add b
    ld hl, sp+$01
    adc a
    db $10
    ld hl, sp-$07
    adc [hl]
    db $10
    rst $30
    pop af
    adc l
    db $10
    rst $28
    pop af
    adc d
    db $10
    ldh a, [rSB]
    adc h
    ld de, $f9f0
    adc e
    db $10
    add sp, $01
    adc c
    db $10
    add sp, -$07
    adc b
    db $10
    add b
    ld hl, sp+$01
    sub a
    db $10
    ld hl, sp-$07
    sub [hl]
    db $10
    ldh a, [rSB]
    sub l
    ld de, $f9f0
    sub h
    db $10
    ldh a, [$fff1]
    sub e
    db $10
    add sp, $01
    sub d
    db $10
    add sp, -$07
    sub c
    db $10
    add sp, -$0f
    sub b
    db $10
    add b
    ld hl, sp-$01
    sbc [hl]
    db $10
    ld hl, sp-$09
    sbc l
    db $10
    ldh a, [rSC]
    sbc h
    ld de, $faf0
    sbc e
    ld de, $f2f0
    sbc d
    db $10
    add sp, $02
    sbc c
    db $10
    add sp, -$06
    sbc b
    db $10
    add b
    add sp, $02
    sbc c
    db $10
    add sp, -$06
    sbc b
    db $10
    ld hl, sp-$09
    sbc l
    db $10
    ld hl, sp-$01
    and d
    db $10
    ldh a, [rSC]
    and c
    ld de, $faf0
    and b
    ld de, $f2f0
    sbc a
    db $10
    add b
    rst $20
    dec bc
    ld h, d
    db $10
    add sp, $03
    and h
    db $10
    add sp, -$05
    and e
    db $10
    ld hl, sp+$02
    xor c
    db $10
    ld hl, sp-$06
    xor b
    db $10
    ldh a, [$ff0a]
    and a
    db $10
    ldh a, [rSC]
    and [hl]
    ld de, $faf0
    and l
    ld de, $e780
    inc c
    ld h, d
    db $10
    add sp, $04
    and h
    db $10
    add sp, -$04
    and e
    db $10
    ld hl, sp+$02
    xor [hl]
    db $10
    ld hl, sp-$06
    xor l
    db $10
    ldh a, [$ff0a]
    xor h
    ld de, $02f0
    xor e
    ld de, $faf0

jr_013_490f:
    xor d
    ld de, $f880
    ld b, $b5
    db $10

jr_013_4916:
    ld hl, sp-$02
    or h
    db $10
    add sp, -$0a
    ld h, d
    jr nc, jr_013_490f

    ld b, $b3
    ld de, $fef0

jr_013_4924:
    or d
    ld de, $f6f0
    or c
    ld de, $06e8
    or b
    db $10
    add sp, -$02
    xor a
    db $10
    add b
    rst $20
    rst $28
    ld h, d
    jr nc, @-$16

jr_013_4938:
    rst $30
    and h
    jr nc, jr_013_4924

jr_013_493c:
    rst $38
    and e
    jr nc, jr_013_4938

    ld hl, sp-$57
    jr nc, jr_013_493c

    nop

jr_013_4945:
    xor b
    jr nc, jr_013_4938

    ldh a, [$ffa7]
    jr nc, jr_013_493c

    ld hl, sp-$5a
    ld sp, $00f0
    and l
    ld sp, $e780
    xor $62
    jr nc, @-$16

jr_013_4959:
    or $a4
    jr nc, jr_013_4945

jr_013_495d:
    cp $a3
    jr nc, jr_013_4959

    ld hl, sp-$52
    jr nc, jr_013_495d

    nop

jr_013_4966:
    xor l
    jr nc, jr_013_4959

    ldh a, [$ffac]
    ld sp, $f8f0
    xor e
    ld sp, $00f0

jr_013_4972:
    xor d
    ld sp, $f880

jr_013_4976:
    db $f4
    or l
    jr nc, jr_013_4972

jr_013_497a:
    db $fc
    or h
    jr nc, jr_013_4966

    inc b
    ld h, d
    db $10
    ldh a, [$fff4]
    or e
    ld sp, $fcf0
    or d
    ld sp, $04f0
    or c
    jr nc, jr_013_4976

    db $f4
    or b
    jr nc, jr_013_497a

    db $fc
    xor a
    jr nc, jr_013_4916

    ldh a, [$fff0]
    ld a, [$e810]
    ldh a, [$ff62]
    jr nc, @-$06

    nop
    cp e
    db $10
    ld hl, sp-$08
    cp d
    db $10
    ldh a, [rP1]
    cp c
    ld de, $f8f0
    cp b
    ld de, $00e8
    or a
    db $10
    add sp, -$08
    or [hl]

jr_013_49b5:
    db $10
    add b
    ei
    nop
    ld c, e
    db $10
    ei
    ld hl, sp+$4a
    db $10
    di
    nop
    ld c, c
    ld de, $f8f3
    ld c, b

jr_013_49c6:
    ld de, $00eb
    ld b, a
    db $10
    db $eb
    ld hl, sp+$46
    db $10
    add b
    ldh [rOBP1], a
    pop af
    ld c, c
    ld [bc], a
    ld c, d
    inc de
    ld c, d
    inc h
    ld c, d
    dec [hl]
    ld c, d
    ld b, [hl]
    ld c, d
    ld d, a
    ld c, d
    ld hl, sp+$00
    cp a
    db $10
    ld hl, sp-$08
    cp [hl]
    db $10
    ldh a, [rP1]
    cp l
    db $10
    ldh a, [$fff8]
    cp h
    db $10
    add b
    rst $28
    nop
    cp l
    db $10
    rst $28
    ld hl, sp-$44
    db $10
    rst $30
    nop
    pop bc
    db $10
    rst $30
    ld hl, sp-$40
    db $10
    add b
    ld hl, sp+$00
    rl b
    ld hl, sp-$08
    jp z, $f010

    nop
    ret


    db $10
    ldh a, [$fff8]
    ret z

    db $10
    add b
    rst $30
    nop
    call $f710
    ld hl, sp-$34
    db $10
    rst $28
    nop
    ret


    db $10
    rst $28
    ld hl, sp-$38
    db $10
    add b
    ld hl, sp-$08
    swap b
    ld hl, sp+$00
    jp z, $f030

    ld hl, sp-$37
    jr nc, @-$0e

jr_013_4a31:
    nop
    ret z

    jr nc, jr_013_49b5

    rst $30
    ld hl, sp-$33
    jr nc, jr_013_4a31

    nop
    call z, $ef30
    ld hl, sp-$37
    jr nc, jr_013_4a31

    nop
    ret z

    jr nc, jr_013_49c6

    ld hl, sp+$00
    push bc
    db $10
    ld hl, sp-$08
    call nz, $f010
    nop
    jp $f010


    ld hl, sp-$3e
    db $10
    add b
    rst $28
    nop
    jp $ef10


    ld hl, sp-$3e
    db $10
    rst $30
    nop
    rst $00
    db $10
    rst $30
    ld hl, sp-$3a
    db $10
    add b
    ld a, b
    ld c, d
    adc c
    ld c, d
    sbc d
    ld c, d
    xor e
    ld c, d
    cp h
    ld c, d
    call $de4a
    ld c, d
    rst $28
    ld c, d
    ldh a, [rP1]
    cp l
    db $10
    ldh a, [$fff8]
    cp h
    db $10
    ld hl, sp+$00
    rst $08
    db $10
    ld hl, sp-$08
    adc $10
    add b
    pop af
    nop
    cp l
    db $10
    pop af
    ld hl, sp-$44
    db $10
    ld sp, hl
    nop
    rst $08
    db $10
    ld sp, hl
    ld hl, sp-$32
    db $10
    add b
    ld hl, sp+$00
    rst $10
    db $10
    ld hl, sp-$08
    sub $10
    ldh a, [rP1]
    db $fc
    db $10
    ldh a, [$fff8]
    ei
    db $10
    add b
    pop af
    nop
    db $d3
    db $10
    pop af
    ld hl, sp-$2e
    db $10
    ld sp, hl
    nop
    push de
    db $10
    ld sp, hl
    ld hl, sp-$2c
    db $10
    add b
    ld hl, sp-$08
    rst $10
    jr nc, @-$06

    nop
    sub $30
    ldh a, [$fff8]
    db $fc
    jr nc, @-$0e

    nop
    ei
    jr nc, @-$7e

    pop af
    ld hl, sp-$2d
    jr nc, @-$0d

    nop

jr_013_4ad3:
    jp nc, $f930

    ld hl, sp-$2b
    jr nc, jr_013_4ad3

    nop
    call nc, $8030
    ldh a, [rP1]
    jp $f010


    ld hl, sp-$3e
    db $10
    ld hl, sp+$00
    pop de
    db $10
    ld hl, sp-$08
    ret nc

    db $10
    add b
    pop af
    nop
    jp $f110


    ld hl, sp-$3e
    db $10
    ld sp, hl
    nop
    pop de
    db $10
    ld sp, hl
    ld hl, sp-$30
    db $10
    add b
    ld d, $4b
    cpl
    ld c, e
    ld c, b
    ld c, e
    ld h, l
    ld c, e
    add d
    ld c, e
    sbc e
    ld c, e
    xor h
    ld c, e
    cp l
    ld c, e
    jp nc, $ef4b

    ld c, e
    ld [$f84c], sp
    nop
    db $dd
    ld de, $f8f8
    call c, $f011
    nop
    db $db
    ld de, $f8f0
    jp c, $e811

    nop
    reti


    db $10
    add sp, -$08
    ret c

    db $10
    add b
    ld hl, sp+$00
    db $e3
    ld de, $f8f8
    ldh [c], a
    ld de, $00f0
    pop hl
    db $10
    ldh a, [$fff8]
    ldh [rNR10], a
    add sp, $00
    rst $18
    db $10
    add sp, -$08
    sbc $10
    add b
    push af
    nop
    ld [$f511], a
    ld hl, sp-$17
    ld de, $00ed

jr_013_4b52:
    add sp, $11
    db $ed
    ld hl, sp-$19
    ld de, $00e5
    and $10
    push hl
    ld hl, sp-$1b
    db $10
    db $dd
    db $fc
    db $e4
    db $10
    add b
    ldh a, [rP1]
    db $ed
    ld de, $f8f0
    db $ec
    ld de, $f8e8

jr_013_4b6f:
    db $eb
    ld de, $00e8
    add sp, $11
    ldh [rP1], a
    and $10
    ldh [$fff8], a
    push hl
    db $10
    ret c

    db $fc
    db $e4
    db $10
    add b
    ldh a, [rP1]
    di
    ld de, $f8f0
    ldh a, [c]
    ld de, $00e8
    pop af
    ld de, $f8e8

jr_013_4b90:
    ldh a, [rNR11]
    ldh [rP1], a
    rst $28
    db $10
    ldh [$fff8], a
    xor $10
    add b
    ldh a, [$fff8]
    push af
    jr nc, jr_013_4b90

    nop

jr_013_4ba1:
    db $f4
    jr nc, @-$06

    nop
    ld sp, hl
    db $10
    ld hl, sp-$08
    ld hl, sp+$10
    add b
    ld hl, sp+$00
    rst $30
    db $10
    ld hl, sp-$08
    or $10
    ldh a, [rP1]
    push af
    db $10
    ldh a, [$fff8]
    db $f4
    db $10
    add b
    push af
    ld hl, sp-$18
    ld sp, $00f5

jr_013_4bc3:
    rst $20
    ld sp, $f8ed
    and $30
    db $ed
    nop
    push hl
    jr nc, @-$19

    db $fc
    db $e4
    jr nc, jr_013_4b52

    ldh a, [$fff8]
    ld [$f031], a
    nop
    jp hl


    ld sp, $f8e8
    add sp, $31
    add sp, $00
    rst $20
    ld sp, $f8e0

jr_013_4be4:
    and $30
    ldh [rP1], a
    push hl
    jr nc, jr_013_4bc3

    db $fc
    db $e4
    jr nc, jr_013_4b6f

    ldh a, [$fff8]
    di
    ld sp, $00f0
    ldh a, [c]
    ld sp, $f8e8
    pop af
    ld sp, $00e8
    ldh a, [rWave_1]
    ldh [$fff8], a
    rst $28
    jr nc, jr_013_4be4

    nop

jr_013_4c05:
    xor $30
    add b
    ld hl, sp-$08
    db $dd
    ld sp, $00f8
    call c, $f031
    ld hl, sp-$25
    jr nc, jr_013_4c05

    nop
    jp c, $e830

    ld hl, sp-$27
    jr nc, jr_013_4c05

    nop
    ret c

    jr nc, jr_013_4ba1

    and c
    ld c, h
    cp d
    ld c, h
    and c
    ld c, h
    cp d
    ld c, h
    and c
    ld c, h
    db $d3
    ld c, h
    db $ec
    ld c, h
    dec b
    ld c, l
    db $ec
    ld c, h
    db $d3
    ld c, h
    db $d3
    ld c, h
    ld e, $4d
    ccf
    ld c, l
    ld e, $4d
    ccf
    ld c, l
    ld e, $4d
    ccf
    ld c, l
    ld e, $4d
    db $d3
    ld c, h
    ld h, b
    ld c, l
    add c
    ld c, l
    ld h, b
    ld c, l
    add c
    ld c, l
    ld h, b
    ld c, l
    add c
    ld c, l
    ld h, b
    ld c, l
    db $d3
    ld c, h
    and d
    ld c, l
    cp e
    ld c, l
    call nc, $ed4d
    ld c, l
    call nc, $ed4d
    ld c, l
    call nc, $ed4d
    ld c, l
    ld b, $4e
    rra
    ld c, [hl]
    ld b, b
    ld c, [hl]
    rra
    ld c, [hl]
    ld b, b
    ld c, [hl]
    call nc, $ed4d
    ld c, l
    call nc, $ed4d
    ld c, l
    ld h, c
    ld c, [hl]
    ld a, d
    ld c, [hl]
    sub a
    ld c, [hl]
    or b
    ld c, [hl]
    ret


    ld c, [hl]
    ldh [c], a
    ld c, [hl]
    ei
    ld c, [hl]
    inc d
    ld c, a
    dec [hl]
    ld c, a
    inc d
    ld c, a
    ei
    ld c, [hl]
    ldh [c], a
    ld c, [hl]
    ei
    ld c, [hl]
    inc d
    ld c, a
    dec [hl]
    ld c, a
    inc d
    ld c, a
    ei
    ld c, [hl]
    ret


    ld c, [hl]
    ld d, d
    ld c, a
    ld [hl], e
    ld c, a
    ld hl, sp+$00
    dec bc
    ld de, $f8f8
    ld a, [bc]
    ld de, $00f0
    add hl, bc
    db $10
    ldh a, [$fff8]
    ld [$e810], sp
    nop
    rlca
    db $10
    add sp, -$08
    ld b, $10
    add b
    ld hl, sp+$00
    dec b
    db $10
    ld hl, sp-$08
    inc b
    db $10
    ldh a, [rP1]
    inc bc
    ld de, $f8f0
    ld [bc], a
    ld de, $00e8
    ld bc, $e810
    ld hl, sp+$00
    db $10
    add b
    ld hl, sp+$00
    ld de, $f810
    ld hl, sp+$10
    db $10
    ldh a, [rP1]
    rrca
    ld de, $f8f0
    ld c, $11
    add sp, $00
    dec c
    db $10
    add sp, -$08
    inc c
    db $10
    add b
    ld hl, sp+$00
    rla
    db $10
    ld hl, sp-$08
    ld d, $10
    ldh a, [rP1]
    dec d
    ld de, $f8f0
    inc d
    ld de, $00e8
    inc de
    db $10
    add sp, -$08
    ld [de], a
    db $10
    add b
    ld hl, sp+$00
    dec e
    db $10
    ld hl, sp-$08
    inc e
    db $10
    ldh a, [rP1]
    dec de
    ld de, $f8f0
    ld a, [de]
    ld de, $00e8
    add hl, de
    db $10
    add sp, -$08
    jr jr_013_4d2d

    add b
    ld sp, hl
    nop
    dec h
    db $10
    ld sp, hl
    ld hl, sp+$24
    db $10
    pop af
    nop
    inc hl
    ld de, $f8f1
    ld [hl+], a

jr_013_4d2d:
    ld de, $f0f1
    ld hl, $e911
    nop
    jr nz, jr_013_4d46

    jp hl


    ld hl, sp+$1f
    db $10
    jp hl


    ldh a, [rNR34]
    db $10
    add b
    ld sp, hl
    nop
    dec l
    db $10
    ld sp, hl
    ld hl, sp+$2c

jr_013_4d46:
    db $10
    ld sp, hl
    ldh a, [$ff2b]
    db $10
    pop af
    nop
    ld a, [hl+]
    ld de, $f8f1
    add hl, hl
    ld de, $f0f1
    jr z, jr_013_4d67

    jp hl


    db $fc
    daa

jr_013_4d5a:
    db $10
    jp hl


    db $f4
    ld h, $10
    add b
    ld sp, hl
    ld hl, sp+$25
    jr nc, @-$05

    nop

jr_013_4d66:
    inc h

jr_013_4d67:
    jr nc, jr_013_4d5a

    ld hl, sp+$23
    ld sp, $00f1
    ld [hl+], a
    ld sp, $08f1
    ld hl, $e930
    ld hl, sp+$20
    jr nc, @-$15

    nop
    rra
    jr nc, jr_013_4d66

    ld [$301e], sp
    add b
    ld sp, hl
    ld hl, sp+$2d
    jr nc, @-$05

    nop

jr_013_4d87:
    inc l
    jr nc, @-$05

    ld [$302b], sp
    pop af
    ld hl, sp+$2a
    ld sp, $00f1
    add hl, hl
    ld sp, $08f1
    jr z, jr_013_4dc9

    jp hl


    db $fc
    daa
    jr nc, jr_013_4d87

    inc b
    ld h, $30
    add b
    ld sp, hl
    cp $33
    db $10
    ld sp, hl
    or $32
    db $10
    pop af
    cp $31
    ld de, $f6f1
    jr nc, jr_013_4dc2

    jp hl


    cp $2f
    db $10
    jp hl


    or $2e
    db $10
    add b
    ld a, [$36ff]
    db $10
    ld a, [$35f7]

jr_013_4dc2:
    db $10
    ldh a, [c]
    rst $38
    inc [hl]
    ld de, $ffea

jr_013_4dc9:
    cpl
    db $10
    ld [$2ef7], a
    db $10
    ldh a, [c]
    rst $30
    jr nc, jr_013_4de3

    add b
    ld hl, sp-$01
    inc a
    db $10
    ld hl, sp-$09
    dec sp
    db $10
    ldh a, [rIE]
    ld a, [hl-]
    ld de, $f7f0
    add hl, sp

jr_013_4de3:
    ld de, $ffe8
    jr c, @+$12

    add sp, -$09
    scf
    db $10
    add b
    ld hl, sp-$01
    ld b, b
    db $10
    ld hl, sp-$09
    ccf
    db $10
    add sp, -$01
    jr c, jr_013_4e09

    add sp, -$09
    scf
    db $10
    ldh a, [rIE]
    ld a, $11
    ldh a, [$fff7]
    dec a
    ld de, $f880
    nop
    ld b, [hl]

jr_013_4e09:
    db $10
    ld hl, sp-$08
    ld b, l
    db $10
    ldh a, [rP1]
    ld b, h
    ld de, $f8f0
    ld b, e
    db $10
    add sp, $00
    ld b, d
    db $10
    add sp, -$08
    ld b, c
    db $10
    add b
    add sp, $00
    ld b, d
    db $10
    add sp, -$08
    ld b, c
    db $10
    ld hl, sp+$00
    ld c, h
    db $10
    ld hl, sp-$08
    ld c, e
    ld de, $f0f8
    ld c, d
    ld de, $00f0
    ld c, c
    db $10
    ldh a, [$fff8]
    ld c, b
    ld de, $f0f0
    ld b, a
    ld de, $e880
    rst $38
    ld b, d
    db $10
    add sp, -$09
    ld b, c
    db $10
    ld hl, sp-$01
    ld d, d
    db $10
    ld hl, sp-$09
    ld d, c
    ld de, $eff8
    ld d, b
    ld de, $fff0
    ld c, a
    db $10
    ldh a, [$fff7]
    ld c, [hl]
    ld de, $eff0
    ld c, l
    ld de, $f880
    nop
    ld e, b
    db $10
    ld hl, sp-$08
    ld d, a
    db $10
    ldh a, [rP1]
    ld d, [hl]
    ld de, $f8f0
    ld d, l
    ld de, $00e8
    ld d, h
    db $10
    add sp, -$08
    ld d, e
    db $10
    add b
    ld hl, sp-$01
    ld e, a
    db $10
    ld hl, sp-$09
    ld e, [hl]
    db $10
    ldh a, [rIE]
    ld e, l
    ld de, $f7f0
    ld e, h

jr_013_4e89:
    ld de, $ffe8
    ld e, e

jr_013_4e8d:
    db $10
    add sp, -$09
    ld e, d
    db $10
    ldh [$fff9], a
    ld e, c

jr_013_4e95:
    db $10
    add b
    ld sp, hl
    ei
    inc sp
    jr nc, jr_013_4e95

    inc bc
    ld [hl-], a
    jr nc, jr_013_4e89

    ei
    cpl
    jr nc, jr_013_4e8d

    inc bc
    ld l, $30
    pop af
    ei
    ld sp, $f131
    inc bc
    jr nc, jr_013_4edf

    add b
    ld hl, sp-$01
    ld h, l
    db $10
    ld hl, sp-$09
    ld h, h
    db $10
    ldh a, [rIE]
    ld h, e
    ld de, $f7f0
    ld h, d
    db $10
    add sp, -$01
    ld h, c
    db $10
    add sp, -$09
    ld h, b
    db $10
    add b
    ld sp, hl
    ld bc, $106b
    ld sp, hl
    ld sp, hl
    ld l, d
    db $10
    pop af
    ld bc, $1169
    pop af
    ld sp, hl
    ld l, b
    ld de, $01e9
    ld h, a
    db $10
    jp hl


    ld sp, hl

jr_013_4edf:
    ld h, [hl]
    db $10
    add b
    ld hl, sp+$01
    ld l, a
    db $10
    ld hl, sp-$07
    ld l, [hl]
    db $10
    add sp, $01
    ld h, a
    db $10
    add sp, -$07
    ld h, [hl]
    db $10
    ldh a, [rSB]
    ld l, l
    ld de, $f9f0
    ld l, h
    ld de, $f980
    ld bc, $1071
    ld sp, hl
    ld sp, hl
    ld [hl], b
    db $10
    jp hl


    ld bc, $1067
    jp hl


    ld sp, hl
    ld h, [hl]
    db $10
    pop af
    ld bc, $116d
    pop af
    ld sp, hl
    ld l, h
    ld de, $f980
    rlca
    ld [hl], a
    db $10
    ld sp, hl
    rst $38
    halt
    db $10
    ld sp, hl
    rst $30
    ld [hl], l
    db $10
    jp hl


    ld bc, $1067
    jp hl


    ld sp, hl
    ld h, [hl]
    db $10
    pop af
    rlca
    ld [hl], h
    db $10
    pop af
    rst $38
    ld [hl], e
    ld de, $f7f1
    ld [hl], d
    ld de, $e880
    ld bc, $1067
    add sp, -$07
    ld h, [hl]
    db $10
    ld hl, sp-$01
    ld a, h
    db $10
    ld hl, sp-$09
    ld a, e
    db $10
    ldh a, [rTAC]
    ld a, d
    db $10
    ldh a, [rIE]
    ld a, c
    ld de, $f7f0
    ld a, b
    ld de, $f980
    ld bc, $1084
    ld sp, hl
    ld sp, hl
    add e
    db $10
    pop af
    add hl, bc
    add d
    db $10
    pop af
    ld bc, $1081
    pop af
    ld sp, hl
    add b
    ld de, $09e9
    ld a, a
    db $10
    jp hl


    ld bc, $107e
    jp hl


    ld sp, hl
    ld a, l
    db $10
    add b
    ld sp, hl
    ld bc, $106b
    ld sp, hl
    ld sp, hl
    ld l, d
    db $10
    pop af
    ld bc, $1169
    pop af
    ld sp, hl
    ld l, b
    ld de, $01e9
    ld h, a
    db $10
    jp hl


    ld sp, hl
    ld h, [hl]
    db $10
    add b
    rlca
    ld d, b
    and h
    ld c, a
    and $4f
    ld d, c
    ld d, b
    ld a, d
    ld d, b
    and e
    ld d, b
    ld b, a
    ld d, c
    ld [hl], b
    ld d, c
    sbc c
    ld d, c
    ld [hl], a
    ld d, d
    dec [hl]
    ld d, d
    ld d, [hl]
    ld d, d
    ld hl, sp+$00
    adc h
    db $10
    ld hl, sp-$08
    adc e
    db $10
    ldh a, [rP1]
    adc d
    db $10
    ldh a, [$fff8]
    adc c
    db $10
    add sp, $00
    adc b
    ld de, $f8e8
    add a
    db $10
    ldh [rP1], a
    add [hl]
    db $10
    ldh [$fff8], a
    add l
    db $10
    add b
    jp hl


    ld hl, sp-$79
    db $10
    pop hl
    nop
    add [hl]
    db $10
    pop hl
    ld hl, sp-$7b
    db $10
    ld sp, hl
    nop
    sub c
    db $10
    ld sp, hl
    ld hl, sp-$70
    db $10
    pop af
    nop
    adc a
    db $10
    pop af
    ld hl, sp-$72
    db $10
    jp hl


    nop
    adc l
    ld de, $de80
    nop
    add [hl]
    db $10
    sbc $f8
    add l
    db $10
    and $f8
    add a
    ld de, $00f6
    sub [hl]
    db $10
    or $f8
    sub l
    db $10
    xor $00
    sub h
    db $10
    xor $f8
    sub e
    db $10
    and $00
    sub d
    ld de, $e980
    nop
    adc l
    ld de, $f8e9
    add a
    ld de, $00e1
    add [hl]
    db $10
    pop hl
    ld hl, sp-$7b
    db $10
    ld sp, hl
    nop
    sbc d
    db $10
    ld sp, hl
    ld hl, sp-$67
    db $10
    pop af
    nop
    sbc b
    db $10
    pop af
    ld hl, sp-$69
    db $10
    add b
    ld sp, hl
    inc b
    and h
    db $10
    ld sp, hl
    db $fc
    and e
    db $10
    pop af
    inc b
    and d
    db $10
    pop af
    db $fc
    and c
    db $10
    pop af
    db $f4
    and b
    db $10
    jp hl


    inc b
    sbc a
    ld de, $fce9
    sbc [hl]
    ld de, $f4e9
    sbc l
    db $10
    pop hl
    ld [bc], a
    sbc h
    db $10
    pop hl
    ld a, [$109b]
    add b
    ld sp, hl
    ld bc, $10ac
    ld sp, hl
    ld sp, hl
    xor e
    db $10
    pop af
    dec b
    xor d
    db $10
    pop af
    db $fd
    xor c
    db $10
    pop af
    push af
    xor b
    db $10
    pop hl
    ld [bc], a
    sbc h
    db $10
    pop hl
    ld a, [$109b]
    jp hl


    dec b
    and a
    ld de, $fde9
    and [hl]
    ld de, $f5e9
    and l
    db $10
    add b
    ld hl, sp+$04
    or [hl]
    db $10
    ld hl, sp-$04
    or l
    db $10
    ldh a, [rTMA]
    or h
    db $10
    ldh a, [$fffe]
    or e
    db $10
    ldh a, [$fff6]
    or d
    db $10
    add sp, $04
    or c
    ld de, $fce8
    or b
    ld de, $f4e8
    xor a
    db $10
    ldh [rSC], a
    xor [hl]
    db $10
    ldh [$fffa], a
    xor l
    db $10
    add b
    ld a, [$bb04]
    db $10
    ld a, [$bafc]
    db $10
    ldh a, [c]
    ld b, $b9
    db $10
    ldh a, [c]
    cp $b8
    db $10
    ldh a, [c]
    or $b7
    db $10
    ld [$9f04], a
    ld de, $fcea
    sbc [hl]
    ld de, $f4ea
    sbc l
    db $10
    ldh [c], a
    ld [bc], a
    sbc h
    db $10

jr_013_50c7:
    ldh [c], a
    ld a, [$109b]
    add b
    db $dd
    ld bc, $109c
    db $dd
    ld sp, hl
    sbc e
    db $10
    push af
    ld b, $c3
    db $10
    push af
    cp $c2
    db $10
    push af
    or $c1
    db $10
    db $ed
    ld b, $c0
    db $10
    db $ed
    cp $bf
    db $10
    db $ed
    or $be
    db $10
    push hl
    ld bc, $11bd

jr_013_50f0:
    push hl
    ld sp, hl
    cp h
    ld de, $fb80
    ld a, [$10cd]
    di
    dec b
    call z, $f310
    db $fd
    rl b
    di
    push af
    jp z, $eb10

    ld b, $c9
    ld de, $feeb
    ret z

    ld de, $f6eb
    rst $00
    db $10
    db $e3
    ld bc, $10c6
    db $e3
    ld sp, hl
    push bc

jr_013_5118:
    db $10

jr_013_5119:
    db $db
    db $fc
    call nz, $8010
    ld sp, hl
    db $f4

jr_013_5120:
    and h
    jr nc, @-$05

    db $fc

jr_013_5124:
    and e
    jr nc, jr_013_5118

    db $f4
    and d
    jr nc, @-$0d

    db $fc
    and c
    jr nc, jr_013_5120

    inc b
    and b
    jr nc, @-$15

    db $f4
    sbc a
    ld sp, $fce9
    sbc [hl]
    ld sp, $04e9
    sbc l

jr_013_513d:
    jr nc, jr_013_5120

    or $9c

jr_013_5141:
    jr nc, jr_013_5124

    cp $9b

jr_013_5145:
    jr nc, jr_013_50c7

    ld sp, hl
    rst $30

jr_013_5149:
    xor h
    jr nc, jr_013_5145

    rst $38

jr_013_514d:
    xor e
    jr nc, jr_013_5141

    di
    xor d
    jr nc, jr_013_5145

    ei
    xor c
    jr nc, jr_013_5149

    inc bc
    xor b
    jr nc, jr_013_513d

    or $9c
    jr nc, jr_013_5141

    cp $9b
    jr nc, jr_013_514d

    di
    and a
    ld sp, $fbe9

jr_013_5169:
    and [hl]
    ld sp, $03e9

jr_013_516d:
    and l
    jr nc, jr_013_50f0

    ld hl, sp-$0c
    or [hl]
    jr nc, jr_013_516d

jr_013_5175:
    db $fc
    or l
    jr nc, jr_013_5169

    ldh a, [c]
    or h
    jr nc, jr_013_516d

    ld a, [$30b3]
    ldh a, [rSC]
    or d
    jr nc, jr_013_516d

    db $f4
    or c
    ld sp, $fce8
    or b
    ld sp, $04e8
    xor a
    jr nc, @-$1e

    or $ae
    jr nc, jr_013_5175

    cp $ad
    jr nc, jr_013_5119

    ld a, [$bbf4]

jr_013_519c:
    jr nc, @-$04

    db $fc
    cp d

jr_013_51a0:
    jr nc, @-$0c

    ldh a, [c]
    cp c

jr_013_51a4:
    jr nc, @-$0c

    ld a, [$30b8]
    ldh a, [c]
    ld [bc], a
    or a
    jr nc, @-$14

    db $f4
    sbc a
    ld sp, $fcea
    sbc [hl]
    ld sp, $04ea
    sbc l
    jr nc, jr_013_519c

    or $9c
    jr nc, jr_013_51a0

    cp $9b

jr_013_51c0:
    jr nc, @-$7e

    db $dd
    rst $30

jr_013_51c4:
    sbc h
    jr nc, jr_013_51a4

    rst $38

jr_013_51c8:
    sbc e
    jr nc, jr_013_51c0

    ldh a, [c]
    jp $f530


    ld a, [$30c2]
    push af
    ld [bc], a
    pop bc
    jr nc, jr_013_51c4

    ldh a, [c]
    ret nz

    jr nc, jr_013_51c8

    ld a, [$30bf]
    db $ed
    ld [bc], a
    cp [hl]
    jr nc, jr_013_51c8

jr_013_51e3:
    rst $30
    cp l
    ld sp, $ffe5
    cp h
    ld sp, $fb80
    cp $cd
    jr nc, jr_013_51e3

    di
    call z, $f330
    ei
    swap b
    di
    inc bc
    jp z, $eb30

    ldh a, [c]
    ret


    ld sp, $faeb
    ret z

    ld sp, $02eb
    rst $00
    jr nc, @-$1b

    rst $30
    add $30
    db $e3
    rst $38
    push bc
    jr nc, @-$23

    db $fc
    call nz, $8030
    ld sp, hl
    nop
    push de
    db $10
    ld sp, hl
    ld hl, sp-$2c
    db $10
    pop af
    nop
    db $d3
    db $10
    pop af
    ld hl, sp-$2e
    db $10
    jp hl


    nop
    pop de
    ld de, $f8e9
    ret nc

    ld de, $00e1
    rst $08
    db $10
    pop hl
    ld hl, sp-$32
    db $10
    add b
    ld [$d100], a
    ld de, $00e2
    rst $08
    db $10
    ldh [c], a
    ld hl, sp-$32
    db $10
    ld a, [$da00]
    db $10
    ld a, [$d9f8]
    db $10
    ldh a, [c]
    nop
    ret c

    db $10
    ldh a, [c]
    ld hl, sp-$29
    db $10
    ld [$d6f8], a
    ld de, $ea80
    nop
    pop de
    ld de, $00e2
    rst $08
    db $10
    ldh [c], a
    ld hl, sp-$32
    db $10
    ld a, [$df00]
    db $10
    ld a, [$def8]
    db $10
    ldh a, [c]
    nop
    db $dd
    db $10
    ldh a, [c]
    ld hl, sp-$24
    db $10
    ld [$dbf8], a
    ld de, $e780
    nop
    pop de
    ld de, $00df
    rst $08
    db $10
    rst $18
    ld hl, sp-$32
    db $10
    rst $30
    nop
    db $e4
    db $10
    rst $30
    ld hl, sp-$1d
    db $10
    rst $28
    nop
    ldh [c], a
    db $10
    rst $28
    ld hl, sp-$1f
    db $10
    rst $20
    ld hl, sp-$20
    ld de, $d080
    ld d, d
    pop af
    ld d, d
    ld [de], a
    ld d, e
    inc sp
    ld d, e
    ld d, h
    ld d, e
    ld [hl], l
    ld d, e
    ret nc

    ld d, d
    sub [hl]
    ld d, e
    cp a
    ld d, e
    add sp, $53
    ld de, $3a54
    ld d, h
    ld h, e
    ld d, h
    adc h
    ld d, h
    or l
    ld d, h
    sbc $54
    rlca
    ld d, l
    jr nc, @+$57

    ld e, c
    ld d, l
    add d
    ld d, l
    xor e
    ld d, l
    call nc, $f555
    ld d, l
    ld d, $56
    scf
    ld d, [hl]
    ld e, b
    ld d, [hl]
    ld a, c
    ld d, [hl]
    sbc d
    ld d, [hl]
    jp hl


    ld hl, sp-$79
    ld de, $00e1
    add [hl]
    db $10
    pop hl
    ld hl, sp-$7b
    db $10
    ld sp, hl
    nop
    sub c
    db $10
    ld sp, hl
    ld hl, sp-$70
    db $10
    pop af
    nop
    adc a
    db $10
    pop af
    ld hl, sp-$72
    db $10
    jp hl


    nop
    adc l
    ld de, $e080
    nop
    add [hl]
    db $10
    ldh [$fff8], a
    add l
    db $10
    add sp, -$08
    add a
    ld de, $00f8
    sub [hl]
    db $10
    ld hl, sp-$08
    sub l
    db $10
    ldh a, [rP1]
    sub h
    db $10
    ldh a, [$fff8]
    sub e
    db $10
    add sp, $00
    sub d
    ld de, $dc80
    nop
    add [hl]
    db $10
    call c, $85f8
    db $10
    db $e4
    ld hl, sp-$79
    ld de, $00f4
    sub [hl]
    db $10
    db $f4
    ld hl, sp-$6b
    db $10
    db $ec
    nop
    sub h
    db $10
    db $ec
    ld hl, sp-$6d
    db $10
    db $e4
    nop
    sub d
    ld de, $d480
    nop
    add [hl]
    db $10
    call nc, $85f8
    db $10
    call c, $87f8
    ld de, $00ec
    sub [hl]
    db $10
    db $ec
    ld hl, sp-$6b
    db $10
    db $e4
    nop
    sub h
    db $10
    db $e4
    ld hl, sp-$6d
    db $10
    call c, $9200
    ld de, $d880
    nop
    add [hl]
    db $10
    ret c

    ld hl, sp-$7b
    db $10
    ldh [$fff8], a
    add a
    ld de, $00f0
    sub [hl]
    db $10
    ldh a, [$fff8]
    sub l
    db $10
    add sp, $00
    sub h
    db $10
    add sp, -$08
    sub e
    db $10
    ldh [rP1], a
    sub d
    ld de, $e980
    nop
    adc l
    ld de, $f8e9
    add a
    ld de, $00e1
    add [hl]
    db $10
    pop hl
    ld hl, sp-$7b
    db $10
    ld sp, hl
    nop
    sbc d
    db $10
    ld sp, hl
    ld hl, sp-$67
    db $10
    pop af
    nop
    sbc b
    db $10
    pop af
    ld hl, sp-$69
    db $10
    add b
    ld sp, hl
    ld bc, $10ac
    ld sp, hl
    ld sp, hl
    xor e
    db $10
    pop af
    dec b
    xor d
    db $10
    pop af
    db $fd
    xor c
    db $10
    pop af
    push af
    xor b
    db $10
    pop hl
    ld [bc], a
    sbc h
    db $10
    pop hl
    ld a, [$109b]
    jp hl


    dec b
    and a
    ld de, $fde9
    and [hl]
    ld de, $f5e9
    and l
    db $10
    add b
    db $dd
    ld bc, $109c
    db $dd
    ld sp, hl
    sbc e
    db $10
    push af
    ld b, $c3
    db $10
    push af
    cp $c2
    db $10
    push af
    or $c1
    db $10
    db $ed
    ld b, $c0
    db $10
    db $ed
    cp $bf
    db $10
    db $ed
    or $be
    db $10
    push hl
    ld bc, $11bd
    push hl
    ld sp, hl
    cp h
    ld de, $d980
    ld bc, $109c
    reti


    ld sp, hl
    sbc e
    db $10
    pop af
    ld b, $c3
    db $10
    pop af
    cp $c2
    db $10
    pop af
    or $c1
    db $10
    jp hl


    ld b, $c0
    db $10
    jp hl


    cp $bf
    db $10
    jp hl


    or $be
    db $10
    pop hl
    ld bc, $11bd
    pop hl
    ld sp, hl
    cp h
    ld de, $d580
    ld bc, $109c
    push de
    ld sp, hl
    sbc e
    db $10
    db $ed
    ld b, $c3
    db $10
    db $ed
    cp $c2
    db $10
    db $ed
    or $c1
    db $10
    push hl
    ld b, $c0
    db $10
    push hl
    cp $bf
    db $10
    push hl
    or $be
    db $10
    db $dd
    ld bc, $11bd
    db $dd
    ld sp, hl
    cp h
    ld de, $d980
    ld bc, $109c
    reti


    ld sp, hl
    sbc e
    db $10
    pop af
    ld b, $c3
    db $10
    pop af
    cp $c2
    db $10
    pop af
    or $c1
    db $10
    jp hl


    ld b, $c0
    db $10
    jp hl


    cp $bf
    db $10
    jp hl


    or $be
    db $10
    pop hl
    ld bc, $11bd

jr_013_545e:
    pop hl
    ld sp, hl
    cp h
    ld de, $fb80
    ld a, [$10cd]
    di
    dec b
    call z, $f310
    db $fd
    rl b
    di
    push af
    jp z, $eb10

    ld b, $c9
    ld de, $feeb
    ret z

    ld de, $f6eb
    rst $00
    db $10
    db $e3
    ld bc, $10c6
    db $e3
    ld sp, hl
    push bc
    db $10
    db $db
    db $fc
    call nz, $8010
    ld a, [$bb04]
    db $10
    ld a, [$bafc]
    db $10
    ldh a, [c]
    ld b, $b9
    db $10
    ldh a, [c]
    cp $b8
    db $10
    ldh a, [c]
    or $b7
    db $10
    ld [$9f04], a
    ld de, $fcea
    sbc [hl]
    ld de, $f4ea
    sbc l

jr_013_54ab:
    db $10
    ldh [c], a
    ld [bc], a
    sbc h

jr_013_54af:
    db $10
    ldh [c], a
    ld a, [$109b]
    add b
    ld sp, hl
    rst $30

jr_013_54b7:
    xor h
    jr nc, @-$05

    rst $38

jr_013_54bb:
    xor e
    jr nc, jr_013_54af

    di
    xor d

jr_013_54c0:
    jr nc, @-$0d

    ei
    xor c
    jr nc, jr_013_54b7

    inc bc
    xor b
    jr nc, jr_013_54ab

    or $9c
    jr nc, jr_013_54af

    cp $9b
    jr nc, jr_013_54bb

    di
    and a
    ld sp, $fbe9
    and [hl]
    ld sp, $03e9
    and l

jr_013_54dc:
    jr nc, jr_013_545e

    db $dd
    rst $30

jr_013_54e0:
    sbc h
    jr nc, jr_013_54c0

    rst $38

jr_013_54e4:
    sbc e

jr_013_54e5:
    jr nc, jr_013_54dc

    ldh a, [c]
    jp $f530


    ld a, [$30c2]
    push af
    ld [bc], a
    pop bc
    jr nc, jr_013_54e0

    ldh a, [c]
    ret nz

    jr nc, jr_013_54e4

    ld a, [$30bf]
    db $ed
    ld [bc], a
    cp [hl]
    jr nc, jr_013_54e4

    rst $30
    cp l

jr_013_5501:
    ld sp, $ffe5
    cp h

jr_013_5505:
    ld sp, $d980
    rst $30

jr_013_5509:
    sbc h

jr_013_550a:
    jr nc, jr_013_54e5

    rst $38
    sbc e
    jr nc, jr_013_5501

    ldh a, [c]
    jp $f130


    ld a, [$30c2]
    pop af
    ld [bc], a
    pop bc
    jr nc, jr_013_5505

    ldh a, [c]
    ret nz

    jr nc, jr_013_5509

    ld a, [$30bf]
    jp hl


    ld [bc], a
    cp [hl]

jr_013_5526:
    jr nc, jr_013_5509

    rst $30
    cp l

jr_013_552a:
    ld sp, $ffe1
    cp h

jr_013_552e:
    ld sp, $d580
    rst $30
    sbc h
    jr nc, jr_013_550a

    rst $38
    sbc e

jr_013_5537:
    jr nc, jr_013_5526

    ldh a, [c]
    jp $ed30


    ld a, [$30c2]
    db $ed
    ld [bc], a
    pop bc
    jr nc, jr_013_552a

    ldh a, [c]
    ret nz

    jr nc, jr_013_552e

    ld a, [$30bf]
    push hl
    ld [bc], a
    cp [hl]
    jr nc, jr_013_552e

    rst $30
    cp l

jr_013_5553:
    ld sp, $ffdd
    cp h

jr_013_5557:
    ld sp, $d980
    rst $30

jr_013_555b:
    sbc h
    jr nc, jr_013_5537

    rst $38
    sbc e
    jr nc, jr_013_5553

    ldh a, [c]
    jp $f130


    ld a, [$30c2]
    pop af
    ld [bc], a
    pop bc
    jr nc, jr_013_5557

    ldh a, [c]
    ret nz

    jr nc, jr_013_555b

    ld a, [$30bf]
    jp hl


    ld [bc], a
    cp [hl]
    jr nc, jr_013_555b

jr_013_557a:
    rst $30
    cp l
    ld sp, $ffe1
    cp h
    ld sp, $fb80
    cp $cd
    jr nc, jr_013_557a

    di
    call z, $f330
    ei
    swap b
    di
    inc bc
    jp z, $eb30

    ldh a, [c]
    ret


    ld sp, $faeb
    ret z

    ld sp, $02eb
    rst $00
    jr nc, @-$1b

    rst $30
    add $30
    db $e3
    rst $38
    push bc
    jr nc, @-$23

    db $fc
    call nz, $8030
    ld a, [$bbf4]

jr_013_55ae:
    jr nc, @-$04

    db $fc
    cp d

jr_013_55b2:
    jr nc, @-$0c

    ldh a, [c]
    cp c
    jr nc, @-$0c

    ld a, [$30b8]
    ldh a, [c]
    ld [bc], a
    or a
    jr nc, @-$14

    db $f4
    sbc a
    ld sp, $fcea
    sbc [hl]
    ld sp, $04ea
    sbc l
    jr nc, jr_013_55ae

    or $9c
    jr nc, jr_013_55b2

    cp $9b
    jr nc, @-$7e

    ld [$d100], a
    ld de, $00e2
    rst $08
    db $10
    ldh [c], a
    ld hl, sp-$32
    db $10
    ld a, [$da00]
    db $10
    ld a, [$d9f8]
    db $10
    ldh a, [c]
    nop
    ret c

    db $10
    ldh a, [c]
    ld hl, sp-$29
    db $10
    ld [$d6f8], a
    ld de, $e780
    nop
    pop de
    ld de, $00df
    rst $08
    db $10
    rst $18
    ld hl, sp-$32
    db $10
    rst $30
    nop
    db $e4
    db $10
    rst $30
    ld hl, sp-$1d
    db $10
    rst $28
    nop
    ldh [c], a
    db $10
    rst $28
    ld hl, sp-$1f
    db $10
    rst $20
    ld hl, sp-$20
    ld de, $e380
    nop
    pop de
    ld de, $00db
    rst $08
    db $10
    db $db
    ld hl, sp-$32
    db $10
    di
    nop
    db $e4
    db $10
    di
    ld hl, sp-$1d
    db $10
    db $eb
    nop
    ldh [c], a
    db $10
    db $eb
    ld hl, sp-$1f
    db $10
    db $e3
    ld hl, sp-$20
    ld de, $db80
    nop
    pop de
    ld de, $00d3
    rst $08
    db $10
    db $d3
    ld hl, sp-$32
    db $10
    db $eb
    nop
    db $e4
    db $10
    db $eb
    ld hl, sp-$1d
    db $10
    db $e3
    nop
    ldh [c], a
    db $10
    db $e3
    ld hl, sp-$1f
    db $10
    db $db
    ld hl, sp-$20
    ld de, $df80
    nop
    pop de
    ld de, $00d7
    rst $08
    db $10
    rst $10
    ld hl, sp-$32
    db $10
    rst $28
    nop
    db $e4
    db $10
    rst $28
    ld hl, sp-$1d
    db $10
    rst $20
    nop
    ldh [c], a
    db $10
    rst $20
    ld hl, sp-$1f
    db $10
    rst $18
    ld hl, sp-$20
    ld de, $e780
    nop
    pop de
    ld de, $00df
    rst $08
    db $10
    rst $18
    ld hl, sp-$32
    db $10
    rst $30
    nop
    db $e4
    db $10
    rst $30
    ld hl, sp-$1d
    db $10
    rst $28
    nop
    ldh [c], a
    db $10
    rst $28
    ld hl, sp-$1f
    db $10
    rst $20
    ld hl, sp-$20
    ld de, $ea80
    nop
    pop de
    ld de, $00e2
    rst $08
    db $10
    ldh [c], a
    ld hl, sp-$32
    db $10
    ld a, [$df00]
    db $10
    ld a, [$def8]
    db $10
    ldh a, [c]
    nop
    db $dd
    db $10
    ldh a, [c]
    ld hl, sp-$24
    db $10
    ld [$dbf8], a
    ld de, $f880
    ld bc, $10de
    ld hl, sp-$07
    db $dd
    db $10
    ldh a, [rSB]
    call c, $f010
    ld sp, hl
    db $db
    db $10
    add sp, $01
    jp c, $e810

    ld sp, hl
    reti


    db $10
    add b
    call c, Call_013_6056
    ld d, a
    ld d, [hl]
    ld e, b
    ld c, h
    ld e, c
    ld hl, sp+$00
    adc h
    db $10
    ld hl, sp-$08
    adc e
    db $10
    ldh a, [rP1]
    adc d
    db $10
    ldh a, [$fff8]
    adc c
    db $10
    add sp, $00
    adc b
    ld de, $f8e8
    add a
    db $10
    ldh [rP1], a
    add [hl]
    db $10
    ldh [$fff8], a
    add l
    db $10
    add b
    jp hl


    ld hl, sp-$79
    db $10
    pop hl
    nop
    add [hl]
    db $10
    pop hl
    ld hl, sp-$7b
    db $10
    ld sp, hl
    nop
    sub c
    db $10
    ld sp, hl
    ld hl, sp-$70
    db $10
    pop af
    nop
    adc a
    db $10
    pop af
    ld hl, sp-$72
    db $10
    jp hl


    nop
    adc l
    ld de, $de80
    nop
    add [hl]
    db $10
    sbc $f8
    add l
    db $10
    and $f8
    add a
    db $10
    or $00
    sub [hl]
    db $10
    or $f8
    sub l
    db $10
    xor $00
    sub h
    db $10
    xor $f8
    sub e
    db $10
    and $00
    sub d
    ld de, $e980
    nop
    adc l
    ld de, $f8e9
    add a
    db $10
    pop hl
    nop
    add [hl]
    db $10
    pop hl
    ld hl, sp-$7b
    db $10
    ld sp, hl
    nop
    sbc d
    db $10
    ld sp, hl
    ld hl, sp-$67
    db $10
    pop af
    nop
    sbc b
    db $10
    pop af
    ld hl, sp-$69
    db $10
    add b
    ld sp, hl
    inc b
    and h
    db $10
    ld sp, hl
    db $fc
    and e
    db $10
    pop af
    inc b
    and d
    db $10
    pop af
    db $fc
    and c
    db $10
    pop af
    db $f4
    and b
    db $10
    jp hl


    inc b
    sbc a
    ld de, $fce9
    sbc [hl]
    ld de, $f4e9
    sbc l
    db $10
    pop hl
    ld [bc], a
    sbc h
    db $10
    pop hl
    ld a, [$109b]
    add b
    ld sp, hl
    ld bc, $10ac
    ld sp, hl
    ld sp, hl
    xor e
    db $10
    pop af
    dec b
    xor d
    db $10
    pop af
    db $fd
    xor c
    db $10
    pop af
    push af
    xor b
    db $10
    pop hl
    ld [bc], a
    sbc h
    db $10
    pop hl
    ld a, [$109b]
    jp hl


    dec b
    and a
    ld de, $fde9
    and [hl]
    ld de, $f5e9
    and l
    db $10
    add b
    ld hl, sp+$04
    or [hl]
    db $10
    ld hl, sp-$04
    or l
    db $10
    ldh a, [rTMA]
    or h
    db $10
    ldh a, [$fffe]
    or e
    db $10
    ldh a, [$fff6]
    or d
    db $10
    add sp, $04
    or c
    ld de, $fce8
    or b
    ld de, $f4e8
    xor a
    db $10
    ldh [rSC], a
    xor [hl]
    db $10
    ldh [$fffa], a
    xor l
    db $10
    add b
    ld a, [$bb04]
    db $10
    ld a, [$bafc]
    db $10
    ldh a, [c]
    ld b, $b9
    db $10
    ldh a, [c]
    cp $b8
    db $10
    ldh a, [c]
    or $b7
    db $10
    ld [$9f04], a
    ld de, $fcea
    sbc [hl]
    ld de, $f4ea
    sbc l
    db $10
    ldh [c], a
    ld [bc], a
    sbc h
    db $10

jr_013_57ff:
    ldh [c], a
    ld a, [$109b]
    add b
    db $dd
    ld bc, $109c
    db $dd
    ld sp, hl
    sbc e
    db $10
    push af
    ld b, $c3
    db $10
    push af
    cp $c2
    db $10
    push af
    or $c1
    db $10
    db $ed
    ld b, $c0
    db $10
    db $ed
    cp $bf
    db $10
    db $ed
    or $be
    db $10
    push hl
    ld bc, $11bd

jr_013_5828:
    push hl
    ld sp, hl
    cp h
    ld de, $fb80
    ld a, [$10cd]
    di
    dec b
    call z, $f310
    db $fd
    rl b
    di
    push af
    jp z, $eb10

    ld b, $c9
    ld de, $feeb
    ret z

    ld de, $f6eb
    rst $00
    db $10
    db $e3
    ld bc, $10c6
    db $e3
    ld sp, hl
    push bc

jr_013_5850:
    db $10

jr_013_5851:
    db $db
    db $fc
    call nz, $8010
    ld sp, hl
    db $f4

jr_013_5858:
    and h
    jr nc, @-$05

    db $fc

jr_013_585c:
    and e
    jr nc, jr_013_5850

    db $f4
    and d
    jr nc, @-$0d

    db $fc
    and c
    jr nc, jr_013_5858

    inc b
    and b
    jr nc, @-$15

    db $f4
    sbc a
    ld sp, $fce9
    sbc [hl]
    ld sp, $04e9
    sbc l

jr_013_5875:
    jr nc, jr_013_5858

    or $9c

jr_013_5879:
    jr nc, jr_013_585c

    cp $9b

jr_013_587d:
    jr nc, jr_013_57ff

    ld sp, hl
    rst $30

jr_013_5881:
    xor h
    jr nc, jr_013_587d

    rst $38

jr_013_5885:
    xor e
    jr nc, jr_013_5879

    di
    xor d
    jr nc, jr_013_587d

    ei
    xor c
    jr nc, jr_013_5881

    inc bc
    xor b
    jr nc, jr_013_5875

    or $9c
    jr nc, jr_013_5879

    cp $9b
    jr nc, jr_013_5885

    di
    and a
    ld sp, $fbe9

jr_013_58a1:
    and [hl]
    ld sp, $03e9

jr_013_58a5:
    and l
    jr nc, jr_013_5828

    ld hl, sp-$0c
    or [hl]
    jr nc, jr_013_58a5

jr_013_58ad:
    db $fc
    or l
    jr nc, jr_013_58a1

    ldh a, [c]
    or h
    jr nc, jr_013_58a5

    ld a, [$30b3]
    ldh a, [rSC]
    or d
    jr nc, jr_013_58a5

    db $f4
    or c
    ld sp, $fce8
    or b
    ld sp, $04e8
    xor a
    jr nc, @-$1e

    or $ae
    jr nc, jr_013_58ad

    cp $ad
    jr nc, jr_013_5851

    ld a, [$bbf4]

jr_013_58d4:
    jr nc, @-$04

    db $fc
    cp d

jr_013_58d8:
    jr nc, @-$0c

    ldh a, [c]
    cp c

jr_013_58dc:
    jr nc, @-$0c

    ld a, [$30b8]
    ldh a, [c]
    ld [bc], a
    or a
    jr nc, @-$14

    db $f4
    sbc a
    ld sp, $fcea
    sbc [hl]
    ld sp, $04ea
    sbc l
    jr nc, jr_013_58d4

    or $9c
    jr nc, jr_013_58d8

    cp $9b

jr_013_58f8:
    jr nc, @-$7e

    db $dd
    rst $30

jr_013_58fc:
    sbc h
    jr nc, jr_013_58dc

    rst $38

jr_013_5900:
    sbc e
    jr nc, jr_013_58f8

    ldh a, [c]
    jp $f530


    ld a, [$30c2]
    push af
    ld [bc], a
    pop bc
    jr nc, jr_013_58fc

    ldh a, [c]
    ret nz

    jr nc, jr_013_5900

    ld a, [$30bf]
    db $ed
    ld [bc], a
    cp [hl]
    jr nc, jr_013_5900

jr_013_591b:
    rst $30
    cp l
    ld sp, $ffe5
    cp h
    ld sp, $fb80
    cp $cd
    jr nc, jr_013_591b

    di
    call z, $f330
    ei
    swap b
    di
    inc bc
    jp z, $eb30

    ldh a, [c]
    ret


    ld sp, $faeb
    ret z

    ld sp, $02eb
    rst $00
    jr nc, @-$1b

    rst $30
    add $30
    db $e3
    rst $38
    push bc
    jr nc, @-$23

    db $fc
    call nz, $8030
    ld sp, hl
    nop
    push de
    db $10
    ld sp, hl
    ld hl, sp-$2c
    db $10
    pop af
    nop
    db $d3
    db $10
    pop af
    ld hl, sp-$2e
    db $10
    jp hl


    nop
    pop de
    ld de, $f8e9
    ret nc

    ld de, $00e1
    rst $08
    db $10
    pop hl
    ld hl, sp-$32
    db $10
    add b
    ld [$d100], a
    ld de, $00e2
    rst $08
    db $10
    ldh [c], a
    ld hl, sp-$32
    db $10
    ld a, [$da00]
    db $10
    ld a, [$d9f8]
    db $10
    ldh a, [c]
    nop
    ret c

    db $10
    ldh a, [c]
    ld hl, sp-$29
    db $10
    ld [$d6f8], a
    ld de, $ea80
    nop
    pop de
    ld de, $00e2
    rst $08
    db $10
    ldh [c], a
    ld hl, sp-$32
    db $10
    ld a, [$df00]
    db $10
    ld a, [$def8]
    db $10
    ldh a, [c]
    nop
    db $dd
    db $10
    ldh a, [c]
    ld hl, sp-$24
    db $10
    ld [$dbf8], a
    ld de, $e780
    nop
    pop de
    ld de, $00df
    rst $08
    db $10
    rst $18
    ld hl, sp-$32
    db $10
    rst $30
    nop
    db $e4
    db $10
    rst $30
    ld hl, sp-$1d
    db $10
    rst $28
    nop
    ldh [c], a
    db $10
    rst $28
    ld hl, sp-$1f
    db $10
    rst $20
    ld hl, sp-$20
    ld de, $e080
    ld e, c
    ld sp, hl
    ld e, c
    ld d, $5a
    inc sp
    ld e, d
    ld d, b
    ld e, d
    ld l, l
    ld e, d
    ld d, b
    ld e, d
    ld l, l
    ld e, d
    ld hl, sp+$01
    ld [de], a
    db $10
    ld hl, sp-$07
    ld de, $f010
    ld bc, $1110
    ldh a, [$fff9]
    rrca
    ld de, $01e8
    ld c, $10
    add sp, -$07
    dec c
    db $10
    add b
    ld hl, sp+$01
    jr jr_013_5a0d

    ld hl, sp-$07
    rla
    db $10
    rst $28
    add hl, bc
    ld [bc], a
    db $10
    ldh a, [rSB]
    ld d, $10
    ldh a, [$fff9]
    dec d
    db $10

jr_013_5a0d:
    add sp, $01
    inc d
    db $10
    add sp, -$07
    inc de
    db $10
    add b
    ld hl, sp+$01
    ld b, $10
    ld hl, sp-$07
    dec b
    db $10
    ldh a, [rSB]
    inc b
    ld de, $f9f0
    inc bc
    ld de, $09e8
    ld [bc], a
    db $10
    add sp, $01
    ld bc, $e810
    ld sp, hl
    nop
    db $10
    add b
    ld a, [$0cfd]
    db $10
    ld a, [$0bf5]
    db $10
    db $eb
    dec b
    ld [bc], a
    db $10
    ldh a, [c]
    db $fd
    ld a, [bc]
    ld de, $f5f2
    add hl, bc
    ld de, $fdea

jr_013_5a49:
    ld [$ea10], sp
    push af

jr_013_5a4d:
    rlca
    db $10
    add b
    ld hl, sp-$09
    ld b, $30
    ld hl, sp-$01
    dec b
    jr nc, jr_013_5a49

    rst $30
    inc b
    ld sp, $fff0
    inc bc
    ld sp, $efe8
    ld [bc], a
    jr nc, jr_013_5a4d

    rst $30
    ld bc, $e830
    rst $38
    nop
    jr nc, @-$7e

    ld a, [$0cfb]
    jr nc, @-$04

    inc bc
    dec bc
    jr nc, @-$13

    di
    ld [bc], a
    jr nc, @-$0c

    ei
    ld a, [bc]
    ld sp, $03f2
    add hl, bc
    ld sp, $fbea
    ld [$ea30], sp
    inc bc
    rlca
    jr nc, @-$7e

    or d
    ld e, d
    bit 3, d
    or d
    ld e, d
    bit 3, d
    or d
    ld e, d
    db $e4
    ld e, d
    db $fd
    ld e, d
    db $e4
    ld e, d
    db $fd
    ld e, d
    db $e4
    ld e, d
    ld d, $5b
    cpl
    ld e, e
    ld d, $5b
    cpl
    ld e, e
    ld d, $5b
    ld c, b
    ld e, e
    ld h, c
    ld e, e
    ld c, b
    ld e, e
    ld h, c

jr_013_5aaf:
    ld e, e
    ld c, b
    ld e, e
    ei
    nop
    ld e, $10
    ei
    ld hl, sp+$1d
    db $10
    di
    nop
    inc e
    ld de, $f8f3
    dec de
    ld de, $00eb
    ld a, [de]
    db $10
    db $eb
    ld hl, sp+$19
    db $10
    add b
    ld sp, hl
    nop
    inc h
    ld de, $f8f9
    inc hl
    db $10
    pop af
    nop
    ld [hl+], a
    db $10
    pop af
    ld hl, sp+$21
    db $10
    jp hl


    nop
    jr nz, @+$12

    jp hl


    ld hl, sp+$1f
    db $10
    add b
    ld hl, sp-$01
    ld a, [hl+]
    db $10
    ld hl, sp-$09
    add hl, hl
    db $10
    ldh a, [rIE]
    jr z, jr_013_5b01

    ldh a, [$fff7]
    daa
    ld de, $ffe8
    ld h, $10
    add sp, -$09
    dec h
    db $10
    add b
    ld hl, sp-$04
    jr nc, jr_013_5b11

jr_013_5b01:
    ld hl, sp-$0c
    cpl
    db $10
    ldh a, [$fffc]
    ld l, $11
    ldh a, [$fff4]
    dec l
    ld de, $fce8
    inc l
    db $10

jr_013_5b11:
    add sp, -$0c

jr_013_5b13:
    dec hl
    db $10
    add b
    ld hl, sp-$07
    ld a, [hl+]
    jr nc, jr_013_5b13

    ld bc, $3029
    ldh a, [$fff9]
    jr z, @+$33

    ldh a, [rSB]
    daa
    ld sp, $f9e8

jr_013_5b28:
    ld h, $30
    add sp, $01

jr_013_5b2c:
    dec h
    jr nc, jr_013_5aaf

    ld hl, sp-$04
    jr nc, @+$32

    ld hl, sp+$04
    cpl
    jr nc, jr_013_5b28

    db $fc
    ld l, $31
    ldh a, [rDIV]
    dec l
    ld sp, $fce8
    inc l
    jr nc, jr_013_5b2c

    inc b
    dec hl
    jr nc, @-$7e

    ei
    ld bc, $1036
    ei
    ld sp, hl
    dec [hl]
    db $10
    di
    ld bc, $1134
    di
    ld sp, hl
    inc sp
    ld de, $01eb
    ld [hl-], a
    db $10
    db $eb
    ld sp, hl
    ld sp, $8010
    ld a, [$3c01]
    db $10
    ld a, [$3bf9]
    db $10
    ldh a, [c]
    ld bc, $113a
    ldh a, [c]
    ld sp, hl
    add hl, sp
    ld de, $01ea
    jr c, @+$12

    ld [$37f9], a
    db $10
    add b
    ld a, [de]
    ld e, l
    inc hl
    ld e, l
    inc l
    ld e, l
    dec [hl]
    ld e, l
    ld a, $5d
    ld a, $5d
    ld a, $5d
    ld a, $5d
    ld b, a
    ld e, l
    ld b, a
    ld e, l
    ld b, a
    ld e, l
    ld c, [hl]
    ld e, l
    ld e, b
    ld e, l
    ld e, b
    ld e, l
    ld e, b
    ld e, l
    ld e, b
    ld e, l
    ld h, a
    ld e, l
    ld h, a
    ld e, l
    ld h, a
    ld e, l
    ld h, a
    ld e, l
    halt
    ld e, l
    halt
    ld e, l
    halt
    ld e, l
    halt
    ld e, l
    ld a, a
    ld e, l
    ld a, a
    ld e, l
    ld a, a
    ld e, l
    ld a, a
    ld e, l
    adc b
    ld e, l
    adc b
    ld e, l
    adc b
    ld e, l
    adc b
    ld e, l
    sub c
    ld e, l
    and h
    ld e, l
    and a
    ld e, l
    and a
    ld e, l
    and a
    ld e, l
    and a
    ld e, l
    or b
    ld e, l
    or b
    ld e, l
    or b
    ld e, l
    or b
    ld e, l
    cp c
    ld e, l
    cp c
    ld e, l
    cp c
    ld e, l
    cp c
    ld e, l
    jp nz, $c25d

    ld e, l
    jp nz, $c25d

    ld e, l
    bit 3, l
    bit 3, l
    bit 3, l
    bit 3, l
    jp c, $da5d

    ld e, l
    jp c, $da5d

    ld e, l
    jp hl


    ld e, l
    jp hl


    ld e, l
    jp hl


    ld e, l
    jp hl


    ld e, l
    di
    ld e, l
    ld [bc], a
    ld e, [hl]
    ld [bc], a
    ld e, [hl]
    ld [bc], a
    ld e, [hl]
    ld [bc], a
    ld e, [hl]
    dec c
    ld e, [hl]
    dec c
    ld e, [hl]
    dec c
    ld e, [hl]
    dec c
    ld e, [hl]
    jr jr_013_5c68

    jr jr_013_5c6a

    jr jr_013_5c6c

    jr jr_013_5c6e

    dec de
    ld e, [hl]
    dec de
    ld e, [hl]
    dec de
    ld e, [hl]
    dec de
    ld e, [hl]
    ld d, l
    ld e, l
    ld d, l
    ld e, l
    ld d, l
    ld e, l
    ld d, l
    ld e, l
    ld e, $5e
    daa
    ld e, [hl]
    ld l, $5e
    ld sp, $345e
    ld e, [hl]
    inc [hl]
    ld e, [hl]
    inc [hl]
    ld e, [hl]
    inc [hl]
    ld e, [hl]
    dec a
    ld e, [hl]
    dec a
    ld e, [hl]
    dec a
    ld e, [hl]
    dec a
    ld e, [hl]
    ld b, b
    ld e, [hl]
    ld b, b
    ld e, [hl]
    ld b, b
    ld e, [hl]
    ld b, b
    ld e, [hl]
    ld c, a
    ld e, [hl]
    xor $5d
    xor $5d
    xor $5d
    xor $5d
    ld h, d
    ld e, [hl]
    ld h, d
    ld e, [hl]
    ld h, d
    ld e, [hl]
    ld h, d
    ld e, [hl]
    ld l, e
    ld e, [hl]
    ld l, e
    ld e, [hl]
    ld l, e
    ld e, [hl]
    ld l, e
    ld e, [hl]
    ld [hl], h
    ld e, [hl]
    ld [hl], h
    ld e, [hl]
    ld [hl], h
    ld e, [hl]
    ld [hl], h
    ld e, [hl]
    ld l, e
    ld e, [hl]
    ld l, e
    ld e, [hl]
    ld l, e
    ld e, [hl]

jr_013_5c68:
    ld l, e
    ld e, [hl]

jr_013_5c6a:
    ld [hl], h
    ld e, [hl]

jr_013_5c6c:
    ld [hl], h
    ld e, [hl]

jr_013_5c6e:
    ld [hl], h
    ld e, [hl]
    ld [hl], h
    ld e, [hl]
    ld [hl], a
    ld e, [hl]
    ld [hl], a
    ld e, [hl]
    ld [hl], a
    ld e, [hl]
    ld [hl], a
    ld e, [hl]
    ld [hl], a
    ld e, [hl]
    ld [hl], a
    ld e, [hl]
    ld [hl], a
    ld e, [hl]
    ld [hl], a
    ld e, [hl]
    add d
    ld e, [hl]
    sub l
    ld e, [hl]
    or h
    ld e, [hl]
    cp e
    ld e, [hl]
    ret nz

    ld e, [hl]
    rst $00
    ld e, [hl]
    jp z, $e35e

    ld e, [hl]
    ldh a, [c]
    ld e, [hl]
    db $fd
    ld e, [hl]
    inc d
    ld e, a
    dec sp
    ld e, a
    dec sp
    ld e, a
    dec sp
    ld e, a
    dec sp
    ld e, a
    ld b, b
    ld e, a
    ld b, b
    ld e, a
    ld b, b
    ld e, a
    ld b, b
    ld e, a
    ld b, l
    ld e, a
    ld d, d
    ld e, a
    ld e, l
    ld e, a
    ld [hl], d
    ld e, a
    sub l
    ld e, a
    sbc d
    ld e, a
    cp c
    ld e, a
    cp c
    ld e, a
    cp [hl]
    ld e, a
    db $db
    ld e, a
    ldh [$ff5f], a
    ldh [$ff5f], a
    ldh [$ff5f], a
    ldh [$ff5f], a
    rst $20
    ld e, a
    rst $20
    ld e, a
    rst $20
    ld e, a
    rst $20
    ld e, a
    or $5f
    or $5f
    or $5f
    or $5f
    ld sp, hl
    ld e, a
    ld sp, hl
    ld e, a
    ld sp, hl
    ld e, a
    ld sp, hl
    ld e, a
    cp $5f
    cp $5f
    cp $5f
    cp $5f
    add hl, bc
    ld h, b
    inc d
    ld h, b
    inc d
    ld h, b
    inc d
    ld h, b
    inc d
    ld h, b
    inc d
    ld h, b
    inc d
    ld h, b
    inc d
    ld h, b
    inc d
    ld h, b
    inc d
    ld h, b
    inc d
    ld h, b
    inc d
    ld h, b
    inc d
    ld h, b
    inc d
    ld h, b
    inc d
    ld h, b
    inc d
    ld h, b
    inc d
    ld h, b
    inc d
    ld h, b
    inc d
    ld h, b
    inc d
    ld h, b
    inc d
    ld h, b
    inc d
    ld h, b
    inc d
    ld h, b
    inc d
    ld h, b
    inc d
    ld h, b
    inc d
    ld h, b
    inc d
    ld h, b
    rrca
    ld bc, $020f
    rrca
    inc bc
    rrca
    nop
    rst $38
    rrca
    inc bc
    rrca
    nop
    rrca
    ld bc, $020f
    rst $38
    rrca
    ld bc, $020f
    rrca
    inc bc
    rrca
    nop
    rst $38
    rrca
    ld bc, $020f
    rrca
    inc bc
    rrca
    nop
    rst $38
    ld [$0801], sp
    ld [bc], a
    ld [$0803], sp
    nop
    rst $38
    inc d
    nop
    ld b, $01
    ld bc, rSC
    ld [$1200], sp
    ld [bc], a
    ld bc, rSC
    add hl, bc
    nop
    rst $38
    ld b, $00
    ld [bc], a
    ld bc, $0206
    ld a, [bc]
    inc bc
    ld b, $04
    ld [bc], a
    dec b
    inc b
    ld b, $ff
    ld b, $00
    ld [bc], a
    ld bc, $0206
    ld a, [bc]
    inc bc
    ld b, $04
    ld [bc], a
    dec b
    inc b
    ld b, $ff
    rrca
    ld bc, $020f
    rrca
    inc bc
    rrca
    nop
    rst $38
    ld [$0801], sp
    ld [bc], a
    ld [$0803], sp
    nop
    rst $38
    rrca
    nop
    rrca
    ld bc, $020f
    rrca
    inc bc
    rst $38
    rra
    nop
    rra
    ld bc, $020f
    ld [$0803], sp
    inc b
    ld [$0805], sp
    ld b, $08
    rlca
    ld [$ff08], sp
    jr c, jr_013_5da6

jr_013_5da6:
    rst $38
    jr jr_013_5da9

jr_013_5da9:
    ld b, $01
    ld [$0f02], sp
    inc bc
    rst $38
    jr jr_013_5db2

jr_013_5db2:
    ld b, $01
    ld [$0f02], sp
    inc bc
    rst $38
    jr jr_013_5dbb

jr_013_5dbb:
    ld b, $01
    ld [$0f02], sp
    inc bc
    rst $38
    jr jr_013_5dc4

jr_013_5dc4:
    ld b, $01
    ld [$0f02], sp
    inc bc
    rst $38
    jr jr_013_5dcd

jr_013_5dcd:
    add hl, bc
    ld bc, $0209
    add hl, bc
    inc bc
    add hl, bc
    inc b
    add hl, bc
    dec b
    add hl, bc
    ld b, $ff
    jr jr_013_5ddc

jr_013_5ddc:
    dec c
    ld bc, $020d
    dec c
    inc bc
    dec c
    inc b
    dec c
    dec b
    dec c
    ld b, $ff
    jr jr_013_5deb

jr_013_5deb:
    ccf
    ld bc, $0fff
    nop
    jr z, jr_013_5df3

    rst $38

jr_013_5df3:
    rrca
    nop
    rrca
    ld bc, $0208
    ld [$0803], sp
    inc b
    ld [$1805], sp
    ld b, $ff
    rrca
    nop
    ld a, [bc]
    ld bc, $0206
    ld b, $03
    rra
    inc b
    rst $38
    rrca
    nop
    ld a, [bc]
    ld bc, $0206
    ld b, $03
    rra
    inc b
    rst $38
    ldh a, [rP1]
    rst $38
    ldh a, [rP1]
    rst $38
    inc c
    nop
    inc c
    ld bc, $020f
    ld c, a
    inc bc
    rst $38
    ld [$0f00], sp
    ld bc, $020f
    rst $38
    ldh a, [rP1]
    rst $38
    ldh a, [rP1]
    rst $38
    jr jr_013_5e36

jr_013_5e36:
    ld b, $01
    ld [$0f02], sp
    inc bc
    rst $38
    ldh a, [rP1]
    rst $38
    dec c
    nop
    dec c
    ld bc, $020d
    dec c
    inc bc
    dec c
    inc b
    dec c
    dec b
    dec c
    ld b, $ff
    rrca
    nop
    rrca
    ld bc, $020a
    ld a, [bc]
    inc bc
    ld a, [bc]
    inc b
    ld a, [bc]
    dec b
    ld a, [bc]
    ld b, $0a
    rlca
    ld [$ff08], sp
    ld b, $03
    ld [$0404], sp
    dec b
    ld b, $06
    rst $38
    rrca
    nop
    rrca
    ld bc, $020f
    rrca
    inc bc
    rst $38
    ldh a, [rP1]
    rst $38
    rrca
    nop
    ld a, [bc]
    ld bc, $0208
    rrca
    inc bc
    rrca
    inc b
    rst $38
    rrca
    nop
    rrca
    ld bc, $0206
    ld b, $03
    ld b, $04
    ld b, $05
    ld b, $06
    ld b, $07
    rrca
    ld [$0fff], sp
    nop
    rrca
    ld bc, $0204
    inc b
    inc bc
    inc b
    inc b
    inc b
    dec b
    inc b
    ld b, $04
    rlca
    inc b
    ld [$0904], sp
    inc b
    ld a, [bc]
    inc b
    dec bc
    inc b
    inc c
    inc b
    dec c
    ld [$ff0e], sp
    rrca
    nop
    ld b, $01
    inc b
    ld [bc], a
    rst $38
    stop
    db $10
    ld bc, $08ff
    nop
    rrca
    ld bc, $020f
    rst $38
    rrca
    nop
    rst $38
    rrca
    nop
    rrca
    ld bc, $020f
    rrca
    inc bc
    rrca
    inc b
    rrca
    dec b
    rrca
    ld b, $0f
    rlca
    rrca
    ld [$090f], sp
    rrca
    ld a, [bc]
    rrca
    dec bc
    rst $38
    inc d
    nop
    rrca
    ld bc, $020f
    rrca
    inc bc
    rrca
    inc b
    rrca
    dec b
    rrca
    ld b, $ff
    inc d
    nop
    rrca
    ld bc, $020f
    rrca
    inc bc
    rrca
    inc b
    rst $38
    rrca
    nop
    rrca
    ld bc, $020f
    rrca
    inc bc
    rrca
    inc b
    ld [$0805], sp
    ld b, $18
    rlca
    rrca
    ld [$090f], sp
    rrca
    ld a, [bc]
    rst $38
    inc d
    nop
    ld a, [bc]
    ld bc, $020a
    ld a, [bc]
    inc bc
    dec h
    inc b
    rst $38
    ld a, [bc]
    dec b
    ld a, [bc]
    ld b, $1a
    rlca
    ld a, [bc]
    ld [$090a], sp
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec bc
    ld a, [bc]
    inc c
    ld a, [bc]
    dec c
    ld a, [bc]
    ld c, $0a
    rrca
    ld a, [bc]
    db $10
    ld a, [bc]
    ld de, $121f
    rrca
    nop
    rrca
    ld bc, $3fff
    nop
    cpl
    ld bc, $0fff
    nop
    rrca
    ld bc, $0208
    ld [$0803], sp
    inc b
    ld [rTIMA], sp
    rrca
    nop
    ld [$1801], sp
    ld [bc], a
    ld [$0803], sp
    inc b
    rst $38
    rrca
    nop
    rrca
    ld bc, $020f
    rrca
    inc bc
    rrca
    inc b
    rrca
    dec b
    rrca
    ld b, $18
    rlca
    rrca
    ld [$090f], sp
    rst $38
    ld d, $00
    dec c
    ld bc, $020d
    dec c
    inc bc
    dec c
    inc b
    dec c
    dec b
    dec c
    ld b, $0d
    rlca
    ld d, $08
    dec c
    add hl, bc
    dec c
    ld a, [bc]
    dec c
    dec bc
    dec c
    inc c
    dec c
    dec c
    dec c
    ld c, $0d
    rrca
    ld d, $10
    rst $38
    rrca
    nop
    cpl
    ld bc, $0fff
    nop
    rrca
    ld bc, $020f
    rrca
    inc bc
    rrca
    inc b
    rrca
    dec b
    rrca
    ld b, $0f
    rlca
    jr jr_013_5fb4

    rrca
    add hl, bc
    rrca
    ld a, [bc]
    rrca
    dec bc
    rrca
    inc c

jr_013_5fb4:
    rrca
    dec c
    rrca
    ld c, $ff
    rra
    nop
    cpl
    ld bc, $0fff
    nop
    rrca
    ld bc, $020f
    rrca
    inc bc
    jr @+$06

    rrca
    dec b
    rrca
    ld b, $0f
    rlca
    jr jr_013_5fd8

    rrca
    add hl, bc
    jr jr_013_5fde

    rrca
    dec bc
    rrca
    inc c

jr_013_5fd8:
    rrca
    dec c
    rst $38
    cpl
    nop
    rra

jr_013_5fde:
    ld bc, $08ff
    nop
    ld [$0801], sp
    ld [bc], a
    rst $38
    ld b, $00
    ld [bc], a
    ld bc, $0206
    ld a, [bc]
    inc bc
    ld b, $04
    ld [bc], a
    dec b
    inc b
    ld b, $ff
    ld [$ff00], sp
    rra
    nop
    cpl
    ld bc, $0aff
    nop
    ld a, [bc]
    ld bc, $020a
    ld a, [bc]
    inc bc
    ld a, [bc]
    inc b
    rst $38
    inc a
    nop
    dec bc
    ld bc, $020b
    dec bc
    inc bc
    rra
    inc b
    rst $38
    ld [bc], a
    push af
    jr z, jr_013_6079

    ld [bc], a
    push af
    ld a, [hl+]
    ld h, c
    ld [bc], a
    push af
    inc l
    ld h, c
    ld [bc], a
    push af
    ld l, $61
    ld [bc], a
    push af
    jr nc, jr_013_6089

    ld [bc], a
    push af
    ld [hl-], a
    ld h, c
    ld [bc], a
    push af
    inc [hl]
    ld h, c
    ld [bc], a
    push af
    ld [hl], $61
    ld [bc], a
    push af
    jr c, jr_013_6099

    ld [bc], a
    push af
    ld b, b
    ld h, c
    ld [bc], a
    push af
    ld c, b
    ld h, c
    ld [bc], a
    push af
    ld d, b
    ld h, c
    ld [bc], a
    push af
    sbc b
    ld h, h
    ld [bc], a
    push af
    sbc d
    ld h, h
    ld [bc], a
    push af
    sbc h
    ld h, h
    ld [bc], a
    push af
    sbc [hl]
    ld h, h
    ld [bc], a
    push af

Call_013_6056:
    and b
    ld h, h
    ld [bc], a
    push af
    xor b
    ld h, h
    ld [bc], a
    push af
    or b
    ld h, h
    ld [bc], a
    push af
    cp b
    ld h, h
    ld [bc], a
    push af
    ret nz

    ld h, h
    ld [bc], a
    push af
    jp nz, Jump_000_0264

    push af
    call nz, Call_000_0264
    push af
    add $64
    ld [bc], a
    push af
    ret z

    ld h, h
    ld [bc], a

jr_013_6079:
    push af
    ret nc

    ld h, h
    ld [bc], a
    push af
    ret c

    ld h, h
    ld [bc], a
    push af
    ldh [$ff64], a
    ld [bc], a
    push af
    ld b, b
    ld h, a
    ld [bc], a

jr_013_6089:
    push af
    ld b, d
    ld h, a
    ld [bc], a
    push af
    ld b, h
    ld h, a
    ld [bc], a
    push af
    ld b, [hl]
    ld h, a
    ld [bc], a
    push af
    ld c, b
    ld h, a
    ld [bc], a

jr_013_6099:
    push af
    ld d, b
    ld h, a
    ld [bc], a
    push af
    ld e, b
    ld h, a
    ld [bc], a
    push af
    ld h, b
    ld h, a
    inc bc
    push af
    ld l, b
    ld h, a
    inc bc
    push af
    ld l, d
    ld h, a
    inc bc
    push af
    ld l, h
    ld h, a
    inc bc
    push af
    ld l, [hl]
    ld h, a
    inc bc
    push af
    ld [hl], b
    ld h, a
    inc bc
    push af
    ld a, b
    ld h, a
    inc bc
    push af
    add b
    ld h, a
    inc bc
    push af
    adc b
    ld h, a
    inc bc
    push af
    ld b, b
    ld l, d
    inc bc
    push af
    ld b, d
    ld l, d
    inc bc
    push af
    ld b, h
    ld l, d
    inc bc
    push af
    ld b, [hl]
    ld l, d
    inc bc
    push af
    ld c, b
    ld l, d
    inc bc
    push af
    ld d, b
    ld l, d
    inc bc
    push af
    ld e, b
    ld l, d
    inc bc
    push af
    ld h, b
    ld l, d
    inc bc
    push af
    reti


    ld l, h
    inc bc
    push af
    db $db
    ld l, h
    inc bc
    push af
    db $dd
    ld l, h
    inc bc
    push af
    rst $18
    ld l, h
    inc bc
    push af
    pop hl
    ld l, h
    inc bc
    push af
    jp hl


    ld l, h
    inc bc
    push af
    pop af
    ld l, h
    inc bc
    push af
    ld sp, hl
    ld l, h
    inc bc
    push af
    ld bc, $036d
    push af
    rlca
    ld l, l
    inc bc
    push af
    add hl, bc
    ld l, l
    inc bc
    push af
    dec bc
    ld l, l
    inc bc
    push af
    dec c
    ld l, l
    inc bc
    push af
    rrca
    ld l, l
    inc bc
    push af
    rla
    ld l, l
    inc bc
    push af
    rra
    ld l, l
    inc bc
    push af
    daa
    ld l, l
    ld e, b
    ld h, c
    ld a, c
    ld h, c
    sbc d
    ld h, c
    cp e
    ld h, c
    call c, $2761
    ld h, d
    ld [hl], d
    ld h, d
    cp l
    ld h, d
    push af
    ld h, c
    call c, $0e61
    ld h, d
    call c, Call_013_4061
    ld h, d
    daa
    ld h, d
    ld e, c
    ld h, d
    daa
    ld h, d
    adc e
    ld h, d
    ld [hl], d
    ld h, d
    and h
    ld h, d
    ld [hl], d
    ld h, d
    sub $62
    cp l
    ld h, d
    rst $28
    ld h, d
    cp l
    ld h, d
    ld hl, sp+$01
    rlca
    db $10
    ld hl, sp-$07
    ld b, $10
    ldh a, [rSB]
    dec b
    db $10
    ldh a, [$fff9]
    inc b
    db $10
    add sp, $01
    inc bc
    ld d, $e8
    ld sp, hl
    ld [bc], a
    ld d, $e0
    ld bc, $1001
    ldh [$fff9], a
    nop
    db $10
    add b
    ld hl, sp+$01
    rlca
    db $10
    ld hl, sp-$07
    ld b, $10
    ldh a, [rSB]
    dec c
    db $10
    ldh a, [$fff9]
    inc c
    db $10
    add sp, $01
    dec bc
    ld d, $e8
    ld sp, hl
    ld a, [bc]
    ld d, $e0
    ld bc, $1009
    ldh [$fff9], a
    ld [$8010], sp
    ld hl, sp+$01
    rlca
    db $10
    ld hl, sp-$07
    ld b, $10
    ldh a, [rSB]
    inc de
    db $10
    ldh a, [$fff9]
    ld [de], a
    db $10
    add sp, $01
    ld de, $e816
    ld sp, hl
    db $10
    ld d, $e0
    ld bc, $100f
    ldh [$fff9], a
    ld c, $10
    add b
    ld hl, sp+$00
    add hl, de
    db $10
    ld hl, sp-$08
    jr @+$12

    ldh a, [rP1]
    rla
    db $10
    ldh a, [$fff8]
    ld d, $10
    add sp, $00
    dec d
    ld d, $e8
    ld hl, sp+$14
    ld d, $e0
    ld bc, $1001
    ldh [$fff9], a
    nop
    db $10
    add b
    ld sp, hl
    nop
    rra
    db $10
    ld sp, hl
    ld hl, sp+$1e
    db $10
    pop af
    nop
    dec e
    db $10
    pop af
    ld hl, sp+$1c
    db $10
    jp hl


    nop
    dec de
    ld d, $e9
    ld hl, sp+$1a
    ld d, $80
    ld hl, sp+$00
    inc hl
    db $10
    ld hl, sp-$08
    ld [hl+], a
    db $10
    ldh a, [rP1]
    ld hl, $f010
    ld hl, sp+$20
    db $10
    add sp, $00
    dec de
    ld d, $e8
    ld hl, sp+$1a
    ld d, $80
    add sp, $00
    dec de
    ld d, $e8
    ld hl, sp+$1a
    ld d, $f8
    nop
    daa
    db $10
    ld hl, sp-$08
    ld h, $10
    ldh a, [rP1]
    dec h
    db $10
    ldh a, [$fff8]
    inc h
    db $10
    add b
    ld sp, hl
    nop
    dec l
    db $10
    ld sp, hl
    ld hl, sp+$2c
    db $10
    pop af
    nop
    dec hl
    db $10
    pop af
    ld hl, sp+$2a
    db $10
    jp hl


    nop
    add hl, hl
    ld d, $e9
    ld hl, sp+$28
    ld d, $80
    ld hl, sp+$00
    ld sp, $f810
    ld hl, sp+$30
    db $10
    ldh a, [rP1]
    cpl
    db $10
    ldh a, [$fff8]
    ld l, $10
    add sp, $00
    add hl, hl
    ld d, $e8
    ld hl, sp+$28
    ld d, $80
    ld hl, sp+$00
    dec [hl]
    db $10
    ld hl, sp-$08
    inc [hl]
    db $10
    ldh a, [rP1]
    inc sp
    db $10
    ldh a, [$fff8]
    ld [hl-], a
    db $10
    add sp, $00
    add hl, hl
    ld d, $e8
    ld hl, sp+$28

jr_013_6270:
    ld d, $80
    ld sp, hl
    ld sp, hl
    dec l
    jr nc, jr_013_6270

    ld bc, $302c
    pop af
    ld sp, hl
    dec hl
    jr nc, jr_013_6270

    ld bc, $302a
    jp hl


    ld sp, hl
    add hl, hl
    ld [hl], $e9
    ld bc, $3628
    add b
    ld hl, sp-$07
    ld sp, $f830
    ld bc, $3030
    ldh a, [$fff9]
    cpl
    jr nc, @-$0e

    ld bc, $302e
    add sp, -$07
    add hl, hl
    ld [hl], $e8
    ld bc, $3628
    add b
    ld hl, sp-$07
    dec [hl]
    jr nc, @-$06

    ld bc, $3034
    ldh a, [$fff9]
    inc sp
    jr nc, @-$0e

    ld bc, $3032
    add sp, -$07
    add hl, hl
    ld [hl], $e8
    ld bc, $3628
    add b
    ld sp, hl
    nop
    dec sp
    db $10
    ld sp, hl
    ld hl, sp+$3a
    db $10
    pop af
    nop
    add hl, sp
    db $10
    pop af
    ld hl, sp+$38
    db $10
    jp hl


    nop
    scf
    ld d, $e9
    ld hl, sp+$36
    ld d, $80
    ld hl, sp+$00
    ccf
    db $10
    ld hl, sp-$08
    ld a, $10
    ldh a, [rP1]
    dec a
    db $10
    ldh a, [$fff8]
    inc a
    db $10
    add sp, $00
    scf
    ld d, $e8
    ld hl, sp+$36
    ld d, $80
    ld hl, sp+$00
    ld b, e
    db $10
    ld hl, sp-$08
    ld b, d
    db $10
    ldh a, [rP1]
    ld b, c
    db $10
    ldh a, [$fff8]
    ld b, b
    db $10
    add sp, $00
    scf
    ld d, $e8
    ld hl, sp+$36
    ld d, $80
    ld sp, hl
    nop
    ld c, c
    db $10
    ld sp, hl
    ld hl, sp+$48
    db $10
    pop af
    nop
    ld b, a
    db $10
    pop af
    ld hl, sp+$46
    db $10
    jp hl


    nop
    ld b, l
    db $10
    jp hl


    ld hl, sp+$44
    db $10
    add b
    ld hl, sp+$00
    ld c, e
    db $10
    ld hl, sp-$08
    ld c, d
    db $10
    ldh a, [rP1]
    ld b, a
    db $10
    ldh a, [$fff8]
    ld b, [hl]
    db $10
    add sp, $00
    ld b, l
    db $10
    add sp, -$08

jr_013_6337:
    ld b, h
    db $10
    add b
    ld hl, sp-$07
    ld c, e
    jr nc, jr_013_6337

    ld bc, $304a
    ldh a, [rP1]
    ld b, a
    db $10
    ldh a, [$fff8]
    ld b, [hl]
    db $10
    add sp, $00
    ld b, l
    db $10
    add sp, -$08
    ld b, h
    db $10
    add b
    ld hl, sp+$00
    ld d, c
    db $10
    ld hl, sp-$08
    ld d, b
    db $10
    ldh a, [rP1]
    ld c, a
    db $10
    ldh a, [$fff8]
    ld c, [hl]
    db $10
    add sp, $00
    ld c, l
    db $10
    add sp, -$08
    ld c, h
    db $10
    add b
    ld hl, sp+$00
    ld d, l
    db $10
    ld hl, sp-$08
    ld d, h
    db $10
    ldh a, [rP1]
    ld d, e
    db $10
    ldh a, [$fff8]
    ld d, d
    db $10
    add sp, $00
    ld c, l
    db $10
    add sp, -$08
    ld c, h
    db $10
    add b
    ld hl, sp+$00
    ld e, c
    db $10
    ld hl, sp-$08
    ld e, b
    db $10
    ldh a, [rP1]
    ld d, a
    db $10
    ldh a, [$fff8]
    ld d, [hl]
    db $10
    add sp, $00
    ld c, l
    db $10
    add sp, -$08

jr_013_639b:
    ld c, h
    db $10
    add b
    ld hl, sp-$07
    ld d, c
    jr nc, jr_013_639b

    ld bc, $3050
    ldh a, [$fff9]
    ld c, a
    jr nc, jr_013_639b

    ld bc, $304e
    add sp, -$07
    ld c, l
    jr nc, jr_013_639b

    ld bc, $304c
    add b
    ld hl, sp-$07
    ld d, l
    jr nc, @-$06

    ld bc, $3054
    ldh a, [$fff9]
    ld d, e
    jr nc, @-$0e

    ld bc, $3052
    add sp, -$07
    ld c, l
    jr nc, @-$16

    ld bc, $304c
    add b
    ld hl, sp-$07
    ld e, c
    jr nc, @-$06

    ld bc, $3058
    ldh a, [$fff9]
    ld d, a
    jr nc, @-$0e

    ld bc, $3056
    add sp, -$07
    ld c, l
    jr nc, @-$16

    ld bc, $304c
    add b
    ld hl, sp+$00
    ld e, a
    db $10
    ld hl, sp-$08
    ld e, [hl]
    db $10
    ldh a, [rP1]
    ld e, l
    db $10
    ldh a, [$fff8]
    ld e, h
    db $10
    add sp, $00
    ld e, e
    db $10
    add sp, -$08
    ld e, d
    db $10
    add b
    ld hl, sp+$00
    ld h, e
    db $10
    ld hl, sp-$08
    ld h, d
    db $10
    ldh a, [rP1]
    ld h, c
    db $10
    ldh a, [$fff8]
    ld h, b
    db $10
    add sp, $00
    ld e, e
    db $10
    add sp, -$08

jr_013_6418:
    ld e, d
    db $10
    add b
    ld hl, sp-$07
    ld h, e
    jr nc, jr_013_6418

    ld bc, $3062
    ldh a, [$fff9]
    ld h, c
    jr nc, jr_013_6418

    ld bc, $3060
    add sp, $00
    ld e, e
    db $10
    add sp, -$08
    ld e, d
    db $10
    add b
    ld hl, sp+$00
    ld l, c
    db $10
    ld hl, sp-$08
    ld l, b
    db $10
    ldh a, [rP1]
    ld h, a
    db $10
    ldh a, [$fff8]
    ld h, [hl]
    db $10
    add sp, $00
    ld h, l
    db $10
    add sp, -$08
    ld h, h
    db $10
    add b
    ldh a, [rP1]
    ld [hl], c
    db $10
    ldh a, [$fff8]
    ld [hl], b
    db $10
    add sp, $00
    ld l, a
    db $10
    add sp, -$08
    ld l, [hl]
    db $10
    ld hl, sp+$00
    ld l, c
    db $10
    ld hl, sp-$08
    ld l, b
    db $10
    add b
    ld hl, sp+$00
    ld l, c
    db $10
    ld hl, sp-$08
    ld l, b
    db $10
    ldh a, [rP1]
    ld l, l
    db $10
    ldh a, [$fff8]
    ld l, h
    db $10
    add sp, $00
    ld l, e
    db $10
    add sp, -$08

jr_013_647c:
    ld l, d
    db $10
    add b
    ld hl, sp+$00
    ld l, c
    db $10
    ld hl, sp-$08
    ld l, b
    db $10
    ldh a, [$fff9]
    ld l, l
    jr nc, jr_013_647c

    ld bc, $306c
    add sp, -$07
    ld l, e
    jr nc, jr_013_647c

    ld bc, $306a
    add b
    add sp, $64
    inc sp
    ld h, l
    ld a, [hl]
    ld h, l
    ret


    ld h, l
    ld bc, $e865
    ld h, h
    ld a, [de]
    ld h, l
    add sp, $64
    ld c, h
    ld h, l
    inc sp
    ld h, l
    ld h, l
    ld h, l
    inc sp
    ld h, l
    sub a
    ld h, l
    ld a, [hl]
    ld h, l
    or b
    ld h, l
    ld a, [hl]
    ld h, l
    ldh [c], a
    ld h, l
    ret


    ld h, l
    ei
    ld h, l
    ret


    ld h, l
    inc d
    ld h, [hl]
    ld e, a
    ld h, [hl]
    xor d
    ld h, [hl]
    push af
    ld h, [hl]
    dec l
    ld h, [hl]
    inc d
    ld h, [hl]
    ld b, [hl]
    ld h, [hl]
    inc d
    ld h, [hl]
    ld a, b
    ld h, [hl]
    ld e, a
    ld h, [hl]
    sub c
    ld h, [hl]
    ld e, a
    ld h, [hl]
    jp $aa66


    ld h, [hl]
    call c, $aa66
    ld h, [hl]
    ld c, $67
    push af
    ld h, [hl]
    daa
    ld h, a
    push af
    ld h, [hl]
    ld sp, hl
    nop
    ld [hl], a
    dec d
    ld sp, hl
    ld hl, sp+$76
    dec d
    pop af
    nop
    ld [hl], l
    dec d
    pop af
    ld hl, sp+$74
    dec d
    jp hl


    nop
    ld [hl], e
    db $10
    jp hl


    ld hl, sp+$72
    db $10
    add b
    add sp, $00
    ld [hl], e
    db $10
    add sp, -$08
    ld [hl], d
    db $10
    ld hl, sp+$00
    ld a, e
    dec d
    ld hl, sp-$08
    ld a, d
    dec d
    ldh a, [rP1]
    ld a, c
    dec d
    ldh a, [$fff8]

jr_013_6517:
    ld a, b
    dec d
    add b
    ld hl, sp+$00
    ld a, a
    dec d
    ld hl, sp-$08
    ld a, [hl]
    dec d
    ldh a, [rP1]
    ld a, l
    dec d
    ldh a, [$fff8]
    ld a, h
    dec d
    add sp, $00
    ld [hl], e
    db $10
    add sp, -$08

jr_013_6530:
    ld [hl], d
    db $10
    add b
    ld sp, hl
    ld [bc], a
    add l
    dec d
    ld sp, hl
    ld a, [$1584]
    pop af
    ld [bc], a
    add e
    db $10
    pop af
    ld a, [$1582]
    jp hl


    ld [bc], a
    add c
    db $10
    jp hl


    ld a, [$1080]
    add b
    ld hl, sp+$02
    adc c
    dec d
    ld hl, sp-$06
    adc b
    dec d
    ldh a, [rSC]
    add a
    db $10
    ldh a, [$fffa]
    add [hl]
    dec d
    add sp, $02
    add c
    db $10
    add sp, -$06
    add b
    db $10
    add b
    add sp, $02
    add c
    db $10
    add sp, -$06
    add b
    db $10
    ld hl, sp+$02
    adc l
    dec d
    ld hl, sp-$06
    adc h
    dec d
    ldh a, [rSC]
    adc e
    db $10
    ldh a, [$fffa]
    adc d

jr_013_657c:
    dec d
    add b
    ld sp, hl
    ld hl, sp-$7b
    dec [hl]
    ld sp, hl
    nop
    add h
    dec [hl]
    pop af
    ld hl, sp-$7d
    jr nc, jr_013_657c

    nop
    add d
    dec [hl]
    jp hl


    ld hl, sp-$7f
    jr nc, jr_013_657c

    nop

jr_013_6594:
    add b
    jr nc, jr_013_6517

    ld hl, sp-$08
    adc c
    dec [hl]
    ld hl, sp+$00

jr_013_659d:
    adc b
    dec [hl]
    ldh a, [$fff8]
    add a
    jr nc, jr_013_6594

    nop
    add [hl]
    dec [hl]
    add sp, -$08
    add c
    jr nc, jr_013_6594

    nop
    add b
    jr nc, jr_013_6530

    add sp, -$08
    add c
    jr nc, jr_013_659d

jr_013_65b5:
    nop
    add b
    jr nc, @-$06

    ld hl, sp-$73
    dec [hl]
    ld hl, sp+$00
    adc h
    dec [hl]
    ldh a, [$fff8]
    adc e
    jr nc, jr_013_65b5

    nop
    adc d
    dec [hl]
    add b
    ld sp, hl
    nop
    sub e
    dec d
    ld sp, hl
    ld hl, sp-$6e
    dec d
    pop af
    nop
    sub c
    db $10
    pop af
    ld hl, sp-$70
    db $10
    jp hl


    nop
    adc a
    db $10
    jp hl


    ld hl, sp-$72
    db $10
    add b
    ld hl, sp+$00
    sub a
    dec d
    ld hl, sp-$08
    sub [hl]
    dec d
    ldh a, [rP1]
    sub l
    db $10
    ldh a, [$fff8]
    sub h
    db $10
    add sp, $00
    adc a
    db $10
    add sp, -$08
    adc [hl]
    db $10
    add b
    add sp, $00
    adc a
    db $10
    add sp, -$08
    adc [hl]
    db $10
    ld hl, sp+$00
    sbc e
    dec d
    ld hl, sp-$08
    sbc d
    dec d
    ldh a, [rP1]
    sbc c
    db $10
    ldh a, [$fff8]
    sbc b
    db $10
    add b
    ld hl, sp+$00
    and c
    db $10
    ld hl, sp-$08
    and b
    db $10
    ldh a, [rP1]
    sbc a
    ld de, $f8f0
    sbc [hl]
    ld de, $00e8
    sbc l
    ld de, $f8e8
    sbc h
    ld de, $f780
    nop
    and a
    db $10
    rst $30
    ld hl, sp-$5a
    db $10
    rst $28
    nop
    and l
    ld de, $f8ef
    and h
    ld de, $00e7
    and e
    ld de, $f8e7
    and d
    ld de, $f780
    rst $38
    xor l
    db $10
    rst $30
    rst $30
    xor h
    db $10
    rst $28
    rst $38
    xor e
    ld de, $f7ef
    xor d
    ld de, $ffe7
    xor c
    ld de, $f7e7
    xor b
    ld de, $f880
    nop
    or e
    db $10
    ld hl, sp-$08
    or d
    db $10
    ldh a, [rP1]
    or c
    ld de, $f8f0
    or b
    ld de, $00e8
    xor a
    ld de, $f8e8
    xor [hl]
    ld de, $f780
    nop
    cp c
    db $10
    rst $30
    ld hl, sp-$48
    db $10
    rst $28
    nop
    or a
    ld de, $f8ef
    or [hl]
    ld de, $00e7
    or l
    ld de, $f8e7
    or h
    ld de, $e780
    nop
    or l
    ld de, $f8e7
    or h
    ld de, $00f7
    cp l
    db $10
    rst $30
    ld hl, sp-$44
    db $10
    rst $28
    nop

jr_013_66a3:
    cp e
    ld de, $f8ef

jr_013_66a7:
    cp d
    ld de, $f880
    ld hl, sp-$4d
    jr nc, jr_013_66a7

    nop
    or d
    jr nc, jr_013_66a3

    ld hl, sp-$4f
    ld sp, $00f0
    or b
    ld sp, $f8e8
    xor a
    ld sp, $00e8
    xor [hl]
    ld sp, $f780
    ld hl, sp-$47
    jr nc, @-$07

    nop
    cp b
    jr nc, @-$0f

    ld hl, sp-$49
    ld sp, $00ef
    or [hl]
    ld sp, $f8e7
    or l
    ld sp, $00e7
    or h
    ld sp, $e780
    ld hl, sp-$4b
    ld sp, $00e7
    or h
    ld sp, $f8f7
    cp l
    jr nc, @-$07

    nop
    cp h
    jr nc, @-$0f

    ld hl, sp-$45
    ld sp, $00ef
    cp d
    ld sp, $f880
    nop
    jp $f810


    ld hl, sp-$3e
    db $10
    ldh a, [rP1]
    pop bc
    ld de, $f8f0
    ret nz

    ld de, $00e8
    cp a
    ld de, $f8e8
    cp [hl]
    ld de, $f880
    rst $38
    ret


    db $10
    ld hl, sp-$09
    ret z

    db $10
    ldh a, [rIE]
    rst $00
    ld de, $f7f0
    add $11
    add sp, -$01
    push bc
    ld de, $f7e8
    call nz, $8011
    ld hl, sp+$00
    rst $08
    db $10
    ld hl, sp-$08
    adc $10
    ldh a, [rP1]
    call $f011
    ld hl, sp-$34
    ld de, $00e8
    rl c
    add sp, -$08
    jp z, $8011

    sub b
    ld h, a
    db $db
    ld h, a
    ld l, $68
    add c
    ld l, b
    xor c
    ld h, a
    sub b
    ld h, a
    jp nz, $9067

    ld h, a
    ld hl, sp+$67
    db $db
    ld h, a
    dec d
    ld l, b
    db $db
    ld h, a
    ld c, e
    ld l, b
    ld l, $68
    ld l, b
    ld l, b
    ld l, $68
    sbc d
    ld l, b
    add c
    ld l, b
    or e
    ld l, b
    add c
    ld l, b
    call z, Call_000_2f68
    ld l, c
    add [hl]
    ld l, c
    db $dd
    ld l, c
    db $ed
    ld l, b
    call z, $0e68
    ld l, c
    call z, $4c68
    ld l, c
    cpl
    ld l, c
    ld l, c
    ld l, c
    cpl
    ld l, c
    and e
    ld l, c
    add [hl]
    ld l, c
    ret nz

    ld l, c
    add [hl]
    ld l, c
    cp $69
    db $dd
    ld l, c
    rra
    ld l, d
    db $dd
    ld l, c
    ld sp, hl
    nop
    push de
    ld de, $f8f9
    call nc, $f111
    nop
    db $d3
    ld de, $f8f1
    jp nc, $e911

    nop
    pop de
    ld d, $e9
    ld hl, sp-$30
    ld d, $80
    add sp, $00
    pop de
    ld d, $e8
    ld hl, sp-$30
    ld d, $f8
    nop
    reti


    ld de, $f8f8
    ret c

    ld de, $00f0
    rst $10
    ld de, $f8f0
    sub $11
    add b
    add sp, $00
    pop de
    ld d, $e8
    ld hl, sp-$30
    ld d, $f8
    nop
    db $dd
    ld de, $f8f8
    call c, $f011
    nop
    db $db
    ld de, $f8f0
    jp c, $8011

    di
    ld [$11e4], sp
    ld sp, hl
    nop
    db $e3
    ld de, $f8f9
    ldh [c], a
    ld de, $00f1
    pop hl
    ld de, $f8f1
    ldh [rNR11], a
    jp hl


    nop
    rst $18
    ld d, $e9
    ld hl, sp-$22
    ld d, $80
    ldh a, [c]
    ld [$11eb], sp
    ld hl, sp+$00
    ld [$f811], a
    ld hl, sp-$17
    ld de, $00f0
    add sp, $11
    ldh a, [$fff8]
    rst $20
    ld de, $00e8
    and $16
    add sp, -$08
    push hl
    ld d, $80
    add sp, $00
    and $16
    add sp, -$08
    push hl
    ld d, $f8
    nop
    rst $28
    ld de, $f8f8
    xor $11
    ldh a, [rP1]
    db $ed
    ld de, $f8f0
    db $ec
    ld de, $f380
    ldh a, [$ffe4]
    ld sp, $f8f9
    db $e3
    ld sp, $00f9
    ldh [c], a
    ld sp, $f8f1
    pop hl
    ld sp, $00f1
    ldh [rWave_1], a
    jp hl


    ld hl, sp-$21
    ld [hl], $e9
    nop
    sbc $36
    add b
    ldh a, [c]
    ldh a, [$ffeb]
    ld sp, $f8f8
    ld [$f831], a
    nop
    jp hl


    ld sp, $f8f0
    add sp, $31
    ldh a, [rP1]
    rst $20
    ld sp, $f8e8
    and $36
    add sp, $00
    push hl
    ld [hl], $80
    add sp, -$08
    and $36
    add sp, $00
    push hl
    ld [hl], $f8
    ld hl, sp-$11
    ld sp, $00f8
    xor $31
    ldh a, [$fff8]
    db $ed
    ld sp, $00f0
    db $ec
    ld sp, $f980
    nop
    push af
    ld de, $f8f9
    db $f4
    ld de, $00f1
    di
    ld de, $f8f1
    ldh a, [c]
    ld de, $00e9
    pop af
    ld d, $e9
    ld hl, sp-$10
    ld d, $80
    add sp, $00
    pop af
    ld d, $e8
    ld hl, sp-$10
    ld d, $f8
    nop
    ld sp, hl
    ld de, $f8f8
    ld hl, sp+$11
    ldh a, [rP1]
    rst $30
    ld de, $f8f0
    or $11
    add b
    add sp, $00
    pop af
    ld d, $e8
    ld hl, sp-$10
    ld d, $f8
    nop
    db $fd
    ld de, $f8f8
    db $fc
    ld de, $00f0
    ei
    ld de, $f8f0
    ld a, [$8011]
    pop af
    ld [$1207], sp
    pop af
    ldh a, [rTMA]
    ld [de], a
    ld sp, hl
    nop
    dec b
    ld [de], a
    ld sp, hl
    ld hl, sp+$04
    ld [de], a
    pop af
    nop
    inc bc
    ld [de], a
    pop af
    ld hl, sp+$02
    ld [de], a
    jp hl


    nop
    ld bc, $e912
    ld hl, sp+$00
    ld [de], a
    add b
    rst $28
    ld [$1207], sp
    rst $28
    ldh a, [rTMA]
    ld [de], a
    ld hl, sp+$00
    inc c
    ld [de], a
    ld hl, sp-$08
    dec bc
    ld [de], a
    add sp, $00
    ld bc, $f012
    nop
    ld a, [bc]
    ld [de], a
    ldh a, [$fff8]
    add hl, bc
    ld [de], a
    add sp, -$08
    ld [$8012], sp
    ldh a, [$fff0]
    ld b, $12
    ld hl, sp+$00
    ld [de], a
    ld [de], a
    ld hl, sp-$08
    ld de, $f012
    ld [$1210], sp
    add sp, -$08
    nop
    ld [de], a
    ldh a, [rP1]
    rrca
    ld [de], a
    ldh a, [$fff8]
    ld c, $12
    add sp, $00
    dec c
    ld [de], a
    add b
    ld sp, hl
    nop
    add hl, de
    ld [de], a
    ld sp, hl
    ld hl, sp+$18
    ld [de], a
    pop af
    ld [$1217], sp
    pop af
    nop
    ld d, $12
    pop af
    ld hl, sp+$15
    ld [de], a
    jp hl


    nop
    inc d
    ld [de], a
    jp hl


    ld hl, sp+$13
    ld [de], a
    add b
    rst $28
    ld [$1217], sp
    ld hl, sp+$00
    ld e, $12
    ld hl, sp-$08
    dec e
    ld [de], a
    ldh a, [rP1]
    inc e
    ld [de], a
    ldh a, [$fff8]
    dec de
    ld [de], a
    add sp, -$08
    inc de
    ld [de], a
    add sp, $00
    ld a, [de]
    ld [de], a
    add b
    rst $28
    ld [$1217], sp
    add sp, $00
    ld a, [de]
    ld [de], a
    ld hl, sp+$00
    ld [hl+], a
    ld [de], a
    ld hl, sp-$08
    ld hl, $e812
    ld hl, sp+$13
    ld [de], a
    ldh a, [rP1]
    jr nz, jr_013_6993

    ldh a, [$fff8]
    rra
    ld [de], a
    add b
    ld sp, hl
    ld sp, hl
    add hl, de
    ld [hl-], a
    ld sp, hl
    ld bc, $3218
    pop af
    pop af
    rla
    ld [hl-], a
    pop af

jr_013_6993:
    ld sp, hl
    ld d, $32
    pop af
    ld bc, $3215
    jp hl


    ld sp, hl
    inc d
    ld [hl-], a
    jp hl


    ld bc, $3213
    add b
    rst $28
    pop af
    rla
    ld [hl-], a
    ld hl, sp-$07
    ld e, $32
    ld hl, sp+$01
    dec e
    ld [hl-], a
    ldh a, [$fff9]
    inc e
    ld [hl-], a
    ldh a, [rSB]
    dec de
    ld [hl-], a
    add sp, $01
    inc de
    ld [hl-], a
    add sp, -$07
    ld a, [de]
    ld [hl-], a
    add b
    rst $28
    pop af
    rla
    ld [hl-], a
    add sp, -$07
    ld a, [de]
    ld [hl-], a
    ld hl, sp-$07
    ld [hl+], a
    ld [hl-], a
    ld hl, sp+$01
    ld hl, $e832
    ld bc, $3213
    ldh a, [$fff9]
    jr nz, jr_013_6a0a

    ldh a, [rSB]
    rra
    ld [hl-], a
    add b
    pop af
    ldh a, [rTMA]
    ld [de], a
    ldh a, [$ff08]
    add hl, hl
    ld [de], a
    ld hl, sp+$00
    jr z, jr_013_69fb

    ld hl, sp-$08
    daa
    ld [de], a
    ldh a, [rP1]
    ld h, $12
    ldh a, [$fff8]
    dec h
    ld [de], a
    add sp, $00
    inc h
    ld [de], a
    add sp, -$08

jr_013_69fb:
    inc hl
    ld [de], a
    add b
    rst $28
    ldh a, [rTMA]
    ld [de], a
    xor $08
    add hl, hl
    ld [de], a
    ld hl, sp+$00
    cpl
    ld [de], a

jr_013_6a0a:
    ld hl, sp-$08
    ld l, $12
    ldh a, [rP1]
    dec l
    ld [de], a
    ldh a, [$fff8]
    inc l
    ld [de], a
    add sp, $00
    dec hl
    ld [de], a
    add sp, -$08
    ld a, [hl+]
    ld [de], a
    add b
    rst $28
    ldh a, [rTMA]
    ld [de], a
    xor $08
    add hl, hl
    ld [de], a
    ld hl, sp+$00
    inc sp
    ld [de], a
    ld hl, sp-$08
    ld [hl-], a
    ld [de], a
    ldh a, [rP1]
    ld sp, $f012
    ld hl, sp+$30
    ld [de], a
    add sp, $00
    dec hl
    ld [de], a
    add sp, -$08
    ld a, [hl+]
    ld [de], a
    add b
    ld l, b
    ld l, d
    or e
    ld l, d
    cp $6a
    ld c, c
    ld l, e
    add c
    ld l, d
    ld l, b
    ld l, d
    sbc d
    ld l, d
    ld l, b
    ld l, d
    call z, $b36a
    ld l, d
    push hl
    ld l, d
    or e
    ld l, d
    rla
    ld l, e
    cp $6a
    jr nc, jr_013_6ac9

    cp $6a
    ld h, d
    ld l, e
    ld c, c
    ld l, e
    ld a, e
    ld l, e
    ld c, c
    ld l, e
    ld sp, hl
    nop
    add hl, sp
    ld de, $f8f9
    jr c, jr_013_6a81

    pop af
    nop
    scf
    ld d, $f1
    ld hl, sp+$36
    ld d, $e9
    nop
    dec [hl]
    ld d, $e9
    ld hl, sp+$34
    ld d, $80

jr_013_6a81:
    add sp, $00
    dec [hl]
    ld d, $e8
    ld hl, sp+$34
    ld d, $f8
    nop
    dec a
    ld de, $f8f8
    inc a
    ld de, $00f0
    dec sp
    ld d, $f0
    ld hl, sp+$3a
    ld d, $80
    add sp, $00
    dec [hl]
    ld d, $e8
    ld hl, sp+$34
    ld d, $f8
    nop
    ld b, c
    ld de, $f8f8
    ld b, b
    ld de, $00f0
    ccf
    ld d, $f0
    ld hl, sp+$3e
    ld d, $80
    ld sp, hl
    ld bc, $1147
    ld sp, hl
    ld sp, hl
    ld b, [hl]
    ld de, $01f1
    ld b, l
    ld d, $f1
    ld sp, hl
    ld b, h
    ld d, $e9
    ld bc, $1643
    jp hl


    ld sp, hl

jr_013_6ac9:
    ld b, d
    ld d, $80
    ld hl, sp+$01
    ld c, e
    ld de, $f9f8
    ld c, d
    ld de, $01e8
    ld b, e
    ld d, $e8
    ld sp, hl
    ld b, d
    ld d, $f0
    ld bc, $1649
    ldh a, [$fff9]
    ld c, b
    ld d, $80
    add sp, $01
    ld b, e
    ld d, $e8
    ld sp, hl
    ld b, d
    ld d, $f8
    ld bc, $114f
    ld hl, sp-$07
    ld c, [hl]
    ld de, $01f0
    ld c, l
    ld d, $f0
    ld sp, hl
    ld c, h
    ld d, $80
    ld sp, hl
    ld hl, sp+$47
    ld sp, $00f9
    ld b, [hl]
    ld sp, $f8f1
    ld b, l
    ld [hl], $f1
    nop
    ld b, h
    ld [hl], $e9
    ld hl, sp+$43
    ld [hl], $e9
    nop
    ld b, d
    ld [hl], $80
    ld hl, sp-$08
    ld c, e
    ld sp, $00f8
    ld c, d
    ld sp, $f8e8
    ld b, e
    ld [hl], $e8
    nop
    ld b, d
    ld [hl], $f0
    ld hl, sp+$49
    ld [hl], $f0
    nop
    ld c, b
    ld [hl], $80
    add sp, -$08
    ld b, e
    ld [hl], $e8
    nop
    ld b, d
    ld [hl], $f8
    ld hl, sp+$4f
    ld sp, $00f8
    ld c, [hl]
    ld sp, $f8f0
    ld c, l
    ld [hl], $f0
    nop
    ld c, h
    ld [hl], $80
    ld sp, hl
    nop
    ld d, l
    ld de, $f8f9
    ld d, h
    ld de, $00f1
    ld d, e
    ld d, $f1
    ld hl, sp+$52
    ld d, $e9
    nop
    ld d, c
    ld d, $e9
    ld hl, sp+$50
    ld d, $80
    ld hl, sp+$00
    ld e, c
    ld de, $f8f8
    ld e, b
    ld de, $00f0
    ld d, a
    ld d, $f0
    ld hl, sp+$56
    ld d, $e8
    nop
    ld d, c
    ld d, $e8
    ld hl, sp+$50
    ld d, $80
    ld hl, sp+$00
    ld e, l
    ld de, $f8f8
    ld e, h
    ld de, $00f0
    ld e, e
    ld d, $f0
    ld hl, sp+$5a
    ld d, $e8
    nop
    ld d, c
    ld d, $e8
    ld hl, sp+$50
    ld d, $80
    ld hl, sp+$00
    ld h, e
    db $10
    ld hl, sp-$08
    ld h, d
    db $10
    ldh a, [rP1]
    ld h, c
    db $10
    ldh a, [$fff8]
    ld h, b
    db $10
    add sp, $00
    ld e, a
    db $10
    add sp, -$08
    ld e, [hl]
    db $10
    add b
    rst $28
    nop
    ld h, c
    db $10
    rst $28
    ld hl, sp+$60
    db $10
    rst $20
    nop
    ld e, a
    db $10
    rst $20
    ld hl, sp+$5e
    db $10
    rst $30
    nop
    ld h, l
    db $10
    rst $30
    ld hl, sp+$64
    db $10
    add b
    rst $20
    nop
    ld e, a
    db $10
    rst $20
    ld hl, sp+$5e
    db $10
    rst $30
    nop
    ld h, a
    db $10
    rst $30
    ld hl, sp+$66
    db $10
    rst $28
    nop
    ld h, c
    db $10
    rst $28
    ld hl, sp+$60
    db $10
    add b
    ld hl, sp+$00
    ld l, l
    db $10
    ld hl, sp-$08
    ld l, h
    db $10
    ldh a, [rP1]
    ld l, e
    db $10
    ldh a, [$fff8]
    ld l, d
    db $10
    add sp, $00
    ld l, c
    db $10
    add sp, -$08

jr_013_6bf5:
    ld l, b
    db $10
    add b
    rst $30
    nop
    ld l, a
    db $10
    rst $30
    ld hl, sp+$6e
    db $10
    rst $28
    nop
    ld l, e
    db $10
    rst $28
    ld hl, sp+$6a
    db $10
    rst $20
    nop
    ld l, c
    db $10
    rst $20
    ld hl, sp+$68
    db $10
    add b
    rst $30
    nop
    ld [hl], c
    db $10
    rst $30
    ld hl, sp+$70
    db $10
    rst $28
    nop
    ld l, e
    db $10
    rst $28
    ld hl, sp+$6a
    db $10
    rst $20
    nop

jr_013_6c23:
    ld l, c
    db $10
    rst $20
    ld hl, sp+$68
    db $10
    add b
    ld hl, sp-$08
    ld l, l
    jr nc, @-$06

    nop
    ld l, h
    jr nc, jr_013_6c23

    ld hl, sp+$6b
    jr nc, @-$0e

    nop
    ld l, d
    jr nc, jr_013_6c23

jr_013_6c3b:
    ld hl, sp+$69
    jr nc, @-$16

jr_013_6c3f:
    nop
    ld l, b
    jr nc, @-$7e

    rst $30
    ld hl, sp+$6f
    jr nc, jr_013_6c3f

    nop
    ld l, [hl]
    jr nc, jr_013_6c3b

    ld hl, sp+$6b
    jr nc, jr_013_6c3f

    nop
    ld l, d
    jr nc, jr_013_6c3b

jr_013_6c54:
    ld hl, sp+$69
    jr nc, jr_013_6c3f

jr_013_6c58:
    nop
    ld l, b
    jr nc, @-$7e

    rst $30
    ld hl, sp+$71
    jr nc, jr_013_6c58

    nop
    ld [hl], b
    jr nc, jr_013_6c54

    ld hl, sp+$6b
    jr nc, jr_013_6c58

    nop
    ld l, d
    jr nc, jr_013_6c54

    ld hl, sp+$69
    jr nc, jr_013_6c58

    nop
    ld l, b
    jr nc, jr_013_6bf5

    ld hl, sp+$00
    ld [hl], a
    db $10
    ld hl, sp-$08
    halt
    db $10
    ldh a, [rP1]
    ld [hl], l
    db $10
    ldh a, [$fff8]
    ld [hl], h
    db $10
    add sp, $00
    ld [hl], e
    db $10
    add sp, -$08
    ld [hl], d
    db $10
    add b
    rst $30
    nop
    ld a, c
    db $10
    rst $30
    ld hl, sp+$78
    db $10
    rst $20
    nop
    ld [hl], e
    db $10
    rst $20
    ld hl, sp+$72
    db $10
    rst $28
    nop
    ld [hl], l
    db $10
    rst $28
    ld hl, sp+$74
    db $10
    add b
    rst $20
    nop
    ld [hl], e
    db $10
    rst $20
    ld hl, sp+$72
    db $10
    rst $28
    nop
    ld [hl], l
    db $10
    rst $28
    ld hl, sp+$74
    db $10
    rst $30
    nop
    ld a, e
    db $10
    rst $30
    ld hl, sp+$7a
    db $10
    add b
    ld hl, sp+$00
    add c
    db $10
    ld hl, sp-$08
    add b
    db $10
    ldh a, [rP1]
    ld a, a
    db $10
    ldh a, [$fff8]
    ld a, [hl]
    db $10
    add sp, $00
    ld a, l
    db $10
    add sp, -$08
    ld a, h
    db $10
    add b
    ld e, e
    ld l, [hl]
    and [hl]
    ld l, [hl]
    pop af
    ld l, [hl]
    inc a
    ld l, a
    ld [hl], h
    ld l, [hl]
    ld e, e
    ld l, [hl]
    adc l
    ld l, [hl]
    ld e, e
    ld l, [hl]
    cp a
    ld l, [hl]
    and [hl]
    ld l, [hl]
    ret c

    ld l, [hl]
    and [hl]
    ld l, [hl]
    ld a, [bc]
    ld l, a
    pop af
    ld l, [hl]
    inc hl
    ld l, a
    pop af
    ld l, [hl]
    ld d, l
    ld l, a
    inc a
    ld l, a
    ld l, [hl]
    ld l, a
    inc a
    ld l, a
    add a
    ld l, a
    or b
    ld l, a
    reti


    ld l, a
    cpl
    ld l, l
    ld a, d
    ld l, l
    push bc
    ld l, l
    db $10
    ld l, [hl]
    ld c, b
    ld l, l
    cpl
    ld l, l
    ld h, c
    ld l, l
    cpl
    ld l, l
    sub e
    ld l, l
    ld a, d
    ld l, l
    xor h
    ld l, l
    ld a, d
    ld l, l
    sbc $6d
    push bc
    ld l, l
    rst $30
    ld l, l
    push bc
    ld l, l
    add hl, hl
    ld l, [hl]
    db $10
    ld l, [hl]
    ld b, d
    ld l, [hl]
    db $10
    ld l, [hl]
    ld sp, hl
    nop
    add a
    db $10
    ld sp, hl
    ld hl, sp-$7a
    db $10
    pop af
    nop
    add l
    db $10
    pop af
    ld hl, sp-$7c
    db $10
    jp hl


    nop
    add e
    ld d, $e9
    ld hl, sp-$7e
    ld d, $80
    add sp, $00
    add e
    ld d, $e8
    ld hl, sp-$7e
    ld d, $f8
    nop
    adc e
    db $10
    ld hl, sp-$08
    adc d
    db $10
    ldh a, [rP1]
    adc c
    db $10
    ldh a, [$fff8]
    adc b
    db $10
    add b
    ld hl, sp+$01
    adc a
    db $10
    ld hl, sp-$07
    adc [hl]
    db $10
    ldh a, [rSB]
    adc l
    db $10
    ldh a, [$fff9]
    adc h
    db $10
    add sp, $00
    add e
    ld d, $e8
    ld hl, sp-$7e
    ld d, $80
    ld sp, hl
    nop
    sub l
    db $10
    ld sp, hl
    ld hl, sp-$6c
    db $10
    pop af
    rst $38
    sub e
    db $10
    pop af
    rst $30
    sub d
    ld d, $e9
    nop
    sub c
    ld d, $e9
    ld hl, sp-$70
    ld d, $80
    add sp, $00
    sub c
    ld d, $e8
    ld hl, sp-$70
    ld d, $f8
    nop
    sbc c
    db $10
    ld hl, sp-$08
    sbc b
    db $10
    ldh a, [rIE]
    sub a
    db $10
    ldh a, [$fff7]
    sub [hl]
    ld d, $80
    add sp, $00
    sub c
    ld d, $e8
    ld hl, sp-$70
    ld d, $f8
    nop
    sbc l
    db $10
    ld hl, sp-$08
    sbc h
    db $10
    ldh a, [rIE]
    sbc e

jr_013_6dbf:
    db $10
    ldh a, [$fff7]
    sbc d

jr_013_6dc3:
    ld d, $80
    ld sp, hl
    ld hl, sp-$6b
    jr nc, jr_013_6dc3

    nop
    sub h
    jr nc, jr_013_6dbf

    ld sp, hl
    sub e
    jr nc, jr_013_6dc3

    ld bc, $3692
    jp hl


    ld hl, sp-$6f
    ld [hl], $e9
    nop
    sub b
    ld [hl], $80
    add sp, -$08
    sub c
    ld [hl], $e8

jr_013_6de3:
    nop
    sub b
    ld [hl], $f8
    ld hl, sp-$67
    jr nc, jr_013_6de3

    nop
    sbc b
    jr nc, @-$0e

    ld sp, hl
    sub a
    jr nc, jr_013_6de3

    ld bc, $3696
    add b
    add sp, -$08
    sub c
    ld [hl], $e8

jr_013_6dfc:
    nop
    sub b
    ld [hl], $f8
    ld hl, sp-$63
    jr nc, jr_013_6dfc

    nop
    sbc h
    jr nc, @-$0e

    ld sp, hl
    sbc e
    jr nc, jr_013_6dfc

    ld bc, $369a
    add b
    ld sp, hl
    nop
    and e
    db $10
    ld sp, hl
    ld hl, sp-$5e
    db $10
    pop af
    nop
    and c
    db $10
    pop af
    ld hl, sp-$60
    db $10
    jp hl


    nop
    sbc a
    ld d, $e9
    ld hl, sp-$62
    ld d, $80
    ld hl, sp+$01
    and a
    db $10
    ld hl, sp-$07
    and [hl]
    db $10
    add sp, $00
    sbc a
    ld d, $e8
    ld hl, sp-$62
    ld d, $f0
    ld bc, $10a5
    ldh a, [$fff9]
    and h
    db $10
    add b
    add sp, $00
    sbc a
    ld d, $e8
    ld hl, sp-$62
    ld d, $f8
    nop
    xor e
    db $10
    ld hl, sp-$08
    xor d
    db $10
    ldh a, [rP1]
    xor c
    db $10
    ldh a, [$fff8]
    xor b
    db $10
    add b
    ld sp, hl
    nop
    or c
    db $10
    ld sp, hl
    ld hl, sp-$50
    db $10
    pop af
    nop
    xor a
    ld de, $f8f1
    xor [hl]
    ld de, $00e9
    xor l
    ld de, $f8e9
    xor h
    ld de, $e880
    nop
    xor l
    ld de, $f8e8
    xor h
    ld de, $00f8
    or l
    db $10
    ld hl, sp-$08
    or h
    db $10
    ldh a, [rP1]
    or e
    ld de, $f8f0
    or d
    ld de, $e880
    nop
    xor l
    ld de, $f8e8
    xor h
    ld de, $00f8
    cp c
    db $10
    ld hl, sp-$08
    cp b
    db $10
    ldh a, [rP1]
    or a
    ld de, $f8f0
    or [hl]
    ld de, $f980
    nop
    cp a
    db $10
    ld sp, hl
    ld hl, sp-$42
    db $10
    pop af
    nop
    cp l
    ld de, $f8f1
    cp h
    ld de, $00e9
    cp e
    ld de, $f8e9
    cp d
    ld de, $e880
    nop
    cp e
    ld de, $f8e8
    cp d
    ld de, $00f8
    jp $f810


    ld hl, sp-$3e
    db $10
    ldh a, [rP1]
    pop bc
    ld de, $f8f0
    ret nz

    ld de, $e880
    nop
    cp e
    ld de, $f8e8
    cp d
    ld de, $00f8
    rst $00
    db $10
    ld hl, sp-$08
    add $10
    ldh a, [rP1]
    push bc

jr_013_6eeb:
    ld de, $f8f0
    call nz, $8011
    ld sp, hl
    ld hl, sp-$41
    jr nc, @-$05

    nop
    cp [hl]
    jr nc, jr_013_6eeb

    ld hl, sp-$43
    ld sp, $00f1
    cp h
    ld sp, $f8e9
    cp e
    ld sp, $00e9
    cp d
    ld sp, $e880
    ld hl, sp-$45
    ld sp, $00e8
    cp d
    ld sp, $f8f8
    jp $f830


    nop
    jp nz, $f030

    ld hl, sp-$3f
    ld sp, $00f0
    ret nz

    ld sp, $e880
    ld hl, sp-$45
    ld sp, $00e8
    cp d
    ld sp, $f8f8
    rst $00
    jr nc, @-$06

    nop
    add $30
    ldh a, [$fff8]
    push bc
    ld sp, $00f0
    call nz, $8031
    ld sp, hl
    nop
    call $f910
    ld hl, sp-$34
    db $10
    pop af
    nop
    rl c
    pop af
    ld hl, sp-$36
    ld de, $00e9
    ret


    ld de, $f8e9
    ret z

    ld de, $f880
    nop
    pop de
    db $10
    ld hl, sp-$08
    ret nc

    db $10
    ldh a, [rP1]
    rst $08
    ld de, $f8f0
    adc $11
    add sp, $00
    ret


    ld de, $f8e8
    ret z

    ld de, $e880
    nop
    ret


    ld de, $f8e8
    ret z

    ld de, $00f8
    push de
    db $10
    ld hl, sp-$08
    call nc, $f010
    nop
    db $d3
    ld de, $f8f0
    jp nc, $8011

    ld hl, sp+$00
    rst $18
    ld d, $f8
    ld hl, sp-$22
    ld d, $f0
    nop
    db $dd
    ld d, $f0
    ld hl, sp-$24
    ld d, $e8
    nop
    db $db
    ld d, $e8
    ld hl, sp-$26
    ld d, $e0
    nop
    reti


    ld d, $e0
    ld hl, sp-$28
    ld d, $d8
    nop
    rst $10
    ld d, $d8
    ld hl, sp-$2a
    ld d, $80
    ld hl, sp+$00
    rst $20
    ld d, $f8
    ld hl, sp-$1a
    ld d, $f0
    nop
    db $dd
    ld d, $f0
    ld hl, sp-$24
    ld d, $e8
    nop
    push hl
    ld d, $e8
    ld hl, sp-$1c
    ld d, $e0
    nop
    db $e3
    ld d, $e0
    ld hl, sp-$1e
    ld d, $d8
    nop
    pop hl
    ld d, $d8
    ld hl, sp-$20
    ld d, $80
    ld hl, sp+$00
    rst $28
    ld d, $f8
    ld hl, sp-$12
    ld d, $f0
    nop
    db $dd
    ld d, $f0
    ld hl, sp-$24
    ld d, $e8
    nop
    db $ed
    ld d, $e8
    ld hl, sp-$14
    ld d, $e0
    nop
    db $eb
    ld d, $e0

Jump_013_6ff6:
    ld hl, sp-$16
    ld d, $d8
    nop
    jp hl


    ld d, $d8
    ld hl, sp-$18
    ld d, $80
    adc h
    ld [hl], b
    adc h
    ld [hl], b
    adc h
    ld [hl], b
    adc h
    ld [hl], b
    adc h
    ld [hl], b
    adc h
    ld [hl], b
    adc h
    ld [hl], b
    adc h
    ld [hl], b
    adc a
    ld [hl], b
    adc a
    ld [hl], b
    adc a
    ld [hl], b
    adc a
    ld [hl], b
    adc h
    ld [hl], b
    adc h
    ld [hl], b
    adc h
    ld [hl], b
    adc h
    ld [hl], b
    adc a
    ld [hl], b
    adc a
    ld [hl], b
    adc a
    ld [hl], b
    adc a
    ld [hl], b
    adc h
    ld [hl], b
    adc h
    ld [hl], b
    adc h
    ld [hl], b

Call_013_7030:
    adc h
    ld [hl], b
    adc a
    ld [hl], b
    adc a
    ld [hl], b
    adc a
    ld [hl], b
    adc a
    ld [hl], b
    adc h
    ld [hl], b
    adc h
    ld [hl], b
    adc h
    ld [hl], b
    adc h
    ld [hl], b
    adc a
    ld [hl], b
    adc a
    ld [hl], b
    adc a
    ld [hl], b
    adc a
    ld [hl], b
    adc h
    ld [hl], b
    adc h
    ld [hl], b
    adc h
    ld [hl], b
    adc h
    ld [hl], b
    adc a
    ld [hl], b
    adc a
    ld [hl], b
    adc a
    ld [hl], b
    adc a
    ld [hl], b
    adc h
    ld [hl], b
    adc h
    ld [hl], b
    adc h
    ld [hl], b
    adc h
    ld [hl], b
    adc a
    ld [hl], b
    adc a
    ld [hl], b
    adc a
    ld [hl], b
    adc a
    ld [hl], b
    adc h
    ld [hl], b
    adc h
    ld [hl], b
    adc h
    ld [hl], b
    adc h
    ld [hl], b
    adc a
    ld [hl], b
    adc a
    ld [hl], b
    adc a
    ld [hl], b
    adc a
    ld [hl], b
    sbc b
    ld [hl], b
    adc h
    ld [hl], b
    adc h
    ld [hl], b
    adc h
    ld [hl], b
    adc h
    ld [hl], b
    adc a
    ld [hl], b
    adc a
    ld [hl], b
    adc a
    ld [hl], b
    adc a
    ld [hl], b
    ldh a, [rP1]
    rst $38
    rrca
    nop
    rrca
    ld bc, $020f
    rrca
    inc bc
    rst $38
    rrca
    nop
    rrca
    ld bc, $020f
    rst $38
    ld [bc], a
    push af
    cp a
    ld [hl], b
    ld [bc], a
    push af
    pop bc
    ld [hl], b
    ld [bc], a
    push af
    jp Jump_000_0270


    push af
    push bc
    ld [hl], b
    ld [bc], a
    push af
    rst $00
    ld [hl], b
    ld [bc], a
    push af
    rst $08
    ld [hl], b
    ld [bc], a
    push af
    rst $10
    ld [hl], b
    ld [bc], a
    push af
    rst $18
    ld [hl], b
    ld l, e
    ld [hl], c
    or [hl]
    ld [hl], c
    ld bc, $4c72
    ld [hl], d
    add h
    ld [hl], c
    ld l, e
    ld [hl], c
    sbc l
    ld [hl], c
    ld l, e
    ld [hl], c
    rst $08
    ld [hl], c
    or [hl]
    ld [hl], c
    add sp, $71
    or [hl]
    ld [hl], c
    ld a, [de]
    ld [hl], d
    ld bc, $3372
    ld [hl], d
    ld bc, $6572
    ld [hl], d
    ld c, h
    ld [hl], d
    ld a, [hl]
    ld [hl], d
    ld c, h
    ld [hl], d
    ld hl, sp+$01
    rlca
    db $10
    ld hl, sp-$07
    ld b, $10
    ldh a, [rSB]
    dec b
    db $10
    ldh a, [$fff9]
    inc b
    db $10
    add sp, $01
    inc bc
    ld d, $e8
    ld sp, hl
    ld [bc], a
    ld d, $e0
    ld bc, $1001
    ldh [$fff9], a
    nop
    db $10
    add b
    ld hl, sp+$01
    rlca
    db $10
    ld hl, sp-$07
    ld b, $10
    ldh a, [rSB]
    dec c
    db $10
    ldh a, [$fff9]
    inc c
    db $10
    add sp, $01
    dec bc
    ld d, $e8
    ld sp, hl
    ld a, [bc]
    ld d, $e0
    ld bc, $1009
    ldh [$fff9], a
    ld [$8010], sp
    ld hl, sp+$01
    rlca
    db $10
    ld hl, sp-$07
    ld b, $10
    ldh a, [rSB]
    inc de
    db $10
    ldh a, [$fff9]
    ld [de], a
    db $10
    add sp, $01
    ld de, $e816
    ld sp, hl
    db $10
    ld d, $e0
    ld bc, $100f
    ldh [$fff9], a
    ld c, $10
    add b
    ld hl, sp+$00
    add hl, de
    db $10
    ld hl, sp-$08
    jr @+$12

    ldh a, [rP1]
    rla
    db $10
    ldh a, [$fff8]
    ld d, $10
    add sp, $00
    dec d
    ld d, $e8
    ld hl, sp+$14
    ld d, $e0
    ld bc, $1001
    ldh [$fff9], a
    nop
    db $10
    add b
    ld sp, hl
    nop
    rra
    db $10
    ld sp, hl
    ld hl, sp+$1e
    db $10
    pop af
    nop
    dec e
    db $10
    pop af
    ld hl, sp+$1c
    db $10
    jp hl


    nop
    dec de
    ld d, $e9
    ld hl, sp+$1a
    ld d, $80
    ld hl, sp+$00
    inc hl
    db $10
    ld hl, sp-$08
    ld [hl+], a
    db $10
    ldh a, [rP1]
    ld hl, $f010
    ld hl, sp+$20
    db $10
    add sp, $00
    dec de
    ld d, $e8
    ld hl, sp+$1a
    ld d, $80
    add sp, $00
    dec de
    ld d, $e8
    ld hl, sp+$1a
    ld d, $f8
    nop
    daa
    db $10
    ld hl, sp-$08
    ld h, $10
    ldh a, [rP1]
    dec h
    db $10
    ldh a, [$fff8]
    inc h
    db $10
    add b
    ld sp, hl
    nop
    dec l
    db $10
    ld sp, hl
    ld hl, sp+$2c
    db $10
    pop af
    nop
    dec hl
    db $10
    pop af
    ld hl, sp+$2a
    db $10
    jp hl


    nop
    add hl, hl
    ld d, $e9
    ld hl, sp+$28
    ld d, $80
    ld hl, sp+$00
    ld sp, $f810
    ld hl, sp+$30
    db $10
    ldh a, [rP1]
    cpl
    db $10
    ldh a, [$fff8]
    ld l, $10
    add sp, $00
    add hl, hl
    ld d, $e8
    ld hl, sp+$28
    ld d, $80
    ld hl, sp+$00
    dec [hl]
    db $10
    ld hl, sp-$08
    inc [hl]
    db $10
    ldh a, [rP1]
    inc sp
    db $10
    ldh a, [$fff8]
    ld [hl-], a
    db $10
    add sp, $00
    add hl, hl
    ld d, $e8
    ld hl, sp+$28

jr_013_71ff:
    ld d, $80
    ld sp, hl
    ld sp, hl
    dec l
    jr nc, jr_013_71ff

    ld bc, $302c
    pop af
    ld sp, hl
    dec hl
    jr nc, jr_013_71ff

    ld bc, $302a
    jp hl


    ld sp, hl
    add hl, hl
    ld [hl], $e9
    ld bc, $3628
    add b
    ld hl, sp-$07
    ld sp, $f830
    ld bc, $3030
    ldh a, [$fff9]
    cpl
    jr nc, @-$0e

    ld bc, $302e
    add sp, -$07
    add hl, hl
    ld [hl], $e8
    ld bc, $3628
    add b
    ld hl, sp-$07
    dec [hl]
    jr nc, @-$06

    ld bc, $3034
    ldh a, [$fff9]
    inc sp
    jr nc, @-$0e

    ld bc, $3032
    add sp, -$07
    add hl, hl
    ld [hl], $e8
    ld bc, $3628
    add b
    ld sp, hl
    nop
    dec sp
    db $10
    ld sp, hl
    ld hl, sp+$3a
    db $10
    pop af
    nop
    add hl, sp
    db $10
    pop af
    ld hl, sp+$38
    db $10
    jp hl


    nop
    scf
    ld d, $e9
    ld hl, sp+$36
    ld d, $80
    ld hl, sp+$00
    ccf
    db $10
    ld hl, sp-$08
    ld a, $10
    ldh a, [rP1]
    dec a
    db $10
    ldh a, [$fff8]
    inc a
    db $10
    add sp, $00
    scf
    ld d, $e8
    ld hl, sp+$36
    ld d, $80
    ld hl, sp+$00
    ld b, e
    db $10
    ld hl, sp-$08
    ld b, d
    db $10
    ldh a, [rP1]
    ld b, c
    db $10
    ldh a, [$fff8]
    ld b, b
    db $10
    add sp, $00
    scf
    ld d, $e8
    ld hl, sp+$36
    ld d, $80
    ld sp, hl
    nop
    ld c, c
    db $10
    ld sp, hl
    ld hl, sp+$48
    db $10
    pop af
    nop
    ld b, a
    db $10
    pop af
    ld hl, sp+$46
    db $10
    jp hl


    nop
    ld b, l
    db $10
    jp hl


    ld hl, sp+$44
    db $10
    add b
    ld hl, sp+$00
    ld c, e
    db $10
    ld hl, sp-$08
    ld c, d
    db $10
    ldh a, [rP1]
    ld b, a
    db $10
    ldh a, [$fff8]
    ld b, [hl]
    db $10
    add sp, $00
    ld b, l
    db $10
    add sp, -$08

jr_013_72c6:
    ld b, h
    db $10
    add b
    ld hl, sp-$07
    ld c, e
    jr nc, jr_013_72c6

    ld bc, $304a
    ldh a, [rP1]
    ld b, a
    db $10
    ldh a, [$fff8]
    ld b, [hl]
    db $10
    add sp, $00
    ld b, l
    db $10
    add sp, -$08
    ld b, h
    db $10
    add b
    ld hl, sp+$00
    ld d, c
    db $10
    ld hl, sp-$08
    ld d, b
    db $10
    ldh a, [rP1]
    ld c, a
    db $10
    ldh a, [$fff8]
    ld c, [hl]
    db $10
    add sp, $00
    ld c, l
    db $10
    add sp, -$08
    ld c, h
    db $10
    add b
    ld hl, sp+$00
    ld d, l
    db $10
    ld hl, sp-$08
    ld d, h
    db $10
    ldh a, [rP1]
    ld d, e
    db $10
    ldh a, [$fff8]
    ld d, d
    db $10
    add sp, $00
    ld c, l
    db $10
    add sp, -$08
    ld c, h
    db $10
    add b
    ld hl, sp+$00
    ld e, c
    db $10
    ld hl, sp-$08
    ld e, b
    db $10
    ldh a, [rP1]
    ld d, a
    db $10
    ldh a, [$fff8]
    ld d, [hl]
    db $10
    add sp, $00
    ld c, l
    db $10
    add sp, -$08

jr_013_732a:
    ld c, h
    db $10
    add b
    ld hl, sp-$07
    ld d, c
    jr nc, jr_013_732a

    ld bc, $3050
    ldh a, [$fff9]
    ld c, a
    jr nc, jr_013_732a

    ld bc, $304e
    add sp, -$07
    ld c, l
    jr nc, jr_013_732a

    ld bc, $304c
    add b
    ld hl, sp-$07
    ld d, l
    jr nc, @-$06

    ld bc, $3054
    ldh a, [$fff9]
    ld d, e
    jr nc, @-$0e

    ld bc, $3052
    add sp, -$07
    ld c, l
    jr nc, @-$16

    ld bc, $304c
    add b
    ld hl, sp-$07
    ld e, c
    jr nc, @-$06

    ld bc, $3058
    ldh a, [$fff9]
    ld d, a
    jr nc, @-$0e

    ld bc, $3056
    add sp, -$07
    ld c, l
    jr nc, @-$16

    ld bc, $304c
    add b
    ld hl, sp+$00
    ld e, a
    db $10
    ld hl, sp-$08
    ld e, [hl]
    db $10
    ldh a, [rP1]
    ld e, l
    db $10
    ldh a, [$fff8]
    ld e, h
    db $10
    add sp, $00
    ld e, e
    db $10
    add sp, -$08
    ld e, d
    db $10
    add b
    ld hl, sp+$00
    ld h, e
    db $10
    ld hl, sp-$08
    ld h, d
    db $10
    ldh a, [rP1]
    ld h, c
    db $10
    ldh a, [$fff8]
    ld h, b
    db $10
    add sp, $00
    ld e, e
    db $10
    add sp, -$08

jr_013_73a7:
    ld e, d
    db $10
    add b
    ld hl, sp-$07
    ld h, e
    jr nc, jr_013_73a7

    ld bc, $3062
    ldh a, [$fff9]
    ld h, c
    jr nc, jr_013_73a7

    ld bc, $3060
    add sp, $00
    ld e, e
    db $10
    add sp, -$08
    ld e, d
    db $10
    add b
    ld hl, sp+$00
    ld l, c
    db $10
    ld hl, sp-$08
    ld l, b
    db $10
    ldh a, [rP1]
    ld h, a
    db $10
    ldh a, [$fff8]
    ld h, [hl]
    db $10
    add sp, $00
    ld h, l
    db $10
    add sp, -$08
    ld h, h
    db $10
    add b
    ldh a, [rP1]
    ld [hl], c
    db $10
    ldh a, [$fff8]
    ld [hl], b
    db $10
    add sp, $00
    ld l, a
    db $10
    add sp, -$08
    ld l, [hl]
    db $10
    ld hl, sp+$00
    ld l, c
    db $10
    ld hl, sp-$08
    ld l, b
    db $10
    add b
    ld hl, sp+$00
    ld l, c
    db $10
    ld hl, sp-$08
    ld l, b
    db $10
    ldh a, [rP1]
    ld l, l
    db $10
    ldh a, [$fff8]
    ld l, h
    db $10
    add sp, $00
    ld l, e
    db $10
    add sp, -$08

jr_013_740b:
    ld l, d
    db $10
    add b
    ld hl, sp+$00
    ld l, c
    db $10
    ld hl, sp-$08
    ld l, b
    db $10
    ldh a, [$fff9]
    ld l, l
    jr nc, jr_013_740b

    ld bc, $306c
    add sp, -$07
    ld l, e
    jr nc, jr_013_740b

    ld bc, $306a
    add b
    scf
    ld [hl], h
    scf
    ld [hl], h
    scf
    ld [hl], h
    scf
    ld [hl], h
    ld a, [hl-]
    ld [hl], h
    ld a, [hl-]
    ld [hl], h
    ld a, [hl-]
    ld [hl], h
    ld a, [hl-]
    ld [hl], h
    ldh a, [rP1]
    rst $38
    rrca
    nop
    rrca
    ld bc, $020f
    rrca
    inc bc
    rst $38
    ret nc

    inc bc
    cp $15
    nop
    ld a, [hl]
    nop
    xor $54
    cp $4c
    db $fd
    rst $18
    ld a, d
    rra
    rrca
    rra
    dec c
    ld hl, $3f00
    rra
    cp $20
    nop
    ld e, $1e
    nop
    and b
    ld b, b
    ld e, b
    and b
    ld a, a
    cp a
    ret nz

    ldh a, [rIE]
    rst $38
    rst $38
    ld a, a
    ld sp, $fd00
    ld a, a
    ld de, $e003
    nop
    ld hl, sp-$20
    db $fc
    ldh a, [$ffbf]
    ld a, [$f9f4]
    or $fd
    ldh a, [c]
    ld [hl], b
    ld bc, rWave_8
    db $fc
    ld e, b
    ld hl, sp+$50
    cp b
    ld d, b
    add sp, $10
    db $fd
    jr c, @-$1e

    inc b
    push af

jr_013_748f:
    ldh [c], a
    ei
    jr nc, @-$05

    jr nc, jr_013_748f

    inc bc
    ld bc, $cc30
    dec b
    db $fd
    ld a, d
    rst $38
    ld l, h
    ccf
    rst $18
    dec de
    ccf
    dec de
    ld a, a
    ccf
    jr nz, jr_013_74a7

jr_013_74a7:
    inc a
    dec a
    rst $38
    nop
    rlca
    nop
    rrca
    ld b, $e0

jr_013_74b0:
    add b
    db $fc
    rst $00
    ret nz

    db $e3
    db $fc
    ldh a, [rTIMA]
    inc sp
    nop
    ld [bc], a
    ld b, $c0
    nop
    rst $38
    ldh [$ffc0], a
    ld hl, sp-$20
    db $f4
    add sp, -$06
    db $e4
    rst $38
    rst $30
    ret nz

    cp a
    ld e, [hl]
    cp $18

jr_013_74ce:
    inc h
    jr jr_013_74ce

    inc a
    add a
    ld a, [bc]
    db $fc
    rst $38
    ld c, $3f
    ld d, $1f
    cp a
    ld a, [bc]
    rla
    ld a, [bc]
    dec e
    ld [bc], a
    ld b, $81
    dec bc
    dec a
    cp a
    ld a, l
    ld [hl], $7e
    scf
    ld a, a
    scf
    pop bc
    add hl, bc
    rst $38
    rst $38
    ld a, c
    ld a, e
    ld bc, $0083
    ld c, a
    add e
    rst $30
    ei
    rrca
    rst $08
    ld d, $05
    cp h
    nop
    and $98
    db $db
    rst $38
    ldh [$ffe0], a
    ret nz

    ldh [$ffc0], a
    ldh a, [$ffc0]
    db $fc
    rst $30
    ldh a, [$fff4]
    jr c, jr_013_74b0

    rlca
    ld a, [hl]
    inc e
    ld a, [hl]
    inc l
    rst $18
    cp $6c
    xor h
    ld e, b
    db $e4
    add b
    dec b
    ret


    ld b, $49
    rlca
    ld e, a
    ld de, $1104
    rst $38
    nop
    ld de, $0601
    ld a, a
    inc bc
    ld b, $fd
    ld a, l
    nop
    ld b, $00
    ld h, b
    add b
    rst $38
    nop
    jp $f6fe


    ld a, [bc]
    rst $28
    rst $38
    nop
    nop
    add b
    nop
    ldh [rIE], a
    add b
    ld hl, sp-$40
    db $e4
    ret c

    ldh a, [c]
    call z, $feef
    ld h, b
    ld b, $5f
    ld l, $ef
    halt
    sbc a
    ld h, a
    rst $20
    rst $30
    inc bc
    inc b
    inc bc
    add e
    dec b
    ld hl, sp+$30

jr_013_755b:
    ld [hl], h
    jr jr_013_75dd

    or [hl]
    jr jr_013_755b

    inc [hl]
    call z, Call_013_7030
    jp nz, $cf16

    sbc b
    ld h, b
    ld a, a
    add b
    pop hl
    inc d
    ld de, $bf15
    ld a, a
    db $db
    rst $18
    ccf
    pop hl
    inc d
    db $fc
    ldh [$ffc3], a
    inc d
    ei
    ldh a, [rIE]
    ei
    ldh a, [rIE]
    ld [hl], b
    db $fd
    ld l, b
    sbc a
    ld l, h
    di
    db $eb
    inc b
    pop bc
    dec c
    pop de
    add hl, de
    ldh a, [c]
    ld h, b
    ld hl, sp-$50
    ld a, a
    db $fc
    cp b
    inc [hl]
    ret c

    call nc, $1c08
    add $1a
    cp a
    ld bc, $0300
    nop
    ld [bc], a
    ld bc, $13e0
    rlca
    di
    rra
    rrca
    dec d
    inc e
    ld h, b
    ld [$f000], sp
    ldh [$fff8], a
    db $fd
    ldh a, [rP1]
    inc e
    rrca
    rra
    ld c, $1e
    dec c
    rra
    rst $38
    nop
    ld e, $05
    rra
    ld b, $1f
    rlca
    ld hl, sp-$01
    ldh a, [$fff8]
    ld [hl], b
    ld a, b
    or b
    ld a, b
    or b
    ld hl, sp-$01
    nop
    ld a, b
    and b
    ld hl, sp+$60
    ld hl, sp-$20
    rra
    rst $30
    dec bc
    rra
    add hl, bc
    ld hl, $1700
    dec bc

jr_013_75dd:
    rrca
    inc bc
    rrca
    rlca
    inc bc
    inc bc
    nop
    db $e3
    ld [bc], a
    ld a, [bc]
    inc bc
    ld [hl+], a
    inc bc
    rrca
    inc bc
    cp $03
    inc bc
    ld hl, sp-$30
    ld hl, sp-$70
    ld hl, sp-$70
    ldh a, [$ffdd]
    add b
    ld hl, $e015
    ret nz

    ret nz

    inc b
    inc h
    ld [$ff00], sp
    inc c
    nop
    inc d
    ld [$007e], sp
    rst $38
    ld a, [hl]
    or b
    ld [bc], a
    ld [$0828], sp
    dec b
    dec b
    dec h
    dec b
    rra
    rlca
    inc hl
    ld [$9f0f], sp
    ld bc, $0307
    rlca
    ld bc, $0800
    ld [bc], a
    add hl, bc
    ccf
    cp a
    add hl, de
    ccf
    dec de
    daa
    dec de
    rra
    nop
    ld bc, $f7db
    nop
    rst $20
    ld e, d
    dec h
    nop
    rst $38
    ld b, d
    rst $38
    inc a
    ret z

    nop
    inc bc
    inc hl
    dec b
    add h
    dec c
    ld hl, sp+$40
    ld c, $23
    nop
    ld a, b
    ldh a, [$fffe]
    ld h, b
    ld a, [bc]
    jr nc, jr_013_7668

    add hl, bc
    ld e, $09
    dec d
    ld [$0cfd], sp
    add [hl]
    inc l
    cp b
    db $10
    cp b
    db $10
    xor b
    db $10
    or c
    or b
    xor b
    dec l
    daa
    dec b
    rrca
    dec b
    rra
    ld c, $0b
    dec b
    jr c, @+$01

    ret nc

jr_013_7668:
    ld e, $0c
    ld e, $0c
    inc e
    ld [$fb1c], sp
    ld [$4414], sp
    dec b
    xor b
    ld d, b
    xor b
    ld d, b
    ld [hl], b
    di
    nop
    ld b, b
    add [hl]
    ld [hl-], a
    rlca
    add hl, bc
    ld e, $0f
    ld e, $0d
    inc sp
    inc e
    dec bc
    rlca
    add hl, bc
    and c
    ld d, $f8
    ld [hl], b
    ld b, c
    add hl, de
    ld b, a
    db $10
    db $e3

jr_013_7692:
    ld e, $0d
    ld b, c
    add hl, de
    push hl
    ld a, [bc]
    ld bc, $0a0b
    dec b
    dec bc
    ld a, h
    add $1d
    pop de
    scf
    ret nc

    jr nz, jr_013_76f5

    and b
    ldh [$ff88], a
    jr c, jr_013_7692

    dec bc
    ld b, $09
    rrca
    and e
    inc e
    rra
    jp nz, $1c09

    ld [$3618], sp
    and h
    dec sp
    jr c, @-$2e

    and c
    scf
    cp b
    db $10
    dec b
    ld bc, $03d0
    cp $15
    nop
    ld a, [hl]
    nop
    xor $54
    cp $4c
    db $fd
    rst $18
    ld a, d
    rra
    rrca
    rra
    dec c
    ld hl, $3f00
    rra
    cp $20
    nop
    ld e, $1e
    nop
    and b
    ld b, b
    ld e, b
    and b
    rst $38
    cp a
    ret nz

    ldh a, [$ffef]
    rst $38
    ldh a, [$ff7c]
    di
    rst $28
    ei
    ld [hl], h
    rst $30

jr_013_76ee:
    ld l, a
    ld de, $e003
    nop
    ld hl, sp-$01

jr_013_76f5:
    ld h, b
    db $fc
    jr nc, jr_013_7733

    call nc, $16f9
    dec a
    rst $38
    jp nc, Jump_013_6ff6

    ld hl, sp+$37
    rst $30
    ld e, b
    ld hl, sp-$41
    ld d, b
    cp b
    ld d, b
    add sp, $10
    jr c, jr_013_76ee

    inc b
    dec [hl]
    ld e, a
    jp nz, $b07b

    ld sp, hl
    jr nc, jr_013_771a

    ld bc, $cc30

jr_013_771a:
    dec b
    rst $38
    db $fd
    ld a, d
    rst $38
    ld l, h
    ccf
    dec de
    ccf
    dec de
    ei
    ld a, a
    ccf
    jr nz, jr_013_7729

jr_013_7729:
    inc a
    dec a
    nop
    rlca
    nop
    rst $38
    rrca
    ld b, $e0
    add b

jr_013_7733:
    db $fc
    ret nz

    db $e3
    call c, $f9ff
    and $fe
    pop af
    pop af
    xor $fe
    pop hl
    cp $03
    ld b, $c0
    nop
    ldh [$ffc0], a
    ld hl, sp+$60
    ld [hl], h
    rst $38
    xor b
    ld a, d
    and h
    scf
    ret nz

    cp a
    ld e, [hl]
    rst $38
    rst $28
    jr @+$26

    jr jr_013_7794

    add [hl]
    ld a, [bc]

jr_013_775a:
    ld h, d
    db $fc
    add a
    rst $38
    ld a, d
    ld a, a
    ld b, $1f
    ld a, [bc]
    rla
    ld a, [bc]
    dec e
    ei
    ld [bc], a
    ld b, $81
    dec bc
    dec a
    ld a, l
    ld [hl], $7e
    scf
    rst $28
    ld a, a
    scf
    rst $38
    ld a, a
    jr nz, jr_013_7777

jr_013_7777:
    ld a, c
    ld a, e
    ld bc, $83ff
    nop
    ld c, a
    add c
    di
    inc c
    push bc
    cp d
    rst $38
    ld sp, hl
    add [hl]
    di
    db $ed
    rst $38
    db $e3
    ei
    rst $30
    rst $38
    cp h
    nop
    and $98
    db $db
    ldh [$ffe0], a

jr_013_7794:
    ld b, b
    rst $38
    ld h, b
    add b
    jr nc, jr_013_775a

    inc a
    ret nc

    inc [hl]
    ret c

    rst $38
    ld a, a
    ld a, $7f
    dec a
    ld a, a
    inc e
    ld a, [hl]
    inc l
    rst $18
    cp $6c
    xor h
    ld e, b
    db $e4
    add b
    dec b
    add hl, de
    and $91
    rst $20
    nop

jr_013_77b4:
    rlca
    rra
    nop
    ld bc, $ff11
    nop
    ld de, $0601
    ld a, a
    ld a, [$0603]
    ld a, l
    nop
    ld b, $00
    ld h, b
    add b
    rst $38
    nop
    rst $38

jr_013_77cb:
    ld b, e
    cp l
    rst $38
    ret nz

    ldh a, [$ffcf]
    rst $28
    ret nc

    rst $38
    call c, $d8bf
    cp a
    nop
    nop
    add b
    nop
    rst $38
    ldh [$ff80], a
    ld hl, sp-$40
    db $e4
    ld e, b
    ldh a, [c]
    ld c, h
    rst $38
    rst $28
    ld b, b
    ldh [rLCDC], a
    ld d, h
    dec hl
    rst $28
    ld [hl], h
    ld a, a
    sbc a
    ld h, a
    rst $20
    inc bc
    inc b
    inc bc
    rlca
    jp nz, $ff15

    jr c, jr_013_77cb

    db $f4
    jr jr_013_77b4

    jr @-$04

    inc [hl]
    rst $30
    call z, Call_013_7030
    jp nz, $9816

    ld h, b
    ld a, a
    add b
    push af
    ret nc

    ldh [rNR14], a
    db $fc
    ldh [rNR14], a
    or a
    ld l, a
    sub $2f
    cp $e1
    inc d
    db $fc
    ld h, b
    ld a, [$3934]
    sub $fd
    rst $38
    ld [de], a
    dec sp
    ret nc

    dec sp
    ret nc

    ld hl, sp+$77
    rst $38
    sbc a
    ld h, b
    sbc a
    ld l, h
    db $eb
    inc b
    pop bc
    dec c
    pop de
    add hl, de
    ld [hl], d
    rst $38
    and b
    ld hl, sp+$30
    db $fc
    cp b
    inc [hl]
    ret c

    call nc, Call_000_08fb
    inc e
    add $1a
    ld bc, $0300
    nop
    ld [bc], a
    sbc l
    ld bc, $13e0
    rlca
    rra
    ld [$1c15], sp
    ld h, b
    ld [$ff00], sp
    ldh a, [$ffe0]
    ld hl, sp+$10
    dec de
    rlca
    inc d
    rrca
    rst $38
    scf
    ld [$255a], sp
    cp a
    ld b, b
    sbc $65
    rst $38
    rst $18
    ld h, [hl]
    sbc a
    ld h, a
    ret c

    ldh [$ffa8], a
    ld [hl], b
    rst $38
    ld l, h
    sub b
    ld e, d
    and h
    db $fd
    ld [bc], a
    ld a, c
    and [hl]
    rst $38
    ld sp, hl
    ld h, [hl]
    ld sp, hl
    and $7f
    dec bc
    rra
    add hl, bc
    cp $21
    nop
    rla
    dec bc
    rrca
    inc bc

jr_013_7887:
    rlca
    inc bc
    inc bc
    ld a, a
    nop
    dec de
    rlca
    dec d
    ld c, $36
    add hl, bc
    add hl, bc
    inc bc
    rst $08
    jr z, jr_013_7887

    db $ec
    db $10
    rrca
    inc bc
    dec b
    inc bc
    cp $d0
    rst $38
    ld hl, sp-$70
    ld hl, sp-$70
    ldh a, [$ff80]
    ldh [$ffc0], a
    db $fc
    ld hl, $a500
    inc de
    ld [$0c00], sp
    nop
    inc d
    ld [$7ebf], sp
    nop
    rst $38
    ld a, [hl]
    rra
    ld [$082b], sp
    ld hl, sp-$13
    db $10
    dec hl
    ld [$679f], sp
    inc hl
    ld [$010f], sp
    rlca
    rst $18
    inc bc
    rlca
    ld bc, $0003
    inc bc
    add hl, bc
    ccf
    add hl, de
    rst $18
    ccf
    dec de
    daa
    dec de
    rra
    nop
    ld bc, $00db
    rst $28
    rst $20
    ld e, b
    rst $20
    ld e, d
    inc hl
    nop
    rst $38
    ld b, d
    jp $3cff


    dec de

jr_013_78e9:
    rlca
    inc sp
    inc c
    ld d, a
    dec hl
    cp a
    rst $38
    ld b, a
    rst $18
    ld l, a
    rst $18
    ld l, a
    sbc a
    ld l, [hl]
    ld a, [hl]
    rst $38
    dec c
    ret c

    ldh [$ffcc], a
    jr nc, jr_013_78e9

    call nc, $fffd
    ldh [c], a
    ld sp, hl
    or $79
    or $79
    or [hl]
    cp $ff
    jr nc, @+$20

    add hl, bc
    ld e, $09
    dec d
    ld [$fe0c], sp
    add [hl]
    inc l
    cp b
    db $10
    cp b
    db $10
    xor b
    db $10
    or b
    or b
    xor b
    dec l
    jr nz, jr_013_7927

    rrca
    dec b
    inc b
    dec b
    ld a, a

jr_013_7927:
    ld c, $0b
    dec b
    ld a, $ff
    ret nc

    ld e, $0c
    ld e, $0c
    inc e
    ld [$fb1c], sp
    ld [$4414], sp
    dec b
    xor b
    ld d, b
    xor b
    ld d, b
    ld [hl], b
    di
    nop
    ld b, b
    add [hl]
    ld [hl-], a
    rlca
    add hl, bc
    sbc $6f
    sbc [hl]
    ld l, l
    di
    ld a, h
    dec bc
    rlca
    add hl, bc
    jr nz, jr_013_7950

jr_013_7950:
    halt
    cp $70
    dec bc
    rst $38
    rlca
    inc de

jr_013_7957:
    inc c
    scf
    dec bc
    ld e, a
    daa
    cp a
    rst $38
    ld c, a
    rst $18
    ld l, [hl]
    sbc $6d
    sbc [hl]
    ld l, l
    ret nc

    rst $38
    ldh [$ffc8], a
    jr nc, jr_013_7957

    ret nc

    ld a, [$7de4]
    rst $38
    ldh a, [c]
    ld a, c
    or [hl]
    ld a, c
    or [hl]
    ld sp, hl
    ld [hl], $6a
    di
    dec b
    dec bc
    add $1d
    pop de
    scf
    sub $20
    ld d, b
    and b
    pop hl
    ldh [$ff88], a
    jr c, @+$0d

    ld b, $09
    rrca
    ld bc, $7e06
    or b
    rra
    ld l, [hl]
    jp nz, $1c09

    ld [$a418], sp
    dec sp
    jr c, @-$2e

    and c
    scf
    inc bc
    cp b
    db $10
    dec b
    ld bc, $0260
    cp $17
    nop
    add hl, de
    nop
    dec hl
    db $10
    ld e, l
    ld [hl-], a
    ld b, c
    rst $38
    ld a, $41
    ld a, $5b
    inc h
    ld c, a
    ld a, [hl-]
    ld a, [hl]
    rst $28
    dec e
    cp [hl]
    ld h, e
    ld h, e
    ld c, [hl]
    ld [bc], a
    ret nz

    nop
    jr nc, @+$01

    ret nz

    inc c
    ldh a, [rTMA]
    ld hl, sp+$45
    cp d
    adc l
    cp a
    ld [hl], d
    ldh a, [c]
    inc c
    adc h
    ld [hl], b
    ld [hl], b
    xor $01
    ld [$f0f7], sp
    inc b
    ld hl, sp+$0d
    ld [bc], a
    ld c, h
    nop
    ld l, d
    inc b
    rst $38
    ld e, l
    ld h, $41
    ld a, $6d
    ld [de], a
    ld l, b
    rla
    rst $38
    nop
    nop
    jr jr_013_79eb

jr_013_79eb:
    jr z, jr_013_79fd

    ld d, b
    jr nz, @+$01

    ld d, b
    jr nz, jr_013_7a1b

    db $10
    inc d
    ld [$04fa], sp
    cp $c9
    ld bc, $2f78

jr_013_79fd:
    ld a, $1d
    nop
    nop
    inc c
    rst $38
    nop
    ld a, [bc]
    inc b
    ld a, [bc]
    inc b
    dec b

jr_013_7a09:
    ld [bc], a
    add l
    rst $18
    ld [bc], a
    ld h, l
    add d
    dec e
    ldh [c], a
    inc de
    ld a, [bc]
    sbc b
    nop
    rst $38
    call nc, $ba08
    ld c, h
    add d

jr_013_7a1b:
    ld a, h
    jp c, $ff24

    nop
    nop
    inc bc
    nop
    dec b
    ld [bc], a
    dec b
    ld [bc], a
    ld e, [hl]
    ld b, c
    ld [bc], a
    ld a, [bc]
    inc b
    ld [hl], h
    ld [$0c11], sp
    ld b, $20
    ld bc, $06df
    inc bc
    inc b
    inc bc
    rlca
    and b
    ld bc, $0000
    rst $38
    ld [bc], a
    nop
    dec [hl]
    ld [bc], a
    ld e, d
    inc h
    cp d
    ld h, h
    cp a
    ld a, [de]
    db $e4
    ld [hl], h
    adc b
    ld d, h
    xor b
    ret


    ld bc, $ff07
    ld bc, $060b
    jr nc, jr_013_7a56

jr_013_7a56:
    ld d, b
    jr nz, jr_013_7a09

    rst $38
    ld h, b
    db $10
    ldh [rSVBK], a
    add b
    ld d, b
    and b
    ldh a, [$ffd7]
    ld b, b
    add sp, -$50
    ld de, $0110
    jr nz, jr_013_7a6b

jr_013_7a6b:
    ld b, $01
    cp $43
    inc b
    ld h, b
    nop
    sub d
    ld h, b
    ld l, l
    sub d
    jp nc, $0c1f

    inc a
    ret nz

    ld d, b
    and b
    add c
    ld [bc], a
    ld de, $2712
    dec bc
    ld a, c
    call nc, Call_000_0702
    dec b
    dec c
    ld h, a
    jr jr_013_7af8

    inc de
    add hl, bc
    ld c, $6f
    ld h, c
    ld e, $6f
    db $10
    inc bc
    inc bc
    inc d
    ld [$0c43], sp
    ei

jr_013_7a9b:
    push bc
    ld [bc], a
    ld b, c
    dec c
    ld e, $03
    ld b, $01
    ld c, $ef
    dec b
    rrca
    inc bc
    inc bc
    ldh [rNR21], a
    ld [bc], a
    db $fc
    inc b
    rst $38
    ld hl, sp+$04
    ld hl, sp+$44
    cp b
    db $ec
    db $10
    ld hl, sp+$7d
    jr nc, jr_013_7a9b

    inc de
    ld e, $03
    rra
    ld a, [bc]
    ld c, $68
    jr @+$01

    ld [bc], a
    db $fc
    ld b, h
    cp b
    call nz, $e238
    ld e, h
    rst $28
    ld [hl], d
    inc l
    inc a
    ld [$0dd1], sp
    pop de
    ld l, $f0
    rst $38
    ld e, a
    ld a, h

jr_013_7ad8:
    dec sp
    jr c, @+$09

    dec bc
    inc b
    ld c, $ff
    inc b
    inc e
    ld [$0018], sp
    adc d
    ld [hl], b
    dec b
    cp a
    ld a, [$fe03]
    daa
    jp c, $a4db

    dec de
    ld bc, $07db
    rlca
    and b
    dec bc
    dec b
    inc bc

jr_013_7af8:
    jr nz, jr_013_7afa

jr_013_7afa:
    ld [bc], a
    rrca
    rst $38
    ld b, $06
    nop
    ret z

    ld [hl], b
    ld hl, sp-$40
    ret c

    rst $30
    jr nz, jr_013_7ad8

    ldh [rNR41], a
    nop
    jr nz, @+$7a

    jr nc, @+$32

    rst $20
    nop
    rrca
    inc b
    pop bc
    ld bc, $11c0
    ld [bc], a
    rlca
    ld [bc], a
    cp $d0
    ld de, $f800
    db $10
    call c, $d3e0
    db $ec
    rst $18
    cp l
    ld h, d
    ld [hl], d
    jr nz, @+$22

    jp nz, Jump_000_0f1f

    nop
    sbc a
    dec e
    ld a, [bc]
    add hl, de
    rrca
    rrca
    ldh [rIF], a
    inc bc
    ld [bc], a
    ld a, b
    rst $38
    add b
    ld e, h
    xor b
    call z, $f878
    ret nz

    ret nc

    ei
    jr nz, jr_013_7bb5

    ld [hl+], a
    ld [bc], a
    ld a, [hl-]
    call nz, $f40a
    inc b
    ld a, a
    ld hl, sp-$3c
    jr c, @-$1a

    ld e, b
    ld hl, sp+$20
    pop hl
    ld e, $df
    ld a, d
    dec l
    ld a, $1d
    rra
    jr nz, jr_013_7b76

    ld c, $04
    dec c
    inc c
    jp nz, Jump_013_7c23

    dec hl
    nop
    ld c, $c0
    inc de
    dec b
    ld bc, $1f09
    rrca
    ld b, c
    ld a, $6c
    inc de
    nop
    inc b
    rst $38

jr_013_7b76:
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$09ff], sp
    ld a, [bc]
    dec bc
    inc c
    dec c
    ld c, $0f
    ld [bc], a
    rst $28
    db $10
    ld de, $1202
    add hl, bc
    ld [bc], a
    inc de
    inc d
    dec d
    rst $38
    ld d, $17
    jr jr_013_7baf

    ld a, [de]
    dec de
    inc e
    dec e
    rst $38
    ld e, $1f
    jr nz, jr_013_7bc0

    ld [hl+], a
    inc hl
    inc h
    inc d
    db $fd
    dec h
    ld a, [bc]
    ld [bc], a
    ld h, $27
    jr z, jr_013_7bd4

    ld a, [hl+]
    dec hl
    rst $38
    inc l

jr_013_7baf:
    dec l
    ld l, $2f
    jr nc, jr_013_7be5

    ld [hl-], a

jr_013_7bb5:
    inc sp
    rst $28
    inc [hl]
    dec [hl]
    ld [hl], $37
    dec bc
    ld [bc], a
    jr c, jr_013_7bf8

    ld a, [hl-]

jr_013_7bc0:
    rst $38
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d
    ld a, a
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    dec bc
    inc b
    rst $38

jr_013_7bd4:
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    rst $38
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c

jr_013_7be5:
    ei
    ld e, d
    ld e, e
    dec bc
    ld b, $5c
    ld e, l
    ld e, [hl]
    ld e, a
    ld h, b
    rst $38
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b

jr_013_7bf8:
    rst $18
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    dec bc
    ld [$6e14], sp
    rst $38
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    halt
    ld a, a
    ld [hl], a
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    inc c
    ld a, [bc]
    rst $38
    inc d
    inc d
    ld a, [hl]
    ld a, a
    add b
    add c
    add d
    add e
    rst $38
    add h
    add l
    add [hl]
    add a

Jump_013_7c23:
    adc b
    adc c
    adc d
    adc e
    db $fd
    inc d
    ld c, $02
    adc h
    adc l
    inc d
    adc [hl]
    adc a
    sub b
    rst $38
    sub c
    sub d
    sub e
    sub h
    sub l
    inc d
    sub [hl]
    sub a
    or $0c
    ld [bc], a
    sbc b
    sbc c
    ld [de], a
    nop
    sbc d
    sbc e
    sbc h
    sbc l
    db $eb
    sbc [hl]
    sbc a
    jp $a000


    add hl, bc
    inc d
    rst $38
    rst $38
    ld a, [$fbf7]
    db $fc
    rst $38
    inc de
    nop
    push de
    sub $d7
    ret c

    di
    reti


    jp c, $00d4

    ld e, d
    nop
    db $db
    call c, $dedd
    ccf
    rst $18
    ldh [rIE], a
    db $ec
    db $ed
    db $ed
    rlca
    inc bc
    ld b, h
    ld bc, $c27e
    inc bc
    pop hl
    ldh [c], a
    db $e3
    db $e4
    push hl
    and $70
    inc b
    ei

jr_013_7c7c:
    ldh a, [$fff2]
    pop bc
    inc b
    rst $20
    add sp, -$17
    ld [$1ceb], a
    ld b, h
    ld bc, $00c2
    rst $38
    ldh a, [$fff1]
    sub d
    ld bc, $0692
    ld b, b
    ld [bc], a
    ld a, c
    db $ec
    add b
    inc b
    ld h, l
    ld b, $ec
    db $ed
    xor $ef
    inc d
    ld [$f37f], sp
    db $f4
    push af
    or $f7
    ld hl, sp-$07
    pop af
    ld [$41fc], sp
    ld bc, $0351
    and c
    and d
    and e
    and h
    and l
    and [hl]
    rst $38
    and a
    xor b
    xor c
    xor d
    xor e
    xor h
    xor l
    xor [hl]
    cp a
    xor a
    or b
    or c
    or d
    or e
    or h
    add hl, bc
    jr nz, jr_013_7c7c

    rst $38
    or [hl]
    or a
    cp b
    cp c
    cp d
    cp e
    cp h
    cp l
    rst $38
    cp [hl]
    cp a
    ret nz

    pop bc
    jp nz, $c4c3

    push bc
    rst $30
    add $c7
    ret z

    ld a, [bc]
    db $10
    ret


    jp z, $cccb

    rst $38
    call $cfce
    ret nc

    pop de
    jp nc, $d4d3

    inc bc
    db $fd
    cp $0e
    db $10
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
    dec e
    nop
    ldh [rSC], a
    rst $38
    rst $38
    ld l, e
    cp l
    ld l, $56
    dec e
    adc b
    inc d
    rst $38
    nop
    nop
    adc b
    inc d
    ld [hl], d
    ld hl, $32db
    cp $8d
    nop
    sbc $7f
    sub $7e
    ld [hl], c
    ld [hl], $0e
    ld sp, hl
    add hl, de
    xor a
    inc bc
    inc b
    inc b
    ld a, a
    ld a, [$b22e]
    dec c
    db $fd
    xor c
    and b
    inc b
    ld a, c
    ld a, a
    pop de
    ld a, [hl]
    ld b, d
    ld [$0ffe], sp
    ld [bc], a
    ld e, a
    ld d, e
    push de
    dec l
    add hl, hl
    dec h
    nop
    rst $18
    nop
    ld e, a
    ld d, e
    db $d3
    ld l, l
    add c
    nop
    rst $38
    dec a
    ei
    ld d, a
    ld hl, $0101
    cp $7a
    or [hl]
    ld e, c
    add hl, hl
    ld l, l
    dec h
    add hl, bc
    ld [bc], a
    ld de, $837f
    ld [bc], a
    cp a
    ld b, l
    ld bc, $a703
    sbc a
    ld h, [hl]
    ld de, $0080
    add hl, bc
    inc b
    ld a, a
    add h
    inc b
    rst $38
    cp l
    inc bc
    ld bc, $1a05
    ld a, a
    ld [hl], d
    dec a
    add hl, bc
    inc b
    ld a, c
    ld [hl], a
    ld a, d
    ld d, b
    ld d, l
    add c
    ld b, $9e
    ld d, e
    ld e, d
    ld [bc], a
    ld [bc], a
    xor a
    db $fd
    ld h, $ec
    ld b, c
    inc c
    inc b
    dec h
    add c
    ld [$bd34], sp
    ld a, a
    inc bc
    add hl, bc
    ld a, e
    dec hl
    or c
    ld de, $080b
    ld l, $f5
    inc hl
    add e
    ld a, [bc]
    ld e, a
    ld [bc], a
    ld b, $fb
    ld l, $4b
    ld [hl], $ee
    add hl, bc
    ld a, [bc]
    rst $30
    ld e, [hl]
    ld [hl], $02
    inc b
    ld e, a
    ld d, e
    or d
    db $fd
    ld e, l
    ld bc, $5a0d
    scf
    ld a, [bc]
    ld [hl+], a
    add hl, hl
    dec h
    ld e, a
    rra
    nop
    inc d
    nop
    dec bc
    add b
    inc d
    rra
    inc b
    dec d
    add hl, sp
    add h
    add h
    dec d
    dec b
    ld bc, $77bd
    rra
    nop
    db $10
    ld bc, $7b16
    adc [hl]
    inc sp
    add e
    nop
    ld d, [hl]
    ld a, a
    xor e
    ld c, [hl]
    ld bc, $ff17
    cp l
    ld [hl], a
    ld [$885d], a
    inc d
    rst $38
    ld l, a
    ccf
    ld e, a
    ccf
    rr d
    and l
    inc d
    db $10
    jr @+$04

    add hl, de
    sra l
    ld hl, $1983
    ld [hl], e
    and b
    jr jr_013_7e1c

    ld a, [de]

jr_013_7e1c:
    cp a
    ld [hl], a
    sbc a
    ld a, h
    ld e, [hl]
    dec l
    ld d, $67
    rrca
    ld [bc], a
    inc b
    ld [bc], a
    cp $ff
    ld [hl], a
    or c
    dec hl
    or d
    dec e
    xor b
    inc d
    ld d, [hl]
    ld l, l
    ld [bc], a
    inc bc
    dec e
    or a
    ld c, c
    add e
    dec e
    dec sp
    ld e, $04
    ld e, $ff
    ld l, a
    cp c
    ld e, $8b
    ld bc, $1846
    ld d, h
    push de
    ld b, d
    inc bc
    rra
    ld d, b
    and h
    inc e
    ld c, h
    dec b
    ld [bc], a
    ld a, a
    rst $30
    ld a, a
    ld e, [hl]
    xor a
    dec h
    ld b, [hl]
    jr jr_013_7e74

    ld d, e
    inc bc
    ld hl, $90eb
    ld bc, $2183
    ld c, b
    add h
    inc b
    rst $18
    ld l, a
    cp d
    sbc a
    ld [hl+], a
    ld d, b
    ld de, $1084
    rrca
    ld [$0204], sp
    ld l, e
    ccf

jr_013_7e74:
    cp d
    ld [hl+], a
    add sp, $1d
    add $08
    rrca
    ld [bc], a
    dec b
    ld [bc], a
    rra
    ld d, c
    cpl
    or c
    add hl, de
    and a
    ld h, b
    ld [de], a
    rrca
    ld [bc], a
    inc bc
    ld a, [bc]
    ccf
    cp d
    ld [hl-], a
    adc e
    ld b, c
    add [hl]
    inc b
    rrca
    ld [bc], a
    dec b
    ld a, [hl+]
    sbc a
    db $10
    ld c, a
    ld c, $39
    inc h
    rrca
    ld [$0405], sp
    ld a, a
    rst $28
    db $db
    ld [hl-], a
    ld [hl], d
    ld hl, $2c01
    ld e, d
    ld a, a
    xor l
    rlca
    ld l, l
    add $30
    dec l
    ld a, [hl+]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
