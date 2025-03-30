; Disassembly of "harvest_moon.gbc"
; This file was created with:
; mgbdis v2.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $00d", ROMX[$4000], BANK[$d]

    dec c
    nop
    cp $41
    ld b, c
    nop
    cp $4b
    ld b, c
    nop
    cp $55
    ld b, c
    nop
    cp $5f
    ld b, c
    nop
    cp $fd
    ld b, e
    ld bc, $93fe
    ld b, h
    ld bc, $31fe
    ld b, l
    ld bc, $37fe
    ld b, l
    ld bc, $3bfe
    ld b, l
    ld bc, $41fe
    ld b, l
    ld bc, $26fe
    ld b, [hl]
    ld bc, $3efe
    ld b, [hl]
    ld bc, $4cfe
    ld b, [hl]
    ld bc, $56fe
    ld b, [hl]
    ld bc, $03fe
    ld c, b
    ld [bc], a
    cp $d0
    ld c, c
    ld [bc], a
    cp $d4
    ld c, c
    ld [bc], a
    cp $d8
    ld c, c
    ld [bc], a
    cp $dc
    ld c, c
    ld [bc], a
    cp $68
    ld c, d
    ld [bc], a
    cp $6c
    ld c, d
    ld [bc], a
    cp $70
    ld c, d
    ld [bc], a
    cp $74
    ld c, d
    ld [bc], a
    cp $00
    ld c, e
    ld [bc], a
    cp $0c
    ld c, e
    ld [bc], a
    cp $31
    ld c, h
    ld [bc], a
    cp $45
    ld c, h
    ld [bc], a
    cp $67
    ld c, h
    ld [bc], a
    cp $6b
    ld c, h
    ld [bc], a
    cp $89
    ld c, h
    ld [bc], a
    cp $8d
    ld c, h
    ld [bc], a
    cp $91
    ld c, h
    ld [bc], a
    cp $ad
    ld c, h
    inc bc
    cp $6c
    ld c, a
    inc bc
    cp $72
    ld c, a
    inc bc
    cp $78
    ld c, a
    inc bc
    cp $7e
    ld c, a
    inc bc
    cp $78
    ld d, d
    inc bc
    cp $86
    ld d, d
    inc bc
    cp $94
    ld d, d
    inc bc
    cp $a2
    ld d, d
    inc bc
    cp $9b
    ld d, [hl]
    inc bc
    cp $9d
    ld d, [hl]
    inc bc
    cp $9f
    ld d, [hl]
    inc bc
    cp $a1
    ld d, [hl]
    ld bc, $37fe
    ld d, a
    ld bc, $3bfe
    ld d, a
    ld bc, $3ffe
    ld d, a
    ld bc, $43fe
    ld d, a
    inc bc
    cp $dd
    ld d, a
    inc bc
    cp $e7
    ld d, a
    inc bc
    cp $f1
    ld d, a
    inc bc
    cp $fb
    ld d, a
    ld bc, $29fe
    ld c, b
    nop
    db $fd
    call SerialTransferCompleteInterrupt
    db $fd
    call SerialTransferCompleteInterrupt
    db $fd
    call SerialTransferCompleteInterrupt
    db $fd
    call SerialTransferCompleteInterrupt
    db $fd
    call SerialTransferCompleteInterrupt
    db $fd
    call SerialTransferCompleteInterrupt
    db $fd
    call SerialTransferCompleteInterrupt
    db $fd
    call SerialTransferCompleteInterrupt
    db $fd
    call SerialTransferCompleteInterrupt
    db $fd
    call SerialTransferCompleteInterrupt
    db $fd
    call SerialTransferCompleteInterrupt
    db $fd
    call SerialTransferCompleteInterrupt
    db $fd
    call SerialTransferCompleteInterrupt
    db $fd
    call SerialTransferCompleteInterrupt
    db $fd
    call SerialTransferCompleteInterrupt
    db $fd
    call SerialTransferCompleteInterrupt
    db $fd
    call SerialTransferCompleteInterrupt
    db $fd
    call SerialTransferCompleteInterrupt
    db $fd
    call SerialTransferCompleteInterrupt
    db $fd
    call SerialTransferCompleteInterrupt
    db $fd
    call SerialTransferCompleteInterrupt
    db $fd
    call SerialTransferCompleteInterrupt
    db $fd
    call SerialTransferCompleteInterrupt
    db $fd
    call SerialTransferCompleteInterrupt
    db $fd
    call SerialTransferCompleteInterrupt
    db $fd
    call Call_00d_6958
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
    call c, $f843
    nop
    rlca
    db $10
    ld hl, sp-$08
    ld b, $10
    db $eb
    ld a, [$125f]
    db $e3
    nop
    ld e, [hl]
    ld [de], a
    db $e3
    ld hl, sp+$5d
    ld [de], a
    db $eb
    ld [bc], a
    ld h, b
    ld de, $00f3
    ld h, d
    ld de, $f8f3
    ld h, c
    ld de, $e180
    nop
    ld e, [hl]
    ld [de], a
    pop hl
    ld hl, sp+$5d
    ld [de], a
    add sp, $02
    ld h, h
    ld de, $fae8
    ld h, e
    ld [de], a
    ld hl, sp+$00
    ld l, b
    db $10
    ld hl, sp-$08
    ld h, a
    db $10
    ldh a, [rP1]
    ld h, [hl]
    ld de, $f8f0
    ld h, l
    ld de, $0080
    nop
    ld [hl], b
    ld [de], a
    nop
    ld hl, sp+$6f
    ld [de], a
    ld hl, sp+$00
    ld l, [hl]
    ld [de], a
    ld hl, sp-$08
    ld l, l
    ld [de], a
    ldh a, [rP1]
    ld l, h
    ld de, $f8f0
    ld l, e
    ld [de], a
    add sp, $00
    ld l, d
    ld de, $f8e8
    ld l, c
    ld de, $0080
    nop
    ld a, b
    ld [de], a
    nop
    ld hl, sp+$77
    ld [de], a
    ld hl, sp+$00
    halt
    ld [de], a
    ld hl, sp-$08
    ld [hl], l
    ld [de], a
    ldh a, [rP1]
    ld [hl], h
    ld de, $f8f0
    ld [hl], e
    ld de, $00e8
    ld [hl], d
    ld de, $f8e8
    ld [hl], c
    ld de, $e980
    nop
    ld [hl], d
    ld de, $f8e9
    ld [hl], c
    ld de, $00fd
    ld a, [hl]
    ld [de], a
    db $fd
    ld hl, sp+$7d
    ld [de], a
    push af
    nop
    ld a, h
    ld [de], a
    push af
    ld hl, sp+$7b
    ld [de], a
    pop af
    nop
    ld a, d
    ld de, $f8f1
    ld a, c
    ld de, $f880
    nop
    xor b
    db $10
    ld hl, sp-$08
    and a
    db $10
    ldh a, [rP1]
    and [hl]
    ld de, $f8f0
    and l
    ld de, $00e8
    and h
    ld [de], a
    add sp, -$08
    and e
    ld [de], a
    ldh [rP1], a
    and d
    ld [de], a
    ldh [$fff8], a
    and c
    ld [de], a
    add b
    ld hl, sp-$01
    or b
    db $10
    ld hl, sp-$09
    xor a
    db $10
    ldh a, [rTAC]
    xor [hl]
    ld [de], a
    ldh a, [rIE]
    xor l
    ld [de], a
    ldh a, [$fff7]
    xor h
    ld de, $06e8
    xor e
    ld [de], a
    add sp, -$02
    xor d
    ld [de], a
    add sp, -$0a
    xor c
    ld de, $f880
    db $fd
    cp b
    db $10
    ld hl, sp-$0b
    or a
    ld [de], a
    ld hl, sp-$13
    or [hl]
    ld [de], a
    ldh a, [$fffd]
    or l
    ld de, $f5f0
    or h
    ld [de], a
    ldh a, [$ffed]
    or e
    ld [de], a
    add sp, -$03
    or d
    ld de, $f5e8
    or c
    ld de, $f880
    db $fd
    cp a
    db $10
    ld hl, sp-$0b
    cp [hl]
    ld [de], a
    ld hl, sp-$13
    cp l
    ld [de], a
    ldh a, [$fffd]
    cp h
    ld de, $f5f0
    cp e
    ld [de], a
    ldh a, [$ffed]
    cp d
    ld [de], a
    add sp, -$03
    or d
    ld de, $f5e8
    cp c
    ld de, $e880
    cp $b2
    ld de, $f6e8
    ret nz

    ld de, $fef8
    add $10
    ld hl, sp-$0a
    push bc
    ld [de], a
    ld hl, sp-$12
    call nz, $f012
    cp $c3
    ld de, $f6f0

jr_00d_42ac:
    jp nz, $f012

    xor $c1
    ld [de], a
    add b
    ld hl, sp-$08
    xor b
    jr nc, @-$06

    nop
    and a
    jr nc, jr_00d_42ac

    ld hl, sp-$5a
    ld sp, $00f0
    and l
    ld sp, $f8e8
    and h
    ld [hl-], a
    add sp, $00
    and e
    ld [hl-], a
    ldh [$fff8], a
    and d
    ld [hl-], a
    ldh [rP1], a

jr_00d_42d1:
    and c
    ld [hl-], a
    add b
    ld hl, sp-$07
    or b
    jr nc, jr_00d_42d1

    ld bc, $30af
    ldh a, [$fff1]
    xor [hl]
    ld [hl-], a
    ldh a, [$fff9]
    xor l
    ld [hl-], a
    ldh a, [rSB]
    xor h
    ld sp, $f2e8
    xor e
    ld [hl-], a
    add sp, -$06
    xor d
    ld [hl-], a
    add sp, $02

jr_00d_42f2:
    xor c
    ld sp, $f880
    ei
    cp b
    jr nc, jr_00d_42f2

    inc bc
    or a
    ld [hl-], a
    ld hl, sp+$0b
    or [hl]
    ld [hl-], a
    ldh a, [$fffb]
    or l
    ld sp, $03f0
    or h
    ld [hl-], a
    ldh a, [$ff0b]
    or e
    ld [hl-], a
    add sp, -$05
    or d
    ld sp, $03e8

jr_00d_4313:
    or c
    ld sp, $f880
    ei
    cp a
    jr nc, jr_00d_4313

    inc bc
    cp [hl]
    ld [hl-], a
    ld hl, sp+$0b
    cp l
    ld [hl-], a
    ldh a, [$fffb]
    cp h
    ld sp, $03f0
    cp e
    ld [hl-], a
    ldh a, [$ff0b]
    cp d
    ld [hl-], a
    add sp, -$05
    or d
    ld sp, $03e8
    cp c
    ld sp, $e880
    ld a, [$31b2]
    add sp, $02
    ret nz

    ld sp, $faf8
    add $30
    ld hl, sp+$02
    push bc
    ld [hl-], a
    ld hl, sp+$0a
    call nz, $f032
    ld a, [$31c3]
    ldh a, [rSC]
    jp nz, $f032

    ld a, [bc]
    pop bc
    ld [hl-], a
    add b
    add sp, $01
    add b
    ld de, $01f0
    add e
    ld de, $01f8
    add [hl]
    db $10
    ld hl, sp-$07
    add l
    db $10
    ldh a, [rDIV]
    add h
    ld [de], a
    ldh a, [$fff9]
    add d
    ld de, $04e8
    add c
    ld [de], a
    add sp, -$07
    ld a, a
    ld de, $f080
    ld [bc], a
    adc d
    ld [de], a
    ldh a, [$fffa]
    adc c
    ld de, $0af0
    adc e
    ld [de], a
    ld hl, sp+$01
    adc l
    db $10
    ld hl, sp-$07
    adc h
    db $10
    add sp, -$07
    ld a, a
    ld de, $09e8
    adc b
    ld [de], a
    add sp, $01
    add a
    ld [de], a
    add b
    ld a, [$9501]
    ld [de], a
    ld a, [$94f9]
    ld [de], a
    di
    ld bc, $1093
    di
    ld sp, hl
    sub d
    db $10
    db $eb
    ld bc, $1191
    db $eb
    ld sp, hl
    sub b
    ld de, $01e3
    adc a
    ld de, $f9e3
    adc [hl]
    ld de, $e880
    ld sp, hl
    ccf
    ld de, $01e8
    sub [hl]
    ld de, $0100
    sbc h
    ld [de], a
    nop
    ld sp, hl
    sbc e
    ld [de], a
    ld hl, sp+$01
    sbc d
    db $10
    ld hl, sp-$07
    sbc c
    db $10
    ldh a, [rSB]
    sbc b
    ld de, $f9f0
    sub a
    ld de, $e980
    ld bc, $1196
    jp hl


    ld sp, hl
    ccf
    ld de, $01ff
    sbc h
    ld [de], a
    rst $38
    ld sp, hl
    sbc e
    ld [de], a
    ld sp, hl
    ld bc, $10a0
    ld sp, hl
    ld sp, hl
    sbc a
    db $10
    pop af
    ld bc, $119e
    pop af
    ld sp, hl
    sbc l
    ld de, $0f80
    ld b, h
    jr nc, jr_00d_4445

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
    jr nc, jr_00d_4453

    ld hl, sp+$00
    adc $10
    ld hl, sp-$08
    call $f010
    nop
    call z, $f011
    ld hl, sp-$35
    ld de, $f0f0
    jp z, $e812

    nop
    ret


    ld de, $f8e8
    ret z

    ld de, $f0e8
    rst $00
    ld [de], a
    add b
    ld sp, hl
    nop
    sub $10
    ld sp, hl
    ld hl, sp-$2b
    db $10
    pop af
    nop
    call nc, $f111
    ld hl, sp-$2d
    ld de, $00e9
    jp nc, $e911

jr_00d_4445:
    ld hl, sp-$2f
    ld de, $f0e8
    ret nc

    ld [de], a
    pop hl
    ld hl, sp-$31
    ld [de], a
    add b
    ld hl, sp+$0a

jr_00d_4453:
    sbc $12
    ld hl, sp+$02
    db $dd
    ld [de], a
    ld hl, sp-$06
    call c, $f010
    ld [$12db], sp
    ldh a, [rP1]
    jp c, $f011

    ld hl, sp-$27
    ld de, $00e8
    ret c

    ld de, $f8e8
    rst $10
    ld de, $f880
    nop
    and $12
    ld hl, sp-$08
    push hl
    ld [de], a
    ld hl, sp-$10
    db $e4
    ld [de], a
    ldh a, [rP1]
    db $e3
    ld de, $f8f0
    ldh [c], a
    ld de, $f0f0
    pop hl
    ld [de], a
    add sp, $00
    ldh [rNR11], a
    add sp, -$08
    rst $18
    ld de, $b180
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
    ld hl, sp+$00
    ld b, $10
    ld hl, sp-$08
    dec b
    db $10
    ldh a, [rP1]
    inc b
    ld de, $f8f0
    inc bc
    ld de, $08e8
    ld [bc], a
    db $10
    add sp, $00
    ld bc, $e811
    ld hl, sp+$00
    ld de, $f880
    nop
    ld c, $10
    ld hl, sp-$08
    dec c
    db $10
    ldh a, [rP1]
    inc c
    ld de, $f8f0
    dec bc
    ld de, $08e8
    ld a, [bc]
    db $10
    add sp, $00
    add hl, bc
    ld de, $f8e8
    ld [$e811], sp
    ldh a, [rTAC]
    db $10
    add b
    ldh a, [rP1]
    inc d
    ld de, $f8f0
    inc de
    ld de, $00f8
    ld d, $10
    ld hl, sp-$08
    dec d
    db $10
    ldh [rP1], a
    rrca
    db $10
    add sp, $08
    ld [de], a
    db $10
    add sp, $00
    ld de, $e811
    ld hl, sp+$10
    ld de, $f880
    nop
    ld d, $10
    ld hl, sp-$08
    dec d
    db $10
    add sp, $08
    add hl, de
    db $10
    add sp, $00
    jr @+$13

    add sp, -$08
    rla
    ld de, $08f0
    inc e
    db $10
    ldh a, [rP1]
    dec de
    ld de, $f8f0
    ld a, [de]
    ld de, $4380
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
    ei
    nop
    inc hl
    db $10
    ei
    ld hl, sp+$22
    db $10
    di
    nop
    ld hl, $f311
    ld hl, sp+$20
    ld de, $00eb
    rra
    ld de, $f8eb
    ld e, $11
    add sp, -$10
    dec e
    db $10
    add b
    pop hl
    ld hl, sp+$25
    db $10
    ldh [$fff0], a
    inc h
    db $10
    ld sp, hl
    nop
    dec hl
    db $10
    ld sp, hl
    ld hl, sp+$2a
    db $10
    pop af
    nop
    add hl, hl
    ld de, $f8f1
    jr z, jr_00d_4589

    jp hl


    nop
    daa
    ld de, $f8e9
    ld h, $11
    add b
    ret c

    rst $38
    ld hl, sp+$10
    ld hl, sp+$00
    ld [hl-], a
    db $10

jr_00d_4589:
    ei
    ld hl, sp+$31
    db $10
    ldh a, [rP1]
    jr nc, @+$13

    di
    ld hl, sp+$2f
    ld de, $fee0
    inc l
    db $10
    add sp, $00
    ld l, $11
    db $eb
    ld hl, sp+$2d
    ld de, $eb80
    ld hl, sp+$2d
    ld de, $00eb
    rra
    ld de, $00fb
    jr c, @+$12

    ei
    ld hl, sp+$37
    db $10
    ldh a, [rNR10]
    ld [hl], $10
    ldh a, [$ff08]
    dec [hl]
    db $10
    di
    nop
    inc [hl]
    ld de, $f8f3
    inc sp
    ld de, $f080
    db $10
    ld a, [hl-]
    db $10
    ldh a, [$ff08]
    add hl, sp
    db $10
    ei
    ld hl, sp+$37
    db $10
    db $eb
    ld hl, sp+$2d
    ld de, $00eb
    rra
    ld de, $00f3
    inc [hl]
    ld de, $f8f3
    inc sp
    ld de, $00fb
    jr c, jr_00d_45f3

    add b
    ldh [$ff08], a
    ld b, e
    db $10
    ldh [rP1], a
    ld b, d
    db $10
    add sp, $00
    ld b, l
    ld de, $f8ea
    ld b, h

jr_00d_45f3:
    ld de, $00f0
    ld b, a
    ld de, $f8f2
    ld b, [hl]
    ld de, $00f8
    ld c, c
    db $10
    ld a, [$48f8]
    db $10
    add b
    jp hl


    nop
    daa
    ld de, $f8e2
    inc a
    db $10
    ldh [$fff0], a
    dec sp
    db $10
    ld [$3df8], a
    ld de, $00f0
    ccf
    ld de, $f8f2
    ld a, $11
    ld hl, sp+$00
    ld b, c
    db $10
    ld a, [$40f8]
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
    call nc, Call_000_2346
    ld b, a
    ld d, l
    ld b, a
    inc a
    ld b, a
    ld a, [bc]
    ld b, a
    ld l, [hl]
    ld b, a
    add a
    ld b, a
    ld l, [hl]
    ld b, a
    add a
    ld b, a
    ld l, [hl]
    ld b, a
    add a
    ld b, a
    and h
    ld b, a
    pop bc
    ld b, a
    ldh [c], a
    ld b, a
    inc a
    ld b, a
    ld a, [bc]
    ld b, a
    ld hl, sp+$00
    ld c, a
    db $10
    ld hl, sp-$08
    ld c, [hl]
    db $10
    ldh a, [rP1]
    ld c, l
    ld de, $f8f0
    ld c, h
    ld de, $00e8
    ld c, e
    ld de, $f8e8
    ld c, d
    ld de, $e880
    nop
    ld c, e
    ld de, $f8e8
    ld c, d
    ld de, $00f0
    ld c, l
    ld de, $f8f0
    ld c, h
    ld de, $00f8
    ld d, c
    db $10
    ld hl, sp-$08
    ld d, b
    db $10
    add b
    ld hl, sp+$00
    ld d, a
    db $10
    ld hl, sp-$08
    ld d, [hl]
    db $10
    ldh a, [rP1]
    ld d, l
    ld de, $f8f0
    ld d, h
    ld de, $00e8
    ld d, e
    ld de, $f8e8
    ld d, d
    ld de, $f880
    nop
    ld d, a
    db $10
    ldh a, [rP1]
    ld d, l
    ld de, $00e8
    ld d, e
    ld de, $f8e8
    ld d, d
    ld de, $f8f8
    ld e, e
    db $10
    ldh a, [$fff8]
    ld e, d
    ld de, $08e8
    ld e, c
    db $10
    add b
    ld hl, sp+$00
    ld h, c
    db $10
    ld hl, sp-$08
    ld h, b
    db $10
    ldh a, [rP1]
    ld e, a
    ld de, $f8f0
    ld e, [hl]
    ld de, $00e8
    ld e, l
    ld de, $f8e8
    ld e, h
    ld de, $e980
    ld [$1059], sp
    ld sp, hl
    nop
    ld h, a
    db $10
    ld sp, hl
    ld hl, sp+$66
    db $10
    pop af
    nop
    ld h, l
    ld de, $f8f1
    ld h, h
    ld de, $00e9
    ld h, e
    ld de, $f8e9
    ld h, d
    ld de, $f880
    nop
    ld l, l
    db $10
    ld hl, sp-$08
    ld l, h
    db $10
    ldh a, [rP1]
    ld l, e
    ld de, $f8f0
    ld l, d
    ld de, $00e8
    ld l, c
    ld de, $f8e8
    ld l, b
    ld de, $fa80
    nop
    ld [hl], e
    db $10
    ld a, [$72f8]
    db $10
    ldh a, [c]
    nop
    ld [hl], c
    ld de, $f8f2
    ld [hl], b
    ld de, $00ea
    ld l, a
    ld de, $f8ea
    ld l, [hl]
    ld de, $fa80
    nop
    ld [hl], e
    db $10
    ld a, [$72f8]
    db $10
    ldh a, [c]
    nop
    ld [hl], a
    ld de, $f8f2
    halt
    ld de, $00ea
    ld [hl], l
    ld de, $f8ea
    ld [hl], h
    ld de, $ea80
    nop
    ld a, c
    ld de, $f8ea
    ld a, b
    ld de, $00f2
    ld a, e
    ld de, $f8f2
    ld a, d
    ld de, $00fa
    ld a, l
    db $10
    ld a, [$7cf8]
    db $10
    add b
    ld hl, sp+$01
    add e
    db $10
    ld hl, sp-$07
    add d
    db $10
    ldh a, [rSB]
    add c
    ld de, $f9f0
    add b
    ld de, $01e8
    ld a, a
    ld de, $f9e8
    ld a, [hl]
    ld de, $f080
    ldh a, [$ff86]
    db $10
    ld hl, sp+$00
    adc d
    db $10
    ld hl, sp-$08
    adc c
    db $10
    ldh a, [rP1]
    adc b
    ld de, $f8f0
    add a
    ld de, $00e8
    add l
    ld de, $f8e8
    add h
    ld de, $f980
    xor $8d
    db $10
    jp hl


    cp $85
    ld de, $f6e9
    add h
    ld de, $fef9
    adc a
    db $10
    ld sp, hl
    or $8e
    db $10
    pop af
    cp $8c
    ld de, $f6f1
    adc e
    ld de, $fd80
    ld [bc], a
    sbc b
    db $10
    db $fd
    ld a, [$1197]
    db $fd
    ldh a, [c]
    sub [hl]
    db $10
    push af
    ld [bc], a
    sub h
    db $10
    push af
    ld a, [$1193]
    push af
    ldh a, [c]
    sub d
    ld de, $faed
    sub c
    ld de, $f2ed
    sub b
    ld de, $f380
    ldh a, [c]
    sub d
    ld de, $02f3
    sbc d
    db $10
    di
    ld a, [$1199]
    ei
    ld [bc], a
    sbc l
    db $10
    ei
    ld a, [$119c]
    ei
    ldh a, [c]
    sbc e
    db $10
    db $eb
    ld a, [$1191]
    db $eb
    ldh a, [c]
    sub b
    ld de, $3380
    ld c, b
    ld d, h
    ld c, b
    ld [hl], l
    ld c, b
    sub [hl]
    ld c, b
    or a
    ld c, b
    ret c

    ld c, b
    ld sp, hl
    ld c, b
    ret c

    ld c, b
    ld a, [de]
    ld c, c
    dec sp
    ld c, c
    ld e, h
    ld c, c
    dec sp
    ld c, c
    ld a, l
    ld c, c
    ret c

    ld c, b
    ld sp, hl
    ld c, b
    ret c

    ld c, b
    ld a, [de]
    ld c, c
    sbc [hl]
    ld c, c
    or a
    ld c, c
    inc sp
    ld c, b
    ld d, h
    ld c, b
    ld [hl], l
    ld c, b
    sub [hl]
    ld c, b
    or a
    ld c, b
    ld hl, sp+$02
    and l
    db $10
    ld hl, sp-$06
    and h
    db $10
    ld hl, sp-$0e
    and e
    db $10
    ldh a, [rSC]
    and d
    ld de, $faf0
    and c
    ld de, $f2f0
    and b
    db $10
    add sp, $02
    sbc a
    ld de, $fae8
    sbc [hl]
    ld de, $f880
    ld bc, $10ad
    ld hl, sp-$07
    xor h
    db $10
    ld hl, sp-$0f
    xor e
    db $10
    ldh a, [rSB]
    xor d
    ld de, $f9f0
    xor c
    db $10
    ldh a, [$fff1]
    xor b
    db $10
    add sp, $01
    and a
    ld de, $f9e8
    and [hl]
    ld de, $f880
    ld [bc], a
    or l
    db $10
    ld hl, sp-$06
    or h
    db $10
    ldh a, [rSC]
    or e
    ld de, $faf0
    or d
    db $10
    ldh a, [$fff2]
    or c
    db $10
    add sp, $01
    or b
    ld de, $f9e8
    xor a
    db $10
    add sp, -$0f
    xor [hl]
    db $10
    add b
    ld hl, sp+$02
    cp l
    db $10
    ld hl, sp-$06
    cp h
    db $10
    ld hl, sp-$0e
    cp e
    db $10
    ldh a, [rSC]
    cp d
    ld de, $faf0
    cp c
    ld de, $f2f0
    cp b
    db $10
    add sp, $02
    or a
    ld de, $fae8
    or [hl]
    ld de, $e880
    ld [bc], a
    or a
    ld de, $fae8
    or [hl]
    ld de, $faf8
    cp h
    db $10
    ld hl, sp-$0e
    cp e
    db $10
    ld hl, sp+$02
    pop bc
    db $10
    ldh a, [rSC]
    ret nz

    ld de, $faf0
    cp a
    ld de, $f2f0
    cp [hl]
    db $10
    add b
    ld hl, sp+$07
    ret


    db $10
    ld hl, sp-$01
    ret z

    db $10
    ld hl, sp-$09
    rst $00
    db $10
    ldh a, [rTAC]
    add $11
    ldh a, [rIE]
    push bc
    ld de, $f7f0
    call nz, $e810
    ld [bc], a
    jp $e811


    ld a, [$11c2]
    add b
    ld hl, sp+$09
    rst $08
    db $10
    ld hl, sp+$01
    adc $10
    ld hl, sp-$07
    call $e810
    inc b
    jp $e811


    db $fc
    jp nz, $f011

    add hl, bc
    call z, $f011
    ld bc, $11cb
    ldh a, [$fff9]
    jp z, $8010

    add sp, $03
    pop de
    ld de, $fbe8
    ret nc

    ld de, $08f0
    call nc, $f011
    nop
    db $d3
    ld de, $f8f0
    jp nc, $f811

    ld [$10d7], sp
    ld hl, sp+$00
    sub $10
    ld hl, sp-$08

jr_00d_4938:
    push de
    db $10
    add b
    ld hl, sp-$0f
    ret


    jr nc, jr_00d_4938

    ld sp, hl
    ret z

    jr nc, @-$06

    ld bc, $30c7
    ldh a, [$fff1]
    add $31
    ldh a, [$fff9]
    push bc
    ld sp, $01f0
    call nz, $e830
    or $c3
    ld sp, $fee8

jr_00d_4959:
    jp nz, $8031

    ld hl, sp-$11
    rst $08
    jr nc, jr_00d_4959

    rst $30
    adc $30
    ld hl, sp-$01
    call $e830
    db $f4
    jp $e831


    db $fc
    jp nz, $f031

    rst $28
    call z, $f031
    rst $30
    swap c
    ldh a, [rIE]
    jp z, $8030

    add sp, -$0c
    pop de
    ld sp, $fce8
    ret nc

    ld sp, $eff0
    call nc, $f031
    rst $30
    db $d3
    ld sp, $fff0
    jp nc, $f831

    rst $28
    rst $10
    jr nc, @-$06

    rst $30
    sub $30
    ld hl, sp-$01
    push de
    jr nc, @-$7e

    add sp, $00
    reti


    ld de, $f8e8
    ret c

    ld de, $00f0
    db $db
    ld de, $f8f0
    jp c, $f811

    nop
    db $dd
    db $10
    ld hl, sp-$08
    call c, $8010
    ld hl, sp+$00
    ld l, l
    db $10
    ld hl, sp-$08
    ld l, h
    db $10
    ldh a, [rP1]
    ld l, e
    ld de, $f8f0
    ld l, d
    ld de, $00e8
    ld l, c
    ld de, $f8e8
    ld l, b
    ld de, $e080
    ld c, c
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
    inc bc
    ld de, $f8f8
    ld [bc], a
    ld de, $00f0
    ld bc, $f011
    ld hl, sp+$00
    ld de, $f780
    nop
    dec b
    ld de, $f8f7
    inc b
    ld de, $00ef
    ld bc, $ef11
    ld hl, sp+$00
    ld de, $f880
    nop
    rrca
    ld de, $f8f8
    ld c, $11
    ldh a, [rP1]
    dec c
    ld de, $f8f0
    inc c
    ld de, $f780
    nop
    ld de, $f711
    ld hl, sp+$10
    ld de, $00ef
    dec c
    ld de, $f8ef
    inc c
    ld de, $f880
    ld hl, sp+$0f
    ld sp, $00f8
    ld c, $31
    ldh a, [$fff8]
    dec c
    ld sp, $00f0
    inc c
    ld sp, $f780
    ld hl, sp+$11

Call_00d_4a38:
    ld sp, $00f7
    db $10
    ld sp, $f8ef
    dec c
    ld sp, $00ef
    inc c
    ld sp, $f880
    ld bc, $1109
    ld hl, sp-$07
    ld [$f011], sp
    ld bc, $1107
    ldh a, [$fff9]
    ld b, $11
    add b
    rst $30
    ld bc, $110b
    rst $30
    ld sp, hl
    ld a, [bc]
    ld de, $01ef
    rlca
    ld de, $f9ef
    ld b, $11
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
    ld bc, $f011
    ld hl, sp+$00
    ld de, $00f8
    inc de
    ld de, $f8f8
    ld [de], a
    ld de, $f180
    nop
    ld bc, $f111
    ld hl, sp+$00
    ld de, $00f9
    inc de
    ld de, $f8f9
    ld [de], a
    ld de, $f880
    nop
    rla
    ld de, $f8f8
    ld d, $11
    ldh a, [rP1]
    dec c
    ld de, $f8f0
    inc c
    ld de, $f980
    nop
    rla
    ld de, $f8f9
    ld d, $11
    pop af
    nop
    dec c
    ld de, $f8f1
    inc c
    ld de, $f880
    ld hl, sp+$17
    ld sp, $00f8
    ld d, $31
    ldh a, [$fff8]
    dec c
    ld sp, $00f0
    inc c
    ld sp, $f980
    ld hl, sp+$17
    ld sp, $00f9
    ld d, $31
    pop af
    ld hl, sp+$0d
    ld sp, $00f1
    inc c
    ld sp, $f080
    nop
    rlca
    ld de, $f8f0
    ld b, $11
    ld hl, sp+$00
    dec d
    ld de, $f8f8
    inc d
    ld de, $f180
    nop
    rlca
    ld de, $f8f1
    ld b, $11
    ld sp, hl
    nop
    dec d
    ld de, $f8f9
    inc d
    ld de, $1680
    ld c, e
    cpl
    ld c, e
    ld c, b
    ld c, e
    ld l, c
    ld c, e
    adc d
    ld c, e
    and e
    ld c, e
    or h
    ld c, e
    push bc
    ld c, e
    sbc $4b
    rst $38
    ld c, e
    jr jr_00d_4b62

    pop af
    nop
    dec de
    db $10
    pop af
    ld hl, sp+$1a
    ld de, $00f9
    dec e
    db $10
    ld sp, hl
    ld hl, sp+$1c
    db $10
    jp hl


    ld hl, sp+$0d
    ld sp, $00e9
    inc c
    ld sp, $ea80
    ld sp, hl
    dec c
    ld sp, $01ea
    inc c
    ld sp, $01f9
    ld hl, $f910
    ld sp, hl
    jr nz, @+$12

    pop af
    ld bc, $111f
    pop af
    ld sp, hl
    ld e, $11
    add b
    or $00
    add hl, hl
    db $10
    or $f8
    jr z, @+$12

    xor $00
    daa
    db $10
    xor $f8
    ld h, $11
    and $00
    dec h
    ld de, $f8e6
    inc h
    ld de, $00de

jr_00d_4b62:
    inc hl
    ld de, $f8de
    ld [hl+], a
    ld de, $d680
    nop
    inc hl
    ld de, $f8d6
    ld [hl+], a
    ld de, $00de
    dec h
    ld de, $f8de
    inc h
    ld de, $ffee
    dec l
    db $10
    xor $f7
    inc l
    db $10
    and $ff
    dec hl
    db $10
    and $f7
    ld a, [hl+]
    ld de, $f480
    nop
    inc sp
    db $10
    db $f4
    ld hl, sp+$32
    db $10
    db $e4
    nop
    cpl
    ld de, $f8e4

jr_00d_4b98:
    ld l, $11
    db $ec
    nop
    ld sp, $ec11
    ld hl, sp+$30
    ld de, $f280
    ld hl, sp+$0d
    ld sp, $00f2
    inc c
    ld sp, $00fa
    dec [hl]
    db $10
    ld a, [$34f8]
    ld de, $f280
    nop
    dec c
    ld de, $f8f2
    inc c
    ld de, $00fa
    add hl, de
    ld de, $f8fa
    jr @+$13

    add b
    and $f8
    inc hl
    ld sp, $00e6
    ld [hl+], a
    ld sp, $f8ee
    dec h

jr_00d_4bd0:
    ld sp, $00ee
    inc h
    ld sp, $f8f6
    daa
    jr nc, jr_00d_4bd0

    nop
    ld h, $31
    add b
    sub $f8
    inc hl
    ld sp, $00d6
    ld [hl+], a
    ld sp, $f8de
    dec h

jr_00d_4be9:
    ld sp, $00de
    inc h
    ld sp, $f9e6
    dec hl
    jr nc, @-$18

    ld bc, $312a
    xor $f9
    dec l
    jr nc, jr_00d_4be9

    ld bc, $302c
    add b
    ldh [c], a
    ld hl, sp+$2f
    ld sp, $00e2
    ld l, $31
    ld [$31f8], a
    ld sp, $00ea
    jr nc, jr_00d_4c40

    ldh a, [c]
    ld hl, sp+$33
    jr nc, @-$0c

    nop
    ld [hl-], a
    jr nc, jr_00d_4b98

    jp hl


    nop

jr_00d_4c1a:
    dec c
    ld de, $f8e9

jr_00d_4c1e:
    inc c
    ld de, $f8f9
    dec e
    jr nc, jr_00d_4c1e

    nop
    inc e
    jr nc, jr_00d_4c1a

    ld hl, sp+$1b
    jr nc, jr_00d_4c1e

    nop
    ld a, [de]
    ld sp, $b180
    ld c, h
    jp z, $b14c

    ld c, h
    jp z, $b14c

    ld c, h
    db $e3
    ld c, h
    db $fc
    ld c, h
    dec d

jr_00d_4c40:
    ld c, l
    db $fc
    ld c, h
    db $e3
    ld c, h
    db $e3
    ld c, h
    ld l, $4d
    ld c, e
    ld c, l
    ld l, $4d
    ld c, e
    ld c, l
    ld l, $4d
    ld c, e
    ld c, l
    ld l, $4d
    db $e3
    ld c, h
    ld l, b
    ld c, l
    add l
    ld c, l
    ld l, b
    ld c, l
    add l
    ld c, l
    ld l, b
    ld c, l
    add l
    ld c, l
    ld l, b
    ld c, l
    db $e3
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
    jr c, @+$50

    rra
    ld c, [hl]
    jr c, @+$50

    call nc, $ed4d
    ld c, l
    call nc, $ed4d
    ld c, l
    ld e, c
    ld c, [hl]
    ld l, [hl]
    ld c, [hl]
    add e
    ld c, [hl]
    sbc h
    ld c, [hl]
    or l
    ld c, [hl]
    adc $4e
    rst $20
    ld c, [hl]
    nop
    ld c, a
    dec e
    ld c, a
    nop
    ld c, a
    rst $20
    ld c, [hl]
    adc $4e
    rst $20
    ld c, [hl]
    nop
    ld c, a
    dec e
    ld c, a
    nop
    ld c, a
    rst $20
    ld c, [hl]
    or l
    ld c, [hl]
    ld a, [hl-]
    ld c, a
    ld d, e
    ld c, a
    ld a, [$3b00]
    db $10
    ld a, [$3af8]
    db $10
    ldh a, [c]
    nop
    add hl, sp
    ld de, $f8f2
    jr c, @+$13

    ld [$3700], a
    ld de, $f8ea
    ld [hl], $11
    add b
    add sp, $00
    ld [hl], d
    ld de, $f8e8
    ld [hl], c
    ld de, $00f0
    ld [hl], h
    ld de, $f8f0
    ld [hl], e
    ld de, $00f8
    halt
    db $10
    ld hl, sp-$08
    ld [hl], l
    db $10
    add b
    add sp, $00
    ld [hl], d
    ld de, $f8e8
    ld [hl], c
    ld de, $00f8
    ccf
    db $10
    ld hl, sp-$08
    ld a, $10
    ldh a, [rP1]
    dec a
    ld de, $f8f0
    inc a
    ld de, $f880
    nop
    ld b, l
    db $10
    ld hl, sp-$08
    ld b, h
    db $10
    add sp, $00
    ld b, c
    ld de, $f8e8
    ld b, b
    ld de, $00f0
    ld b, e
    ld de, $f8f0
    ld b, d
    ld de, $f880
    nop
    ld c, e
    db $10
    ld hl, sp-$08
    ld c, d
    db $10
    add sp, $00
    ld b, a
    ld de, $f8e8
    ld b, [hl]
    ld de, $00f0
    ld c, c
    ld de, $f8f0
    ld c, b
    ld de, $e980
    db $fc
    ld c, l
    ld de, $f4e9
    ld c, h
    ld de, $f8f1
    ld c, a
    ld de, $f0f1
    ld c, [hl]
    ld de, $00f9
    ld d, d
    db $10
    ld sp, hl
    ld hl, sp+$51
    db $10
    pop af
    nop
    ld d, b
    ld de, $e980
    nop
    ld d, l
    ld de, $f8e9
    ld d, h
    ld de, $f0e9
    ld d, e
    ld de, $fcf1
    ld d, a
    ld de, $f4f1
    ld d, [hl]
    ld de, $00f9
    ld e, c
    db $10
    ld sp, hl
    ld hl, sp+$58
    db $10
    add b
    jp hl


    dec b
    ld c, h
    ld sp, $fde9
    ld c, l
    ld sp, $09f1
    ld c, [hl]
    ld sp, $01f1

jr_00d_4d76:
    ld c, a
    ld sp, $f9f9
    ld d, d
    jr nc, jr_00d_4d76

    ld bc, $3051
    pop af
    ld sp, hl
    ld d, b
    ld sp, $e980
    ld sp, hl
    ld d, l
    ld sp, $01e9
    ld d, h
    ld sp, $09e9
    ld d, e
    ld sp, $fdf1
    ld d, a
    ld sp, $05f1

jr_00d_4d97:
    ld d, [hl]
    ld sp, $f9f9
    ld e, c
    jr nc, jr_00d_4d97

    ld bc, $3058
    add b
    db $ec
    nop
    dec c
    ld de, $f8ec
    inc c
    ld de, $00fc
    sub c
    db $10
    db $fc
    ld hl, sp-$70
    db $10
    db $f4
    nop
    adc a
    ld de, $f8f4
    adc [hl]
    ld de, $ea80
    rst $38
    dec c
    ld de, $f7ea
    inc c
    ld de, $00fa
    adc l
    db $10
    ld a, [$8cf8]
    db $10
    ldh a, [c]
    nop
    adc e
    ld de, $f8f2
    adc d
    ld de, $f980
    inc b
    or $10
    jp hl


    rst $38
    dec c
    ld de, $f7e9
    inc c
    ld de, $fcf9
    ld a, c
    db $10
    pop af
    nop
    ld a, b
    ld de, $f8f1
    ld [hl], a
    ld de, $f980
    inc b
    or $10
    ld sp, hl
    db $fc
    ld a, h
    db $10
    pop af
    nop
    ld a, e
    ld de, $f8f1
    ld a, d
    ld de, $ffe9
    dec c
    ld de, $f7e9
    inc c
    ld de, $f880
    cp $f7
    db $10
    ld hl, sp-$0a
    ld a, a
    ld de, $00f0
    ld a, [hl]
    ld de, $f8f0
    ld a, l
    ld de, $00e8
    dec c
    ld de, $f8e8
    inc c
    ld de, $f880
    cp $83
    db $10
    ld hl, sp-$0a
    add d
    ld de, $fff0
    add c
    ld de, $f7f0
    add b
    ld de, $00e8
    dec c
    ld de, $f8e8
    inc c
    ld de, $f880
    rst $38
    adc c
    db $10
    ld hl, sp-$09
    adc b
    ld de, $eff8
    add a
    ld de, $fff0
    add [hl]
    ld de, $f7f0
    add l
    ld de, $eff0
    add h
    db $10
    add sp, -$01
    dec c
    ld de, $f7e8
    inc c
    ld de, $f980
    db $fc
    and e
    db $10
    pop af
    nop
    and d
    ld de, $f8f1
    and c
    ld de, $f8e9
    dec c
    ld sp, $00e9
    inc c
    ld sp, $f980
    db $fc
    xor b
    db $10
    pop af
    nop
    and a
    ld de, $f8f1
    and [hl]
    ld de, $00e9
    and l
    ld de, $f8e9
    and h
    ld de, $fa80
    ld a, [$308d]
    ld a, [$8c02]
    jr nc, @-$0c

    ld a, [$318b]
    ldh a, [c]
    ld [bc], a
    adc d
    ld sp, $fbea
    dec c
    ld sp, $03ea
    inc c
    ld sp, $e880
    rst $38
    ld a, [$e811]
    rst $30
    ld sp, hl
    ld de, $fff8
    ld hl, sp+$10
    ld hl, sp-$09
    xor e
    db $10
    ldh a, [rIE]
    xor d
    ld de, $f7f0
    xor c
    ld de, $f080
    ld bc, $115b
    ldh a, [$fff9]
    ld e, d
    ld de, $01f8
    ld e, l
    db $10
    ld hl, sp-$07
    ld e, h
    db $10
    add sp, $01
    sub [hl]
    ld de, $f9e8
    sub l
    ld de, $f780
    ld bc, $1063
    rst $30
    ld sp, hl
    ld h, d
    db $10
    rst $28
    ld bc, $1161
    rst $28
    ld sp, hl
    ld h, b
    ld de, $01e7
    ld e, a
    ld de, $f9e7
    ld e, [hl]
    ld de, $f980
    ld bc, $1067
    ld sp, hl
    ld sp, hl
    ld h, [hl]
    db $10
    pop af
    ld bc, $1165
    pop af
    ld sp, hl
    ld h, h
    ld de, $01e9
    rlca
    ld de, $f9e9
    ld b, $11
    add b
    ldh a, [rSB]
    ld l, c
    ld de, $f9f0
    ld l, b
    ld de, $01f8
    ld l, h
    db $10
    ld hl, sp-$07
    ld l, e
    db $10
    ld hl, sp-$0f
    ld l, d
    db $10
    add sp, $01
    rlca
    ld de, $f9e8
    ld b, $11
    add b
    rst $30
    ld bc, $1070
    rst $30
    ld sp, hl
    ld l, a
    db $10
    rst $20
    ld bc, $115f
    rst $20
    ld sp, hl
    ld e, [hl]
    ld de, $f1f0
    ld l, d
    db $10
    rst $28
    ld bc, $116e
    rst $28
    ld sp, hl
    ld l, l
    ld de, $f880
    ld bc, $109a
    ld hl, sp-$07
    sbc c
    db $10
    add sp, $01
    sub [hl]
    ld de, $f9e8
    sub l
    ld de, $01f0
    sbc b
    ld de, $f9f0
    sub a
    ld de, $f980
    nop
    and b
    db $10
    ld sp, hl
    ld hl, sp-$61
    db $10
    jp hl


    nop
    sbc h
    ld de, $f8e9
    sbc e
    ld de, $00f1
    sbc [hl]
    ld de, $f8f1
    sbc l
    ld de, $e780
    ld c, a
    add h
    ld c, a
    add $4f
    ld sp, $5a50
    ld d, b
    add e
    ld d, b
    daa
    ld d, c
    ld d, b
    ld d, c
    ld a, c
    ld d, c
    ld d, a
    ld d, d
    dec d
    ld d, d
    ld [hl], $52
    ld hl, sp+$00
    add hl, sp
    db $10
    ld hl, sp-$08
    jr c, @+$12

    ldh a, [rP1]
    scf
    db $10
    ldh a, [$fff8]
    ld [hl], $10
    add sp, $00
    dec [hl]
    ld de, $f8e8
    inc [hl]
    ld de, $00e0
    inc sp
    ld de, $f8e0
    ld [hl-], a
    ld de, $e080
    nop
    inc sp
    ld de, $f8e0
    ld [hl-], a
    ld de, $00e8
    dec [hl]
    ld de, $f8e8
    inc [hl]
    ld de, $00f0
    ccf
    db $10
    ldh a, [$fff8]
    ld a, $10
    ld hl, sp+$00
    ld b, c
    db $10
    ld hl, sp-$08
    ld b, b
    db $10
    add b
    rst $18
    nop
    inc sp
    ld de, $f8df
    ld [hl-], a
    ld de, $00e6
    ld b, e
    ld de, $f8e6
    ld b, d
    ld de, $00ee
    ld b, l
    db $10
    xor $f8
    ld b, h
    db $10
    or $00
    ld b, a
    db $10
    or $f8
    ld b, [hl]
    db $10
    add b
    pop hl
    nop
    inc sp
    ld de, $f8e1
    ld [hl-], a
    ld de, $00e9
    dec [hl]
    ld de, $f8e9
    inc [hl]
    ld de, $00f1
    dec sp
    db $10
    pop af
    ld hl, sp+$3a
    db $10
    ld sp, hl
    nop
    dec a
    db $10
    ld sp, hl
    ld hl, sp+$3c
    db $10
    add b
    ld a, [$0904]
    db $10
    ld a, [$08fc]
    db $10
    ldh a, [c]
    ld b, $07
    db $10
    ldh a, [c]
    cp $06
    db $10
    ldh a, [c]
    or $05
    db $10
    ld [$0406], a
    ld de, $feea
    inc bc
    ld de, $f6ea
    ld [bc], a
    db $10
    ldh [c], a
    nop
    ld bc, $e211
    ld hl, sp+$00
    ld de, $e280
    nop
    ld bc, $e211
    ld hl, sp+$00
    ld de, $01fa
    ld de, $fa10
    ld sp, hl
    db $10
    db $10
    ldh a, [c]
    ld b, $0f
    db $10
    ldh a, [c]
    cp $0e
    db $10
    ldh a, [c]
    or $0d
    db $10
    ld [$0c06], a
    ld de, $feea
    dec bc
    ld de, $f6ea
    ld a, [bc]
    db $10
    add b
    ldh [rP1], a
    ld bc, $e011
    ld hl, sp+$00
    ld de, $04f8
    add hl, de
    db $10
    ld hl, sp-$04
    jr @+$12

    ldh a, [rTMA]
    rla
    db $10
    ldh a, [$fffe]
    ld d, $10
    ldh a, [$fff6]
    dec d
    db $10
    add sp, $03
    inc d
    ld de, $fbe8
    inc de
    ld de, $f3e8
    ld [de], a
    db $10
    add b
    db $e3
    nop
    ld bc, $e311
    ld hl, sp+$00
    ld de, $06eb
    inc b
    ld de, $feeb
    inc bc
    ld de, $f6eb
    ld a, [de]
    db $10
    di
    ld b, $1d
    db $10
    di
    cp $1c
    db $10
    di
    or $1b
    db $10
    ei
    inc b
    rra
    db $10
    ei
    db $fc
    ld e, $10
    add b
    db $dd
    cp $21
    ld de, $f6dd
    jr nz, jr_00d_50c5

    push af
    ld b, $29
    db $10
    push af
    cp $28
    db $10
    push af
    or $27
    db $10
    db $ed
    ld b, $26
    db $10
    db $ed

jr_00d_50c5:
    cp $25
    db $10
    db $ed
    or $24
    db $10
    push hl
    rst $38
    inc hl
    ld de, $f7e5
    ld [hl+], a
    ld de, $e080
    ld [bc], a
    ld hl, $e011
    ld a, [$1120]
    add sp, $02
    dec hl
    ld de, $fae8
    ld a, [hl+]
    ld de, $08f0
    ld l, $10
    ldh a, [rP1]
    dec l
    db $10
    ldh a, [$fff8]
    inc l
    db $10
    ld hl, sp-$08
    cpl
    db $10
    ld hl, sp+$08
    ld sp, $f810
    nop
    jr nc, @+$12

jr_00d_50fd:
    add b
    ld a, [$09f3]

jr_00d_5101:
    jr nc, jr_00d_50fd

    ei
    ld [$f230], sp
    pop af
    rlca
    jr nc, jr_00d_50fd

    ld sp, hl
    ld b, $30
    ldh a, [c]
    ld bc, $3005
    ld [$04f1], a
    ld sp, $f9ea
    inc bc
    ld sp, $01ea
    ld [bc], a
    jr nc, jr_00d_5101

    rst $30
    ld bc, $e231
    rst $38
    nop
    ld sp, $e280
    ld hl, sp+$01

jr_00d_512a:
    ld sp, $00e2
    nop

jr_00d_512e:
    ld sp, $f7fa
    ld de, $fa30
    rst $38
    db $10
    jr nc, jr_00d_512a

    ldh a, [c]
    rrca
    jr nc, jr_00d_512e

    ld a, [$300e]
    ldh a, [c]
    ld [bc], a
    dec c
    jr nc, jr_00d_512e

    ldh a, [c]
    inc c
    ld sp, $faea
    dec bc
    ld sp, $02ea
    ld a, [bc]
    jr nc, @-$7e

    ldh [$fff8], a
    ld bc, $e031

jr_00d_5155:
    nop
    nop
    ld sp, $f4f8
    add hl, de
    jr nc, jr_00d_5155

    db $fc
    jr jr_00d_5190

    ldh a, [$fff2]
    rla
    jr nc, jr_00d_5155

    ld a, [$3016]
    ldh a, [rSC]
    dec d
    jr nc, jr_00d_5155

    push af
    inc d
    ld sp, $fde8
    inc de
    ld sp, $05e8
    ld [de], a
    jr nc, @-$7e

    db $e3
    ld hl, sp+$01
    ld sp, $00e3
    nop
    ld sp, $f2eb
    inc b
    ld sp, $faeb
    inc bc
    ld sp, $02eb
    ld a, [de]
    jr nc, @-$0b

    ldh a, [c]
    dec e

jr_00d_5190:
    jr nc, @-$0b

    ld a, [$301c]

jr_00d_5195:
    di
    ld [bc], a
    dec de
    jr nc, jr_00d_5195

    db $f4
    rra
    jr nc, @-$03

    db $fc
    ld e, $30
    add b
    db $dd
    ld a, [$3121]
    db $dd
    ld [bc], a

jr_00d_51a8:
    jr nz, @+$33

    push af
    ldh a, [c]
    add hl, hl
    jr nc, @-$09

    ld a, [$3028]
    push af
    ld [bc], a
    daa
    jr nc, @-$11

    ldh a, [c]
    ld h, $30
    db $ed
    ld a, [$3025]
    db $ed
    ld [bc], a
    inc h
    jr nc, jr_00d_51a8

    ld sp, hl
    inc hl
    ld sp, $01e5
    ld [hl+], a
    ld sp, $e080
    ld hl, sp+$21
    ld sp, $00e0
    jr nz, jr_00d_5204

    add sp, -$08
    dec hl
    ld sp, $00e8
    ld a, [hl+]
    ld sp, $f2f0
    ld l, $30
    ldh a, [$fffa]
    dec l
    jr nc, @-$0e

jr_00d_51e4:
    ld [bc], a
    inc l
    jr nc, @-$06

    ld [bc], a
    cpl
    jr nc, jr_00d_51e4

    ldh a, [c]
    ld sp, $f830
    ld a, [$3030]
    add b
    ld sp, hl
    ld bc, $104f
    ld sp, hl
    ld sp, hl
    ld c, [hl]
    db $10
    pop af
    ld bc, $104d
    pop af
    ld sp, hl
    ld c, h
    db $10

jr_00d_5204:
    jp hl


    ld bc, $114b
    jp hl


    ld sp, hl
    ld c, d
    ld de, $01e1
    ld c, c
    ld de, $f9e1
    ld c, b
    ld de, $e280
    ld bc, $1149
    ldh [c], a
    ld sp, hl
    ld c, b
    ld de, $01fa
    ld d, l
    db $10
    ld a, [$54f9]
    db $10
    ldh a, [c]
    ld bc, $1053
    ldh a, [c]
    ld sp, hl
    ld d, d
    db $10
    ld [$5101], a
    ld de, $f9ea
    ld d, b
    ld de, $e280
    ld bc, $1149
    ldh [c], a
    ld sp, hl
    ld c, b
    ld de, $01ea
    ld d, a
    ld de, $f9ea
    ld d, [hl]
    ld de, $01f2
    ld e, c
    db $10
    ldh a, [c]
    ld sp, hl
    ld e, b
    db $10
    ld a, [$5b01]
    db $10
    ld a, [$5af9]
    db $10
    add b
    rst $18
    ld bc, $1149
    rst $18
    ld sp, hl
    ld c, b
    ld de, $01e7
    ld e, l
    ld de, $f9e7
    ld e, h
    ld de, $01ef
    ld e, a
    db $10
    rst $28
    ld sp, hl
    ld e, [hl]
    db $10
    rst $30
    ld bc, $1061
    rst $30
    ld sp, hl
    ld h, b
    db $10
    add b
    or b
    ld d, d
    pop de
    ld d, d
    ldh a, [c]
    ld d, d
    inc de
    ld d, e
    inc [hl]
    ld d, e
    ld d, l
    ld d, e
    or b
    ld d, d
    halt
    ld d, e
    sbc a
    ld d, e
    ret z

    ld d, e
    pop af
    ld d, e
    ld a, [de]
    ld d, h
    ld b, e
    ld d, h
    ld l, h
    ld d, h
    sub l
    ld d, h
    cp [hl]
    ld d, h
    rst $20
    ld d, h
    db $10
    ld d, l
    add hl, sp
    ld d, l
    ld h, d
    ld d, l
    adc e
    ld d, l
    or h
    ld d, l
    push de
    ld d, l
    or $55
    rla
    ld d, [hl]
    jr c, @+$58

    ld e, c
    ld d, [hl]
    ld a, d
    ld d, [hl]
    ldh [rP1], a
    inc sp
    ld de, $f8e0
    ld [hl-], a
    ld de, $00e8
    dec [hl]
    ld de, $f8e8
    inc [hl]
    ld de, $00f0
    ccf
    db $10
    ldh a, [$fff8]
    ld a, $10
    ld hl, sp+$00
    ld b, c
    db $10
    ld hl, sp-$08
    ld b, b
    db $10
    add b
    pop hl
    nop
    inc sp
    ld de, $f8e1
    ld [hl-], a
    ld de, $00e8
    ld b, e
    ld de, $f8e8
    ld b, d
    ld de, $00f0
    ld b, l
    db $10
    ldh a, [$fff8]
    ld b, h
    db $10
    ld hl, sp+$00
    ld b, a
    db $10
    ld hl, sp-$08
    ld b, [hl]
    db $10
    add b
    db $dd
    nop
    inc sp
    ld de, $f8dd
    ld [hl-], a
    ld de, $00e4
    ld b, e
    ld de, $f8e4
    ld b, d
    ld de, $00ec
    ld b, l
    db $10
    db $ec
    ld hl, sp+$44
    db $10
    db $f4
    nop
    ld b, a
    db $10
    db $f4
    ld hl, sp+$46
    db $10
    add b
    push de
    nop
    inc sp
    ld de, $f8d5
    ld [hl-], a
    ld de, $00dc
    ld b, e
    ld de, $f8dc
    ld b, d
    ld de, $00e4
    ld b, l
    db $10
    db $e4
    ld hl, sp+$44
    db $10
    db $ec
    nop
    ld b, a
    db $10
    db $ec
    ld hl, sp+$46
    db $10
    add b
    reti


    nop
    inc sp
    ld de, $f8d9
    ld [hl-], a
    ld de, $00e0
    ld b, e
    ld de, $f8e0
    ld b, d
    ld de, $00e8
    ld b, l
    db $10
    add sp, -$08
    ld b, h
    db $10
    ldh a, [rP1]
    ld b, a
    db $10
    ldh a, [$fff8]
    ld b, [hl]
    db $10
    add b
    pop hl
    nop
    inc sp
    ld de, $f8e1
    ld [hl-], a
    ld de, $00e9
    dec [hl]
    ld de, $f8e9
    inc [hl]
    ld de, $00f1
    scf
    db $10
    pop af
    ld hl, sp+$36
    db $10
    ld sp, hl
    nop
    add hl, sp
    db $10
    ld sp, hl
    ld hl, sp+$38
    db $10
    add b
    ldh [c], a
    nop
    ld bc, $e211
    ld hl, sp+$00
    ld de, $06ea
    inc c
    ld de, $feea
    dec bc
    ld de, $f6ea
    ld a, [bc]
    db $10
    ldh a, [c]
    ld b, $0f
    db $10
    ldh a, [c]
    cp $0e
    db $10
    ldh a, [c]
    or $0d
    db $10
    ld a, [$1101]
    db $10
    ld a, [$10f9]
    db $10
    add b
    db $dd
    rst $38
    ld hl, $dd11
    rst $30
    jr nz, jr_00d_53b8

    push hl
    nop
    inc hl
    ld de, $f8e5
    ld [hl+], a
    ld de, $06ed
    ld h, $10
    db $ed
    cp $25
    db $10
    db $ed

jr_00d_53b8:
    or $24
    db $10
    push af
    ld b, $29
    db $10
    push af
    cp $28
    db $10
    push af
    or $27
    db $10
    add b
    reti


    rst $38
    ld hl, $d911
    rst $30
    jr nz, jr_00d_53e1

    pop hl
    nop
    inc hl
    ld de, $f8e1
    ld [hl+], a
    ld de, $06e9
    ld h, $10
    jp hl


    cp $25
    db $10
    jp hl


jr_00d_53e1:
    or $24
    db $10
    pop af
    ld b, $29
    db $10
    pop af
    cp $28
    db $10
    pop af
    or $27
    db $10
    add b
    push de
    rst $38
    ld hl, $d511
    rst $30
    jr nz, jr_00d_540a

    db $dd
    nop
    inc hl
    ld de, $f8dd
    ld [hl+], a
    ld de, $06e5
    ld h, $10
    push hl
    cp $25
    db $10
    push hl

jr_00d_540a:
    or $24
    db $10
    db $ed
    ld b, $29
    db $10
    db $ed
    cp $28
    db $10
    db $ed
    or $27
    db $10
    add b
    reti


    rst $38
    ld hl, $d911
    rst $30
    jr nz, jr_00d_5433

    pop hl
    nop
    inc hl
    ld de, $f8e1
    ld [hl+], a
    ld de, $06e9
    ld h, $10
    jp hl


    cp $25
    db $10
    jp hl


jr_00d_5433:
    or $24
    db $10
    pop af
    ld b, $29
    db $10
    pop af
    cp $28
    db $10

jr_00d_543e:
    pop af
    or $27
    db $10
    add b
    add sp, $01
    dec hl
    ld de, $f9e8
    ld a, [hl+]
    ld de, $07f0
    ld l, $10
    ldh a, [rIE]
    dec l
    db $10
    ldh a, [$fff7]
    inc l
    db $10
    ld hl, sp+$07
    ld sp, $f810
    rst $38
    jr nc, jr_00d_546f

    ld hl, sp-$09
    cpl
    db $10
    ldh [rSB], a
    ld hl, $e011
    ld sp, hl
    jr nz, @+$13

    add b
    db $eb
    inc bc
    inc d

jr_00d_546f:
    ld de, $feeb
    inc bc
    ld de, $f6eb
    ld a, [de]
    db $10
    db $e3
    nop
    ld bc, $e311
    ld hl, sp+$00
    ld de, $06f3
    dec e
    db $10
    di
    cp $1c
    db $10
    di
    or $1b
    db $10
    ei
    inc b
    rra
    db $10

jr_00d_5490:
    ei
    db $fc
    ld e, $10
    add b
    ldh [c], a
    ld hl, sp+$01
    ld sp, $00e2
    nop

jr_00d_549c:
    ld sp, $f2ea
    inc c

jr_00d_54a0:
    ld sp, $faea
    dec bc
    ld sp, $02ea
    ld a, [bc]
    jr nc, jr_00d_549c

    ldh a, [c]
    rrca
    jr nc, jr_00d_54a0

    ld a, [$300e]
    ldh a, [c]
    ld [bc], a
    dec c
    jr nc, @-$04

    rst $30
    ld de, $fa30
    rst $38
    db $10
    jr nc, jr_00d_543e

    db $dd
    ld sp, hl
    ld hl, $dd31
    ld bc, $3120
    push hl
    ld hl, sp+$23
    ld sp, $00e5
    ld [hl+], a
    ld sp, $f2ed

jr_00d_54d0:
    ld h, $30
    db $ed
    ld a, [$3025]
    db $ed
    ld [bc], a
    inc h
    jr nc, jr_00d_54d0

    ldh a, [c]
    add hl, hl
    jr nc, @-$09

    ld a, [$3028]

jr_00d_54e2:
    push af
    ld [bc], a
    daa
    jr nc, @-$7e

    reti


    ld sp, hl
    ld hl, $d931
    ld bc, $3120
    pop hl
    ld hl, sp+$23
    ld sp, $00e1

jr_00d_54f5:
    ld [hl+], a
    ld sp, $f2e9

jr_00d_54f9:
    ld h, $30
    jp hl


    ld a, [$3025]
    jp hl


    ld [bc], a
    inc h
    jr nc, jr_00d_54f5

    ldh a, [c]
    add hl, hl
    jr nc, jr_00d_54f9

    ld a, [$3028]
    pop af
    ld [bc], a
    daa
    jr nc, jr_00d_5490

    push de
    ld sp, hl
    ld hl, $d531
    ld bc, $3120
    db $dd
    ld hl, sp+$23
    ld sp, $00dd

jr_00d_551e:
    ld [hl+], a
    ld sp, $f2e5
    ld h, $30
    push hl
    ld a, [$3025]
    push hl
    ld [bc], a
    inc h
    jr nc, @-$11

    ldh a, [c]
    add hl, hl
    jr nc, jr_00d_551e

    ld a, [$3028]
    db $ed
    ld [bc], a
    daa
    jr nc, @-$7e

    reti


    ld sp, hl
    ld hl, $d931
    ld bc, $3120
    pop hl
    ld hl, sp+$23
    ld sp, $00e1

jr_00d_5547:
    ld [hl+], a
    ld sp, $f2e9

jr_00d_554b:
    ld h, $30
    jp hl


    ld a, [$3025]
    jp hl


    ld [bc], a
    inc h
    jr nc, jr_00d_5547

    ldh a, [c]
    add hl, hl
    jr nc, jr_00d_554b

    ld a, [$3028]
    pop af
    ld [bc], a
    daa
    jr nc, jr_00d_54e2

    add sp, -$09
    dec hl
    ld sp, $ffe8
    ld a, [hl+]
    ld sp, $f1f0
    ld l, $30
    ldh a, [$fff9]
    dec l
    jr nc, @-$0e

    ld bc, $302c
    ld hl, sp-$0f
    ld sp, $f830

jr_00d_557b:
    ld sp, hl
    jr nc, jr_00d_55ae

    ld hl, sp+$01
    cpl
    jr nc, @-$1e

    rst $30
    ld hl, $e031
    rst $38
    jr nz, jr_00d_55bb

    add b
    db $eb
    push af
    inc d
    ld sp, $faeb
    inc bc
    ld sp, $02eb
    ld a, [de]
    jr nc, jr_00d_557b

    ld hl, sp+$01
    ld sp, $00e3
    nop
    ld sp, $f2f3
    dec e
    jr nc, @-$0b

    ld a, [$301c]

jr_00d_55a7:
    di
    ld [bc], a
    dec de
    jr nc, jr_00d_55a7

    db $f4
    rra

jr_00d_55ae:
    jr nc, @-$03

    db $fc
    ld e, $30
    add b
    ldh [c], a
    nop
    ld c, c
    ld de, $f8e2
    ld c, b

jr_00d_55bb:
    ld de, $00ea
    ld d, c
    ld de, $f8ea
    ld d, b
    ld de, $00f2
    ld d, e
    db $10
    ldh a, [c]
    ld hl, sp+$52
    db $10
    ld a, [$5500]
    db $10
    ld a, [$54f8]
    db $10
    add b
    ldh [rP1], a
    ld c, c
    ld de, $f8e0
    ld c, b
    ld de, $00e8
    ld e, l
    ld de, $f8e8
    ld e, h
    ld de, $00f0
    ld e, a
    db $10
    ldh a, [$fff8]
    ld e, [hl]
    db $10
    ld hl, sp+$00
    ld h, c
    db $10
    ld hl, sp-$08
    ld h, b
    db $10
    add b
    db $db
    nop
    ld c, c
    ld de, $f8db
    ld c, b
    ld de, $00e3
    ld e, l
    ld de, $f8e3
    ld e, h
    ld de, $00eb
    ld e, a
    db $10
    db $eb
    ld hl, sp+$5e
    db $10
    di
    nop
    ld h, c
    db $10
    di
    ld hl, sp+$60
    db $10
    add b
    db $d3
    nop
    ld c, c
    ld de, $f8d3
    ld c, b
    ld de, $00db
    ld e, l
    ld de, $f8db
    ld e, h
    ld de, $00e3
    ld e, a
    db $10
    db $e3
    ld hl, sp+$5e
    db $10
    db $eb
    nop
    ld h, c
    db $10
    db $eb
    ld hl, sp+$60
    db $10
    add b
    sub $00
    ld c, c
    ld de, $f8d6
    ld c, b
    ld de, $00de
    ld e, l
    ld de, $f8de
    ld e, h
    ld de, $00e6
    ld e, a
    db $10
    and $f8
    ld e, [hl]
    db $10
    xor $00
    ld h, c
    db $10
    xor $f8
    ld h, b
    db $10
    add b
    ldh [rP1], a
    ld c, c
    ld de, $f8e0
    ld c, b
    ld de, $00e8
    ld e, l
    ld de, $f8e8
    ld e, h
    ld de, $00f0
    ld e, a
    db $10
    ldh a, [$fff8]
    ld e, [hl]
    db $10
    ld hl, sp+$00
    ld h, c
    db $10
    ld hl, sp-$08
    ld h, b
    db $10
    add b
    ldh [c], a
    nop
    ld c, c
    ld de, $f8e2
    ld c, b
    ld de, $00ea
    ld d, a
    ld de, $f8ea
    ld d, [hl]
    ld de, $00f2
    ld e, c
    db $10
    ldh a, [c]
    ld hl, sp+$58
    db $10
    ld a, [$5b00]
    db $10
    ld a, [$5af8]
    db $10
    add b
    and e
    ld d, [hl]
    call nz, $ed56
    ld d, [hl]
    ld d, $57
    ldh [rP1], a
    inc sp
    ld de, $f8e0
    ld [hl-], a
    ld de, $00e8
    dec [hl]
    ld de, $f8e8
    inc [hl]
    ld de, $00f0
    scf
    db $10
    ldh a, [$fff8]
    ld [hl], $10
    ld hl, sp+$00
    add hl, sp
    db $10
    ld hl, sp-$08
    jr c, jr_00d_56d3

    add b
    ldh [c], a
    nop
    ld bc, $e211
    ld hl, sp+$00
    ld de, $06ea
    inc b
    ld de, $feea
    inc bc

jr_00d_56d3:
    ld de, $f6ea
    ld [bc], a
    db $10
    ldh a, [c]
    ld b, $07
    db $10
    ldh a, [c]
    cp $06
    db $10
    ldh a, [c]
    or $05
    db $10
    ld a, [$0904]
    db $10
    ld a, [$08fc]
    db $10
    add b
    ldh [c], a
    ld sp, hl
    ld bc, $e231
    ld bc, $3100
    ld [$04f3], a

jr_00d_56f8:
    ld sp, $fbea
    inc bc
    ld sp, $03ea
    ld [bc], a
    jr nc, @-$0c

    di
    rlca
    jr nc, jr_00d_56f8

    ei
    ld b, $30
    ldh a, [c]
    inc bc
    dec b

jr_00d_570c:
    jr nc, @-$04

    push af
    add hl, bc
    jr nc, jr_00d_570c

    db $fd
    ld [$8030], sp
    pop hl
    ld bc, $1149
    pop hl
    ld sp, hl
    ld c, b
    ld de, $01e9
    ld c, e
    ld de, $f9e9
    ld c, d
    ld de, $01f1
    ld c, l
    db $10
    pop af
    ld sp, hl
    ld c, h
    db $10
    ld sp, hl
    ld bc, $104f
    ld sp, hl
    ld sp, hl
    ld c, [hl]
    db $10
    add b
    ld b, a
    ld d, a
    ld h, b
    ld d, a
    ld a, c
    ld d, a
    sub d
    ld d, a
    xor e
    ld d, a
    call nz, $ab57
    ld d, a
    call nz, $f857
    nop
    di
    db $10
    ld hl, sp-$08
    ldh a, [c]
    db $10
    ldh a, [rP1]
    pop af
    ld de, $f8f0
    ldh a, [rNR11]
    add sp, $00
    rst $28
    ld de, $f8e8
    xor $11
    add b
    jp hl


    nop
    ld l, a
    ld de, $f8e9
    ld l, [hl]
    ld de, $01f9
    rst $30
    db $10
    ld sp, hl
    ld sp, hl
    or $10
    pop af
    ld bc, $11f5
    pop af
    ld sp, hl
    db $f4
    ld de, $f880
    nop
    rst $20
    db $10
    ld hl, sp-$08
    and $10
    ldh a, [rP1]
    push hl
    ld de, $f8f0
    db $e4
    ld de, $00e8
    db $e3
    ld de, $f8e8
    ldh [c], a
    ld de, $f880
    db $fd
    db $ed
    db $10
    ld hl, sp-$0b
    db $ec
    db $10
    ldh a, [$fffd]
    db $eb
    ld de, $f5f0
    ld [$e811], a
    db $fd
    jp hl


    ld de, $f5e8

jr_00d_57a8:
    add sp, $11
    add b
    ld hl, sp-$08
    rst $20
    jr nc, jr_00d_57a8

    nop
    and $30
    ldh a, [$fff8]
    push hl
    ld sp, $00f0
    db $e4
    ld sp, $f8e8

jr_00d_57bd:
    db $e3
    ld sp, $00e8

jr_00d_57c1:
    ldh [c], a
    ld sp, $f880
    ei
    db $ed
    jr nc, jr_00d_57c1

    inc bc
    db $ec
    jr nc, jr_00d_57bd

    ei
    db $eb
    ld sp, $03f0
    ld [$e831], a
    ei
    jp hl


    ld sp, $03e8
    add sp, $31
    add b
    dec b
    ld e, b
    ld e, $58
    dec b
    ld e, b
    ld e, $58
    dec b
    ld e, b
    scf
    ld e, b
    ld d, b
    ld e, b
    scf
    ld e, b
    ld d, b
    ld e, b
    scf
    ld e, b
    ld l, c
    ld e, b
    add d
    ld e, b
    ld l, c
    ld e, b
    add d
    ld e, b
    ld l, c
    ld e, b
    sbc e
    ld e, b
    or h
    ld e, b
    sbc e
    ld e, b
    or h
    ld e, b
    sbc e
    ld e, b
    ld sp, hl
    nop
    ld h, a
    db $10
    ld sp, hl
    ld hl, sp+$66
    db $10
    pop af
    nop
    ld h, l
    ld de, $f8f1
    ld h, h
    ld de, $00e9
    ld h, e
    ld de, $f8e9
    ld h, d
    ld de, $f880
    nop
    ld l, l
    db $10
    ld hl, sp-$08
    ld l, h
    db $10
    ldh a, [rP1]
    ld l, e
    ld de, $f8f0
    ld l, d
    ld de, $00e8
    ld l, c
    ld de, $f8e8
    ld l, b
    ld de, $ea80
    cp $01
    ld de, $f6ea
    nop
    ld de, $fefa
    ld [hl], c
    db $10
    ld a, [$70f6]
    db $10
    ldh a, [c]
    cp $6f
    ld de, $f6f2
    ld l, [hl]
    ld de, $f880
    cp $77
    db $10
    ld hl, sp-$0a
    halt
    db $10
    ldh a, [$fffe]
    ld [hl], l
    ld de, $f6f0
    ld [hl], h
    ld de, $fee8
    ld [hl], e
    ld de, $f6e8
    ld [hl], d
    ld de, $ea80
    ld a, [$3101]
    ld [$0002], a

jr_00d_5870:
    ld sp, $fafa
    ld [hl], c
    jr nc, jr_00d_5870

    ld [bc], a
    ld [hl], b
    jr nc, @-$0c

    ld a, [$316f]
    ldh a, [c]
    ld [bc], a
    ld l, [hl]
    ld sp, $f880
    ld a, [$3077]
    ld hl, sp+$02
    halt
    jr nc, @-$0e

    ld a, [$3175]
    ldh a, [rSC]
    ld [hl], h
    ld sp, $fae8
    ld [hl], e
    ld sp, $02e8
    ld [hl], d
    ld sp, $ea80
    ld bc, $1179
    ld [$78f9], a
    ld de, $01f2
    ld a, e
    ld de, $f9f2
    ld a, d
    ld de, $01fa
    ld a, l
    db $10
    ld a, [$7cf9]
    db $10
    add b
    jp hl


    ld bc, $11c9
    jp hl


    ld sp, hl
    ld a, [hl]
    ld de, $f9f1
    ld a, a
    ld de, $01f1
    add b
    ld de, $01f9
    add d
    db $10
    ld sp, hl
    ld sp, hl
    add c
    db $10
    add b
    nop
    inc b
    db $d3
    inc bc
    ld [bc], a
    rra
    nop
    or h
    nop
    inc bc
    ld bc, $0102
    ld hl, $1f2c
    nop
    jp Jump_000_2200


    ld de, $0202
    ld sp, $001f
    jp Jump_000_3900


    ld [hl-], a
    rrca
    ld [bc], a
    rrca
    ld [bc], a
    nop
    ld bc, $1f41
    nop
    jp $f500


    ld b, d
    inc bc
    inc b
    inc de
    inc d
    nop
    daa
    inc h
    dec h
    ld h, $bf
    inc de
    inc de
    inc hl
    inc h
    dec h
    rlca
    ld hl, $5001
    rst $30
    ld d, c
    ld d, d
    db $10
    add hl, bc
    ld [bc], a
    add hl, hl
    ld a, [hl+]
    scf
    inc [hl]
    rst $38
    dec [hl]
    ld [hl], $2c
    inc de
    inc sp
    inc [hl]
    dec [hl]
    rla
    rst $38
    ld a, [hl+]
    inc l
    inc de
    inc de
    ld h, b
    ld h, c
    ld h, d

jr_00d_5926:
    jr nz, jr_00d_5926

    add hl, bc
    inc b
    ld e, c
    ld a, [hl-]
    ld b, a
    ld b, h
    ld b, l
    ld b, [hl]
    dec sp
    rst $38
    inc l
    ld b, e
    ld b, h
    ld b, l
    ld [$3c3a], sp
    inc de
    rst $18
    inc de
    ld [hl], b
    ld [hl], c
    ld [hl], d
    jr nc, jr_00d_594b

    ld b, $59
    ld d, a
    rst $38
    ld d, h
    ld d, l
    ld d, [hl]

jr_00d_5948:
    ld c, d
    ld c, e
    ld d, e

jr_00d_594b:
    ld d, h
    ld d, l
    ld a, e
    jr jr_00d_59ac

    jr nc, jr_00d_5959

    ld h, e
    ld h, h
    ld h, l
    ld b, b
    inc bc
    inc c

jr_00d_5958:
    ei

jr_00d_5959:
    dec bc
    inc c
    inc h
    ld [$4a39], sp
    dec sp
    ld a, [hl-]
    dec sp
    reti


    ld a, [hl-]
    ret nz

    dec b
    inc hl
    add hl, bc
    add hl, bc
    ld a, [bc]
    inc bc
    ld c, $1b
    inc e
    ld a, [hl]
    inc h
    ld a, [bc]
    ld c, c
    ld c, d
    ld c, e
    ld a, [hl-]
    dec sp
    ld c, d
    ret nz

    dec b
    ld [hl], $23
    dec bc
    add hl, de
    ld a, [de]
    rrca
    inc c
    ld c, d
    ld c, e
    dec b
    inc c
    ld h, b
    dec c
    adc l
    inc d
    rrca
    inc c
    ld e, d
    ld e, e
    dec b
    inc c
    dec c
    ld [bc], a
    inc bc
    inc c
    inc de
    call Call_000_0513
    inc c
    add hl, hl
    inc l
    dec bc
    inc b
    inc bc
    inc c
    inc de
    inc de
    ld e, d
    dec b
    inc c
    ld e, c
    ld b, $06
    add hl, bc
    ld a, [bc]
    inc h
    db $10
    ld e, d
    and l
    nop

jr_00d_59ac:
    add [hl]
    dec bc
    ld [$1a19], sp
    daa
    dec bc
    push bc
    inc d
    ld d, d
    ld c, $04
    ld a, [bc]
    ld c, l
    or a
    ld c, [hl]
    ld c, a
    jr z, jr_00d_5948

    inc bc
    dec bc

jr_00d_59c1:
    inc c
    ld b, c
    jr jr_00d_59ef

    ld a, e
    dec hl
    inc l
    inc b
    inc c
    ld e, l
    ld e, [hl]
    ld e, a
    jr c, jr_00d_5958

    dec b
    cp e
    dec de
    inc e
    ld b, c
    jr jr_00d_5a10

    dec sp
    inc a
    inc b
    ld c, $6d
    rst $00
    ld l, [hl]
    ld l, a
    ld c, b
    add e
    inc bc
    add l
    inc de
    ld b, c
    jr jr_00d_5a30

    ld c, e
    dec a
    ld c, h
    inc b
    db $10
    ld a, l
    ld a, [hl]
    ld a, a
    ld e, b

jr_00d_59ef:
    add e
    inc bc
    ld d, b
    inc e
    ld [hl], e
    dec hl
    inc l
    add b
    inc de
    ld b, c
    jr jr_00d_5a55

    ld e, e
    ld e, h
    inc bc
    ld [de], a
    ld a, e
    inc bc
    ld [de], a
    rla
    nop
    ld [hl], e
    ld [hl], h
    ld [hl], h
    ld [hl], l
    ld hl, sp+$00
    nop
    ld [bc], a
    ld a, [hl+]
    rra
    nop
    rra

jr_00d_5a10:
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

jr_00d_5a30:
    nop
    dec de
    nop
    nop
    ld [$005f], sp
    nop
    stop
    ld a, h
    ld b, b
    nop
    jr c, jr_00d_59c1

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

jr_00d_5a55:
    ld l, $00
    ld l, d
    nop
    ld h, $78
    rrca
    ld bc, $010f
    rrca
    ld bc, $7400
    nop
    ld e, [hl]
    ret nz

    ld bc, $2a07
    nop
    ld e, d
    rrca
    ld bc, $010f
    rrca
    ld bc, $010f
    rrca
    ld bc, $0fe0
    ld bc, $010f
    rrca
    ld bc, $010f
    ld c, $01
    inc a
    ccf
    ld a, $ff
    ccf
    rra
    cpl
    cpl
    rra
    ld a, e
    daa
    ccf
    rst $38
    ld de, $0133
    inc bc
    nop
    rlca
    cp $4e
    rst $38
    db $fc
    cp $fc
    db $fc
    ld hl, sp+$6c
    ld hl, sp-$04
    ei
    ld [$e098], sp
    ld [de], a
    inc e
    rra
    ld e, $1f
    rra
    rst $38
    rrca
    rrca
    rra
    dec sp
    rlca
    ld a, [de]
    rlca
    rla
    cp e
    inc c
    inc c
    ld [$f602], sp
    inc c
    ld c, $08
    ld [bc], a
    ld a, e
    rst $08
    daa
    rst $28
    ld b, c
    pop bc
    ldh [$ff15], a
    rlca
    inc b
    ld hl, sp+$10
    rst $38
    ret nc

    add b
    ret nz

    nop
    ld bc, $0700
    nop
    rst $38
    dec c
    rlca
    rlca
    inc bc
    rlca
    ld bc, $020f
    rst $38
    rrca
    ld [bc], a
    rra
    rrca
    daa
    nop
    rst $38
    ld hl, $d3ff
    db $ed
    rst $20
    ei
    di
    rst $18
    rst $38
    xor a
    rst $38
    cp $af
    db $fc
    rst $38
    add hl, bc
    nop
    ccf
    ld bc, $6eff
    ccf
    ccf
    rra
    jr nz, jr_00d_5b1a

    ld a, e
    inc b
    rst $38
    ld b, b
    ccf
    pop bc
    ld a, a
    jr c, jr_00d_5b04

jr_00d_5b04:
    ld hl, sp+$08
    rst $38
    sbc b
    ld l, b
    jr c, @-$26

    sbc b
    ld hl, sp-$08
    ld a, b
    rst $28
    jr nc, @-$06

    ldh [$fff8], a
    ld b, $04
    inc bc
    rrca
    nop
    ei

jr_00d_5b1a:
    rrca
    rlca
    ld [$ff04], sp
    rst $38
    adc a
    cp $ff
    xor e
    db $fc
    rst $38
    ld a, [bc]
    ld [bc], a
    ld b, $08
    ld b, $bf
    nop
    ld [bc], a
    rst $28
    rst $38
    db $fc
    rst $38
    nop
    nop
    ld [bc], a
    nop
    rrca
    nop
    rst $28
    dec de
    rrca
    rrca
    rlca
    ldh [$ff03], a
    ld bc, $0f1f
    rst $38
    nop
    nop
    ld c, a
    nop
    rst $38
    ld b, e
    and a
    db $db
    cp a
    rst $08
    rst $30
    rst $20
    rst $38
    cp $1f
    ld bc, $c002
    rst $38
    nop
    inc a
    ret nz

    adc [hl]
    db $f4
    call nz, $f4f8
    ld a, a
    ld hl, sp-$66
    db $fc
    ld c, $fc
    ccf
    rra
    pop bc
    ld [$18ef], sp
    rra
    rra
    jr @-$1b

    add hl, hl
    ld hl, sp-$01
    ld hl, sp-$02
    ld h, b
    ld b, $3f
    rst $18
    rst $38
    ccf
    rst $30
    ld c, a
    ld e, e
    rst $28
    inc a
    inc a
    nop
    ld c, $40
    ld [bc], a
    sbc h
    ld hl, sp-$04
    ccf
    ld hl, sp-$04
    ldh a, [$ffca]
    db $fc
    db $fc
    inc h
    inc l
    add hl, hl
    ld b, $ed
    nop
    ldh [rTMA], a
    ld a, a
    rrca
    inc hl
    ld b, $e6
    rst $38
    db $fc
    db $fc
    ret nz

    inc de
    ld hl, $6005
    ld a, a
    cp b

jr_00d_5ba4:
    rst $38
    rst $38
    ldh a, [$ff2b]
    ld h, b
    ld h, b
    dec b
    dec b
    rst $38
    ld hl, $0705
    ld bc, $6505
    jr nc, @+$01

    rlca
    nop
    inc e
    rlca
    cpl
    rra
    ld e, a
    ccf
    cp $65
    ld sp, $00e0
    jr jr_00d_5ba4

    inc b
    ld hl, sp-$1e
    rst $38
    db $fc
    ld e, a
    dec a
    cp a
    ld h, d
    db $fd
    ld e, e
    rst $30
    rst $38
    ld l, a
    rst $38
    ld l, l
    rst $38
    ld l, l
    rst $18
    ld l, l
    rst $38
    rst $38
    ld e, a
    ld a, [$fdbc]
    ld b, [hl]
    and a
    jp c, $ffcf

    or $ef
    or [hl]
    rst $38
    or [hl]
    ei
    or [hl]
    rst $38
    rst $38
    ld a, [$5fbf]
    ld l, b
    rra
    ld [hl], b
    cpl
    ld e, b
    rst $18
    scf
    ccf
    jr @+$3e

    jr @+$33

    dec bc
    db $fd
    ld a, [$167f]
    ld hl, sp+$0e
    db $f4
    ld a, [de]
    db $ec
    db $fc
    inc b
    ld bc, $7fff
    rra
    jr z, @+$21

    jr nc, @+$11

    jr c, jr_00d_5c28

    db $fd
    ccf
    ldh [c], a
    ld bc, $0000
    cp $f8
    inc d
    ld hl, sp-$61
    inc c
    ldh a, [rNR32]
    add sp, -$04
    inc b
    ld bc, $0606
    ld l, c
    rst $28
    rst $38

jr_00d_5c28:
    ld h, [hl]
    rst $18
    ld h, [hl]
    ld [$9606], sp
    rst $38
    ld h, [hl]
    ld a, a
    ei
    ld h, [hl]
    rst $38
    ld a, [$3d7f]
    rst $38
    inc bc
    ld [$6fff], sp
    ld hl, sp+$6f
    sbc $61
    ldh a, [$ff5f]
    cp $fb
    cp h
    rst $38
    inc bc
    ld [$1ff6], sp
    or $7b
    add [hl]
    or e
    rrca
    ld a, [$0a06]
    jr nz, jr_00d_5c56

    rst $18
    ld h, c

jr_00d_5c56:
    ld [$f60a], sp
    ld e, a
    rst $38
    or $fb
    add [hl]
    rst $38
    add hl, bc
    ld [bc], a
    ld h, c
    inc c
    inc c
    rst $18
    add [hl]
    ei
    and $ff
    ld a, [$1007]
    jr jr_00d_5c75

    add hl, sp
    ld l, $00
    db $10
    ld bc, $300d

jr_00d_5c75:
    rrca
    dec bc
    jr nz, jr_00d_5c9c

    db $e3
    ld b, c
    ld a, $01
    dec c
    inc c
    ldh a, [rNR10]
    ldh [$ffe0], a
    ld c, d
    ld b, e
    push hl
    ld [bc], a
    db $fc
    dec b
    inc de
    db $e3
    ld [de], a
    add d
    db $fc
    ldh [c], a
    db $fc
    cp a
    ld a, l
    and $0b
    add hl, bc
    ld sp, hl
    cp [hl]
    dec b
    dec bc
    inc bc
    add hl, bc
    rst $18

jr_00d_5c9c:
    ccf
    ld c, b
    rst $38
    ccf
    jr nz, jr_00d_5cc1

    rra
    rlca
    dec bc
    rrca
    rrca
    rst $38
    rrca
    ld b, $06
    nop
    nop
    ei
    db $fc
    ld [de], a
    rst $28
    db $fc
    inc b
    ld hl, sp+$18
    ld a, [bc]
    ld b, $02
    nop
    ccf
    rst $38
    ld [bc], a
    dec h
    dec de
    inc de
    rrca
    rla

jr_00d_5cc1:
    ld [$fd1b], sp
    rlca
    ld hl, $4043
    nop
    db $fc
    ld b, b
    cp h
    ret c

    cp a
    add sp, -$10
    ld hl, sp+$10
    ret c

    ldh [rSTAT], a
    ld a, [de]
    ld a, [hl]
    rst $28
    ccf
    cp h
    ld a, a
    ld hl, sp+$20
    nop
    ldh a, [$ff7f]
    or c
    rst $38
    ld a, a
    db $f4
    ld hl, sp-$06
    db $fc
    ld a, [hl]
    db $fc
    dec a
    ei
    cp $1f
    jr nz, jr_00d_5cef

jr_00d_5cef:
    ccf
    cp $fd
    cp $7b
    rst $38
    ld a, $5e
    ccf
    cpl
    rra
    rra
    inc c
    ld d, $f7
    inc c
    ld a, [bc]
    inc b
    ld bc, $fe32
    cp h
    ld a, [$ff5c]
    ld d, h
    cp b
    ld hl, sp+$30
    ld l, b
    jr nc, jr_00d_5d5f

    jr nz, @-$01

    ld [hl], b
    ldh [rBGP], a
    ld a, e

jr_00d_5d15:
    ld a, $5f
    dec a
    dec l
    ld e, $09
    rla
    db $e4
    ld bc, $0205
    ret z

    ldh [rSB], a
    ret nc

    ld hl, $0206
    add hl, bc
    inc b
    rst $08
    cp d
    ld a, h
    ld [hl], h
    ld hl, sp+$07
    inc b
    ld hl, $034c
    nop
    rst $30
    ld b, $03
    inc bc
    ret nz

    ld a, [hl-]
    inc bc
    nop
    dec b
    ld [bc], a
    rst $38
    nop
    nop
    or a
    nop
    rst $38
    inc hl
    db $d3
    db $ed
    rst $38
    rst $30
    ei
    rst $38
    rst $18
    cp $df
    db $fc
    rst $18
    cp $01
    dec l
    jr nc, jr_00d_5d15

    adc [hl]
    ldh a, [$ffc7]
    ld a, [$bef6]
    ld [bc], a
    dec l
    ld a, a
    ccf

jr_00d_5d5f:
    ld a, a
    ccf
    ld b, c
    ld hl, $000f
    ei
    inc bc
    ld bc, $29d0
    nop
    inc c
    rrca
    inc c
    rrca
    ld a, l
    ld a, [bc]
    ldh [$ff30], a
    rlca
    rrca
    dec a
    inc de
    dec de
    nop
    ccf
    ld e, a
    ld c, $fc
    ld a, [bc]
    db $fc
    ld e, h
    ret nz

    cpl
    ld e, b
    ldh [$ff0d], a
    ld a, l
    or b
    ld a, [bc]
    ld [bc], a
    ld a, [de]
    rlca
    rrca
    inc b
    inc b
    ld [$3902], sp
    db $ec
    ld [bc], a
    ld h, $07
    inc b
    ld a, a
    ld hl, $2022
    dec b
    rlca
    inc b
    rra
    ldh a, [rNR41]
    ldh [$ff80], a
    add b
    add hl, bc
    ld a, [bc]
    ldh [rLY], a
    inc c
    ld a, [bc]
    rst $00
    xor a
    db $fc
    xor a
    inc c

jr_00d_5dae:
    ld [bc], a
    ld h, b
    ld e, $06
    inc c
    rst $38
    cp $fd
    adc a
    ld bc, $003b
    nop
    dec b
    nop
    rra
    ld bc, $36e9
    ld h, b
    ld b, a
    jr nz, jr_00d_5dc5

jr_00d_5dc5:
    inc b
    ld hl, $be5b
    nop
    ld sp, hl
    rst $38
    ld e, $9c
    ld l, a
    cp [hl]
    rst $18
    rst $38
    rst $38
    db $f4
    db $fd
    ld a, a
    ld b, e
    ld h, e
    add b
    nop
    ld [hl], b
    add b
    jr c, jr_00d_5dae

    ld h, a
    or b
    ret nz

    ret nc

    nop
    add hl, de
    dec hl
    dec sp
    ldh [rIE], a
    ld hl, $ff00
    jp nc, Jump_00d_7fff

    cp a
    ld [$df5f], a
    jr nc, @+$01

    ld [hl], b
    nop
    ld [hl], b
    ldh [rSVBK], a
    ldh [$ff50], a
    ldh [rIF], a
    ldh [$ffc0], a
    and b
    ret nz

    ld h, b
    nop
    ld b, [hl]
    ld h, a
    daa
    ld b, $21
    ld h, c
    rst $38
    ld a, $00
    ld sp, hl
    ld a, $fc
    rra
    sbc [hl]
    ld l, a
    ccf
    cp a
    rst $18
    db $f4
    rst $38
    rra
    inc b
    inc hl
    dec b
    dec h
    dec sp
    ei
    ldh [$ff7f], a
    ld hl, $f205
    rst $38
    rst $18
    rst $38
    ld l, d
    ld sp, $019f
    dec b
    add a
    ld l, e
    ret nz

    inc de
    inc bc
    rla
    ld [bc], a
    inc b

jr_00d_5e33:
    add e
    ld l, h
    cp $81
    rla
    adc b
    ldh a, [$ff2f]
    dec e
    ccf
    ld [bc], a
    ld a, l
    rst $38
    dec de
    ld a, a
    daa
    ld a, a
    dec [hl]
    ld a, a
    dec [hl]
    ld [hl], a
    rst $38
    dec l
    ld a, a
    cpl
    db $e4
    cp b
    db $fc
    ld b, b
    and [hl]
    rst $38
    ret c

    sbc $e4
    cp $ac
    cp $ac
    xor $ff
    or h

jr_00d_5e5c:
    cp $f4
    ld e, a
    cpl
    jr c, @+$11

    jr c, jr_00d_5e33

    rlca
    rla
    ld [$c01a], sp
    ld d, h
    pop hl
    ld l, b
    ld a, [$fff4]
    inc e
    ldh a, [rNR32]
    ldh [$ffe8], a
    db $10
    ld e, b
    jr nc, jr_00d_5ef5

    jr nc, jr_00d_5e5c

    ld l, c
    ccf
    rrca
    jr c, jr_00d_5e8e

    jr jr_00d_5e81

jr_00d_5e81:
    ld [bc], a
    cp $e3
    ld bc, $0000
    db $fc
    ldh a, [rNR32]
    ldh a, [rNR23]
    db $ec
    nop

jr_00d_5e8e:
    ld [bc], a
    db $e3
    ld bc, $0000
    ld [$3206], sp
    ld [hl], a
    ld a, [hl+]
    cp [hl]
    ld a, [bc]
    ld b, $4c
    xor $54
    cp $f4
    ld b, $08
    scf
    ld [$0020], a
    ld hl, $0808
    db $ec
    jr nz, jr_00d_5eac

jr_00d_5eac:
    add h
    cp $f4
    rst $20
    inc bc
    nop
    inc c
    ld h, b
    dec bc
    ld h, b
    inc de
    dec e
    ld e, a
    ld [hl+], a
    db $ec
    add c
    ld a, [bc]
    pop hl
    ld [hl+], a
    ld [$e0f0], sp
    ld c, a
    cp b
    ld a, [$dc44]
    add c
    ld a, [bc]
    add e
    inc bc
    ld e, a
    cpl
    ld l, a
    add b
    ld b, e
    rla
    rrca
    cp e
    dec bc
    rrca
    add e
    inc bc
    ld a, [$f6f4]
    add b
    ld b, e
    ld [$f007], sp
    ldh a, [rP1]
    ld h, e
    inc sp
    add hl, bc
    ld a, h
    add e
    db $10
    add l
    rrca
    add l
    db $10
    ld [$0f85], sp
    add l
    ld [$0f81], sp
    dec de
    add b
    ld h, b

jr_00d_5ef5:
    add l
    ld [$0f81], sp
    ld h, c
    scf
    ld hl, $6721
    ld de, $80e0
    ld b, $60
    call Call_000_22f8
    ld hl, $6801
    ld de, $8140
    ld b, $60
    call Call_000_22f8
    ld hl, $68e1
    ld de, $81a0
    ld b, $60
    call Call_000_22f8
    ld hl, $69c1
    ld de, $8200
    ld b, $60
    call Call_000_22f8
    ld hl, $6ae1
    ld de, $8260
    ld b, $60
    call Call_000_22f8
    ld hl, $6be1
    ld de, $82c0
    ld b, $60
    call Call_000_22f8
    ld hl, $6d01
    ld de, $8320
    ld b, $60
    call Call_000_22f8
    ld hl, $6de1
    ld de, $8380
    ld b, $70
    call Call_000_22f8
    ld hl, $6f01
    ld de, $83f0
    ld b, $60
    call Call_000_22f8
    ld hl, $7001
    ld de, $8450
    ld b, $80
    call Call_000_22f8
    ld hl, $7131
    ld de, $84d0
    ld b, $70
    call Call_000_22f8
    ld hl, $7231
    ld de, $8540
    ld b, $70
    call Call_000_22f8
    ld hl, $7341
    ld de, $85b0
    ld b, $60
    call Call_000_22f8
    ld hl, $7421
    ld de, $8610
    ld b, $60
    call Call_000_22f8
    ld hl, $7501
    ld de, $8670
    ld b, $60
    call Call_000_22f8
    ret


    ld hl, $6001
    ld de, $8100
    ld b, $f0
    call Call_000_22f8
    ld hl, $60f1
    ld de, $81f0
    ld b, $b0
    call Call_000_22f8
    ret


    ld hl, $7001
    ld de, $80a0
    ld b, $80
    call Call_000_22f8
    ret


    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_00d_5fdd:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_00d_5ffa:
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
    nop
    nop
    nop
    nop
    nop
    rlca
    nop
    ld [$1007], sp
    rrca
    ccf
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    nop
    jr nz, jr_00d_5fdd

    db $10
    ldh [$fff8], a
    nop
    ld e, a
    ccf
    ld a, a
    jr nz, @+$3d

    inc b
    ld d, $0f
    cpl
    rra
    ld a, a
    add hl, hl
    ld a, e
    daa
    scf
    dec c
    db $f4
    ld hl, sp-$04
    ld [$a058], sp
    ret nc

    ldh [$ffe8], a
    ldh a, [$fffc]
    jr z, jr_00d_5ffa

    ret z

    ret c

    ld h, b
    ld c, a
    dec [hl]
    adc a
    halt
    rst $08
    ld [hl], a
    ld [hl], a
    dec sp
    cp a
    ld c, h
    sbc a
    ld h, e
    sub e
    ld l, h
    pop hl
    rra
    db $e4
    ld e, b
    ldh [c], a
    call c, $dce6

jr_00d_6057:
    db $dd
    cp d
    ld sp, hl
    ld h, [hl]
    db $fd
    add d
    cp a
    ld d, b

jr_00d_605f:
    ccf
    sub $f3
    ld l, a
    pop af
    ld l, a
    ld h, c
    rra
    jr nz, jr_00d_6088

    ccf
    rra
    ccf
    nop
    ld c, [hl]
    jr nc, jr_00d_60ec

    nop
    cp a
    sub $3e
    ret nz

    jr jr_00d_6057

    ld [$f8f0], sp
    ldh a, [$fff8]
    nop
    cp h
    ld b, b
    ld a, h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_00d_6088:
    nop
    rrca
    nop
    db $10
    rrca
    jr nz, jr_00d_60ae

    ld a, a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    ld b, b
    add b
    jr nz, jr_00d_605f

    ldh a, [rP1]
    cp a
    ld a, a
    rst $38
    ld b, b
    ld a, e
    inc b
    ld l, [hl]
    rra
    ccf
    rra
    ccf
    inc de
    ld e, a

jr_00d_60ae:
    dec a
    ld a, a
    ccf
    add sp, -$10
    add sp, $10
    ld [hl], b
    add b
    ret nc

    ldh [$ffb0], a
    ret nz

    ldh a, [$ffa0]
    ldh a, [$ffe0]
    ld hl, sp-$80
    rst $38
    ld a, a
    rst $38
    ld c, $ff
    ld e, [hl]
    ld a, [hl]
    dec e
    cp h
    ld b, e
    sbc a
    ld h, e
    sub e
    ld l, h
    pop hl
    rra
    call nz, $4238
    cp h
    add [hl]
    ld a, h
    dec e
    ld a, [$e679]
    db $fd
    add d
    cp a
    ld d, b
    ccf
    sub $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    inc b

jr_00d_60ec:
    inc bc
    ld [$1f07], sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [rP1], a
    db $10
    ldh [$ff08], a
    ldh a, [$fffc]
    nop
    cpl
    rra
    ccf
    db $10
    dec e
    ld [bc], a
    ld d, $0f
    dec de
    rlca
    rra
    dec bc
    rra
    rrca
    ccf
    inc bc
    ld a, [$fafc]
    inc b
    cp h
    ld b, b
    db $ec
    ldh a, [$fff8]
    ldh a, [$fff8]
    sub b
    db $f4
    ld a, b
    db $fc
    ld hl, sp+$47
    add hl, sp
    add l
    ld a, d
    jp Jump_00d_707c


    ccf
    cp h
    ld c, a
    sbc a
    ld h, e
    sub e
    ld l, h
    pop hl
    rra
    cp $fc
    cp $f0
    cp $f4
    db $fd
    ld [hl], d
    ld a, c
    add [hl]
    db $fd
    add d
    cp a
    ld d, b
    ccf
    sub $2f
    rra
    ccf
    db $10
    ld e, $01
    dec c
    rlca
    rla
    rrca
    ccf
    ld d, $2f
    dec d
    rra
    nop
    ld a, [$fefc]
    inc b
    call c, $2820
    ldh a, [$fff4]
    ld hl, sp-$02
    inc [hl]
    ld a, [$fcd4]
    nop
    jr nz, jr_00d_6182

    ld b, b
    ccf
    ld h, b
    ccf
    cp b
    ld e, a
    sbc a
    ld h, a
    sbc a
    ld h, b
    cp h
    ld c, e
    db $fc
    dec hl
    ld [bc], a
    db $fc
    ld bc, $03fe
    cp $0e
    db $fc
    db $fd
    ldh a, [c]
    push af
    ld a, [bc]
    dec b
    ld a, [$f807]
    db $fc

jr_00d_6182:
    ld l, e
    ld a, h
    inc bc
    jr jr_00d_618e

    db $10
    rrca
    rra
    rrca
    rra
    nop
    daa

jr_00d_618e:
    jr jr_00d_61ce

    nop
    rlca
    ld a, [$fa07]
    ld b, $f8
    inc b
    ld hl, sp-$04

jr_00d_619a:
    ld hl, sp-$04
    nop
    ld c, [hl]
    jr nc, jr_00d_61de

    nop
    rlca
    nop
    add hl, bc
    ld b, $15
    ld c, $1b
    dec c
    cpl
    inc de
    ccf

jr_00d_61ac:
    rlca
    rra
    ld b, $3f
    ld d, $70
    nop
    ret z

    jr nc, jr_00d_619a

    jr jr_00d_61ac

    ret z

    ld a, [$fee4]
    ldh a, [$fffc]
    or b
    cp $b4
    ccf
    dec e
    rra
    ld a, [bc]
    rra
    inc c
    rrca
    rlca
    rra
    ld bc, $162f
    ccf

jr_00d_61ce:
    inc bc
    ld a, e
    inc [hl]
    cp $5c
    db $fc
    jr z, @-$02

    sbc b
    ld hl, sp-$10
    db $fc
    ret nz

    ld a, [$fe34]

jr_00d_61de:
    ld h, b
    rst $28
    sub $7b
    dec [hl]
    ld [hl], e
    inc c
    ld [hl], d
    dec l
    ld [hl], a
    jr z, @+$81

    jr nz, jr_00d_6265

    ld h, $2f
    nop
    nop
    nop
    rst $08
    ld [hl], $06
    ld hl, sp+$04

jr_00d_61f6:
    ld hl, sp-$1c
    jr jr_00d_61f6

    nop
    call z, $7830
    nop
    nop
    nop
    ccf
    dec e
    rra
    ld a, [bc]
    rra
    inc c
    rrca
    rlca
    rra
    ld bc, $063f
    ld a, a
    inc sp
    ld a, e
    inc [hl]
    cp $5c
    db $fc
    jr z, @-$02

    sbc b
    ld hl, sp-$10
    db $fc
    ret nz

    ld a, [$fa34]
    ld h, h
    push hl
    jp c, Jump_000_057b

    ld [hl], e
    inc l
    ld [hl], d
    dec l
    ld [hl], a
    jr z, jr_00d_62a9

    jr nz, jr_00d_62aa

    jr nz, jr_00d_625a

    nop
    nop
    nop
    rst $00
    ld a, [hl-]
    ld b, $f8
    inc b
    ld hl, sp-$0c
    ld [$00f8], sp
    call nz, $4c38
    jr nc, jr_00d_6278

    nop
    ccf
    dec e
    rra
    ld a, [bc]
    rra
    inc c
    rrca
    rlca
    rra
    ld bc, $162f
    cpl
    inc de
    dec sp
    inc b
    cp $5c
    db $fc
    jr z, @-$02

    sbc b
    ld hl, sp-$10
    db $fc

jr_00d_625a:
    ret nz

    cp $30
    rst $38
    ld h, [hl]
    rst $28
    sub $73
    dec l
    ld [hl], e
    inc l

jr_00d_6265:
    ld [hl], d
    dec c
    ld [hl], a
    jr z, jr_00d_62e9

    jr nz, jr_00d_629d

    ld c, $19
    ld b, $0e
    nop
    add $38
    inc b
    ld hl, sp+$04
    ld hl, sp-$1c

jr_00d_6278:
    jr @-$06

    nop
    cp b
    nop
    jr jr_00d_627f

jr_00d_627f:
    nop
    nop
    dec c
    nop
    inc de
    inc c
    cpl
    db $10
    ccf
    ld b, $3f
    rrca
    rra
    rrca
    rra
    dec bc
    rra
    dec bc
    ldh a, [rP1]
    jr @-$1e

    ld l, h
    ldh a, [rDMA]
    ld hl, sp-$46
    ld h, h
    adc $30

jr_00d_629d:
    cp $80
    cp $98
    ccf
    rla
    rra
    ld [bc], a
    rra
    add hl, bc
    rrca
    rlca

jr_00d_62a9:
    rrca

jr_00d_62aa:
    nop
    rra
    dec bc
    cpl
    ld d, $3e
    add hl, bc
    cp $f8
    cp $e0
    db $fc
    ldh [$fff8], a
    add b
    db $fc
    ld [hl], b
    db $f4
    adc b
    sub d
    ld l, h
    sub d
    ld l, h
    jr c, @+$19

    ld sp, $2f0e
    db $10
    db $10
    rrca
    rrca
    nop
    ld b, $01
    rlca
    nop
    nop
    nop
    jp nc, $d22c

    db $ec
    ldh [c], a
    call c, Call_000_00fc
    ldh a, [rP1]
    ld [hl], b
    add b
    ldh a, [rP1]
    nop
    nop
    ccf
    rla
    rra
    ld [bc], a
    rra
    add hl, bc
    rrca
    rlca

jr_00d_62e9:
    rrca
    nop
    rra
    dec bc
    cpl
    ld d, $3e
    add hl, bc
    cp $f8
    cp $e0
    db $fc
    ldh [$fff8], a
    add b
    db $fc
    ld [hl], b
    db $f4
    adc b
    adc d
    ld [hl], h
    ld e, $e0
    jr c, @+$19

    jr nc, @+$11

    ld l, a
    db $10
    ld e, b
    daa
    ld l, [hl]
    ld de, $003f
    ld e, $00
    nop
    nop
    ld a, d
    sbc h
    ld a, $d8
    ei
    inc b
    ccf
    ret nz

    cp $00
    inc a
    nop
    nop
    nop
    nop
    nop
    ccf
    rla
    rra
    ld [bc], a
    rra
    add hl, bc
    rrca
    rlca
    rrca
    nop
    rra
    dec bc
    cpl
    ld d, $3f
    ld [$f8fe], sp
    cp $e0
    db $fc
    ldh [$fff8], a
    add b
    db $fc
    ld [hl], b
    db $f4
    adc b
    sub d
    ld l, h
    ld [bc], a
    db $fc
    ld a, $17
    ld a, $07
    cpl
    db $10
    ld a, h
    inc bc
    ld a, a
    nop
    inc e
    nop
    nop
    nop
    nop
    nop
    and d
    ld e, h
    jp nz, $033c

    db $fc
    rst $38
    nop
    rst $30
    ld [$304e], sp
    ld a, b
    nop
    nop
    nop
    rlca
    nop
    inc c
    inc bc
    dec de
    ld b, $16
    rrca
    scf
    rrca
    dec [hl]
    rrca

jr_00d_636d:
    jr @+$09

    dec a
    ld [de], a
    ld [hl], b
    nop
    sbc b
    ld h, b
    call z, $8c30
    ld [hl], b
    ld d, [hl]
    add sp, $1e
    ldh [$ff5c], a
    and b
    ld a, [hl]
    add h
    ccf
    db $10
    rra
    nop
    rra
    ld [$000f], sp
    rra
    inc bc
    inc hl
    inc e
    ld l, b
    rla
    ld a, b
    daa
    cp $04
    db $fc
    nop
    db $fc
    ld [$00f8], sp
    db $fc
    ldh [$ffe2], a
    inc e
    adc e
    ld [hl], h
    adc a
    ld [hl], d
    ld [hl], e
    inc l
    ld [hl], $0b
    inc de
    inc c
    db $10
    rrca
    rrca
    nop
    inc de
    inc c
    rrca
    nop
    nop
    nop
    rst $20
    ld a, [de]
    scf
    add sp, -$19
    ld a, [de]
    add a
    ld a, d
    rst $38
    ld [bc], a
    cp a
    ld b, d
    ld a, d
    nop
    nop
    nop
    ccf
    db $10
    rra
    nop
    rra
    ld [$000f], sp
    rra
    inc bc
    inc hl
    inc e
    ld [hl], b
    cpl
    ld a, b
    daa
    cp $04
    db $fc
    nop
    db $fc
    ld [$00f8], sp
    db $fc
    ldh [$ffe6], a
    jr jr_00d_636d

    halt
    adc a
    halt
    inc sp
    inc c
    ld d, $0b
    inc de
    inc c
    db $10
    rrca
    rrca
    nop
    rrca
    nop
    nop
    nop
    nop
    nop
    rst $20
    jr jr_00d_642b

    ld [$1ae7], a
    add a
    ld a, d
    cp $00
    ret c

    ld h, b
    ld a, h
    jr nc, jr_00d_6438

    nop
    ccf
    db $10
    rra
    nop
    rra
    ld [$000f], sp
    rra
    inc bc
    inc sp
    inc c
    ld a, b
    scf
    ld a, b
    scf
    cp $04
    db $fc
    nop
    db $fc
    ld [$00f8], sp
    db $fc
    ldh [$ffe2], a
    inc e
    add a
    ld a, d
    adc a
    ld [hl], d
    inc sp
    inc c
    ld d, $0b
    inc de
    inc c
    db $10
    rrca
    rrca
    nop

jr_00d_642b:
    dec bc
    ld b, $1f
    inc c
    ld c, $00
    rst $20
    jr @+$39

    ld [$1ae7], a
    add a

jr_00d_6438:
    ld a, d
    rst $38
    ld [bc], a
    ld a, [$0000]
    nop
    nop
    nop
    nop
    nop
    ld bc, $0600
    ld bc, $070a
    dec e
    rlca
    dec hl
    dec d
    ld a, [hl-]
    dec d
    scf
    jr jr_00d_64ca

    nop
    or h
    ld a, b
    ld [hl], d
    adc h
    jp z, Jump_000_3434

    ret z

    xor h
    ret nc

    ld a, [hl+]
    call c, Call_000_0cf6
    dec h
    dec de
    dec hl
    rla
    rra
    ld b, $1d
    ld c, $0b
    ld b, $1d
    dec bc
    dec bc
    inc b
    dec e
    dec bc
    ld [hl-], a
    db $ec
    ld [$fcf4], a
    or b
    call c, $e8b8
    or b
    call c, $e8e8
    sub b
    call c, Call_000_1ee8
    add hl, bc
    dec d
    ld c, $0f
    ld b, $0f
    ld bc, $0b17
    rla
    dec bc
    rrca
    nop
    nop
    nop
    inc a
    ret z

    call nc, $f8b8
    or b
    ld hl, sp-$40
    db $f4
    add sp, -$0c
    add sp, -$08
    nop
    nop
    nop
    ld e, $09
    rla
    dec c
    rra
    dec c
    rrca
    ld bc, $050b
    rla
    dec bc
    rla
    dec bc
    rrca
    nop
    ld a, h
    sbc b
    xor b
    ld [hl], b
    ld hl, sp+$60
    add sp, -$70
    db $f4
    add sp, -$0c
    add sp, -$08
    add b
    add b
    nop
    nop
    nop
    inc e
    nop
    inc hl
    inc e
    ld c, b
    ccf
    ld d, h

jr_00d_64ca:
    dec sp
    ld d, a
    add hl, sp
    add hl, hl
    ld d, $16
    rrca
    inc e
    nop
    xor $1c

jr_00d_64d5:
    di
    ld c, [hl]
    ld a, c
    and [hl]
    db $fd
    xor d
    ld a, $d4
    ld a, d
    sub h
    sbc [hl]
    ld l, b
    rra
    dec bc
    dec e
    dec bc
    cpl
    dec de
    rra
    rrca
    add hl, bc
    rlca
    ld b, $01
    dec b
    inc bc
    ld a, [bc]
    dec b
    ld e, [hl]
    xor b
    ld d, h
    xor b
    xor h
    ret nc

    ld l, b
    ret nc

    ld [hl], b
    and b
    ld h, b
    add b
    ld d, b
    and b
    sub b
    ld h, b
    dec c
    ld b, $07
    ld [bc], a
    rrca
    dec b
    rrca
    ld b, $0f
    rlca
    rla
    rrca
    rra
    rrca
    rrca
    nop
    sub b
    ld h, b
    jr nz, jr_00d_64d5

    ret nc

    and b
    adc b
    ld [hl], b
    adc b
    ld [hl], b
    add h
    ld a, b
    call nz, $f8b8
    nop
    rra
    dec bc
    dec e
    dec bc
    cpl
    dec de
    rra
    rrca
    add hl, bc
    rlca
    ld b, $01
    dec b
    inc bc
    ld a, [bc]
    dec b
    ld e, [hl]
    xor b
    ld d, h
    xor b
    xor h
    ret nc

    ld l, b
    ret nc

    ld [hl], b
    and b
    ld h, b
    add b
    ld d, b
    and b
    sub b
    ld h, b
    dec c
    ld b, $1f
    ld a, [bc]
    dec de
    ld b, $0f
    rlca
    rrca
    rlca
    rla
    rrca
    rla
    rrca
    rrca
    nop
    adc b
    ld [hl], b
    ld c, b
    or b
    inc a
    ret c

    sbc b
    ld h, b
    add h
    ld a, b
    ld b, h
    cp b
    jp nz, $fcbc

    nop
    rra
    dec bc
    dec e
    dec bc
    cpl
    dec de
    rra
    rrca
    add hl, bc
    rlca
    ld b, $01
    dec b
    inc bc
    add hl, bc
    ld b, $5e
    xor b
    ld d, h
    xor b
    xor h
    ret nc

    ld l, b
    ret nc

    ld [hl], b
    and b
    ld h, b
    add b
    or b
    ld b, b
    db $10
    ldh [$ff0e], a
    ld bc, $070e
    rrca
    nop
    ld c, $05
    ld c, $05
    rla
    ld c, $16
    rrca
    rrca
    nop
    db $10
    ldh [rNR41], a
    ret nz

    ret nc

    jr nz, jr_00d_65a0

    ldh a, [rDIV]
    ld hl, sp+$04
    ld hl, sp-$7e
    ld a, h
    db $fc

jr_00d_65a0:
    nop
    inc bc
    nop
    rlca
    inc bc
    ld c, $07
    dec c
    ld b, $1b
    dec b
    ld l, $11
    dec sp
    inc d
    ccf
    inc d
    ldh [rP1], a
    sub b
    ldh [$ff08], a
    ldh a, [$ffc8]
    or b
    inc l
    ret nc

    ld a, [hl-]
    call nz, $946a
    ld [$2a14], a
    dec d
    dec d
    ld a, [bc]
    ld [de], a
    dec c
    add hl, bc
    ld b, $1c
    dec bc
    dec bc
    inc b
    db $10
    rrca
    inc de
    rrca
    ld a, [hl+]
    call nc, $28d4
    inc h
    ret c

    ret z

    jr nc, jr_00d_65f6

    add sp, -$18
    db $10
    inc b
    ld hl, sp-$1c
    ld hl, sp+$29
    rla
    inc a
    inc de
    jr @+$09

    add hl, bc
    rlca
    add hl, bc
    rlca
    inc de
    rrca
    ld de, $0f0f
    nop
    jp z, $1ef4

    db $e4
    adc h

jr_00d_65f6:
    ldh a, [$ffc8]
    ldh a, [$ffc8]
    ldh a, [$ffe4]
    ld hl, sp-$3c
    ld hl, sp-$08
    nop
    ld a, [hl+]
    dec d
    dec d
    ld a, [bc]
    ld [de], a
    dec c
    add hl, bc
    ld b, $1c
    dec bc
    dec bc
    inc b
    db $10
    rrca
    dec hl
    rla
    ld a, [hl+]
    call nc, $28d4
    inc h
    ret c

    ret z

    jr nc, jr_00d_6636

    add sp, -$18
    db $10
    inc b
    ld hl, sp-$16
    db $f4
    add hl, sp
    rla
    inc e
    inc bc
    ld [$0907], sp
    rlca
    inc de
    rrca
    inc de
    rrca
    dec bc
    rlca
    rlca
    nop
    adc $f4
    ld e, $e4
    adc h

jr_00d_6636:
    ldh a, [$ffc4]
    ld hl, sp-$3c
    ld hl, sp-$1c
    ld hl, sp+$78
    add b
    add b
    nop
    nop
    nop
    ld bc, $0600
    ld bc, $070a
    dec e
    rlca
    dec hl
    dec d
    ld a, [hl-]
    dec d
    scf
    jr jr_00d_66ca

    nop
    or h
    ld a, b
    ld [hl], d
    adc h
    jp z, Jump_000_3434

    ret z

    xor h
    ret nc

    ld a, [hl+]
    call c, Call_000_0cf6
    dec h
    dec de
    dec hl
    rla
    rra
    ld b, $1d
    ld c, $0b
    ld b, $1d
    dec bc
    ccf
    nop
    ld a, a
    ccf
    ld [hl-], a
    db $ec
    ld [$fcf4], a
    or b
    call c, $e8b8
    or b
    call c, Call_00d_7ee8
    add b
    rst $38
    ld a, [hl]
    ld a, a
    nop
    ld [hl], b
    cpl
    ld h, b
    rra
    ccf
    nop
    dec bc
    dec b
    rla
    dec bc
    rla
    dec bc
    rrca
    nop
    ld a, a
    add b
    add a
    ld a, d
    add e
    ld a, h
    cp $00
    add sp, -$30
    db $f4
    add sp, -$0c
    add sp, -$08
    nop
    nop
    nop
    inc e
    nop
    inc hl
    inc e
    ld c, b
    ccf
    ld d, l
    dec sp
    ld d, [hl]
    add hl, sp
    add hl, hl
    ld d, $16
    rrca
    inc e
    nop
    xor $1c
    or e
    ld c, [hl]
    ld sp, hl
    and [hl]
    ld d, l
    xor d
    ld a, [hl-]
    call nc, $946a
    sbc [hl]
    ld l, b
    rra
    dec bc
    dec e
    dec bc
    cpl
    dec de
    rra
    rrca
    add hl, bc

jr_00d_66ca:
    rlca
    rlca
    nop
    ccf
    nop
    ld a, a
    ccf
    ld e, h
    xor b
    ld d, h
    xor b
    xor h
    ret nc

    ld l, b
    ret nc

    ld a, b
    and b
    ret nc

    and b
    ld a, [hl]
    add b
    rst $38
    ld a, [hl]
    nop
    nop
    nop
    nop
    rlca
    nop
    add hl, bc
    ld b, $16
    rrca
    dec d
    rrca
    inc sp
    dec c
    ld a, [hl+]
    dec d
    ld a, b
    nop
    call nc, Call_00d_4a38
    cp h
    ld b, d
    cp h
    db $fc
    ld b, b
    ld [hl], h
    cp b
    cp d
    call nz, $dc2a
    scf
    jr jr_00d_6729

    dec de
    cpl
    rla
    rra
    ld c, $0b
    ld b, $1d
    ld a, [bc]
    ccf
    nop
    ld a, a
    ccf
    ldh [c], a
    inc e
    ld d, d
    db $ec

jr_00d_6715:
    ld a, [$fcf4]
    cp b
    add sp, -$50
    call c, Call_00d_7ea8
    add b
    rst $38
    ld a, [hl]
    inc bc
    nop
    inc c
    inc bc
    dec de
    inc b
    rla
    dec bc

jr_00d_6729:
    cpl
    inc d
    inc l
    inc de
    dec hl
    rla
    ccf
    rlca
    ldh [rP1], a
    jr jr_00d_6715

    db $ec
    db $10
    db $f4
    add sp, -$06
    inc d
    ld a, [de]
    db $e4
    ld [$fef4], a
    ldh a, [$ff3f]
    ld d, $3f
    ld d, $3f
    ld b, $3f
    inc bc
    ccf
    inc b
    ccf
    ld c, $37
    rrca
    ld a, [hl+]
    dec d
    cp $b4
    cp $b4
    cp $b0
    cp $e0
    cp $10
    ld a, [hl]
    cp b
    or $78
    xor d
    call nc, Call_000_1c2b
    dec sp
    inc e
    dec e
    ld b, $07
    inc bc
    rlca
    nop
    add hl, bc
    ld b, $06
    nop
    nop
    nop
    ld [$ee1c], a
    inc e
    call c, $f030
    ldh [$fff0], a
    nop
    ld c, b
    jr nc, jr_00d_67ae

    nop
    nop
    nop
    ccf
    ld d, $3f
    ld d, $3f
    ld b, $3f
    inc bc
    ccf
    inc b
    ccf
    ld c, $37
    dec bc
    dec h
    ld a, [de]
    cp $b4
    cp $b4
    cp $b0
    cp $e0
    cp $10
    halt
    cp b
    or $68
    sub $b8
    dec sp
    inc d
    dec de
    inc b
    ld c, $07
    rlca

jr_00d_67a8:
    ld bc, $0207
    dec b
    ld [bc], a
    add hl, bc

jr_00d_67ae:
    ld b, $06
    nop
    cp $18
    db $ec
    db $10
    ret c

    jr nc, jr_00d_67a8

    ldh [$fff0], a
    nop
    ld d, b
    jr nz, jr_00d_682e

    nop
    nop
    nop
    ccf
    ld d, $3f
    ld d, $3f
    ld b, $3f
    inc bc
    ccf
    inc b
    scf
    ld c, $37
    dec bc
    dec [hl]
    ld c, $fe
    or h
    cp $b4

jr_00d_67d5:
    cp $b0
    cp $e0
    cp $10
    ld a, [hl]
    cp b
    or $68
    jp nc, Jump_000_3fac

    inc c
    dec de
    inc b
    rrca
    inc b
    rlca
    inc bc
    rlca
    nop
    dec b
    ld [bc], a
    rlca
    nop
    nop
    nop
    xor $14
    db $ec
    db $10
    cp b
    ld [hl], b
    ldh a, [$ffc0]
    ldh a, [rNR41]
    ld d, b
    jr nz, @+$4a

    jr nc, jr_00d_6830

    nop
    rra
    nop
    ld a, b
    rlca
    cp $39
    sbc a
    ld h, [hl]
    and l
    ld e, e
    ld e, d
    dec a
    ld a, l
    ld a, $7d
    ld l, $c0
    nop
    jr nc, jr_00d_67d5

    ld [$18f0], sp
    ldh a, [$ff9c]
    ld a, b
    db $fc
    cp b
    ld [hl], h
    cp b
    call nz, Call_00d_7f38
    ld l, $ff
    ld l, [hl]
    ld a, a
    ld a, $3f
    ld e, $1b
    ld b, $37
    rrca
    add hl, hl

jr_00d_682e:
    ld e, $1c

jr_00d_6830:
    inc bc
    inc b
    ld hl, sp-$3c
    cp b
    call nz, $84b8
    ld a, b
    add h
    ld a, b
    add h
    ld a, b
    add h
    ld a, b
    ret z

    jr nc, jr_00d_686e

    inc de
    cpl
    ld de, $1837
    rra
    rrca
    rrca
    nop
    db $10
    rrca
    rrca
    nop
    nop
    nop
    ldh a, [rP1]
    ldh [$ff80], a
    or b
    ld h, b
    ldh [$ffc0], a
    ret nz

    nop
    ret nz

    nop
    add b
    nop
    nop
    nop
    ld a, a
    ld l, $ff
    ld l, [hl]
    ld a, a
    ld a, $3f
    ld e, $1b
    ld b, $37
    rrca
    add hl, hl

jr_00d_686e:
    ld e, $16
    add hl, bc
    inc b
    ld hl, sp-$3c
    cp b
    call nz, $84b8
    ld a, b
    add h
    ld a, b
    add h
    ld a, b
    add h
    ld a, b
    ld c, b
    or b
    cpl
    db $10
    cpl
    db $10
    dec sp
    inc e
    ld a, a
    rlca
    ld b, a
    jr c, jr_00d_68be

    inc c
    inc c
    nop
    nop
    nop
    ldh a, [$ffc0]
    ldh a, [rNR41]
    ldh a, [rNR41]
    add sp, -$30
    ret nc

    jr nz, jr_00d_68fc

    nop
    nop
    nop
    nop
    nop
    ld a, a
    ld l, $ff
    ld l, [hl]
    ld a, a
    ld a, $3f
    ld e, $1b
    ld b, $37
    rrca
    dec hl
    inc e
    rla
    ld [$f804], sp
    call nz, $c4b8
    cp b
    add h
    ld a, b
    add h
    ld a, b
    add h
    ld a, b
    add h

jr_00d_68be:
    ld a, b
    ret z

    jr nc, jr_00d_68e5

    inc e
    ccf
    jr @+$41

    nop
    ld e, a
    cpl
    cpl
    db $10
    add hl, de
    nop
    ld bc, $0000
    nop
    ldh a, [rP1]
    ldh [rP1], a

jr_00d_68d5:
    ld [hl], b
    ldh [$ffe0], a
    add b
    sub b
    ld h, b
    db $10
    ldh [$ffe0], a
    nop
    nop
    nop
    inc bc
    nop
    inc c
    inc bc

jr_00d_68e5:
    ld a, [de]
    rlca
    dec d
    ld c, $39
    ld c, $2c
    rra
    inc l
    rra
    cpl
    rra
    ldh [rP1], a
    jr jr_00d_68d5

    xor h
    ld [hl], b
    call nc, $ce38
    jr c, @-$64

jr_00d_68fc:
    ld a, h
    ld a, [de]
    db $fc
    ld a, d
    db $fc
    daa
    rra
    ld hl, $201f
    rra
    jr nz, jr_00d_6928

    ld [hl+], a
    dec e
    ld [hl-], a
    dec c
    ld [hl-], a
    dec c
    dec sp
    inc b
    ldh a, [c]
    db $fc
    jp nz, $02fc

    db $fc
    ld [bc], a
    db $fc
    ld b, $f8
    ld h, $d8
    ld h, $d8
    ld l, [hl]
    sub b
    dec a
    ld [de], a
    dec de
    inc b
    rrca
    inc b
    rlca

jr_00d_6928:
    inc bc
    rlca
    nop
    add hl, bc
    ld b, $06
    nop
    nop
    nop
    sbc $24
    db $ec
    db $10
    ld hl, sp+$10
    ldh a, [$ffe0]
    ldh a, [rP1]
    ld c, b
    jr nc, jr_00d_696e

    nop
    nop
    nop
    daa
    rra
    ld hl, $201f
    rra
    jr nz, jr_00d_6968

    ld [hl+], a
    dec e
    ld [hl-], a
    dec c
    ld [hl-], a
    dec c
    dec de
    inc b
    ldh a, [c]
    db $fc
    jp nz, $02fc

    db $fc
    ld [bc], a

Call_00d_6958:
    db $fc
    ld b, $f8
    ld h, $d8
    ld h, $d8
    ld l, d
    sub h
    dec c
    ld [bc], a
    dec bc
    inc b
    rrca
    inc b
    rlca

jr_00d_6968:
    inc bc
    rlca
    nop
    add hl, bc
    ld b, $09

jr_00d_696e:
    ld b, $06
    nop
    sbc $24
    db $ec
    db $10
    cp b
    ld [hl], b
    ldh a, [$ffc0]
    add sp, $10
    ld [hl], b
    nop
    nop
    nop
    nop
    nop
    daa
    rra
    ld hl, $201f
    rra
    jr nz, jr_00d_69a8

    ld [hl+], a
    dec e
    ld [hl-], a
    dec c
    ld [hl-], a
    dec c
    dec hl
    inc d
    ldh a, [c]
    db $fc
    jp nz, $02fc

    db $fc

jr_00d_6997:
    ld [bc], a
    db $fc
    ld b, $f8
    ld h, $d8
    ld h, $d8
    ld l, h
    sub b
    dec a
    ld [de], a
    dec de
    inc b
    ld c, $07
    rlca

jr_00d_69a8:
    ld bc, $040b
    rlca
    nop
    nop
    nop
    nop
    nop
    ret c

    jr nz, @-$16

    db $10
    ld hl, sp+$10
    ldh a, [$ffe0]
    ldh a, [rP1]
    ld c, b
    jr nc, jr_00d_6a06

    jr nc, @+$32

    nop
    nop
    nop
    inc bc
    nop
    inc b
    inc bc
    dec bc
    rlca
    inc c
    inc bc
    ld d, $0f
    inc l
    rra
    dec [hl]
    ld e, $00
    nop
    ret nz

    nop
    jr nz, jr_00d_6997

    sub b
    ldh [rBCPS], a
    sub b
    sbc b
    ld h, b
    xor h
    ld [hl], b
    call c, $4bb0
    dec [hl]
    ld e, a
    dec hl
    ld l, e
    dec a
    ld l, a
    dec a
    dec hl
    dec e
    cpl
    rla
    rla
    ld [$031f], sp
    db $e4
    ret c

    db $f4
    add sp, -$54
    ld a, b

jr_00d_69f7:
    db $ec
    ld a, b
    xor b
    ld [hl], b
    add sp, -$30
    ret nc

    jr nz, @-$0e

    add b
    ccf
    inc de
    ld a, h
    inc hl
    ld a, b

jr_00d_6a06:
    scf
    ld a, $0f
    dec c
    ld [bc], a
    rrca
    ld b, $1f
    ld c, $1e
    nop
    ld hl, sp-$70
    ld a, h
    adc b
    inc a
    ret c

    ld hl, sp-$20
    ld h, b
    add b
    ldh [$ffc0], a
    ldh a, [$ffe0]
    ldh a, [rP1]
    nop
    nop
    inc bc
    nop
    inc b
    inc bc
    dec bc
    rlca
    inc c
    inc bc
    ld d, $0f
    inc l
    rra
    dec [hl]
    ld e, $00
    nop
    ret nz

    nop
    jr nz, jr_00d_69f7

    sub b
    ldh [rBCPS], a
    sub b
    sub h
    ld l, b
    xor h
    ld [hl], b
    call c, $4bb0
    dec [hl]
    ld e, a
    dec hl
    ld l, e
    dec a
    ld l, a
    dec a
    dec hl
    dec e
    cpl
    rla
    rla
    ld [$137f], sp
    db $e4
    ret c

    or $e8
    xor l
    ld a, d
    xor $78
    xor b
    ld [hl], b
    add sp, -$30
    ret nc

    jr nz, @-$06

    add b
    rst $38
    ld h, e
    db $fc
    ld h, e
    ld a, b
    rla
    dec e
    rrca
    dec bc
    inc b
    dec e
    ld c, $0f
    nop
    nop
    nop
    ld hl, sp-$70
    ld a, h
    sbc b
    db $fc
    add sp, $38
    ret nz

    ld [hl], b
    ldh [$ff90], a
    ldh [rNR41], a
    ret nz

    ret nz

    nop
    nop
    nop
    ld bc, $0200
    ld bc, $0305
    ld c, $01
    dec bc
    rlca
    ld d, $0f
    ld a, [de]
    rrca
    nop
    nop
    ldh [rP1], a
    db $10
    ldh [$ffc8], a
    ldh a, [$ff38]
    ret nz

    ld c, h
    or b
    ld d, h
    cp b
    xor $58
    dec h
    ld a, [de]
    ld l, a
    dec d
    or l
    ld e, [hl]
    ld [hl], a
    ld e, $15
    ld c, $17
    dec bc
    dec bc
    inc b
    rra
    ld bc, $ecf2
    ld a, [$d6f4]
    cp h
    or $bc
    call nc, $f4b8
    add sp, -$18
    db $10
    cp $c8
    rra
    add hl, bc
    ld a, $19
    ccf
    rla
    jr jr_00d_6ad0

    ld c, $07
    add hl, bc
    rlca
    inc b
    inc bc
    inc bc

jr_00d_6ad0:
    nop
    rst $38
    add $3f
    add $1e
    add sp, -$48
    ldh a, [$ffd0]
    jr nz, @-$46

    ld [hl], b
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0700
    nop
    jr c, jr_00d_6af2

    ld e, c
    ld a, $a6
    ld a, c
    adc a
    halt
    nop

jr_00d_6af2:
    nop
    ldh a, [rP1]
    inc c
    ldh a, [$ffea]
    call c, Call_000_2ef5
    inc hl
    sbc $d3
    xor $a9
    or $9f
    ld l, [hl]
    ld e, l
    dec hl
    ccf
    dec bc
    dec a
    dec de
    rra
    rrca
    rrca
    rlca
    rlca
    nop
    rlca
    ld [bc], a
    add hl, hl
    or $49
    or [hl]
    ld c, c
    or [hl]
    ld l, c
    sub $69
    sub $5a
    and h
    ld h, h
    add b
    ldh [rP1], a
    rrca
    ld b, $07
    ld [bc], a
    dec b
    ld [bc], a
    inc b
    inc bc
    rlca
    inc bc
    inc bc
    nop
    rlca
    inc bc
    rlca
    nop
    ldh a, [rLCDC]
    ldh a, [$ffc0]
    ldh a, [$ffc0]
    ldh [rP1], a
    ldh a, [$ffe0]
    ld h, b
    add b
    and b
    ret nz

    ldh [rP1], a
    nop
    nop
    nop
    nop
    ld bc, $0700
    nop
    jr c, jr_00d_6b52

    ld e, c
    ld a, $a6
    ld a, c
    adc a
    halt
    nop

jr_00d_6b52:
    nop
    ldh a, [rP1]
    inc c
    ldh a, [$ffea]
    call c, Call_000_2ef5
    dec h
    sbc $d3
    xor $b1
    xor $9f
    ld l, [hl]
    ld e, l
    dec hl
    ccf
    dec bc
    dec a
    dec de
    rra
    rrca
    rrca
    rlca
    rlca
    nop
    rlca
    ld [bc], a
    add hl, hl
    or $49
    or [hl]
    ld c, c
    or [hl]
    ld l, d
    call nc, $d46a
    ld e, h
    and b
    ld h, h
    add b
    ldh a, [rP1]
    rrca
    ld b, $1f
    dec bc
    inc e
    inc bc
    inc c
    rlca
    rla
    dec bc
    dec e
    ld c, $0f
    rlca
    rlca
    nop
    ld hl, sp+$20
    db $fc
    jr @-$02

    jr @+$5a

    and b
    cp h
    ld e, b
    ld hl, sp+$30
    or b
    nop
    nop
    nop
    sbc a
    ld l, [hl]
    ld e, l
    dec hl
    ccf
    dec bc
    dec a
    dec de
    rra
    rrca
    rrca
    rlca
    rlca
    nop
    rlca
    ld bc, $f629
    ld c, c
    or [hl]
    ld c, c
    or [hl]

jr_00d_6bb7:
    ld l, c
    sub $6a
    call nc, $a854
    ld a, b
    add b
    ld hl, sp+$00
    rrca
    ld b, $0f
    ld b, $06
    ld bc, $0207
    dec e
    ld [bc], a
    rra
    ld c, $0e
    nop
    nop
    nop
    db $fc
    ld [$00fc], sp
    jr jr_00d_6bb7

    inc a
    ldh a, [$ffee]
    call c, $18fc
    ld a, b
    jr nc, jr_00d_6c50

    nop
    nop
    nop
    inc bc
    nop
    inc b
    inc bc
    ld [$1207], sp
    rrca
    dec d
    rrca
    dec h
    rra
    ld hl, $001f
    nop
    ret nz

    nop
    jr nz, jr_00d_6bb7

    db $10
    ldh [$ff50], a
    ldh [$ff58], a
    ldh [$ff94], a
    add sp, $14
    add sp, $20
    rra
    jr nc, jr_00d_6c14

    ld [hl-], a
    dec c
    ld a, [hl+]
    dec d
    ld a, [de]
    dec b
    ld d, $09
    ld d, $09
    rrca
    nop
    ld [de], a
    db $ec
    ld [de], a

jr_00d_6c14:
    db $ec
    ld d, $ec
    ld h, $dc
    ld b, h
    cp b
    ld d, h
    xor b
    db $f4
    ld [$00f8], sp
    rra
    ld [$183f], sp
    ccf
    db $10
    inc e
    inc bc
    rrca
    rlca
    ld b, $01
    rlca
    inc bc
    rlca
    nop
    db $fc
    ld [$0cfe], sp
    cp $04
    inc e
    ldh [$fff8], a
    ld [hl], b
    or b
    ld b, b
    ldh a, [$ff60]
    ld [hl], b
    nop
    ld bc, $0200
    ld bc, $0304
    ld [$0b07], sp
    rlca
    ld a, [de]
    rlca
    inc d
    rrca
    db $10

jr_00d_6c50:
    rrca
    ldh [rP1], a
    db $10
    ldh [$ff08], a
    ldh a, [$ff88]
    ldh a, [$ff6c]
    ldh a, [$ffca]
    db $f4
    adc d
    db $f4
    add hl, bc
    or $14
    dec bc
    inc h
    dec de
    add hl, hl
    ld d, $52
    dec l
    push hl
    ld a, [de]
    ccf
    nop
    rra
    inc b
    rra
    inc c
    add hl, bc
    or $13
    xor $33
    adc $62
    sbc h
    add [hl]
    ld a, b
    ld a, [$fe04]
    nop
    rst $38
    inc b
    rra
    inc c
    rrca
    nop
    ld b, $01
    rlca
    inc bc
    inc bc
    nop
    dec b
    inc bc
    rlca
    ld [bc], a
    inc bc
    nop
    rst $38
    ld [bc], a
    cp $00
    inc b
    ld hl, sp-$08
    or b
    ld h, h
    sbc b
    ret c

    add b
    ret nz

    nop
    add b
    nop
    inc bc
    nop
    inc b
    inc bc
    ld [$1107], sp
    rrca
    inc de
    rrca
    ld a, [hl+]
    rla
    ld a, [hl+]
    rla
    jr z, @+$19

    ret nz

    nop
    jr nz, @-$3e

    db $10
    ldh [$ff50], a
    ldh [rOBP0], a
    ldh a, [$ffac]
    ldh a, [$ff8c]
    ldh a, [$ff0a]
    db $f4
    jr z, jr_00d_6cda

    inc l
    inc de
    inc [hl]
    dec bc
    ld d, $09
    rla
    ld [$0817], sp
    rra
    nop
    ccf
    ld [$d42a], sp
    ld l, $d4
    sbc [hl]
    ld h, h

jr_00d_6cd7:
    ld c, d
    or h
    and [hl]

jr_00d_6cda:
    ld e, b
    ld a, [$fe04]
    ld [$0cfe], sp
    ccf
    db $10
    rra
    nop
    inc c
    inc bc
    rlca
    inc bc
    add hl, bc
    ld b, $06
    nop
    nop
    nop
    nop
    nop
    cp $0c
    db $fc
    nop
    jr jr_00d_6cd7

    ld hl, sp+$70
    or b
    ld b, b
    add sp, $70
    ld hl, sp+$10
    ld [hl], b
    nop
    rlca
    nop
    ld [$1407], sp
    rrca
    cpl
    inc e
    ld e, e
    inc a
    ld a, e
    dec a
    or a
    ld a, e
    xor a
    ld [hl], a
    add b
    nop
    ld [hl], b
    add b
    add sp, -$10
    ld [hl], h
    ld hl, sp-$44
    ld a, b
    jp c, $eabc

    call c, $eef5
    rst $38
    ld c, c
    rst $38
    dec l
    ld a, a
    add hl, bc
    ld a, a
    daa
    scf
    add hl, bc
    rrca
    rlca
    jr @+$11

jr_00d_6d2f:
    inc a
    dec de
    rst $38
    ld h, $ff
    ld l, d
    cp $24
    db $fc
    ret z

    db $ec
    db $10
    ld hl, sp-$20
    jr jr_00d_6d2f

    inc a
    ret c

    ld a, a
    inc sp
    ld a, b
    daa
    jr c, jr_00d_6d4e

    ld [$0707], sp
    ld [bc], a
    add hl, bc
    ld b, $0e

jr_00d_6d4e:
    nop

jr_00d_6d4f:
    nop
    nop
    cp $cc
    ld e, $e4
    inc e
    ldh [rNR10], a
    ldh [$ffe0], a
    ld b, b
    sub b
    ld h, b
    ld [hl], b
    nop
    nop
    nop
    rst $38
    ld c, c
    rst $38
    dec l
    ld a, a
    add hl, bc
    ld a, a
    daa
    scf
    add hl, bc
    rrca
    rlca
    jr @+$11

    inc a
    dec de
    rst $38
    ld h, $ff
    ld l, d

jr_00d_6d75:
    cp $24
    db $fc
    ret z

    db $ec
    db $10
    ld hl, sp-$20
    jr c, jr_00d_6d4f

    inc a
    ret c

    ld a, a
    inc sp
    jr c, jr_00d_6d8c

    ld [$0c07], sp
    inc bc
    dec bc
    inc b
    rlca

jr_00d_6d8c:
    nop
    ld bc, $0000
    nop
    db $fc
    ret c

    jr jr_00d_6d75

    db $10
    ldh [rNR10], a
    ldh [$fff0], a
    nop
    ldh [$ffc0], a
    db $10
    ldh [$fff0], a
    nop
    rst $38
    ld c, c
    rst $38
    dec l
    ld a, a
    add hl, bc
    ccf
    rla
    rla
    add hl, bc
    rra
    rlca
    jr @+$11

jr_00d_6daf:
    inc a
    dec de
    rst $38
    ld h, $ff
    ld l, d

jr_00d_6db5:
    cp $24
    db $fc
    ret z

    db $ec
    db $10
    ld hl, sp-$20
    jr jr_00d_6daf

    ld a, $d8
    ld a, a
    dec de
    ld a, b
    daa
    ld a, b
    daa
    jr z, jr_00d_6dd0

    rrca
    nop
    rlca
    inc bc
    ld [$0f07], sp

jr_00d_6dd0:
    nop
    cp $cc
    inc e
    ldh [rNR10], a
    ldh [$ff30], a
    ret nz

    ret nc

    jr nz, @-$1e

    nop
    add b
    nop
    nop
    nop
    inc bc
    nop
    inc e
    inc bc
    inc l
    rra
    ld e, d
    dec a
    cp a
    ld a, d
    or a
    ld a, e
    or a
    ld a, e
    xor a
    ld [hl], h
    ret nz

    nop
    jr nc, jr_00d_6db5

    add sp, -$10
    db $f4
    ld hl, sp+$7c
    ld hl, sp-$46
    ld a, h

jr_00d_6dfd:
    sbc [hl]
    ld a, h
    adc $bc
    ld a, a
    dec h
    ccf
    inc c
    rrca
    rlca
    rlca
    inc bc
    inc bc
    nop
    rlca
    inc bc
    add hl, bc
    ld b, $08
    rlca
    cp $cc
    rst $38
    add sp, -$08
    rst $10
    di
    adc h
    rst $38
    jp nz, $cfff

    rst $38
    rst $20
    rst $38
    ld h, a
    rlca
    inc bc
    inc b
    inc bc

jr_00d_6e25:
    inc b
    inc bc
    dec b
    ld [bc], a
    inc bc
    nop
    ld [bc], a
    ld bc, $0003
    nop
    nop
    rst $30
    ld b, e
    di
    ld h, c
    pop af
    nop
    pop de
    and b
    ldh [$ff80], a
    jr nz, jr_00d_6dfd

    ldh [rP1], a
    nop
    nop
    add b
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    inc bc
    nop
    inc e
    inc bc
    inc l
    rra
    ld e, d
    dec a
    cp a
    ld a, d
    or a
    ld a, e
    or a
    ld a, e
    xor a
    ld [hl], h
    ret nz

    nop
    jr nc, jr_00d_6e25

    add sp, -$10
    db $f4
    ld hl, sp+$7c
    ld hl, sp-$46
    ld a, h
    sbc [hl]
    ld a, h
    adc $bc
    ld a, a
    dec h
    ccf
    inc c
    rrca
    rlca
    rlca
    inc bc
    inc bc
    nop
    rlca
    inc bc
    ld [$0807], sp
    rlca
    cp $cc
    rst $38
    add sp, -$08
    rst $10
    di
    adc h
    rst $38
    jp nz, $efff

    rst $38
    scf
    ld a, a
    sbc e
    rra
    dec bc
    inc c
    inc bc
    dec b
    ld [bc], a
    dec bc
    dec b
    dec bc
    dec b
    inc c
    inc bc
    inc bc
    nop
    nop
    nop
    cp a
    ret c

    jr @-$1e

    sub b
    ld h, b
    ret c

    and b
    and h
    jr @-$46

    nop
    add b
    nop
    nop
    nop
    add b
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    add b
    nop
    ret nz

    add b
    ret nz

    add b
    add b
    nop
    ld a, a
    dec h
    ccf
    inc c
    rrca
    rlca
    rlca
    inc bc
    inc bc
    nop
    rlca
    inc bc
    add hl, bc
    ld b, $0b
    dec b
    cp $cc
    cp $e8
    ld sp, hl
    sub $f2
    adc h
    db $fc
    ret nz

    cp $6c
    rst $38
    xor $ff
    adc $07
    inc bc
    rlca
    inc bc
    rlca
    nop
    inc c
    inc bc
    dec bc
    ld b, $07
    nop
    nop
    nop
    nop
    nop
    sbc $2c
    sbc [hl]
    ld l, b

jr_00d_6ef5:
    ld e, h
    and b
    db $f4
    ld h, b
    add sp, $30
    adc b
    ld [hl], b
    ldh a, [rP1]
    nop
    nop
    ld bc, $0e00
    ld bc, $0f16
    inc l
    rra
    inc a
    rra
    ld e, [hl]
    ccf
    ld e, a
    ccf
    rst $28
    ld a, a
    ldh [rP1], a
    jr jr_00d_6ef5

    ld h, h
    ld hl, sp+$34
    ld hl, sp+$3a
    db $fc
    ld a, d
    db $fc
    ld a, [$f7fc]
    cp $ff
    ld a, a
    rst $38
    ld [hl], c
    ld [hl], c
    ld l, $3c
    inc de
    rra
    inc c
    rra
    ld bc, $0b3f
    ccf
    dec de
    rst $38
    cp $ff
    adc [hl]
    adc [hl]
    ld [hl], h
    inc a
    ret z

    ld hl, sp+$30
    ld hl, sp-$80
    db $fc
    ret nc

    db $fc
    ret c

    ld a, a
    inc sp
    ld a, e
    dec h
    dec sp
    dec b
    rrca
    ld bc, $0207
    add hl, bc
    ld b, $06
    nop
    nop
    nop
    cp $cc
    sbc $a4
    sbc h
    ld h, b
    ldh a, [rP1]
    ldh [rLCDC], a
    sub b
    ld h, b

jr_00d_6f5d:
    ld h, b
    nop
    nop
    nop
    rst $38
    ld a, a
    rst $38
    ld [hl], c
    ld [hl], c
    ld l, $3c
    inc de
    rra
    inc b
    rrca
    inc bc
    ccf
    add hl, bc
    ld a, l
    ld a, [hl-]
    rst $38
    cp $ff
    adc [hl]
    adc [hl]
    ld [hl], h
    inc a
    ret z

    ld hl, sp+$20
    ldh a, [$ffc0]
    ld hl, sp-$20
    db $fc

jr_00d_6f80:
    add sp, $7f
    ld sp, $0334
    ld a, [bc]
    dec b
    add hl, bc
    ld b, $07
    nop
    ld bc, $0100
    nop
    nop
    nop
    db $fc
    ld l, b
    ld a, b
    and b
    ld a, h
    or b
    ldh a, [rP1]
    ldh [$ffc0], a
    jr nz, jr_00d_6f5d

    ret nc

    jr nz, jr_00d_6f80

    nop
    rst $38
    ld a, a
    rst $38
    ld [hl], c
    ld [hl], c
    ld l, $3c
    inc de
    rra
    inc b
    rrca
    inc bc
    rra
    rlca
    ccf
    rla
    rst $38
    cp $ff
    adc [hl]
    adc [hl]
    ld [hl], h
    inc a
    ret z

    ld hl, sp+$20
    ldh a, [$ffc0]
    db $fc
    sub b
    cp [hl]
    ld e, h
    ccf
    ld d, $1e
    dec b
    ld c, $05
    rlca
    nop
    rlca
    inc bc
    inc b
    inc bc
    dec bc
    inc b
    rlca
    nop
    cp $cc
    inc e
    ldh [rNR10], a
    ldh [$ff90], a
    ld h, b
    ldh [rP1], a
    add b
    nop
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    nop
    ld [$1007], sp
    rrca
    inc d
    rrca
    dec l
    ld e, $2f
    dec e
    dec hl
    dec e
    inc hl
    dec e
    ldh a, [rP1]
    adc b
    ld [hl], b
    inc b
    ld hl, sp+$14
    ld hl, sp-$26
    inc a
    ld a, [$ea5c]
    call c, $dce2
    ld c, a
    ld [hl-], a
    sbc a
    ld l, h
    dec e
    and $c7
    ei
    ld b, a
    ld hl, sp+$0b
    or $fa
    rrca
    dec h
    dec de
    ld sp, hl
    and [hl]
    db $fc
    sbc e
    call c, $f1b3
    rst $28
    pop af
    rrca

jr_00d_703b:
    add sp, -$49
    cpl
    ld hl, sp-$2e
    db $ec
    ld a, b
    scf
    ld a, e
    cpl
    dec hl
    rra
    inc l
    rra
    dec de
    rlca
    ld c, $01
    inc bc
    nop
    nop
    nop
    rrca
    or $ef
    ld a, [$fcea]
    ld a, [de]
    db $fc
    db $ec
    ldh a, [$ffb8]
    ld b, b
    ld h, b
    nop
    nop
    nop
    nop
    nop
    ld bc, $0200
    ld bc, $0102
    ld [bc], a
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    nop
    jr nz, @-$3e

    and b
    ret nz

    jr nz, jr_00d_703b

    ld b, b

Jump_00d_707c:
    add b
    add b
    nop
    nop
    nop
    rlca
    nop
    ld [$1007], sp
    rrca
    inc d
    rrca
    dec l
    ld e, $2f
    dec e
    dec hl
    dec e

jr_00d_708f:
    jp Jump_000_0f3d


    ldh a, [c]
    rra
    db $ec
    db $dd
    and $47
    ei
    rlca
    ld hl, sp-$05
    ld b, $6a
    ccf
    ld [hl], l
    dec sp
    ld sp, hl
    or [hl]
    db $fc
    sbc e
    db $dd
    or e
    pop af
    rst $28
    ldh a, [rIF]
    rst $28
    or b
    dec hl
    db $fc
    db $db
    and $38
    rlca
    dec de
    rrca
    dec hl
    rra
    inc l
    rra
    dec de
    rlca
    rrca
    nop
    inc bc
    nop
    nop
    nop
    rrca
    ldh a, [$ffec]
    ld hl, sp+$0a
    db $fc

jr_00d_70c7:
    halt
    ld hl, sp-$68
    ldh [$fff0], a
    nop
    jr nz, jr_00d_708f

    ldh [rP1], a
    ldh a, [rP1]
    adc b
    ld [hl], b
    inc b
    ld hl, sp+$14
    ld hl, sp-$26
    inc a
    ld a, [$ea5c]
    call c, $dee1
    rst $08
    ld [hl], $1f
    db $ec
    db $dd
    and $47
    ei
    rlca
    ld hl, sp-$05
    ld b, $6a
    rra
    ld l, l
    inc sp
    ld hl, sp-$59
    db $fc
    sbc e
    db $dd
    or e
    pop af
    rst $28
    ldh a, [rIF]
    xor $b1
    dec hl
    cp $d7
    xor $80
    nop
    ld b, b
    add b

jr_00d_7105:
    jr nz, jr_00d_70c7

    and b
    ret nz

    jr nz, @-$3e

    ld b, b
    add b
    add b
    nop
    nop
    nop
    ld a, b
    rlca
    dec de
    rrca
    jr z, jr_00d_7136

    scf
    rrca
    inc c
    inc bc
    rlca
    nop
    ld [bc], a
    ld bc, $0003
    ld c, $f0
    db $ec
    ld hl, sp+$6a
    db $fc
    ld a, [de]
    db $fc
    db $ec
    ldh a, [$fff8]
    nop
    ld h, b
    add b
    add b
    nop
    rrca
    nop
    jr nc, @+$11

    ld b, c

jr_00d_7136:
    ccf
    ld b, l
    ccf
    sub [hl]
    ld l, a
    sbc e
    ld h, a
    ld a, h
    dec de
    ld a, $15
    ret nz

    nop
    jr nc, jr_00d_7105

    ld [$a8f0], sp
    ldh a, [$fff4]
    ld hl, sp-$4c
    ld hl, sp+$14
    ld hl, sp+$02
    db $fc
    ccf
    ld [de], a
    ld a, e
    scf
    ccf
    rra
    ld e, $0f
    inc c
    inc bc
    ld [de], a
    rrca
    add hl, de
    rrca
    dec bc
    dec b
    pop hl
    ld e, $c8
    cp a

jr_00d_7165:
    adc $3f
    adc h
    ld a, a
    add b
    ld a, a
    ld b, c
    cp [hl]
    cp [hl]
    ld b, b
    and b
    ld b, b
    nop
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [de]
    dec c
    dec de
    dec c
    inc hl
    ld e, $3e
    rra
    rra
    nop
    inc b
    inc bc
    rlca
    nop
    nop
    nop
    ret nc

    and b
    ret z

    or b
    adc b
    ld [hl], b
    db $10
    ldh [$ffe0], a
    nop
    ret nz

    nop
    add b
    nop
    nop
    nop
    ret nz

    nop
    jr nc, jr_00d_7165

    ld [$a8f0], sp
    ldh a, [$fff4]
    ld hl, sp-$4c
    ld hl, sp+$14
    ld hl, sp+$03
    db $fc
    ccf
    ld [de], a
    ld a, e
    scf
    ccf
    rra
    ld e, $0f
    inc c
    inc bc
    ld [de], a
    rrca
    dec de
    dec c
    ld a, [hl-]
    dec b
    ldh [$ff1f], a
    adc $bf
    adc $3f
    adc h
    ld a, a
    add c
    ld a, [hl]
    ld b, [hl]
    cp b
    ld a, h
    add b
    or b
    ldh [$ff7d], a
    ld l, $39
    rrca
    ld [hl+], a
    rra
    ld e, h
    ccf
    ld a, a
    nop
    inc de
    inc c
    ld c, $00
    nop
    nop
    ld [hl], b
    ldh [$ffe8], a
    db $10
    inc b
    ld hl, sp+$18
    ldh [$fff8], a
    nop
    jr nc, jr_00d_71ed

jr_00d_71ed:
    nop
    nop
    nop
    nop
    ccf
    ld [de], a
    ld a, e
    scf
    ccf
    rra
    ld e, $0f
    inc c
    inc bc
    ld [de], a
    rrca
    dec de
    dec c
    ld e, $0b
    ldh [$ff1f], a

jr_00d_7203:
    adc $bf
    adc $3f
    adc h
    ld a, a
    add c
    ld a, [hl]
    ld b, [hl]
    cp b
    cp h
    ld b, b
    xor b
    ld d, b
    dec c
    ld b, $1f
    ld b, $26
    add hl, de
    ld e, a
    ccf
    ld a, a
    nop
    add hl, de
    nop
    nop
    nop
    nop
    nop
    jr jr_00d_7203

    ld l, b
    ldh a, [$ffc4]
    ld hl, sp+$38
    ret nz

    ret nc

    jr nz, jr_00d_725c

    ret nz

    ldh [rP1], a
    nop
    nop
    nop
    nop
    rlca
    nop
    ld [$1007], sp
    rrca
    inc d
    rrca
    ld l, $1f
    ld l, $1f
    daa
    rra
    nop
    nop
    ldh a, [rP1]
    ld [$04f0], sp
    ld hl, sp+$14
    ld hl, sp+$3a
    db $fc
    ld a, [hl-]
    db $fc
    ld [hl], d
    db $fc
    jr nz, jr_00d_7272

    ld b, b
    ccf
    add b
    ld a, a
    ld h, b
    rst $38

jr_00d_7259:
    ld h, [hl]
    ei

jr_00d_725b:
    ld c, d

jr_00d_725c:
    rst $30

jr_00d_725d:
    dec de
    rst $20
    ld sp, hl
    rlca
    ld [bc], a
    db $fc
    ld bc, $00fe
    rst $38
    inc bc
    rst $38
    inc sp
    rst $28
    add hl, hl
    rst $30
    ld l, h
    di
    ld c, a
    ldh a, [$ff6c]

jr_00d_7272:
    inc de
    jp $f07c


    ld c, a
    ld l, a
    inc de
    ld hl, $181f
    rlca
    rrca
    nop
    inc bc
    nop
    ld a, [de]
    db $e4
    db $e3
    ld e, $07
    ld a, [$e4fa]
    ld b, d
    db $fc
    inc c
    ldh a, [$fff8]
    nop
    ld h, b
    nop
    nop
    nop
    nop
    nop
    ret nz

    nop
    jr nz, jr_00d_7259

    jr nz, jr_00d_725b

    jr nz, jr_00d_725d

    ld b, b
    add b
    add b
    nop
    rlca
    nop
    ld [$1007], sp
    rrca
    inc d
    rrca
    ld l, $1f
    ld l, $1f
    daa
    rra
    ld b, b
    ccf
    ldh a, [rP1]
    ld [$04f0], sp
    ld hl, sp+$14
    ld hl, sp+$3a
    db $fc
    ld a, [hl-]
    db $fc
    ld [hl], d
    db $fc
    ld bc, $80fe
    ld a, a
    ld h, b
    rst $38
    ld h, [hl]
    ei
    ld c, d
    rst $30
    dec bc
    rst $30
    sbc c
    ld h, a
    ld a, h
    inc bc
    inc de
    inc c
    nop
    rst $38
    inc bc
    rst $38
    inc sp
    rst $28
    add hl, hl
    rst $30
    ld l, b
    rst $30
    ld c, h
    di
    rra
    ldh [$ffe6], a
    jr jr_00d_730a

    rla
    ld a, b
    scf
    ld a, a
    ld sp, $0f31
    jr nz, jr_00d_730a

    dec de
    inc b
    inc c
    inc bc
    inc bc
    nop
    dec bc
    or $07
    ld hl, sp-$06
    db $e4
    ld [hl+], a
    db $fc
    ld [bc], a
    db $fc
    inc c
    ldh a, [$ffb8]
    ld b, b
    ldh [rP1], a
    add b
    ld a, a
    ld h, b
    rst $38
    ld h, [hl]
    ei
    ld c, d
    rst $30
    dec bc

jr_00d_730a:
    rst $30
    sbc c
    ld h, a
    ld a, h
    inc bc
    inc sp
    inc c
    nop
    rst $38
    inc bc
    rst $38

jr_00d_7315:
    inc sp
    rst $28
    add hl, hl
    rst $30
    ld l, b
    rst $30
    ld c, h
    di
    rra
    ldh [$ffe4], a
    jr jr_00d_738a

    scf
    jr nc, jr_00d_7334

    cpl
    inc de
    ld [hl+], a
    rra
    jr nz, jr_00d_734a

    jr jr_00d_7334

    ld c, $01
    inc bc
    nop
    ld a, [bc]
    db $f4
    rrca

jr_00d_7334:
    or $ff
    add $46
    ld hl, sp+$02
    db $fc
    ld l, h
    sub b
    sbc b
    ld h, b
    ldh [rP1], a
    inc bc
    nop
    inc c
    inc bc
    rla
    rrca
    inc l
    rra
    add hl, hl

jr_00d_734a:
    rra
    ld d, d
    ccf
    ld b, l
    ld a, [hl-]
    ld c, e
    dec [hl]
    ret nz

    nop
    jr c, jr_00d_7315

    inc h
    ld hl, sp+$72
    cp h
    ld c, d
    cp h
    pop hl
    ld e, [hl]
    pop af
    xor $f9
    or $55
    ld a, [hl+]
    scf
    ld e, $1f
    inc b
    rlca
    inc bc
    rlca
    nop
    dec c
    ld b, $16
    rrca
    dec sp
    dec e
    push de
    cp d
    or $bc
    db $fc
    sub b
    ldh a, [$ffe0]
    ldh a, [rP1]
    ret c

    or b
    inc [hl]
    ld hl, sp+$6e
    call c, Call_000_183f
    rra
    rlca
    ld [$0707], sp
    nop
    rrca

jr_00d_738a:
    inc b
    rra
    ld [$000e], sp
    nop
    nop
    sbc [hl]
    ld l, h
    inc c
    ldh a, [$ff08]
    ldh a, [$fff0]
    nop
    ld hl, sp+$40
    ld a, h
    jr nz, jr_00d_73d6

    nop
    nop
    nop
    ld d, l
    ld a, [hl+]
    scf
    ld e, $1f
    inc b
    rrca
    inc bc
    rlca
    nop
    dec e
    ld b, $3e
    dec de
    ccf
    add hl, de
    push de
    cp d
    or $bc
    db $fc
    sub b
    ld hl, sp-$20
    ldh a, [rP1]
    ret c

    or b
    inc [hl]
    ld hl, sp+$76
    call z, Call_000_001f
    rrca
    rlca
    ld [$0f07], sp
    nop
    rrca
    nop
    ld b, $00
    nop
    nop
    nop
    nop
    sbc h
    ld h, b
    ld [$38f0], sp

jr_00d_73d6:
    ret nz

    db $fc
    jr nc, jr_00d_73d6

    ld b, b
    ld a, b
    nop
    jr nc, jr_00d_73df

jr_00d_73df:
    nop
    nop
    ld d, l
    ld a, [hl+]
    scf
    ld e, $1f
    inc b
    rrca
    inc bc
    rlca
    nop
    dec c
    ld b, $16
    rrca
    scf
    add hl, de
    push de
    cp d
    or $bc

jr_00d_73f5:
    db $fc
    sub b
    ld hl, sp-$20
    ldh a, [rP1]
    call c, Call_000_3eb0
    db $ec
    ld a, [hl]
    call z, Call_000_001f
    ld c, $07
    ld c, $01
    rra
    inc c
    rra
    nop
    rrca
    nop
    ld b, $00
    nop
    nop
    inc e
    ldh [$ff08], a
    ldh a, [$ff08]
    ldh a, [$fff8]
    nop
    ld hl, sp+$00
    jr nc, jr_00d_741d

jr_00d_741d:
    nop
    nop
    nop
    nop
    rlca
    nop
    jr jr_00d_742c

    add hl, hl
    rra
    ld d, d
    dec a
    ld b, [hl]
    add hl, sp
    xor a

jr_00d_742c:
    halt
    sbc a
    ld l, a
    sbc l
    ld l, e
    ret nz

    nop
    jr nc, jr_00d_73f5

    ld c, b
    ldh a, [$ffe4]
    ld hl, sp+$24
    ld hl, sp+$12
    db $fc
    add d
    ld a, h
    add d
    ld a, h
    ld e, a
    dec hl
    ccf
    add hl, de
    rra
    rrca
    rrca
    rlca
    rlca
    nop
    ld a, [bc]
    rlca
    dec c
    ld b, $07
    nop
    jp nz, $e43c

    ret c

    xor b
    ret nc

    ret nc

    jr nz, jr_00d_74ba

    add b
    ret nc

    ldh [$ffd0], a
    ldh [$ff30], a
    ret nz

    add hl, bc
    ld b, $09
    ld b, $08
    rlca
    rrca

jr_00d_7468:
    nop
    inc bc
    nop
    rlca
    inc bc
    rlca
    nop
    nop
    nop
    ldh [$ffc0], a
    ldh a, [$ffc0]
    ret nc

    jr nz, jr_00d_7468

    nop
    ldh [$ff80], a
    ldh [rP1], a
    ldh [rP1], a
    nop
    nop
    ld e, a
    dec hl
    ccf
    add hl, de
    rra
    rrca
    rrca
    rlca
    rlca
    nop
    ld a, [bc]
    rlca
    inc c
    rlca
    dec e
    ld a, [bc]
    jp nz, $e43c

    ret c

    xor b
    ret nc

    ret nc

    jr nz, jr_00d_74fa

    add b
    ret nc

    ldh [$ffb0], a
    ld h, b
    ld hl, sp+$30
    jr jr_00d_74aa

    ld [$0807], sp
    rlca
    rra
    nop
    ccf

jr_00d_74aa:
    inc c
    rra
    nop
    ld b, $00
    nop
    nop
    ld a, b
    and b
    ld a, b
    or b
    jr c, @-$3e

    ld hl, sp+$00
    ld a, b

jr_00d_74ba:
    nop
    jr nc, jr_00d_74bd

jr_00d_74bd:
    nop
    nop
    nop
    nop
    ld e, a
    dec hl
    ccf
    add hl, de
    rra
    rrca
    rrca
    rlca
    rlca
    nop
    ld a, [bc]
    rlca
    dec c
    ld b, $06
    ld bc, $3cc2
    db $e4
    ret c

    xor b
    ret nc

    ret nc

    jr nz, jr_00d_753a

    add b
    ret nc

    ldh [$ff50], a
    ldh [$ffd0], a
    and b
    rrca
    inc bc
    rrca
    inc bc
    rra
    inc b
    ccf
    db $10
    rra
    ld [$000e], sp
    nop
    nop
    nop
    nop
    ld hl, sp+$10
    or b
    ld b, b

jr_00d_74f5:
    db $10
    ldh [$fff8], a
    nop
    ld a, h

jr_00d_74fa:
    db $10
    ld hl, sp+$60
    ldh a, [rP1]
    nop
    nop
    ld bc, $0e00
    ld bc, $0f12
    inc h
    rra
    inc l
    rra
    ld e, h
    ccf
    ld e, h
    ccf
    ld c, [hl]
    ccf
    ldh [rP1], a
    jr jr_00d_74f5

    inc h
    ld hl, sp+$12
    db $fc
    ld a, [de]
    db $fc
    dec c
    cp $1d
    cp $39
    cp $4f
    ccf
    daa
    rra
    inc de
    rrca
    ld [$0607], sp
    ld bc, $060f
    dec de
    rrca
    jr nc, jr_00d_7550

    ld sp, hl
    cp $f2
    db $fc
    ld b, h
    ld hl, sp+$08
    ldh a, [$ff30]

jr_00d_753a:
    ret nz

    ld hl, sp+$30
    db $ec
    ld hl, sp-$7a
    db $fc
    inc a
    dec de
    jr jr_00d_754c

    ld [$0707], sp
    nop
    rrca
    inc b
    rra

jr_00d_754c:
    ld [$000e], sp
    nop

jr_00d_7550:
    nop
    cp $0c
    ld a, h
    ldh a, [$ff08]
    ldh a, [$fff0]
    nop
    ld hl, sp+$40
    ld a, h
    jr nz, @+$3a

    nop
    nop
    nop
    ld c, a
    ccf
    daa
    rra
    inc de
    rrca
    ld [$0607], sp
    ld bc, $061f
    dec sp
    rra
    inc a
    dec de
    ld sp, hl
    cp $f2
    db $fc
    ld b, h
    ld hl, sp+$08
    ldh a, [$ff38]
    ret nz

    db $fc
    jr nc, @-$14

    db $fc
    adc [hl]
    db $f4
    inc e
    inc bc
    ld [$0807], sp
    rlca
    rlca
    nop
    rrca
    nop
    ld b, $00
    nop
    nop
    nop
    nop
    db $fc
    nop
    jr c, @-$0e

    ld [$f8f0], sp
    nop
    ld hl, sp+$60
    db $fc
    nop
    ld a, h
    nop
    jr c, jr_00d_75a1

jr_00d_75a1:
    ld c, a
    ccf
    daa
    rra
    inc de
    rrca
    ld [$0607], sp
    ld bc, $061f
    dec hl
    rra
    jr c, jr_00d_75c8

    ld sp, hl
    cp $f2
    db $fc
    ld b, h
    ld hl, sp+$08
    ldh a, [$ff30]
    ret nz

    db $fc
    jr nc, @-$10

    db $fc
    sbc [hl]
    db $ec
    inc e
    inc bc
    ld [$0807], sp
    rlca
    rrca

jr_00d_75c8:
    nop
    rrca
    ld b, $1f
    nop
    rra
    nop
    ld c, $00
    db $fc
    nop
    jr c, @-$0e

    ld [$f0f0], sp
    nop
    ld hl, sp+$00
    or b
    nop
    nop
    nop
    nop
    nop
    inc c
    nop
    dec bc

jr_00d_75e4:
    inc b
    dec bc
    ld b, $36
    dec bc
    ld e, l
    ld a, $2f
    ld e, $1e
    ld bc, $0f1f
    sbc b
    nop
    ld l, b
    sub b
    add sp, -$50
    and $b8
    db $fd
    sbc [hl]
    ld a, [$3c3c]
    ret nz

    db $fc
    ld hl, sp+$3b
    inc c
    ld l, l
    dec sp
    cpl
    rra
    rla
    dec c
    dec hl
    ld d, $5f
    add hl, sp
    ld e, a
    inc a
    ld l, $13
    xor $98
    db $db
    xor $fa
    db $fc
    db $f4
    ld e, b
    ld l, d
    or h
    db $fd
    adc $fd
    ld e, $ba
    ld h, h
    dec sp
    rrca
    inc de
    inc c
    dec c
    inc bc
    dec bc
    rlca
    dec b
    ld [bc], a
    ld a, [bc]
    rlca
    rra
    inc c
    inc c
    nop
    xor $78
    ld h, h
    sbc b
    sbc b
    ldh [$ffe8], a
    ldh a, [$ffd0]
    jr nz, jr_00d_75e4

    ld [hl], b
    ld a, h
    jr jr_00d_7658

    nop
    dec sp
    rrca
    inc de
    inc c
    dec c

jr_00d_7646:
    inc bc
    dec bc
    rlca
    rlca
    nop
    dec b
    ld [bc], a
    dec b
    ld [bc], a
    inc bc
    nop
    xor $78
    ld h, h
    sbc b
    sbc b
    ldh [$fffc], a

jr_00d_7658:
    ret c

    db $ec
    jr nc, jr_00d_76b4

    jr nz, @+$72

    nop
    nop
    nop
    dec sp
    rrca
    inc de
    inc c
    dec c
    inc bc
    rra
    dec c
    dec de
    ld b, $0d
    ld [bc], a
    rlca
    nop
    nop
    nop
    xor $78
    ld h, h
    sbc b
    sbc b
    ldh [$ffe8], a
    ldh a, [$fff0]
    nop
    ret nc

    jr nz, @+$52

    jr nz, @+$62

    nop
    add hl, de
    nop
    ld d, $09
    ld d, $0b
    rst $28
    ld a, [de]
    cp [hl]
    ld [hl], a
    ld e, a
    dec sp
    inc hl
    inc e
    ccf
    rra
    jr nc, jr_00d_7693

jr_00d_7693:
    ret nc

    jr nz, jr_00d_7646

    ld h, b
    ld a, h
    ldh [$fffa], a
    db $ec
    db $fd
    sbc $d2
    ld a, h
    ld h, h
    cp b
    dec a
    inc de
    ld e, e
    dec a
    ld a, a
    ccf
    ld a, a
    rla
    ld d, [hl]
    cpl
    add hl, hl
    ld e, $1f
    ld bc, $060b
    cp b
    ret nz

    sbc b

jr_00d_76b4:
    ldh a, [$ff90]
    ldh [rNR41], a
    ret nz

    ld a, h
    add b
    ldh a, [c]
    ld a, h
    db $fd
    ld a, $fd
    sbc $1e
    rlca
    dec d
    dec bc
    rrca
    nop
    dec bc
    rlca
    rlca
    nop
    ld [bc], a
    ld bc, $0307
    rlca
    nop
    xor l
    sbc $73
    adc h
    sbc [hl]
    ld h, b
    ret nc

    ldh [$ff60], a
    add b
    ld b, b
    add b
    and b
    ret nz

    ldh [rP1], a
    ld e, $07
    dec d
    dec bc
    rrca
    nop
    dec bc
    rlca
    dec a
    ld [bc], a
    ld [hl], d
    inc a
    ld a, [hl+]
    inc e
    inc e
    nop
    xor l
    sbc $73
    adc h
    sbc [hl]
    ld h, b
    ret c

    ldh [$fff4], a
    ld [$1824], sp
    ld c, b
    jr nc, jr_00d_7730

    nop
    ld e, $07
    dec d
    dec bc
    rrca

jr_00d_7706:
    nop
    dec de
    rlca
    daa
    jr jr_00d_771e

    inc c
    inc c
    nop
    nop
    nop
    xor l
    sbc $73
    adc h
    sbc [hl]
    ld h, b
    ret c

    ldh [$ffec], a
    db $10
    ld d, h
    jr c, jr_00d_7706

jr_00d_771e:
    ld [hl], b
    ld [hl], b
    nop
    inc c
    nop
    rrca
    inc b
    dec bc
    ld b, $3f
    ld [bc], a
    ld e, d
    dec a
    inc l
    rra
    ld e, $07
    dec e

jr_00d_7730:
    dec bc
    sbc b
    nop
    ld a, b
    sub b
    add sp, -$50
    cp $a0
    xor l
    sbc $9a
    db $fc
    inc a
    ldh a, [$ff5c]
    add sp, $3e
    rlca
    ld [hl], l
    dec hl
    scf
    ld [$0718], sp
    daa
    rra
    ld c, a
    ccf
    ld c, a
    ccf
    daa
    rra
    ld a, $f0
    ld d, a
    ld [$08f6], a
    inc c
    ldh a, [$ffe2]
    db $fc
    pop af
    cp $f1
    cp $e2
    db $fc
    jr c, jr_00d_776a

    rla
    ld [$030c], sp
    dec bc
    rlca
    rlca

jr_00d_776a:
    nop
    ld a, [bc]
    rlca
    rra
    inc c
    inc c
    nop
    ld c, $f0
    db $f4
    ld [$e018], sp
    add sp, -$10
    ldh a, [rP1]
    xor b
    ld [hl], b
    ld a, h
    jr @+$1a

    nop
    jr c, jr_00d_778a

    rla
    ld [$030c], sp
    dec bc
    rlca
    rlca

jr_00d_778a:
    nop
    add hl, bc
    ld b, $06
    nop
    nop
    nop
    ld c, $f0
    db $f4
    ld [$e018], sp
    add sp, -$70
    ldh a, [$ff60]
    ret c

    jr nc, jr_00d_7806

    db $10
    jr nc, jr_00d_77a1

jr_00d_77a1:
    jr c, jr_00d_77aa

    rla
    ld [$030c], sp
    dec bc
    inc b
    rlca

jr_00d_77aa:
    inc bc
    dec c
    ld b, $0b
    inc b
    ld b, $00
    ld c, $f0
    db $f4
    ld [$e018], sp
    add sp, -$10
    ldh a, [rP1]
    ret z

    jr nc, jr_00d_77ee

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc c
    nop
    dec bc
    inc b
    dec bc
    ld b, $36
    dec bc
    ld e, l
    ld a, $2f
    ld e, $00
    nop
    nop
    nop
    sbc b
    nop
    ld l, b
    sub b
    add sp, -$50
    and $b8
    db $fd
    sbc [hl]
    ld a, [$1e3c]
    ld bc, $0f1f
    dec sp
    inc c
    ld l, l
    dec sp
    cpl
    rra
    rla
    dec c
    dec bc

jr_00d_77ee:
    ld b, $0f
    ld bc, $c03c
    db $fc
    ld hl, sp-$12
    sbc b
    db $db
    xor $fa
    db $fc
    db $f4
    ld e, b
    ld l, b
    or b
    ld hl, sp-$40
    rla
    inc c
    ld e, $0d
    dec de

jr_00d_7806:
    inc c
    rla
    dec bc
    rrca
    inc bc
    rra
    inc c
    inc d
    rrca
    rrca
    nop
    db $f4
    jr jr_00d_7850

    ret c

    ld l, h
    sbc b
    db $f4
    ld l, b
    ld hl, sp+$60
    ld a, h
    sbc b
    sub h
    ld a, b
    ld a, b
    nop
    ld bc, $0600
    ld bc, $040b
    dec d
    dec bc
    dec de
    rlca
    cpl
    rla
    dec hl
    rla
    ld e, $01
    ret nz

    nop
    jr nc, @-$3e

    add sp, $10
    ld d, h
    add sp, -$14
    ldh a, [$fffa]
    db $f4
    ld [$bcf4], a
    ret nz

    ccf
    inc d
    ccf
    dec d
    rra
    ld b, $1f
    nop
    rra
    ld bc, $1827
    ld b, a
    dec a
    ld [hl], a

jr_00d_7850:
    dec c
    cp $14
    cp $d4
    db $fc
    or b
    db $fc
    nop
    db $fc
    ld b, b
    ldh a, [c]
    inc c
    pop af
    sbc $f7
    ret c

    ld a, [hl]
    dec [hl]
    scf
    inc c
    ld d, $0d
    inc c
    inc bc
    rrca
    nop
    rra
    nop
    ld c, $00
    nop
    nop
    ccf
    sub $f6
    jr jr_00d_78aa

    ret c

    sbc b
    ld h, b
    ld a, b
    nop
    ld a, h
    nop
    jr c, jr_00d_787f

jr_00d_787f:
    nop
    nop
    ccf
    inc d
    ccf
    dec d
    rra
    ld b, $1f
    nop
    cpl
    ld de, $1867
    rst $30
    ld l, l
    rst $30
    ld l, l
    cp $14
    cp $d4
    db $fc
    or b
    db $fc
    nop
    db $fc
    ld b, b
    ldh a, [c]
    inc c

jr_00d_789d:
    di
    call c, $daf7
    ld a, [hl]
    dec b
    rla
    inc c
    ld d, $0d
    inc c
    inc bc
    rra

jr_00d_78aa:
    nop
    inc c
    nop
    nop
    nop
    nop
    nop
    ld a, $d0
    db $f4
    jr jr_00d_78ea

    ret c

    sbc b
    ld h, b

jr_00d_78b9:
    ld a, h
    nop
    ld a, h
    nop
    jr c, jr_00d_78bf

jr_00d_78bf:
    nop
    nop
    ld a, a
    jr z, jr_00d_7943

    dec hl
    ccf
    dec c
    ccf
    nop
    ccf
    ld [bc], a
    ld c, a
    jr nc, jr_00d_789d

    dec sp
    rst $28

jr_00d_78d0:
    ld e, e
    db $fc
    jr z, jr_00d_78d0

    xor b
    ld hl, sp+$60
    ld hl, sp+$00
    db $f4
    adc b
    and $18
    rst $28
    or [hl]
    rst $28
    or [hl]
    ld a, h
    dec bc
    cpl
    jr @+$2e

    dec de
    add hl, de
    ld b, $3e

jr_00d_78ea:
    nop
    ld a, $00
    inc e
    nop
    nop
    nop
    ld a, [hl]
    and b
    add sp, $30
    ld l, b
    or b
    jr nc, jr_00d_78b9

    ld hl, sp+$00
    jr nc, jr_00d_78fd

jr_00d_78fd:
    nop
    nop
    nop
    nop
    rlca
    nop
    ld c, $01
    inc de
    inc c
    ld l, $1f
    ccf
    rra
    ld a, $1f
    add hl, hl
    ld e, $1e
    ld bc, $0080
    ld h, b
    add b
    ld e, b
    and b
    xor h
    ld d, b
    ld d, h
    xor b
    ld b, h
    cp b
    xor d
    ld d, h
    sub $28
    rla
    dec c
    rla
    rrca
    rrca
    nop
    dec c
    ld b, $0f
    nop
    rlca
    ld [bc], a
    rrca
    dec b
    rrca

jr_00d_7930:
    dec b
    cp $c0
    cp $a0
    db $fc
    jr nz, jr_00d_7930

    nop
    ld hl, sp+$70
    add h
    ld hl, sp+$44
    cp b
    ld a, h
    add b
    ld d, $0b

jr_00d_7943:
    ld e, $03
    ld e, $03
    rlca
    nop
    rrca
    nop
    rrca
    nop
    ld bc, $0000
    nop
    ld hl, sp+$60
    ld hl, sp+$60
    ld l, b
    sub b
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    nop
    nop
    rla
    dec c
    rla
    rrca
    rrca
    nop
    dec c
    ld b, $0f
    nop
    rra
    ld a, [bc]
    ccf
    dec d
    rra

jr_00d_7970:
    dec b
    cp $c0
    cp $a0
    db $fc
    jr nz, jr_00d_7970

    nop
    ld hl, sp+$70
    add h
    ld hl, sp+$02
    db $fc
    ld l, $d0
    ld e, $03
    ld e, $03
    ld a, $03
    ccf
    nop
    rra
    nop
    rrca
    nop
    ld b, $00
    nop
    nop
    inc a
    ret c

    inc a
    ret c

    jr @-$1e

    db $fc
    nop
    db $fc
    nop
    jr c, jr_00d_799d

jr_00d_799d:
    nop
    nop
    nop
    nop
    rla
    dec c
    rla
    rrca
    rrca
    nop
    dec c
    ld b, $0f
    nop
    dec b
    ld [bc], a
    dec bc
    inc b
    rrca

jr_00d_79b0:
    ld [bc], a
    cp $c0
    cp $a0

jr_00d_79b5:
    db $fc
    jr nz, jr_00d_79b0

    nop
    ld hl, sp+$70
    add [hl]
    ld a, b
    rlca
    ld a, [$f81e]
    ld e, $0d
    rra
    nop
    ld a, $03
    ccf
    nop
    ld e, $00
    inc c
    nop
    nop
    nop
    nop
    nop
    ld c, b
    or b
    cp b
    ld [hl], b
    ld [$fcf0], sp
    nop
    ld a, h
    nop
    ld hl, sp+$00
    ldh a, [rP1]
    nop
    nop
    ld bc, $0600
    ld bc, $030c
    dec d
    ld a, [bc]
    ld [hl+], a
    dec e
    scf
    ld [$142b], sp
    rla
    ld [$00c0], sp
    jr nc, jr_00d_79b5

    jr @-$1e

    ld d, h
    xor b
    and d
    ld e, h
    or $08
    ld [$f414], a
    ld [$103f], sp
    ccf
    db $10
    rra
    nop
    rrca
    nop
    inc d
    dec bc
    inc hl
    inc e
    ld d, b
    cpl

jr_00d_7a0f:
    ld [hl], e
    rrca
    cp $04
    cp $04
    db $fc
    nop
    ld hl, sp+$00
    inc d
    add sp, -$1e
    inc e
    add l
    ld a, [$f8e7]
    ld [hl], b
    cpl
    inc sp
    rrca
    db $10
    rrca
    inc c
    inc bc
    rra
    nop
    rrca
    nop
    ld b, $00
    nop
    nop
    add a
    ld a, [$f866]
    inc b
    ld hl, sp+$18
    ldh [$fffc], a
    nop
    ld a, b
    nop
    jr nc, jr_00d_7a3f

jr_00d_7a3f:
    nop
    nop
    ld a, a
    jr nz, jr_00d_7ac3

    jr nz, jr_00d_7a85

    nop
    rra
    nop
    jr c, jr_00d_7a52

    ld b, a
    jr c, jr_00d_7a0f

    ccf
    rst $20
    ld e, a
    db $fc

jr_00d_7a52:
    ld [$08fc], sp
    ld hl, sp+$00
    ld hl, sp+$00
    inc h
    ret c

    add $38
    rrca
    or $cf
    or $71
    rrca
    ld h, $1f
    jr nz, jr_00d_7a86

    db $10
    rrca
    rra
    nop
    ld a, $00
    ld a, $00
    inc e
    nop
    ld e, $e0
    ret z

    ldh a, [$ff08]
    ldh a, [$ff78]
    add b
    ldh a, [rP1]
    ld h, b
    nop
    nop
    nop
    nop
    nop
    ccf
    db $10
    ccf
    db $10

jr_00d_7a85:
    rra

jr_00d_7a86:
    nop
    rra
    nop
    inc h
    dec de
    ld h, e
    inc e
    ldh a, [$ff6f]
    di
    ld l, a
    cp $04
    cp $04
    db $fc
    nop
    ld hl, sp+$00
    inc e
    ldh [$ffe2], a
    inc e
    add e
    db $fc
    rst $20
    ld a, [$0778]
    inc de
    rrca
    db $10
    rrca
    ld e, $01
    rrca
    nop
    ld b, $00
    nop
    nop
    nop
    nop
    adc [hl]
    ldh a, [$ff64]
    ld hl, sp+$04
    ld hl, sp+$08
    ldh a, [$fff8]
    nop
    ld a, h
    nop
    ld a, h
    nop
    jr c, jr_00d_7ac1

jr_00d_7ac1:
    nop
    nop

jr_00d_7ac3:
    nop
    nop
    nop
    nop
    inc bc
    nop
    ld c, $01
    add hl, de
    ld c, $3e
    rra
    dec l
    ld e, $00
    nop
    nop
    nop
    nop
    nop
    ldh [rP1], a
    jr c, @-$3e

    ld c, h
    cp b
    cp [hl]
    ld a, h
    jp c, Jump_000_233c

    dec e
    inc hl
    dec e
    rra
    inc bc
    ccf
    ld d, $5f
    ld h, $67
    dec sp
    ld c, a
    inc [hl]
    ld e, a
    dec h
    ldh [c], a
    call c, $dce2
    db $fc
    ldh [$fffe], a
    or h
    db $fd
    or d
    di
    xor $f9
    ld d, $fd
    jp nc, Jump_000_153e

    inc a
    inc de
    db $10
    rrca
    inc de
    inc c
    dec c
    ld [bc], a
    ld e, $0c
    inc c
    nop
    nop
    nop
    ld a, $d4
    ld e, $e4
    inc b
    ld hl, sp-$1c
    jr jr_00d_7b72

    jr nz, jr_00d_7b58

    jr jr_00d_7b36

    nop
    nop
    nop
    inc hl
    dec e
    inc hl
    dec e
    rra
    inc bc
    ccf
    ld d, $5f
    ld h, $67
    dec sp
    ld a, a
    inc b
    ld a, a
    dec [hl]
    ldh [c], a
    call c, $dce2
    db $fc

jr_00d_7b36:
    ldh [$fffe], a
    or h
    db $fd
    or d
    di
    xor $fd
    ld [de], a
    rst $38
    call nc, Call_000_153e
    inc e
    inc bc
    ld [$0b07], sp
    inc b
    rlca
    ld [bc], a
    ld b, $00
    nop
    nop
    nop
    nop
    ccf
    sub $1e
    ldh [$ff7c], a
    sbc b
    or h

jr_00d_7b58:
    jr jr_00d_7b82

    db $10
    stop
    nop
    nop
    nop
    nop
    inc hl
    dec e
    inc hl
    dec e
    rra
    inc bc
    ccf
    ld d, $5f
    ld h, $67
    dec sp
    ld e, a
    inc h
    ld a, a
    dec d
    ldh [c], a

jr_00d_7b72:
    call c, $dce2
    db $fc
    ldh [$fffe], a
    or h
    db $fd
    or d
    di
    xor $ff
    db $10
    rst $38
    sub $7e

jr_00d_7b82:
    dec [hl]
    inc a
    inc bc
    rra
    inc c
    ld d, $0c
    ld a, [bc]
    inc b
    inc b
    nop

jr_00d_7b8d:
    nop
    nop
    nop
    nop
    ld a, $d4
    inc e
    ldh [$ff08], a
    ldh a, [$ffe8]
    db $10
    ld [hl], b
    jr nz, jr_00d_7bcc

    nop
    nop
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
    nop
    inc e
    inc bc
    ld [hl], $1b
    ld h, a
    dec sp
    ld c, h
    inc sp
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    nop
    ld [hl], b
    add b
    jr z, jr_00d_7b8d

    db $ec
    ret c

    or h
    ret c

    ld e, h
    dec hl
    ccf
    inc c
    rra
    dec bc
    rra
    dec bc
    rra
    rrca
    rrca

jr_00d_7bcc:
    rlca
    rlca
    ld bc, $0207
    ld [hl+], a
    call c, Call_000_1ce2
    jp nz, $e43c

    ld e, b
    db $ec
    ld d, b
    sbc $28
    ld sp, hl
    ld d, $f5
    adc $0f
    inc b
    rrca
    inc b
    dec c
    ld [bc], a
    ld [$0707], sp
    nop
    rlca
    inc bc
    inc bc
    nop
    nop
    nop
    rst $38
    add $f7
    ld b, d
    jp nc, $90a0

    ld h, b
    ld h, b
    add b
    ldh [$ffc0], a
    ret nz

    nop
    nop
    nop
    ld e, h
    dec hl
    ccf
    inc c
    rra
    dec bc
    rra
    dec bc
    rra
    rrca
    rrca
    rlca
    ccf
    ld bc, $1a3f
    ld [hl+], a
    call c, Call_000_1ce2
    jp nz, $e43c

    ld e, b
    db $ec
    ld d, b
    sbc $28
    ld sp, hl
    ld b, $fd
    or $1f
    inc b
    ld c, $05
    inc a
    inc bc
    inc a
    dec de
    rra
    inc c
    rrca
    ld b, $06
    nop
    nop
    nop
    rst $38
    sub $df
    ld [hl+], a
    ld a, [hl+]
    ret nc

    ld a, h
    adc b
    ld hl, sp+$30
    jr nc, jr_00d_7c3d

jr_00d_7c3d:
    nop
    nop
    nop
    nop
    ld e, h
    dec hl
    ccf
    inc c
    rra
    dec bc
    rra
    dec bc
    rra
    rrca
    rrca
    rlca
    rlca
    nop
    rrca
    inc bc
    ld [hl+], a
    call c, Call_000_1ce2
    jp nz, $e43c

    ld e, b
    db $ec
    ld d, b
    sbc $28
    ld sp, hl
    ld d, $f5
    adc [hl]
    rra
    dec bc
    rrca
    nop
    ld [$1f07], sp
    ld [$060f], sp
    ld b, $00
    nop
    nop
    nop
    nop
    rst $18
    and [hl]
    sub a
    ld h, d
    ld a, [de]
    ldh [$ff0c], a
    ld hl, sp-$04
    jr jr_00d_7cf4

    jr nc, jr_00d_7cae

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
    nop
    inc c
    inc bc
    inc de
    rrca
    ld d, $0f
    inc h
    rra
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [rP1], a
    jr @-$1e

    ld h, h
    ld hl, sp+$34
    ld hl, sp+$12
    db $fc
    ld h, $1f
    daa
    rra
    ld hl, $781f
    daa
    inc a
    dec bc
    inc l
    inc de
    ld c, e

jr_00d_7cae:
    inc a
    ld e, a
    ld a, [hl-]
    ld [hl-], a
    db $fc
    ldh a, [c]
    db $fc
    jp nz, $0ffc

    ldh a, [c]
    ld e, $e8
    ld a, [de]
    db $e4
    jp hl


    ld e, $fd
    xor [hl]
    ccf
    ld a, [de]
    ld a, [hl-]
    dec d
    db $10
    rrca
    ld de, $0e0e
    nop
    ld a, [de]
    inc c
    inc c
    nop
    nop
    nop
    cp $2c
    ld l, $d4
    inc b
    ld hl, sp-$3c
    jr c, @+$3a

    nop
    inc l
    jr @+$1a

    nop
    nop
    nop
    ld h, $1f
    daa
    rra
    ld hl, $781f
    daa
    inc a
    dec bc
    inc l
    inc de
    ld c, e
    inc a
    ld e, a
    ld a, [hl-]
    ld [hl-], a
    db $fc
    ldh a, [c]

jr_00d_7cf4:
    db $fc
    jp nz, $0ffc

    ldh a, [c]
    ld e, $e8
    ld a, [de]
    db $e4
    jp hl


    ld e, $fd
    xor [hl]
    ccf
    ld a, [de]
    ld a, [hl-]
    dec d
    jr jr_00d_7d0e

    dec bc
    inc b
    dec b
    ld [bc], a
    ld b, $00
    nop

jr_00d_7d0e:
    nop
    nop
    nop
    cp $2c
    ld a, $d4
    inc a
    ret nz

    add sp, $30
    ld e, b
    jr nz, jr_00d_7d8c

    nop
    nop
    nop
    nop
    nop
    ld h, $1f
    daa
    rra
    ld hl, $781f
    daa
    inc a
    dec bc
    inc l
    inc de
    ld c, e
    inc a
    ld e, a
    ld a, [hl-]
    ld [hl-], a
    db $fc
    ldh a, [c]
    db $fc
    jp nz, $0ffc

    ldh a, [c]
    ld e, $e8
    ld a, [de]
    db $e4
    jp hl


    ld e, $fd
    xor [hl]
    ccf
    ld a, [de]
    ld a, $15
    ld e, $01
    dec c
    ld b, $0b
    inc b
    ld b, $00
    nop
    nop
    nop
    nop
    cp $2c
    ld l, $d4
    inc c
    ldh a, [$ffe8]
    db $10
    ld d, b
    jr nz, jr_00d_7d8c

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
    jr nz, jr_00d_7d6a

jr_00d_7d6a:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_00d_7d80

jr_00d_7d80:
    inc b
    nop
    nop
    ld [$0008], sp
    nop
    nop
    jr nz, jr_00d_7daa

    jr nz, jr_00d_7d8c

jr_00d_7d8c:
    and b
    add b
    add b
    nop
    add b
    inc b
    inc b
    nop
    inc b
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0001
    add c
    add b
    add b
    dec bc
    dec bc
    inc e
    rra
    ld d, b
    ld e, a
    ld l, c
    ld a, a
    ld a, [hl]

jr_00d_7daa:
    ld a, a
    ld e, [hl]
    ld a, l

jr_00d_7dad:
    ld d, a
    ld a, e
    ld b, h
    ld a, e
    ldh [$ffe0], a
    jr jr_00d_7dad

    inc b
    db $fc
    ld c, d
    cp $3e
    cp $3d
    rst $18
    push af
    rst $28
    ld de, $4def
    halt
    ld e, a
    ld [hl], h
    ld c, e
    ld [hl], a
    ld c, l
    ld [hl], e
    ld c, a
    ld a, h
    ld d, l
    ld l, a
    ld a, [hl]
    ld e, e
    ld a, a
    inc sp
    cp c
    rst $10
    db $fd
    sub a
    jp hl


    rst $30
    reti


    rst $20
    ld a, c
    sbc a
    push de
    ei
    ccf
    db $ed
    ld a, a
    and $7d
    ld b, [hl]
    ld e, l
    ld l, a
    dec hl
    ccf
    rla
    rra
    rla
    rra
    cpl
    ccf
    db $10
    rra
    rrca
    rrca
    rst $18
    ld sp, $bb4d
    ld h, $fe
    or h
    db $fc
    sub d
    cp $c2
    cp $3c
    db $fc
    ret nz

    ret nz

    nop
    nop
    nop
    nop
    nop
    ld [$0000], sp
    nop
    nop
    nop
    db $10
    db $10
    stop
    stop
    nop
    nop
    nop
    nop
    inc b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $8000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$0808], sp
    nop
    add hl, bc
    ld bc, $0101
    ld bc, $8800
    ld [$0008], sp
    ld [$0000], sp
    nop
    nop
    nop
    nop
    nop
    db $10
    db $10
    db $10
    ld b, e
    ld b, e
    inc c
    ld c, a
    db $10
    rra
    add hl, hl
    ccf
    ld a, $3f
    ld e, [hl]
    ld a, l
    ld d, a
    ld a, e
    ld b, h
    ld a, e
    add sp, -$18
    inc e
    db $fc
    inc b
    db $fc
    ld c, d
    cp $3e
    cp $3d
    rst $18
    push af
    rst $28
    ld de, $7def
    ld b, [hl]
    ld e, l
    ld l, a
    add hl, hl
    ccf
    dec d
    rra
    inc hl
    ccf
    inc hl
    ccf
    inc e
    rra
    inc bc
    inc bc
    rst $18
    ld sp, $dbad
    add $fe
    call nc, $cafc
    cp $e2
    cp $1c
    db $fc
    ldh [$ffe0], a
    nop
    nop
    nop
    nop
    nop
    add b
    nop
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
    ld bc, $1100
    db $10
    stop
    stop
    nop
    ld bc, $0001
    ld de, $0000
    nop

Call_00d_7ea8:
    nop
    nop
    nop
    nop
    nop
    db $10
    stop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_00d_7eb8

jr_00d_7eb8:
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    nop
    inc b
    inc bc
    inc bc
    inc l
    cpl
    ld [hl], b
    ld a, a
    ld l, c
    ld a, a
    ld a, [hl]
    ld a, a
    ld e, [hl]
    ld a, l
    ld d, a
    ld a, e
    ld b, h
    ld a, e
    ldh [$ffe1], a
    add hl, de
    ld sp, hl
    dec b
    db $fd
    ld c, d
    rst $38
    ld a, $fe
    dec a
    rst $18
    push af
    rst $28
    ld de, $7def
    ld b, [hl]
    ld e, l
    ld l, [hl]
    ld a, [hl+]
    ccf
    rla

Call_00d_7ee8:
    rra
    ld h, $3f
    jr nz, jr_00d_7f2c

    rra
    rra
    nop
    nop
    rst $18
    ld sp, $fb4d
    and $fe
    db $f4
    db $fc
    ldh a, [c]
    cp $7a
    cp $84
    db $fc
    ld a, b
    ld a, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_00d_7f2c:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_00d_7f38:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rst $38

Jump_00d_7fff:
    rst $38
