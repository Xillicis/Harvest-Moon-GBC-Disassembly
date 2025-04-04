; Disassembly of "harvest_moon.gbc"
; This file was created with:
; mgbdis v2.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $014", ROMX[$4000], BANK[$14]

    inc d
    ld bc, $e502
    ld b, c
    ld bc, $e702
    ld b, c
    ld bc, $e902
    ld b, c
    ld bc, $eb02
    ld b, c
    ld bc, $ed02
    ld b, c
    ld bc, $ef02
    ld b, c
    ld bc, $f102
    ld b, c
    ld bc, $f302
    ld b, c
    ld bc, $f502
    ld b, c
    ld bc, $f702
    ld b, c
    ld bc, $f902
    ld b, c
    ld bc, $fb02
    ld b, c
    ld bc, $fd02
    ld b, c
    ld bc, $ff02
    ld b, c
    ld bc, $0102
    ld b, d
    ld bc, $0302
    ld b, d
    ld bc, $0502
    ld b, d
    ld bc, $0702
    ld b, d
    ld bc, $0902
    ld b, d
    ld bc, $0b02
    ld b, d
    ld bc, $0d02
    ld b, d
    ld bc, $0f02
    ld b, d
    ld bc, $1102
    ld b, d
    ld bc, $1302
    ld b, d
    ld bc, $1502
    ld b, d
    ld bc, $1702
    ld b, d
    ld bc, $1902
    ld b, d
    ld bc, $1b02
    ld b, d
    ld bc, $1d02
    ld b, d
    ld bc, $2702
    ld b, d
    ld bc, $3102
    ld b, d
    ld bc, $6502
    ld b, h
    ld bc, $6702
    ld b, h
    ld bc, $7102
    ld b, h
    ld bc, $7302
    ld b, h
    ld bc, $7d02
    ld b, h
    ld bc, $7f02
    ld b, h
    ld bc, $8902
    ld b, h
    ld bc, $8b02
    ld b, h
    ld bc, $9502
    ld b, h
    ld bc, $9702
    ld b, h
    ld bc, $a102
    ld b, h
    ld bc, $a302
    ld b, h
    ld bc, $ad02
    ld b, h
    ld bc, $af02
    ld b, h
    ld bc, $b302
    ld b, h
    ld bc, $b702
    ld b, h
    ld bc, $bb02
    ld b, h
    ld bc, $4d02
    ld b, [hl]
    ld bc, $fe02
    ld b, [hl]
    ld bc, $6a02
    ld b, a
    ld bc, $b302
    ld b, a
    ld bc, $1a02
    ld c, b
    ld bc, $d502
    ld c, b
    ld bc, $2102
    ld c, c
    ld [bc], a
    ld [bc], a
    xor l
    ld c, d
    ld [bc], a
    ld [bc], a
    xor a
    ld c, d
    ld [bc], a
    ld [bc], a
    or c
    ld c, d
    ld [bc], a
    ld [bc], a
    or e
    ld c, d
    ld [bc], a
    ld [bc], a
    or l
    ld c, d
    ld [bc], a
    ld [bc], a
    or a
    ld c, d
    ld [bc], a
    ld [bc], a
    cp c
    ld c, d
    ld [bc], a
    ld [bc], a
    jp $024a


    ld [bc], a
    push bc
    ld c, d
    ld [bc], a
    ld [bc], a
    rst $00
    ld c, d
    ld [bc], a
    ld [bc], a
    ret


    ld c, d
    ld [bc], a
    ld [bc], a
    db $d3
    ld c, d
    ld [bc], a
    ld [bc], a
    push de
    ld c, d
    ld [bc], a
    ld [bc], a
    rst $10
    ld c, d
    ld [bc], a
    ld [bc], a
    reti


    ld c, d
    ld [bc], a
    ld [bc], a
    db $db
    ld c, d
    ld [bc], a
    ld [bc], a
    db $db
    ld c, d
    ld [bc], a
    ld [bc], a
    db $db
    ld c, d
    ld [bc], a
    ld [bc], a
    db $dd
    ld c, d
    ld [bc], a
    ld [bc], a
    rst $20
    ld c, d
    ld [bc], a
    ld [bc], a
    jp hl


    ld c, d
    ld [bc], a
    ld [bc], a
    db $eb
    ld c, d
    ld [bc], a
    ld [bc], a
    push af
    ld c, d
    ld [bc], a
    ld [bc], a
    rst $38
    ld c, d
    ld [bc], a
    ld [bc], a
    ld bc, $024b
    ld [bc], a
    inc bc
    ld c, e
    ld [bc], a
    ld [bc], a
    dec b
    ld c, e
    ld [bc], a
    ld [bc], a
    rlca
    ld c, e
    ld [bc], a
    ld [bc], a
    add hl, bc
    ld c, e
    ld [bc], a
    ld [bc], a
    dec bc
    ld c, e
    ld [bc], a
    ld [bc], a
    dec c
    ld c, e
    ld [bc], a
    ld [bc], a
    rrca
    ld c, e
    ld [bc], a
    ld [bc], a
    ld hl, $024b
    ld [bc], a
    inc sp
    ld c, e
    ld [bc], a
    ld [bc], a
    ld d, a
    ld c, l
    ld [bc], a
    ld [bc], a
    add $4d
    ld [bc], a
    ld [bc], a
    ld [hl+], a
    ld c, [hl]
    ld [bc], a
    ld [bc], a
    inc l
    ld c, [hl]
    ld [bc], a
    ld [bc], a
    ld [hl], $4e
    ld [bc], a
    ld [bc], a
    ld b, b
    ld c, [hl]
    ld [bc], a
    ld [bc], a
    ld c, d
    ld c, [hl]
    ld [bc], a
    ld [bc], a
    ld d, h
    ld c, [hl]
    ld [bc], a
    ld [bc], a
    ld e, [hl]
    ld c, [hl]
    ld [bc], a
    ld [bc], a
    ld h, b
    ld c, [hl]
    ld [bc], a
    ld [bc], a
    ld h, d
    ld c, [hl]
    ld [bc], a
    ld [bc], a
    ld h, h
    ld c, [hl]
    ld [bc], a
    ld [bc], a
    ld h, [hl]
    ld c, [hl]
    ld [bc], a
    ld [bc], a
    ld l, b
    ld c, [hl]
    ld bc, $3b02
    ld b, d
    ld [bc], a
    ld [bc], a
    ld l, d
    ld c, [hl]
    ld [bc], a
    ld [bc], a
    ld l, h
    ld c, [hl]
    ld [bc], a
    ld [bc], a
    ld l, [hl]
    ld c, [hl]
    ld [bc], a
    ld [bc], a
    ld [hl], b
    ld c, [hl]
    ld [bc], a
    ld [bc], a
    ld [hl], d
    ld c, [hl]
    ld [bc], a
    ld [bc], a
    ld [hl], h
    ld c, [hl]
    ld [bc], a
    ld [bc], a
    ld a, [hl]
    ld c, [hl]
    ld [bc], a
    ld [bc], a
    adc b
    ld c, [hl]
    ld [bc], a
    ld [bc], a
    sub d
    ld c, [hl]
    ld [bc], a
    ld [bc], a
    sbc h
    ld c, [hl]
    ld [bc], a
    ld [bc], a
    sbc [hl]
    ld c, [hl]
    inc bc
    ld [bc], a
    ld b, b
    ld d, b
    inc bc
    ld [bc], a
    ld b, d
    ld d, b
    inc bc
    ld [bc], a
    ld b, h
    ld d, b
    nop
    nop
    ld b, [hl]
    ld d, b
    nop
    nop
    ld c, [hl]
    ld d, b
    nop
    nop
    ld d, [hl]
    ld d, b
    ld b, l
    ld b, d
    ld d, [hl]
    ld b, d
    ld h, a
    ld b, d
    ld a, b
    ld b, d
    adc c
    ld b, d
    sbc d
    ld b, d
    xor e
    ld b, d
    cp h
    ld b, d
    call $de42
    ld b, d
    rst $28
    ld b, d
    nop
    ld b, e
    ld de, $2243
    ld b, e
    inc sp
    ld b, e
    ld b, h
    ld b, e
    ld d, l
    ld b, e
    ld h, [hl]
    ld b, e
    ld [hl], a
    ld b, e
    adc b
    ld b, e
    sbc c
    ld b, e
    xor d
    ld b, e
    cp e
    ld b, e
    call z, $dd43
    ld b, e
    xor $43
    db $10
    ld b, h
    ld [hl-], a
    ld b, h
    rst $38
    ld b, e
    ld d, h
    ld b, h
    rst $38
    ld b, e
    ld d, h
    ld b, h
    rst $38
    ld b, e
    ld hl, $5444
    ld b, h
    ld hl, $5444
    ld b, h
    ld hl, $4344
    ld b, h
    ld d, h
    ld b, h
    ld b, e
    ld b, h
    ld d, h
    ld b, h
    ld b, e
    ld b, h
    xor $43
    ld d, h
    ld b, h
    xor $43
    ld d, h
    ld b, h
    xor $43
    nop
    nop
    ld de, $0013
    ld hl, sp+$10
    inc de
    ld hl, sp+$00
    ld bc, $f813
    ld hl, sp+$00
    inc de
    add b
    nop
    nop
    inc de
    inc de
    nop
    ld hl, sp+$12
    inc de
    ld hl, sp+$00
    inc bc
    inc de
    ld hl, sp-$08
    ld [bc], a
    inc de
    add b
    nop
    nop
    dec d
    inc de
    nop
    ld hl, sp+$14
    inc de
    ld hl, sp+$00
    dec b
    inc de
    ld hl, sp-$08
    inc b
    inc de
    add b
    nop
    nop
    rla
    inc de
    nop
    ld hl, sp+$16
    inc de
    ld hl, sp+$00
    rlca
    inc de
    ld hl, sp-$08
    ld b, $13
    add b
    nop
    nop
    add hl, de
    inc de
    nop
    ld hl, sp+$18
    inc de
    ld hl, sp+$00
    add hl, bc
    inc de
    ld hl, sp-$08
    ld [$8013], sp
    nop
    nop
    dec de
    inc de
    nop
    ld hl, sp+$1a
    inc de
    ld hl, sp+$00
    dec bc
    inc de
    ld hl, sp-$08
    ld a, [bc]
    inc de
    add b
    nop
    nop
    dec e
    inc de
    nop
    ld hl, sp+$1c
    inc de
    ld hl, sp+$00
    dec c
    inc de
    ld hl, sp-$08
    inc c
    inc de
    add b
    nop
    nop
    rra
    inc de
    nop
    ld hl, sp+$1e
    inc de
    ld hl, sp+$00
    rrca
    inc de
    ld hl, sp-$08
    ld c, $13
    add b
    nop
    nop
    ld sp, $0013
    ld hl, sp+$30
    inc de
    ld hl, sp+$00
    ld hl, $f813
    ld hl, sp+$20
    inc de
    add b
    nop
    nop
    inc sp
    inc de
    nop
    ld hl, sp+$32
    inc de
    ld hl, sp+$00
    inc hl
    inc de
    ld hl, sp-$08
    ld [hl+], a
    inc de
    add b
    nop
    nop
    dec [hl]
    inc de
    nop
    ld hl, sp+$34
    inc de
    ld hl, sp+$00
    dec h
    inc de
    ld hl, sp-$08
    inc h
    inc de
    add b
    nop
    nop
    scf
    inc de
    nop
    ld hl, sp+$36
    inc de
    ld hl, sp+$00
    daa
    inc de
    ld hl, sp-$08
    ld h, $13
    add b
    nop
    nop
    add hl, sp
    inc de
    nop
    ld hl, sp+$38
    inc de
    ld hl, sp+$00
    add hl, hl
    inc de
    ld hl, sp-$08
    jr z, jr_014_4334

    add b
    nop
    nop
    dec sp
    inc de
    nop
    ld hl, sp+$3a
    inc de
    ld hl, sp+$00
    dec hl
    inc de
    ld hl, sp-$08
    ld a, [hl+]
    inc de
    add b
    nop

jr_014_4334:
    nop
    dec a
    inc de
    nop
    ld hl, sp+$3c
    inc de
    ld hl, sp+$00
    dec l
    inc de
    ld hl, sp-$08
    inc l
    inc de
    add b
    nop
    nop
    ccf
    inc de
    nop
    ld hl, sp+$3e
    inc de
    ld hl, sp+$00
    cpl
    inc de
    ld hl, sp-$08
    ld l, $13
    add b
    nop
    nop
    ld d, c
    inc de
    nop
    ld hl, sp+$50
    inc de
    ld hl, sp+$00
    ld b, c
    inc de
    ld hl, sp-$08
    ld b, b
    inc de
    add b
    nop
    nop
    ld d, e
    inc de
    nop
    ld hl, sp+$52
    inc de
    ld hl, sp+$00
    ld b, e
    inc de
    ld hl, sp-$08
    ld b, d
    inc de
    add b
    nop
    nop
    ld d, l
    inc de
    nop
    ld hl, sp+$54
    inc de
    ld hl, sp+$00
    ld b, l
    inc de
    ld hl, sp-$08
    ld b, h
    inc de
    add b
    nop
    nop
    ld d, a
    inc de
    nop
    ld hl, sp+$56
    inc de
    ld hl, sp+$00
    ld b, a
    inc de
    ld hl, sp-$08
    ld b, [hl]
    inc de
    add b
    nop
    nop
    ld e, c
    inc de
    nop
    ld hl, sp+$58
    inc de
    ld hl, sp+$00
    ld c, c
    inc de
    ld hl, sp-$08
    ld c, b
    inc de
    add b
    nop
    nop
    ld e, e
    inc de
    nop
    ld hl, sp+$5a
    inc de
    ld hl, sp+$00
    ld c, e
    inc de
    ld hl, sp-$08
    ld c, d
    inc de
    add b
    nop
    nop
    ld e, l
    inc de
    nop
    ld hl, sp+$5c
    inc de
    ld hl, sp+$00
    ld c, l
    inc de
    ld hl, sp-$08
    ld c, h
    inc de
    add b
    nop
    nop
    ld [hl], c
    inc de
    nop
    ld hl, sp+$70
    inc de
    ld hl, sp+$00
    ld h, c
    inc de
    ld hl, sp-$08
    ld h, b
    inc de
    add b
    nop
    nop
    ld [hl], e
    inc de
    nop
    ld hl, sp+$72
    inc de
    ld hl, sp+$00
    ld h, e
    inc de
    ld hl, sp-$08
    ld h, d
    inc de
    add b
    nop
    nop
    ld a, l
    inc de
    nop
    ld hl, sp+$7c
    inc de
    ld hl, sp+$00
    ld l, l
    inc de
    ld hl, sp-$08
    ld l, h
    inc de
    add b
    nop
    nop
    ld a, a
    inc de
    nop
    ld hl, sp+$7e
    inc de
    ld hl, sp+$00
    ld l, a
    inc de
    ld hl, sp-$08
    ld l, [hl]
    inc de
    add b
    nop
    nop
    pop de
    inc de
    nop
    ld hl, sp-$30
    inc de
    ld hl, sp+$00
    pop bc
    inc de
    ld hl, sp-$08
    ret nz

    inc de
    add b
    nop
    nop
    pop af
    inc de
    nop
    ld hl, sp-$10
    inc de
    ld hl, sp+$00
    pop hl
    inc de
    ld hl, sp-$08
    ldh [rNR13], a
    add b
    nop
    nop
    db $d3
    inc de
    nop
    ld hl, sp-$2e
    inc de
    ld hl, sp+$00
    jp $f813


    ld hl, sp-$3e
    inc de
    add b
    nop
    nop
    di
    inc de
    nop
    ld hl, sp-$0e
    inc de
    ld hl, sp+$00
    db $e3
    inc de
    ld hl, sp-$08
    ldh [c], a
    inc de
    add b
    ld hl, sp+$00
    sbc a
    inc de
    nop
    nop
    sbc a
    inc de
    nop
    ld hl, sp-$61
    inc de
    ld hl, sp-$08
    sbc a
    inc de
    add b
    cp a
    ld b, h
    ret nc

    ld b, h
    inc a
    ld b, [hl]
    ret nc

    ld b, h
    inc a
    ld b, [hl]
    ret nc

    ld b, h
    pop hl
    ld b, h
    ldh a, [c]
    ld b, h
    inc a
    ld b, [hl]
    ldh a, [c]
    ld b, h
    inc a
    ld b, [hl]
    ldh a, [c]
    ld b, h
    inc bc
    ld b, l
    inc d
    ld b, l
    inc a
    ld b, [hl]
    inc d
    ld b, l
    inc a
    ld b, [hl]
    inc d
    ld b, l
    dec h
    ld b, l
    ld [hl], $45
    inc a
    ld b, [hl]
    ld [hl], $45
    inc a
    ld b, [hl]
    ld [hl], $45
    ld b, a
    ld b, l
    ld e, b
    ld b, l
    inc a
    ld b, [hl]
    ld e, b
    ld b, l
    inc a
    ld b, [hl]
    ld e, b
    ld b, l
    ld l, c
    ld b, l
    ld a, d
    ld b, l
    inc a
    ld b, [hl]
    ld a, d
    ld b, l
    inc a
    ld b, [hl]
    ld a, d
    ld b, l
    adc e
    ld b, l
    and h
    ld b, l
    push bc
    ld b, l
    ldh a, [rLYC]
    ld bc, $d646
    ld b, l
    rst $20
    ld b, l
    ld a, [bc]
    ld b, [hl]
    dec hl
    ld b, [hl]
    nop
    nop
    push de
    inc de
    nop
    ld hl, sp-$2c
    inc de
    ld hl, sp+$00
    push bc
    inc de
    ld hl, sp-$08
    call nz, $8013
    nop
    nop
    push af
    inc de
    nop
    ld hl, sp-$0c
    inc de
    ld hl, sp+$00
    push hl

Jump_014_44db:
    inc de
    ld hl, sp-$08
    db $e4
    inc de
    add b
    nop
    nop
    rst $10
    inc de
    nop
    ld hl, sp-$2a
    inc de
    ld hl, sp+$00
    rst $00
    inc de
    ld hl, sp-$08
    add $13
    add b
    nop
    nop
    rst $30
    inc de
    nop
    ld hl, sp-$0a
    inc de
    ld hl, sp+$00
    rst $20
    inc de
    ld hl, sp-$08
    and $13
    add b
    nop
    nop
    reti


    inc de
    nop
    ld hl, sp-$28
    inc de
    ld hl, sp+$00
    ret


    inc de
    ld hl, sp-$08
    ret z

    inc de
    add b
    nop
    nop
    ld sp, hl
    inc de
    nop
    ld hl, sp-$08
    inc de
    ld hl, sp+$00
    jp hl


    inc de
    ld hl, sp-$08
    add sp, $13
    add b
    nop
    nop
    db $db
    inc de
    nop
    ld hl, sp-$26
    inc de
    ld hl, sp+$00
    rl e
    ld hl, sp-$08
    jp z, $8013

    nop
    nop
    ei
    inc de
    nop
    ld hl, sp-$06
    inc de
    ld hl, sp+$00
    db $eb
    inc de
    ld hl, sp-$08
    ld [$8013], a
    nop
    nop
    db $dd
    inc de
    nop
    ld hl, sp-$24
    inc de
    ld hl, sp+$00
    call $f813
    ld hl, sp-$34
    inc de
    add b
    nop
    nop
    db $fd
    inc de
    nop
    ld hl, sp-$04
    inc de
    ld hl, sp+$00
    db $ed
    inc de
    ld hl, sp-$08
    db $ec
    inc de
    add b
    nop
    nop
    rst $18
    inc de
    nop
    ld hl, sp-$22
    inc de
    ld hl, sp+$00
    rst $08
    inc de
    ld hl, sp-$08
    adc $13
    add b
    nop
    nop
    rst $38
    inc de
    nop
    ld hl, sp-$02
    inc de
    ld hl, sp+$00
    rst $28
    inc de
    ld hl, sp-$08
    xor $13
    add b
    ld [bc], a
    inc b
    sub l
    inc de
    ld [bc], a
    db $fc
    sub h
    inc de
    ld [bc], a
    db $f4
    sub e
    inc de
    ld a, [$8504]
    inc de
    ld a, [$84fc]
    inc de
    ld a, [$83f4]
    inc de
    add b
    ld [hl+], a
    nop
    ld e, a
    inc de
    ld [hl+], a
    ld hl, sp+$5e
    inc de
    ld a, [de]
    nop
    ld c, a
    inc de
    ld a, [de]
    ld hl, sp+$4e
    inc de
    inc d
    nop
    ld e, a
    inc de
    inc d
    ld hl, sp+$5e
    inc de
    inc c
    nop
    ld c, a
    inc de
    inc c
    ld hl, sp+$4e

jr_014_45c3:
    inc de
    add b
    jr nc, jr_014_45c7

jr_014_45c7:
    ld e, a
    inc de
    jr nc, jr_014_45c3

jr_014_45cb:
    ld e, [hl]
    inc de
    jr z, jr_014_45cf

jr_014_45cf:
    ld c, a
    inc de
    jr z, jr_014_45cb

    ld c, [hl]
    inc de
    add b
    ld hl, sp+$1a
    add c
    inc sp
    ld hl, sp+$22
    add b
    inc sp
    ld hl, sp+$0a
    add c
    inc sp
    ld hl, sp+$12
    add b
    inc sp
    add b
    ld hl, sp+$2a
    add c
    inc sp
    ld hl, sp+$32
    add b
    inc sp
    add b
    ld hl, sp-$22
    add c
    inc de
    ld hl, sp-$2a
    add b
    inc de
    ld hl, sp-$12
    add c
    inc de
    ld hl, sp-$1a
    add b
    inc de
    add b
    ld hl, sp-$32
    add c
    inc de
    ld hl, sp-$3a
    add b
    inc de
    add b
    sub $00
    ld e, a
    ld d, e
    sub $f8
    ld e, [hl]
    ld d, e
    sbc $00
    ld c, a
    ld d, e
    sbc $f8
    ld c, [hl]
    ld d, e
    db $e4
    nop
    ld e, a
    ld d, e
    db $e4
    ld hl, sp+$5e
    ld d, e
    db $ec
    nop
    ld c, a
    ld d, e
    db $ec
    ld hl, sp+$4e
    ld d, e
    add b
    ret z

    nop
    ld e, a
    ld d, e
    ret z

    ld hl, sp+$5e
    ld d, e
    ret nc

    nop
    ld c, a
    ld d, e
    ret nc

    ld hl, sp+$4e
    ld d, e
    add b
    ld hl, sp+$00
    sbc a
    inc de
    nop
    nop
    sbc a
    inc de
    nop
    ld hl, sp-$61
    inc de
    ld hl, sp-$08
    sbc a
    inc de
    add b
    ld d, l
    ld b, [hl]
    ld a, [hl]
    ld b, [hl]
    and a
    ld b, [hl]
    ret nc

    ld b, [hl]
    cp $fa
    sbc [hl]
    ld [hl], e
    ld b, $fa
    adc [hl]
    ld [hl], e
    cp $07
    sbc l
    inc sp
    or $07
    adc l
    inc de
    dec b
    inc bc
    sbc h
    inc de
    ld sp, hl
    nop
    sbc [hl]
    inc de
    pop af
    nop
    adc [hl]
    inc de
    ldh a, [c]
    or $8b
    inc de
    ld sp, hl
    ldh a, [c]
    adc a
    inc sp
    inc bc
    ldh a, [$ff9c]
    inc sp
    add b
    ld [$8ff8], sp
    ld [hl], e
    di
    cp $9c
    ld d, e
    dec b
    rlca
    sbc h
    inc de
    inc b
    xor $9c
    inc sp
    inc bc
    ld a, [$539b]
    ldh a, [$fff3]
    adc e
    inc de
    db $ed
    inc b
    adc a
    inc de
    db $fd
    add hl, bc
    sbc l
    inc sp
    push af
    ld a, [bc]
    adc l
    inc de
    ld hl, sp-$11
    adc a
    inc sp
    add b
    db $ed
    ei
    sbc h
    ld d, e
    db $ec
    dec b
    adc a
    inc de
    dec b
    push af
    sbc e
    ld d, e
    dec b
    db $ec
    sbc h
    inc sp
    ld a, [bc]
    ld [$139c], sp
    nop
    inc c
    sbc l
    ld [hl], e
    ld a, [bc]
    push af
    sbc h
    inc sp
    or $0c
    adc l
    inc de
    rst $30
    db $ed
    adc a
    ld [hl], e
    xor $ef
    adc e
    inc de
    add b
    ld [$8df9], a
    inc de
    ld [$8be8], sp
    ld d, e
    ld c, $f5
    sbc h
    inc sp
    ld c, $ee
    sbc e
    ld d, e
    db $eb
    ld b, $9d
    inc sp
    ld [bc], a
    dec c
    adc l
    inc de
    rst $30
    ld c, $8c
    inc de
    push af
    add sp, -$71
    ld [hl], e
    db $ed
    xor $8b
    ld d, e
    inc c
    ld a, [bc]
    sbc l
    inc sp
    add b
    ld hl, sp+$00
    sbc a
    inc de
    add b
    ld b, $47
    rra
    ld b, a
    jr c, jr_014_474b

    ld d, c
    ld b, a
    nop
    ld [bc], a
    sbc l
    inc de
    nop
    ld sp, hl
    sbc e
    inc de
    ld hl, sp-$08
    adc e
    inc de
    ld sp, hl
    ld bc, $138d
    cp $fe
    sbc h
    inc de
    or $fe
    adc h
    inc de
    add b
    nop
    db $fd
    sbc h
    inc de
    ld bc, $9bf6
    inc de
    rst $30
    push af
    adc e
    inc de
    ld bc, $9d03
    inc de
    rst $30
    ld [bc], a
    adc l
    inc de
    ldh a, [c]
    cp $8c
    inc de
    add b
    pop af
    db $fd
    adc h
    inc sp
    or $f4
    adc e
    ld d, e
    dec b
    ei
    sbc h
    inc sp
    inc b
    di
    sbc e
    ld d, e
    or $06
    adc l

jr_014_474b:
    ld d, e
    inc b
    rlca
    sbc l
    ld d, e
    add b
    inc b
    pop af
    sbc e
    ld d, e
    rlca
    ei
    sbc h
    inc sp
    rlca
    rlca
    sbc l
    ld d, e
    or $08
    adc l
    ld d, e
    ldh a, [$fffd]
    adc h
    inc sp
    or $f2
    adc e
    ld d, e
    add b
    ld [hl], b
    ld b, a
    add c
    ld b, a
    sub d
    ld b, a
    nop
    nop
    cp c
    inc de
    nop
    ld hl, sp-$48
    inc de
    ld hl, sp+$00
    xor c
    inc de
    ld hl, sp-$08
    xor b
    inc de
    add b
    nop
    nop
    cp e
    inc de
    nop
    ld hl, sp-$46
    inc de
    ld hl, sp+$00
    xor e
    inc de
    ld hl, sp-$08
    xor d
    inc de
    add b
    nop
    ld [$13bf], sp
    nop
    nop
    cp [hl]
    inc de
    nop
    ld hl, sp-$43
    inc de
    nop
    ldh a, [$ffbc]
    inc de
    ld hl, sp+$08
    xor a
    inc de
    ld hl, sp+$00
    xor [hl]
    inc de
    ld hl, sp-$08
    xor l
    inc de
    ld hl, sp-$10
    xor h
    inc de
    add b
    push bc
    ld b, a
    sub $47
    rst $20
    ld b, a
    ld hl, sp+$47
    add hl, bc
    ld c, b
    ld hl, sp+$47
    add hl, bc
    ld c, b
    ld hl, sp+$47
    add hl, bc
    ld c, b
    nop
    nop
    ld [hl], l
    inc de
    nop
    ld hl, sp+$74
    inc de
    ld hl, sp+$00
    ld h, l
    inc de
    ld hl, sp-$08
    ld h, h
    inc de
    add b
    nop
    nop
    ld [hl], a
    inc de
    nop
    ld hl, sp+$76
    inc de
    ld hl, sp+$00
    ld h, a
    inc de
    ld hl, sp-$08
    ld h, [hl]
    inc de
    add b
    nop
    nop
    ld a, c
    inc de
    nop
    ld hl, sp+$78
    inc de
    ld hl, sp+$00
    ld l, c
    inc de
    ld hl, sp-$08
    ld l, b
    inc de
    add b
    nop
    nop
    ld a, e
    inc de
    nop
    ld hl, sp+$7a
    inc de
    ld hl, sp+$00
    ld l, e
    inc de
    ld hl, sp-$08
    ld l, d
    inc de
    add b
    nop
    ld hl, sp-$61
    inc de
    nop
    nop
    sbc a
    inc de
    ld hl, sp+$00
    sbc a
    inc de
    ld hl, sp-$08
    sbc a
    inc de
    add b
    inc l
    ld c, b
    ld d, l
    ld c, b
    ld a, [hl]
    ld c, b
    and a
    ld c, b
    ret nc

    ld c, b
    and a
    ld c, b
    ret nc

    ld c, b
    and a
    ld c, b
    ret nc

    ld c, b
    dec b
    di
    adc c
    inc sp
    ldh a, [c]
    push af
    add [hl]
    inc de
    db $fd
    ld hl, sp-$66
    inc de
    db $fd
    ldh a, [$ff99]
    inc de
    ld hl, sp-$02
    sbc b
    inc de
    ldh a, [$fffe]
    adc b
    inc de
    push af
    rlca
    adc c
    ld d, e
    rst $38
    rlca
    sub [hl]
    ld [hl], e
    rlca
    rst $38
    sub a
    inc de
    rst $38
    rst $38
    add a
    inc de
    add b
    ld [$89f2], sp
    inc sp
    cp $f6
    sbc d
    inc de
    cp $ee
    sbc c
    inc de
    ldh a, [$fff3]
    add [hl]
    inc sp
    or $fd
    sbc b
    inc sp
    xor $fd
    adc b
    inc sp
    add hl, bc
    nop
    sub a
    inc de
    ld bc, $8700
    inc de
    db $fd
    ld a, [bc]
    sub [hl]
    ld [hl], e
    di
    ld a, [bc]
    adc c
    ld d, e
    add b
    ldh a, [c]
    ldh a, [$ff86]
    inc sp
    di
    db $fc
    sbc b
    inc de
    db $eb
    db $fc
    adc b
    inc de
    rst $38
    ldh a, [c]
    sbc d
    ld d, e
    rst $38
    ld [$5399], a
    ld a, [bc]
    ldh a, [$ff89]
    inc sp
    dec bc
    ld bc, $3397
    inc bc
    ld bc, $3387
    ld bc, $960c
    inc sp
    db $f4
    ld c, $89
    ld d, e
    add b
    di
    ld a, [$1398]
    db $eb
    ld a, [$1388]
    inc bc
    pop af
    sbc d
    ld d, e
    inc bc
    jp hl


    sbc c
    ld d, e
    rrca
    ldh a, [$ff89]
    inc sp
    ld hl, sp-$14
    add [hl]
    inc sp
    ld c, $01
    sub a
    inc sp
    ld b, $01
    add a
    inc sp
    rst $30
    db $10
    adc c
    ld d, e
    ld [$9610], sp
    inc sp
    add b
    ld hl, sp+$00
    sbc a
    inc de
    add b
    db $dd
    ld c, b
    xor $48
    rst $38
    ld c, b
    db $10
    ld c, c
    nop
    nop
    or c
    inc de
    nop
    ld hl, sp-$50
    inc de
    ld hl, sp+$00
    and c
    inc de
    ld hl, sp-$08
    and b
    inc de
    add b
    nop
    nop
    or e
    inc de
    nop
    ld hl, sp-$4e
    inc de
    ld hl, sp+$00
    and e
    inc de
    ld hl, sp-$08
    and d
    inc de
    add b
    nop
    nop
    or l
    inc de
    nop
    ld hl, sp-$4c
    inc de
    ld hl, sp+$00
    and l
    inc de
    ld hl, sp-$08
    and h
    inc de
    add b
    nop
    nop
    or a
    inc de
    nop
    ld hl, sp-$4a
    inc de
    ld hl, sp+$00
    and a
    inc de
    ld hl, sp-$08
    and [hl]
    inc de
    add b
    add hl, sp
    ld c, c
    ld c, d
    ld c, c
    ld l, e
    ld c, c
    adc h
    ld c, c
    or c
    ld c, c
    jp nc, $f349

    ld c, c
    inc d
    ld c, d
    dec [hl]
    ld c, d
    ld d, [hl]
    ld c, d
    ld a, e
    ld c, d
    sbc h
    ld c, d
    nop
    db $10
    and c
    inc de
    ld [$b110], sp
    inc de
    ld [$b008], sp
    inc de
    nop
    ld [$13a0], sp
    add b
    inc c
    dec bc
    or e
    inc de
    inc c
    inc bc
    or d
    inc de
    inc b
    dec bc
    and e
    inc de
    inc b
    inc bc
    and d
    inc de
    inc c
    or $b1
    inc de
    inc c
    xor $b0
    inc de
    inc b
    or $a1
    inc de
    inc b
    xor $a0
    inc de
    add b
    ld hl, sp-$10
    or c
    inc de
    ld hl, sp-$18
    or b
    inc de
    ldh a, [$fff0]
    and c
    inc de
    ldh a, [$ffe8]
    and b
    inc de
    rlca
    di
    or e
    inc de
    rlca
    db $eb
    or d
    inc de
    rst $38
    di
    and e
    inc de
    rst $38
    db $eb
    and d
    inc de
    add b
    inc c
    inc b
    or a
    inc de
    inc c
    db $fc
    or [hl]
    inc de
    inc b
    inc b
    and a
    inc de
    inc b
    db $fc
    and [hl]
    inc de
    inc bc
    di
    or l
    inc de
    inc bc
    db $eb
    or h
    inc de
    ei
    di
    and l
    inc de
    ei
    db $eb
    and h
    inc de
    db $f4
    di
    or e
    inc de
    add b
    stop
    or l
    inc de
    db $10
    ld hl, sp-$4c
    inc de
    ld [$a500], sp
    inc de
    ld [$a4f8], sp
    inc de
    nop
    ldh a, [$ffb7]
    inc de
    nop
    add sp, -$4a
    inc de
    ld hl, sp-$10
    and a
    inc de
    ld hl, sp-$18
    and [hl]
    inc de
    add b
    ldh a, [rP1]
    or e
    inc de
    ldh a, [$fff8]
    or d
    inc de
    add sp, $00
    and e
    inc de
    add sp, -$08
    and d
    inc de
    nop
    db $10
    or l
    inc de
    nop
    ld [$13b4], sp
    ld hl, sp+$10
    and l
    inc de
    ld hl, sp+$08
    and h
    inc de
    add b
    inc c
    db $f4
    or e
    inc de
    inc c
    db $ec
    or d
    inc de
    inc b
    db $f4
    and e
    inc de
    inc b
    db $ec
    and d
    inc de
    db $f4
    inc c
    or l
    inc de
    db $f4
    inc b
    or h
    inc de
    db $ec
    inc c
    and l
    inc de
    db $ec
    inc b
    and h
    inc de
    add b
    nop
    ldh a, [$ffb7]
    inc de
    nop
    add sp, -$4a
    inc de
    ld hl, sp-$10
    and a
    inc de
    ld hl, sp-$18
    and [hl]
    inc de
    stop
    or l
    inc de
    db $10
    ld hl, sp-$4c
    inc de
    ld [$a500], sp
    inc de
    ld [$a4f8], sp
    inc de
    add b
    inc c
    db $f4
    or a
    inc de
    inc c
    db $ec
    or [hl]
    inc de
    inc b
    db $f4
    and a
    inc de
    inc b
    db $ec
    and [hl]
    inc de
    db $f4
    db $f4
    or l
    inc de
    db $f4
    db $ec
    or h
    inc de
    db $ec
    db $f4
    and l
    inc de
    db $ec
    db $ec
    and h
    inc de
    add b
    ldh a, [rP1]
    or e
    inc de
    ldh a, [$fff8]
    or d
    inc de
    add sp, $00
    and e
    inc de
    add sp, -$08
    and d
    inc de
    nop
    ldh a, [$ffb5]
    inc de
    nop
    add sp, -$4c
    inc de
    ld hl, sp-$10
    and l
    inc de
    ld hl, sp-$18
    and h
    inc de
    stop
    or e
    inc de
    add b
    inc c
    db $f4
    or c
    inc de
    inc c
    db $ec
    or b
    inc de
    inc b
    db $f4
    and c
    inc de
    inc b
    db $ec
    and b
    inc de
    db $f4
    db $f4
    or e
    inc de
    db $f4
    db $ec
    or d
    inc de
    db $ec
    db $f4
    and e
    inc de
    db $ec
    db $ec
    and d
    inc de
    add b
    ldh a, [rP1]
    or c
    inc de
    ldh a, [$fff8]
    or b
    inc de
    add sp, $00
    and c
    inc de
    add sp, -$08
    and b
    inc de
    add b
    scf
    ld c, e
    ld c, b
    ld c, e
    ld e, c
    ld c, e
    ld l, d
    ld c, e
    ld a, e
    ld c, e
    adc h
    ld c, e
    sbc l
    ld c, e
    ld b, [hl]
    ld c, l
    sbc l
    ld c, e
    ld b, [hl]
    ld c, l
    sbc l
    ld c, e
    xor [hl]
    ld c, e
    cp a
    ld c, e
    ret nc

    ld c, e
    pop hl
    ld c, e
    ld b, [hl]
    ld c, l
    pop hl
    ld c, e
    ld b, [hl]
    ld c, l
    pop hl
    ld c, e
    ldh a, [c]
    ld c, e
    inc bc
    ld c, h
    inc d
    ld c, h
    dec h
    ld c, h
    ld e, b
    ld c, h
    ld l, c
    ld c, h
    ld b, [hl]
    ld c, l
    ld l, c
    ld c, h
    ld b, [hl]
    ld c, l
    ld l, c
    ld c, h
    ld a, d
    ld c, h
    adc e
    ld c, h
    sbc h
    ld c, h
    ld b, [hl]
    ld c, l
    sbc h
    ld c, h
    ld b, [hl]
    ld c, l
    sbc h
    ld c, h
    xor l
    ld c, h
    ld b, [hl]
    ld c, l
    xor l
    ld c, h
    ld b, [hl]
    ld c, l
    xor l
    ld c, h
    cp [hl]
    ld c, h
    rst $08
    ld c, h
    ldh [$ff4c], a
    pop af
    ld c, h
    ld [bc], a
    ld c, l
    inc de
    ld c, l
    inc h
    ld c, l
    dec [hl]
    ld c, l
    ld l, d
    ld c, e
    ld a, d
    ld c, h
    ld a, e
    ld c, e
    ld b, [hl]
    ld c, l
    ld a, e
    ld c, e
    ld b, [hl]
    ld c, l
    ld a, e
    ld c, e
    ld b, [hl]
    ld c, l
    ld a, e
    ld c, e
    ld e, c
    ld c, e
    adc e
    ld c, h
    ld e, c
    ld c, e
    ld c, b
    ld c, e
    ld e, c
    ld c, e
    ld c, b
    ld c, e
    ld e, c
    ld c, e
    ld c, b
    ld c, e
    ld e, c
    ld c, e
    ret nc

    ld c, e
    pop hl
    ld c, e
    nop
    nop
    ld de, $0013
    ld hl, sp+$10
    inc de
    ld hl, sp+$00
    ld bc, $f813
    ld hl, sp+$00
    inc de
    add b
    nop
    nop
    inc de
    rla
    nop
    ld hl, sp+$12
    rla
    ld hl, sp+$00
    inc bc
    rla
    ld hl, sp-$08
    ld [bc], a
    rla
    add b
    nop
    nop
    dec d
    rla
    nop
    ld hl, sp+$14
    rla
    ld hl, sp+$00
    dec b
    rla
    ld hl, sp-$08
    inc b
    rla
    add b
    nop
    nop
    rla
    rla
    nop
    ld hl, sp+$16
    rla
    ld hl, sp+$00
    rlca
    rla
    ld hl, sp-$08
    ld b, $17
    add b
    nop
    nop
    add hl, de
    rla
    nop
    ld hl, sp+$18
    rla
    ld hl, sp+$00
    add hl, bc
    rla
    ld hl, sp-$08
    ld [$8017], sp
    nop
    nop
    dec de
    inc de
    nop
    ld hl, sp+$1a
    inc de
    ld hl, sp+$00
    dec bc
    inc de
    ld hl, sp-$08
    ld a, [bc]
    inc de
    add b
    nop
    nop
    dec e
    inc de
    nop
    ld hl, sp+$1c
    inc de
    ld hl, sp+$00
    dec c
    inc de
    ld hl, sp-$08
    inc c
    inc de
    add b
    nop
    nop
    ld sp, $0013
    ld hl, sp+$30
    inc de
    ld hl, sp+$00
    ld hl, $f813
    ld hl, sp+$20
    inc de
    add b
    nop
    nop
    inc sp
    inc de
    nop
    ld hl, sp+$32
    inc de
    ld hl, sp+$00
    inc hl
    inc de
    ld hl, sp-$08
    ld [hl+], a
    inc de
    add b
    nop
    nop
    dec [hl]
    inc de
    nop
    ld hl, sp+$34
    inc de
    ld hl, sp+$00
    dec h
    inc de
    ld hl, sp-$08
    inc h
    inc de
    add b
    nop
    nop
    scf
    inc de
    nop
    ld hl, sp+$36
    inc de
    ld hl, sp+$00
    daa
    inc de
    ld hl, sp-$08
    ld h, $13
    add b
    nop
    nop
    add hl, sp
    ld [de], a
    nop
    ld hl, sp+$38
    ld [de], a
    ld hl, sp+$00
    add hl, hl
    ld [de], a
    ld hl, sp-$08
    jr z, jr_014_4c14

    add b
    nop
    nop
    dec sp
    ld [de], a
    nop
    ld hl, sp+$3a
    ld [de], a
    ld hl, sp+$00
    dec hl
    ld [de], a
    ld hl, sp-$08
    ld a, [hl+]
    ld [de], a
    add b

jr_014_4c14:
    nop
    nop
    dec a
    inc de
    nop
    ld hl, sp+$3c
    inc de
    ld hl, sp+$00
    dec l
    inc de
    ld hl, sp-$08
    inc l
    inc de
    add b
    nop
    nop
    ccf
    ld [de], a
    nop
    ld hl, sp+$3e
    ld [de], a
    ld hl, sp+$00
    cpl
    ld [de], a
    ld hl, sp-$08
    ld l, $12
    add b
    nop
    nop
    ld d, c
    inc de
    nop
    ld hl, sp+$50
    inc de
    ld hl, sp+$00
    ld b, c
    inc de
    ld hl, sp-$08
    ld b, b
    inc de
    add b
    nop
    nop
    ld d, e
    inc de
    nop
    ld hl, sp+$52
    inc de
    ld hl, sp+$00
    ld b, e
    inc de
    ld hl, sp-$08
    ld b, d
    inc de
    add b
    nop
    nop
    ld e, c
    inc de
    nop
    ld hl, sp+$58
    inc de
    ld hl, sp+$00
    ld c, c
    inc de
    ld hl, sp-$08
    ld c, b
    inc de
    add b
    nop
    nop
    ld e, e
    inc de
    nop
    ld hl, sp+$5a
    inc de
    ld hl, sp+$00
    ld c, e
    inc de
    ld hl, sp-$08
    ld c, d
    inc de
    add b
    ldh a, [rP1]
    rla
    rla
    ldh a, [$fff8]
    ld d, $17
    add sp, $00
    rlca
    rla
    add sp, -$08
    ld b, $17
    add b
    ldh a, [rP1]
    dec d
    rla
    ldh a, [$fff8]
    inc d
    rla
    add sp, $00
    dec b
    rla
    add sp, -$08
    inc b
    rla
    add b
    nop
    nop
    ld [hl], c
    inc de
    nop
    ld hl, sp+$70
    inc de
    ld hl, sp+$00
    ld h, c
    inc de
    ld hl, sp-$08
    ld h, b
    inc de
    add b
    nop
    nop
    ld [hl], e
    inc de
    nop
    ld hl, sp+$72
    inc de
    ld hl, sp+$00
    ld h, e
    inc de
    ld hl, sp-$08
    ld h, d
    inc de
    add b
    nop

Jump_014_4cbf:
    nop
    ld [hl], l
    inc de
    nop
    ld hl, sp+$74
    inc de
    ld hl, sp+$00
    ld h, l
    inc de
    ld hl, sp-$08
    ld h, h
    inc de
    add b
    nop
    nop
    ld [hl], a
    inc de
    nop
    ld hl, sp+$76
    inc de
    ld hl, sp+$00
    ld h, a
    inc de
    ld hl, sp-$08
    ld h, [hl]
    inc de
    add b
    nop
    nop
    ld a, c
    inc de
    nop
    ld hl, sp+$78
    inc de
    ld hl, sp+$00
    ld l, c
    inc de
    ld hl, sp-$08
    ld l, b
    inc de
    add b
    nop
    nop
    ld a, e
    inc de
    nop
    ld hl, sp+$7a
    inc de
    ld hl, sp+$00
    ld l, e
    inc de
    ld hl, sp-$08
    ld l, d
    inc de
    add b
    nop
    nop
    ld a, l
    inc de
    nop
    ld hl, sp+$7c
    inc de
    ld hl, sp+$00
    ld l, l
    inc de
    ld hl, sp-$08
    ld l, h
    inc de
    add b
    nop
    nop
    ld a, a
    inc de
    nop
    ld hl, sp+$7e
    inc de
    ld hl, sp+$00
    ld l, a
    inc de
    ld hl, sp-$08
    ld l, [hl]
    inc de
    add b
    nop
    nop
    sub c
    inc de
    nop
    ld hl, sp-$70
    inc de
    ld hl, sp+$00
    add c
    inc de
    ld hl, sp-$08
    add b
    inc de
    add b
    nop
    nop
    sub e
    inc de
    nop
    ld hl, sp-$6e
    inc de
    ld hl, sp+$00
    add e
    inc de
    ld hl, sp-$08
    add d
    inc de
    add b

jr_014_4d46:
    nop
    ld hl, sp+$0e
    inc de
    nop
    nop
    ld c, $13
    ld hl, sp+$00
    ld c, $13
    ld hl, sp-$08
    ld c, $13
    add b
    ld h, c
    ld c, l
    ld l, d
    ld c, l
    ld a, e
    ld c, l
    sub h

jr_014_4d5e:
    ld c, l
    xor l
    ld c, l
    ld hl, sp-$08
    ld b, h
    jr nz, jr_014_4d5e

jr_014_4d66:
    nop
    ld d, h
    nop
    add b
    xor $f7
    ld b, l
    nop
    db $f4
    ldh a, [c]
    ld d, l
    nop
    or $06

jr_014_4d74:
    ld b, l
    jr nz, jr_014_4d66

    ld bc, $2055
    add b
    db $fc
    xor $55
    jr nz, jr_014_4d74

    ldh a, [rHDMA5]
    nop
    db $fc
    rlca
    ld d, l
    jr nz, @-$09

    inc c
    ld d, l
    nop
    db $ed
    inc bc
    ld d, l
    ld h, b
    db $ec
    db $f4
    ld d, l
    nop
    add b
    rst $28
    xor $55
    nop
    ld hl, sp+$0f
    ld d, l
    jr nz, jr_014_4da1

    add hl, bc
    ld d, l
    ld h, b
    inc b

jr_014_4da1:
    xor $55
    nop
    db $fc
    db $eb
    ld d, l
    ld b, b
    ldh a, [$ff0c]
    ld d, l
    ld b, b
    add b
    dec b
    rst $20
    ld d, l
    ld h, b
    inc bc
    ld [de], a
    ld d, l
    ld h, b
    dec c
    ld c, $55
    ld b, b
    ld c, $ed
    ld d, l
    ld b, b
    or $ec
    ld d, l
    ld b, b
    or $0d
    ld d, l
    jr nz, jr_014_4d46

    sub $4d
    db $eb
    ld c, l
    nop
    ld c, [hl]
    dec d
    ld c, [hl]
    sub $4d
    db $eb
    ld c, l
    nop
    ld c, [hl]
    dec d
    ld c, [hl]
    add sp, $02
    ld e, a
    inc de
    add sp, -$06
    ld e, [hl]
    inc de
    ldh [$fffa], a
    ld c, [hl]
    inc de
    ldh a, [c]
    ld [bc], a
    ld e, h
    inc de
    push af
    push af
    ld e, l
    inc de
    add b
    add sp, -$08
    ld e, h
    inc de
    add sp, $00
    ld c, [hl]
    inc de
    ldh a, [rP1]
    ld e, [hl]
    inc de
    ld sp, hl
    db $f4
    ld e, h
    inc de
    ldh a, [$ff08]
    ld e, a
    inc de
    add b
    ld sp, hl
    cp $5f
    inc de
    ld sp, hl
    or $5e
    inc de
    pop af
    or $4e
    inc de
    db $ec
    ld sp, hl
    ld e, l
    inc de
    db $ed
    inc b
    ld e, h
    inc de
    add b
    db $eb
    db $fd
    ld e, h
    inc de
    ldh a, [rTMA]
    ld e, l
    inc de
    push af
    rst $30
    ld e, h
    inc de
    add b
    cp c
    ld c, [hl]
    cpl
    ld d, b
    cp c
    ld c, [hl]
    cpl
    ld d, b
    cp c
    ld c, [hl]
    db $db
    ld c, [hl]
    cpl
    ld d, b
    db $db
    ld c, [hl]
    cpl
    ld d, b
    db $db
    ld c, [hl]
    db $fd
    ld c, [hl]
    cpl
    ld d, b
    db $fd
    ld c, [hl]
    cpl
    ld d, b
    db $fd
    ld c, [hl]
    rra
    ld c, a
    cpl
    ld d, b
    rra
    ld c, a
    cpl
    ld d, b
    rra
    ld c, a
    ld b, c
    ld c, a
    cpl
    ld d, b
    ld b, c
    ld c, a
    cpl
    ld d, b
    ld b, c
    ld c, a
    ld h, e
    ld c, a
    cpl
    ld d, b
    ld h, e
    ld c, a
    cpl
    ld d, b
    ld h, e
    ld c, a
    xor b
    ld c, [hl]
    jp z, $ec4e

    ld c, [hl]
    ld c, $4f
    jr nc, jr_014_4eb7

    ld d, d
    ld c, a
    ld [hl], h
    ld c, a
    add l
    ld c, a
    and a
    ld c, a
    ret


    ld c, a
    db $eb
    ld c, a
    sub [hl]
    ld c, a
    cpl
    ld d, b
    sub [hl]
    ld c, a
    cpl
    ld d, b
    sub [hl]
    ld c, a
    cp b
    ld c, a
    cpl
    ld d, b
    cp b
    ld c, a
    cpl
    ld d, b
    cp b
    ld c, a
    jp c, Jump_000_2f4f

    ld d, b
    jp c, Jump_000_2f4f

    ld d, b
    jp c, $fc4f

    ld c, a
    cpl
    ld d, b
    db $fc
    ld c, a
    cpl
    ld d, b
    db $fc
    ld c, a
    dec c
    ld d, b
    ld e, $50
    cpl
    ld d, b
    ld e, $50
    cpl
    ld d, b
    ld e, $50
    nop
    nop
    sub l
    inc de
    nop
    ld hl, sp-$6c
    inc de
    ld hl, sp+$00
    add l
    inc de
    ld hl, sp-$08
    add h

jr_014_4eb7:
    inc de
    add b
    nop
    nop
    sub a
    inc de

Call_014_4ebd:
    nop
    ld hl, sp-$6a
    inc de
    ld hl, sp+$00
    add a
    inc de
    ld hl, sp-$08
    add [hl]
    inc de
    add b
    nop
    nop
    sbc c
    inc de
    nop
    ld hl, sp-$68
    inc de
    ld hl, sp+$00
    adc c
    inc de
    ld hl, sp-$08
    adc b
    inc de
    add b
    nop
    nop
    sbc e
    inc de
    nop
    ld hl, sp-$66
    inc de
    ld hl, sp+$00
    adc e
    inc de
    ld hl, sp-$08
    adc d
    inc de
    add b
    nop
    nop
    sbc l
    inc de
    nop
    ld hl, sp-$64
    inc de
    ld hl, sp+$00
    adc l
    inc de
    ld hl, sp-$08
    adc h
    inc de
    add b
    nop
    nop
    sbc a
    inc de
    nop
    ld hl, sp-$62
    inc de
    ld hl, sp+$00
    adc a
    inc de
    ld hl, sp-$08
    adc [hl]
    inc de
    add b
    nop
    nop
    or c
    inc de
    nop
    ld hl, sp-$50
    inc de
    ld hl, sp+$00
    and c
    inc de
    ld hl, sp-$08
    and b
    inc de
    add b
    nop
    nop
    or e
    inc de
    nop
    ld hl, sp-$4e
    inc de
    ld hl, sp+$00
    and e
    inc de
    ld hl, sp-$08
    and d
    inc de
    add b
    nop
    nop
    or l
    inc de
    nop
    ld hl, sp-$4c
    inc de
    ld hl, sp+$00
    and l
    inc de
    ld hl, sp-$08
    and h
    inc de
    add b
    nop
    nop
    or a
    inc de
    nop
    ld hl, sp-$4a
    inc de
    ld hl, sp+$00
    and a
    inc de
    ld hl, sp-$08
    and [hl]
    inc de
    add b
    nop
    nop
    cp c
    inc de
    nop
    ld hl, sp-$48
    inc de
    ld hl, sp+$00
    xor c
    inc de
    ld hl, sp-$08
    xor b
    inc de
    add b
    nop
    nop
    cp e
    inc de
    nop
    ld hl, sp-$46
    inc de
    ld hl, sp+$00
    xor e
    inc de
    ld hl, sp-$08
    xor d
    inc de
    add b
    nop
    nop
    cp l
    inc de
    nop
    ld hl, sp-$44
    inc de
    ld hl, sp+$00
    xor l
    inc de
    ld hl, sp-$08
    xor h
    inc de
    add b
    nop
    nop
    cp a
    inc de
    nop
    ld hl, sp-$42
    inc de
    ld hl, sp+$00
    xor a
    inc de
    ld hl, sp-$08
    xor [hl]
    inc de
    add b
    nop
    nop
    pop de
    inc de
    nop
    ld hl, sp-$30
    inc de
    ld hl, sp+$00
    pop bc
    inc de
    ld hl, sp-$08
    ret nz

    inc de
    add b
    nop
    nop
    db $d3
    inc de
    nop
    ld hl, sp-$2e
    inc de
    ld hl, sp+$00
    jp $f813


    ld hl, sp-$3e
    inc de
    add b
    nop
    nop
    push de
    inc de
    nop
    ld hl, sp-$2c
    inc de
    ld hl, sp+$00
    push bc
    inc de
    ld hl, sp-$08
    call nz, $8013
    nop
    nop
    rst $10
    inc de
    nop
    ld hl, sp-$2a
    inc de
    ld hl, sp+$00
    rst $00
    inc de
    ld hl, sp-$08
    add $13
    add b
    nop
    nop
    reti


    inc de
    nop
    ld hl, sp-$28
    inc de
    ld hl, sp+$00
    ret


    inc de
    ld hl, sp-$08
    ret z

    inc de
    add b
    nop
    nop
    db $db
    inc de
    nop
    ld hl, sp-$26
    inc de
    ld hl, sp+$00
    rl e
    ld hl, sp-$08
    jp z, $8013

    nop
    nop
    db $dd
    inc de
    nop
    ld hl, sp-$24
    inc de
    ld hl, sp+$00
    call $f813
    ld hl, sp-$34
    inc de
    add b
    nop
    nop
    rst $18
    inc de
    nop
    ld hl, sp-$22
    inc de
    ld hl, sp+$00
    rst $08
    inc de
    ld hl, sp-$08
    adc $13
    add b
    nop
    nop
    pop af
    inc de
    nop
    ld hl, sp-$10
    inc de
    ld hl, sp+$00
    pop hl
    inc de
    ld hl, sp-$08
    ldh [rNR13], a
    add b
    nop
    nop
    xor c
    stop
    ld hl, sp-$58
    db $10
    ld hl, sp+$00
    xor c
    db $10
    ld hl, sp-$08
    xor b
    db $10
    add b
    ld e, h
    ld d, l
    ld h, l
    ld d, l
    halt
    ld d, l
    ld e, h
    ld d, b
    sbc c
    ld d, b
    sub $50
    rlca
    ld d, c
    jr z, jr_014_50a1

    ld e, c
    ld d, c
    halt
    ld d, c
    adc e
    ld d, c
    sub b
    ld d, c
    xor c
    ld d, c
    jp nz, $fc51

    ld [$132c], sp
    db $fc
    nop
    dec hl
    inc de
    db $fc
    ld hl, sp+$2a
    inc de
    db $fc
    ldh a, [$ff29]
    inc de
    db $f4
    ld [$1328], sp
    db $f4
    nop
    daa
    inc de
    db $f4
    ld hl, sp+$26
    inc de
    db $f4
    ldh a, [rNR51]
    inc de
    db $ec
    ld [$1324], sp
    db $ec
    nop
    inc hl
    inc de
    db $ec
    ld hl, sp+$22
    inc de
    db $e4
    nop
    ld hl, $e413
    ld hl, sp+$20
    inc de
    call c, Call_000_1f00
    inc de
    call c, Call_000_1ef8
    inc de
    add b
    db $fc
    ld [$133b], sp
    db $fc
    nop
    ld a, [hl-]
    inc de

jr_014_50a1:
    db $fc
    ld hl, sp+$39
    inc de
    db $fc
    ldh a, [rWave_8]
    inc de
    db $f4
    ld [$1337], sp
    db $f4
    nop
    ld [hl], $13
    db $f4
    ld hl, sp+$35
    inc de
    db $f4
    ldh a, [rWave_4]
    inc de
    db $ec
    inc bc
    inc sp
    inc de

Call_014_50bd:
    db $ec
    ei
    ld [hl-], a
    inc de
    db $ec
    di
    ld sp, $e413
    inc bc
    jr nc, jr_014_50dc

    db $e4
    ei
    cpl
    inc de
    db $e4
    di
    ld l, $13
    call c, Call_000_2df8
    inc de
    add b
    cp $08
    ld b, a
    inc de
    cp $00

jr_014_50dc:
    ld b, [hl]
    inc de
    cp $f8
    ld b, l
    inc de
    cp $f0
    ld b, h
    inc de
    or $08
    ld b, e
    inc de
    or $00
    ld b, d
    inc de
    or $f8
    ld b, c
    inc de
    or $f0
    ld b, b
    inc de
    xor $08
    ccf
    inc de
    xor $00
    ld a, $13
    xor $f8
    dec a
    inc de
    xor $f0
    inc a
    inc de
    add b
    db $fd
    ld [$134f], sp
    db $fd
    nop
    ld c, [hl]
    inc de
    db $fd
    ld hl, sp+$4d
    inc de
    db $fd
    ldh a, [$ff4c]
    inc de
    push af
    ld [$134b], sp
    push af
    nop
    ld c, d
    inc de
    push af
    ld hl, sp+$49
    inc de
    push af
    ldh a, [rOBP0]
    inc de
    add b
    ldh a, [$fff8]
    add hl, de
    ld [hl], e
    db $ed
    ld hl, sp+$16
    inc de
    ld hl, sp+$02
    rla
    inc de
    pop af
    nop
    rla
    inc sp
    jp hl


    ld [bc], a
    ld a, [de]
    ld d, e
    ld [$1df8], a
    inc de
    xor $fc
    dec de
    inc sp
    ldh a, [c]
    ei
    inc e
    inc sp
    ei
    nop
    jr jr_014_517f

    or $fd
    dec e
    inc sp
    ld hl, sp-$08
    inc e
    inc de
    ld sp, hl
    ld hl, sp+$1b
    ld d, e
    add b
    db $fc
    ei
    inc e
    inc sp
    di
    inc bc
    ld d, $13
    or $fd
    ld a, [de]
    inc sp
    db $f4
    ld sp, hl
    dec de
    inc de
    or $f6
    rla
    inc sp
    ld a, [$18f6]
    inc de
    ld a, [$1d04]
    inc sp
    add b
    ei
    ld bc, $1318
    ei
    dec b
    rla
    inc sp
    ei

jr_014_517f:
    ld sp, hl
    inc e
    inc sp
    cp $fe
    dec de
    inc de
    db $fd
    db $f4
    ld a, [de]
    inc de
    add b
    ld hl, sp+$00
    dec d
    inc de
    add b
    db $f4
    rst $30
    add hl, de
    inc de
    or $01
    dec e
    inc de
    di
    ld bc, $131c
    ld sp, hl
    ld hl, sp+$18
    inc de
    db $f4
    db $fc
    ld a, [de]
    inc de
    ld hl, sp-$01
    ld d, $13
    add b
    ld sp, hl
    push af
    ld a, [de]
    ld d, e
    di
    push af
    ld a, [de]
    inc de
    xor $fb
    rla
    inc de
    push af
    inc bc
    jr jr_014_51cc

    ldh a, [rP1]
    inc e
    inc sp
    cp $01
    dec de
    inc sp
    add b
    db $fc
    ld [bc], a
    dec de
    ld [hl], e
    ei
    db $f4
    inc e
    ld d, e
    di
    ldh a, [c]

jr_014_51cc:
    ld a, [de]
    ld d, e
    db $ec
    inc bc
    inc e
    ld [hl], e
    ld [$17f7], a
    ld d, e
    ld hl, sp+$06
    ld a, [de]
    inc sp
    add b
    ld hl, sp+$00
    ld d, e
    inc d
    ld hl, sp-$08
    ld d, d
    inc d
    ldh a, [rP1]
    ld d, c
    inc d
    ldh a, [$fff8]
    ld d, b
    inc d
    add b
    ld hl, sp+$00
    ld d, a
    inc d
    ld hl, sp-$08
    ld d, [hl]
    inc d
    ldh a, [rP1]
    ld d, l
    inc d
    ldh a, [$fff8]
    ld d, h
    inc d
    add b
    ld hl, sp+$00
    ld e, c
    inc d
    ld hl, sp-$08
    ld e, b
    inc d
    ldh a, [rP1]
    ld d, l
    inc d
    ldh a, [$fff8]
    ld d, h
    inc d
    add b
    ld hl, sp+$00
    ld e, l
    inc d
    ld hl, sp-$08
    ld e, h
    inc d
    ldh a, [rP1]
    ld e, e
    inc d
    ldh a, [$fff8]
    ld e, d
    inc d
    add b
    ld hl, sp+$00
    ld h, c
    inc d
    ld hl, sp-$08
    ld h, b
    inc d
    ldh a, [rP1]
    ld e, a
    inc d
    ldh a, [$fff8]
    ld e, [hl]
    inc d
    add b
    ld hl, sp+$00
    ld h, e
    inc d
    ld hl, sp-$08
    ld h, d
    inc d
    ldh a, [rP1]
    ld e, a
    inc d
    ldh a, [$fff8]
    ld e, [hl]
    inc d
    add b
    ld hl, sp+$00
    ld h, a
    inc d
    ld hl, sp-$08
    ld h, [hl]
    inc d
    ldh a, [rP1]
    ld h, l
    inc d
    ldh a, [$fff8]
    ld h, h
    inc d
    add b
    ld hl, sp+$00
    ld l, e
    inc d
    ld hl, sp-$08
    ld l, d
    inc d
    ldh a, [rP1]
    ld l, c
    inc d
    ldh a, [$fff8]
    ld l, b
    inc d
    add b
    ld hl, sp+$00
    ld l, l
    inc d
    ld hl, sp-$08
    ld l, h
    inc d
    ldh a, [rP1]
    ld l, c
    inc d
    ldh a, [$fff8]
    ld l, b
    inc d
    add b
    ld hl, sp-$07
    ld h, a
    inc [hl]
    ld hl, sp+$01
    ld h, [hl]
    inc [hl]
    ldh a, [$fff9]
    ld h, l
    inc [hl]
    ldh a, [rSB]
    ld h, h
    inc [hl]
    add b
    ld hl, sp-$07
    ld l, e
    inc [hl]
    ld hl, sp+$01
    ld l, d
    inc [hl]
    ldh a, [$fff9]
    ld l, c
    inc [hl]
    ldh a, [rSB]
    ld l, b
    inc [hl]
    add b
    ld hl, sp-$07
    ld l, l
    inc [hl]
    ld hl, sp+$01
    ld l, h
    inc [hl]
    ldh a, [$fff9]
    ld l, c
    inc [hl]
    ldh a, [rSB]
    ld l, b
    inc [hl]
    add b
    ld hl, sp+$00
    ld [hl], c
    inc d
    ld hl, sp-$08
    ld [hl], b
    inc d
    ldh a, [rP1]
    ld l, a
    inc d
    ldh a, [$fff8]
    ld l, [hl]
    inc d
    add b
    ld hl, sp+$00
    ld [hl], l
    inc d
    ld hl, sp-$08
    ld [hl], h
    inc d
    ldh a, [rP1]
    ld [hl], e
    inc d
    ldh a, [$fff8]
    ld [hl], d
    inc d
    add b
    ei
    ld bc, $167b
    ei
    ld sp, hl
    ld a, d
    ld d, $fb
    pop af
    ld a, c
    inc d
    di
    ld bc, $1678
    di
    ld sp, hl
    ld [hl], a
    ld d, $f3
    pop af
    halt
    inc d
    add b
    ei
    ld bc, $167b
    di
    ld bc, $1678
    ei
    ld sp, hl
    ld a, a
    ld d, $fb
    pop af
    ld a, [hl]
    inc d
    di
    ld sp, hl
    ld a, l
    ld d, $f3
    pop af
    ld a, h
    inc d
    add b
    db $ed
    ld d, e
    db $ed
    ld d, e
    db $ed
    ld d, e
    db $ed
    ld d, e
    db $ed
    ld d, e
    db $ed
    ld d, e
    db $ed
    ld d, e
    db $ed
    ld d, e
    db $ed
    ld d, e
    db $ed
    ld d, e
    db $ed
    ld d, e
    db $ed
    ld d, e
    db $ed
    ld d, e
    db $ed
    ld d, e
    db $ed
    ld d, e
    db $ed
    ld d, e
    db $ed
    ld d, e
    db $ed
    ld d, e
    db $ed
    ld d, e
    db $ed
    ld d, e
    db $ed
    ld d, e
    db $ed
    ld d, e
    db $ed
    ld d, e
    db $ed
    ld d, e
    db $ed
    ld d, e
    db $ed
    ld d, e
    db $ed
    ld d, e
    db $ed
    ld d, e
    ldh a, [rHDMA3]
    ldh a, [rHDMA3]
    ldh a, [rHDMA3]
    ei
    ld d, e
    cp $53
    add hl, bc
    ld d, h
    inc c
    ld d, h
    rla
    ld d, h
    ld a, [de]
    ld d, h
    dec h
    ld d, h
    jr z, jr_014_539d

    inc sp
    ld d, h
    ld [hl], $54
    ld b, c
    ld d, h
    ld b, h
    ld d, h
    ld c, a
    ld d, h
    ld d, d
    ld d, h
    ld d, a
    ld d, h
    ld e, h
    ld d, h
    ld h, c
    ld d, h
    ld h, [hl]
    ld d, h
    ld l, a
    ld d, h
    ld a, b
    ld d, h
    ld a, a
    ld d, h
    sub d
    ld d, h
    and l
    ld d, h
    xor [hl]
    ld d, h
    rst $00
    ld d, h
    rst $00
    ld d, h
    rst $00
    ld d, h
    rst $00
    ld d, h
    rst $00
    ld d, h
    rst $00
    ld d, h
    jp z, $d554

    ld d, h
    push de
    ld d, h
    push de
    ld d, h
    dec l
    ld d, l
    push de
    ld d, h
    push de
    ld d, h
    push de
    ld d, h
    push de
    ld d, h
    push de
    ld d, h
    push de
    ld d, h
    push de
    ld d, h
    ret c

    ld d, h
    db $e3
    ld d, h
    db $e3
    ld d, h
    dec l
    ld d, l
    dec l
    ld d, l
    db $e3
    ld d, h
    db $e3
    ld d, h
    db $e3
    ld d, h

jr_014_539d:
    db $e3
    ld d, h
    db $e3
    ld d, h
    db $e3
    ld d, h
    db $e3
    ld d, h
    db $e3
    ld d, h
    and $54
    ld sp, hl
    ld d, h
    inc c
    ld d, l
    ld de, $1c55
    ld d, l
    dec l
    ld d, l
    dec l
    ld d, l
    dec l
    ld d, l
    dec l
    ld d, l
    dec l
    ld d, l
    dec l
    ld d, l
    jr c, jr_014_5414

    jr c, jr_014_5416

    jr c, @+$57

    jr c, jr_014_541a

    jr c, jr_014_541c

    jr c, jr_014_541e

    ldh a, [rHDMA3]
    jr c, jr_014_5422

    jr c, jr_014_5424

    jr c, jr_014_5426

    jr c, jr_014_5428

    jr c, jr_014_542a

    dec l
    ld d, l
    dec l
    ld d, l
    dec l
    ld d, l
    dec l
    ld d, l
    jr c, jr_014_5434

    dec l
    ld d, l
    jr c, jr_014_5438

    jr c, jr_014_543a

    jr c, jr_014_543c

    dec sp
    ld d, l
    ld b, h
    ld d, l
    ld d, l
    ld d, l
    ldh a, [rP1]
    rst $38
    rra
    nop
    ld b, $01
    ld b, $02
    ld b, $03
    ld b, $04
    rst $38
    ldh a, [rP1]
    rst $38
    rra
    nop
    ld b, $01
    ld b, $02
    ld b, $03
    ld b, $04
    rst $38
    ldh a, [rP1]
    rst $38
    rra
    nop
    ld b, $01
    ld b, $02
    ld b, $03

jr_014_5414:
    ld b, $04

jr_014_5416:
    rst $38
    ldh a, [rP1]
    rst $38

jr_014_541a:
    rra
    nop

jr_014_541c:
    ld b, $01

jr_014_541e:
    ld b, $02
    ld b, $03

jr_014_5422:
    ld b, $04

jr_014_5424:
    cp $f0

jr_014_5426:
    nop
    rst $38

jr_014_5428:
    rra
    nop

jr_014_542a:
    ld b, $01
    ld b, $02
    ld b, $03
    ld b, $04
    cp $f0

jr_014_5434:
    nop
    rst $38
    rra
    nop

jr_014_5438:
    ld b, $01

jr_014_543a:
    ld b, $02

jr_014_543c:
    ld b, $03
    ld b, $04
    cp $f0
    nop
    rst $38
    rra
    nop
    ld b, $01
    ld b, $02
    ld b, $03
    ld b, $04
    cp $f0
    nop
    rst $38
    ld [$0800], sp
    ld bc, $08ff
    nop
    ld [$ff01], sp
    ld [$0800], sp
    ld bc, $08ff
    nop
    ld [$ff01], sp
    ld [$0800], sp
    ld bc, $0206
    inc b
    inc bc
    rst $38
    ld [$0800], sp
    ld bc, $0206
    inc b
    inc bc
    rst $38
    ld [$0800], sp
    ld bc, $0208
    rst $38
    inc c
    nop
    inc c
    ld bc, $020c
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
    ld [$0fff], sp
    nop
    ld [$0601], sp
    ld [bc], a
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
    ld [$08ff], sp
    nop
    ld [$0801], sp
    ld [bc], a
    ld [$ff03], sp
    inc b
    nop
    inc b
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
    rst $38
    ldh a, [rP1]
    rst $38
    rra
    nop
    ld b, $01
    ld b, $02
    ld b, $03
    ld b, $04
    rst $38
    ldh a, [rP1]
    rst $38
    rra
    nop
    ld b, $01
    ld b, $02
    ld b, $03
    ld b, $04
    rst $38
    ldh a, [rP1]
    rst $38
    ld [$0800], sp
    ld bc, $0208
    ld b, $03
    ld b, $04
    ld b, $05
    ld b, $06
    ld b, $07
    ld b, $08
    rst $38
    ld [$0800], sp
    ld bc, $0208
    ld b, $03
    ld b, $04
    ld b, $05
    ld b, $06
    ld b, $07
    ld b, $08
    rst $38
    rra
    nop
    rra
    ld bc, $08ff
    nop
    ld [$0801], sp
    ld [bc], a
    ld [$1803], sp
    inc b
    rst $38
    ld [$0800], sp
    ld bc, $0208
    ld [$0803], sp
    inc b
    ld [$0805], sp
    ld b, $08
    rlca
    rst $38
    rra
    nop
    ld b, $01
    ld b, $02
    ld b, $03
    ld b, $04
    rst $38
    ldh a, [rP1]
    rst $38
    rrca
    nop
    ld [$0801], sp
    ld [bc], a
    ld [$ff03], sp
    ld a, [bc]
    nop
    ld a, [bc]
    ld bc, $0208
    ld [$0803], sp
    ld [bc], a
    ld [$0803], sp
    ld [bc], a
    ld [$ff03], sp
    ld [$0800], sp
    ld bc, $0208
    rst $38
    db $fc
    db $fc
    ld l, [hl]
    dec b
    db $f4
    db $fc
    ld l, l
    dec b
    add b
    nop
    nop
    ld b, c
    dec b
    nop
    ld hl, sp+$40
    inc b
    ld hl, sp+$00
    ld sp, $f805
    ld hl, sp+$30
    inc b
    add b
    nop
    nop
    and l
    ld d, $00
    ld hl, sp-$5c
    ld d, $f8
    nop
    sub l
    ld d, $f8
    ld hl, sp-$6c
    ld d, $80
    nop
    nop
    ld b, a
    ld d, a
    nop
    nop
    ld c, c
    ld d, a
    nop
    nop
    ld c, e
    ld d, a
    nop
    nop
    ld c, l
    ld d, a
    nop
    nop
    ld c, a
    ld d, a
    nop
    nop
    ld d, c
    ld d, a
    nop
    nop
    ld d, e
    ld d, a
    nop
    nop
    ld d, l
    ld d, a
    nop
    nop
    ld d, a
    ld d, a
    nop
    nop
    ld e, c
    ld d, a
    nop
    nop
    ld e, e
    ld d, a
    nop
    nop
    ld e, l
    ld d, a
    nop
    nop
    ld e, a
    ld d, a
    nop
    nop
    ld h, e
    ld d, a
    nop
    nop
    ld h, a
    ld d, a
    nop
    nop
    ld l, e
    ld d, a
    nop
    nop
    ld l, a
    ld d, a
    nop
    nop
    ld [hl], e
    ld d, a
    nop
    nop
    ld [hl], a
    ld d, a
    nop
    nop
    ld a, e
    ld d, a
    nop
    nop
    ld a, a
    ld d, a
    nop
    nop
    add e
    ld d, a
    nop
    nop
    add a
    ld d, a
    nop
    nop
    adc e
    ld d, a
    nop
    nop
    ld [hl], b
    ld e, c
    nop
    nop
    ld [hl], b
    ld e, c
    nop
    nop
    ld [hl], b
    ld e, c
    nop
    nop
    ld [hl], b
    ld e, c
    nop
    nop
    ld [hl], b
    ld e, c
    nop
    nop
    ld [hl], b
    ld e, c
    nop
    nop
    ld [hl], b
    ld e, c
    nop
    nop
    ld [hl], b
    ld e, c
    nop
    nop
    ld [hl], b
    ld e, c
    nop
    nop
    ld [hl], d
    ld e, c
    nop
    nop
    ld [hl], h
    ld e, c
    nop
    nop
    halt
    ld e, c
    nop
    nop
    ld a, b
    ld e, c
    nop
    nop
    ld a, d
    ld e, c
    nop
    nop
    ld a, h
    ld e, c
    nop
    nop
    ld a, [hl]
    ld e, c
    nop
    nop
    add b
    ld e, c
    nop
    nop
    add d
    ld e, c
    nop
    nop
    add h
    ld e, c
    nop
    nop
    add [hl]
    ld e, c
    nop
    nop
    adc b
    ld e, c
    nop
    nop
    adc h
    ld e, c
    nop
    nop
    sub b
    ld e, c
    nop
    nop
    sub h
    ld e, c
    nop
    nop
    sbc b
    ld e, c
    nop
    nop
    sbc h
    ld e, c
    nop
    nop
    and b
    ld e, c
    nop
    nop
    and h
    ld e, c
    nop
    nop
    xor b
    ld e, c
    nop
    nop
    xor h
    ld e, c
    nop
    nop
    or b
    ld e, c
    nop
    nop
    or h
    ld e, c
    nop
    nop
    dec e
    ld e, h
    nop
    nop
    dec e
    ld e, h
    nop
    nop
    dec e
    ld e, h
    nop
    nop
    dec e
    ld e, h
    nop
    nop
    dec e
    ld e, h
    nop
    nop
    dec e
    ld e, h
    nop
    nop
    dec e
    ld e, h
    nop
    nop
    dec e
    ld e, h
    nop
    nop
    dec e
    ld e, h
    nop
    nop
    rra
    ld e, h
    nop
    nop
    ld hl, $005c
    nop
    inc hl
    ld e, h
    nop
    nop
    dec h
    ld e, h
    nop
    nop
    daa
    ld e, h
    nop
    nop
    add hl, hl
    ld e, h
    nop
    nop
    dec hl
    ld e, h
    nop
    nop
    dec l
    ld e, h
    nop
    nop
    cpl
    ld e, h
    nop
    nop
    ld sp, $005c
    nop
    inc sp
    ld e, h
    nop
    nop
    dec [hl]
    ld e, h
    nop
    nop
    add hl, sp
    ld e, h
    nop
    nop
    dec a
    ld e, h
    nop
    nop
    ld b, c
    ld e, h
    nop
    nop
    ld b, l
    ld e, h
    nop
    nop
    ld c, c
    ld e, h
    nop
    nop
    ld c, l
    ld e, h
    nop
    nop
    ld d, c
    ld e, h
    nop
    nop
    ld d, l
    ld e, h
    nop
    nop
    ld e, c
    ld e, h
    nop
    nop
    ld e, l
    ld e, h
    nop
    nop
    ld h, c
    ld e, h
    nop
    nop
    ld h, l
    ld e, h
    nop
    nop
    ld l, c
    ld e, h
    nop
    nop
    ld l, l
    ld e, h
    nop
    nop
    ld [hl], c
    ld e, h
    nop
    nop
    ld [hl], l
    ld e, h
    nop
    nop
    ld [hl], a
    ld e, h
    nop
    nop
    ld a, c
    ld e, h
    nop
    nop
    ld a, e
    ld e, h
    nop
    nop
    sub e
    ld h, d
    nop
    nop
    sub a
    ld h, d
    nop
    nop
    sbc e
    ld h, d
    nop
    nop
    sbc a
    ld h, d
    nop
    nop
    and e
    ld h, d
    nop
    nop
    and l
    ld h, d
    nop
    nop
    and a
    ld h, d
    nop
    nop
    xor c
    ld h, d
    nop
    nop
    xor e
    ld h, d
    nop
    nop
    xor l
    ld h, d
    nop
    nop
    xor a
    ld h, d
    nop
    nop
    or c
    ld h, d
    nop
    nop
    ld a, l
    ld e, h
    nop
    nop
    ld a, a
    ld e, h
    nop
    nop
    add c
    ld e, h
    nop
    nop
    add e
    ld e, h
    or l
    ld e, b
    adc a
    ld d, a
    ld [hl+], a
    ld e, b
    inc l
    ld e, c
    add sp, $58
    adc $57
    ld h, c
    ld e, b
    add sp, $58
    ld sp, hl
    ld e, b
    db $e3
    ld d, a
    halt
    ld e, b
    ld sp, hl
    ld e, b
    add $58
    rst $10
    ld e, b
    and h
    ld d, a
    cp c
    ld d, a
    scf
    ld e, b
    ld c, h
    ld e, b
    dec a
    ld e, c
    ld c, [hl]
    ld e, c
    ld a, [bc]
    ld e, c
    dec de
    ld e, c
    ld hl, sp+$57
    dec c
    ld e, b
    adc e
    ld e, b
    and b
    ld e, b
    ld a, [bc]
    ld e, c
    dec de
    ld e, c
    ld e, a
    ld e, c
    inc l
    ld e, c
    ld e, a
    ld e, c
    inc l
    ld e, c
    ld e, a
    ld e, c
    inc l
    ld e, c
    ld e, a
    ld e, c
    inc l
    ld e, c
    ld hl, sp+$08
    cp d
    inc d
    ld [bc], a
    nop
    pop af
    inc d
    ld [bc], a
    ld hl, sp-$10
    dec d
    ld a, [$e100]
    inc d
    ld a, [$e0f8]
    inc d
    add b
    ld hl, sp+$08
    cp d
    inc d
    ld [bc], a
    nop
    db $e3
    inc d
    ld [bc], a
    ld hl, sp-$1e
    dec d
    ld a, [$e100]
    inc d
    ld a, [$e0f8]
    inc d
    add b
    ld hl, sp+$08
    cp d
    inc d
    ld [bc], a
    nop
    di
    inc d
    ld [bc], a
    ld hl, sp-$0e
    dec d
    ld a, [$e100]
    inc d
    ld a, [$e0f8]
    inc d
    add b
    ld a, [$e4f8]
    inc d
    ld hl, sp+$08
    cp d
    inc d
    ld [bc], a
    nop
    pop af
    inc d
    ld [bc], a
    ld hl, sp-$10
    dec d
    ld a, [$e100]
    inc d
    add b
    ld a, [$f4f8]
    inc d
    ld hl, sp+$08
    cp d
    inc d
    ld [bc], a
    nop
    pop af
    inc d
    ld [bc], a
    ld hl, sp-$10
    dec d
    ld a, [$e100]
    inc d
    add b
    ld sp, hl
    ld [$14ba], sp
    inc bc
    nop
    or $14
    inc bc
    ld hl, sp-$0b
    dec d
    ei
    nop
    and $14
    ei
    ld hl, sp-$1b
    inc d
    add b
    ld sp, hl
    ld [$14ba], sp
    inc bc
    nop
    ld hl, sp+$14
    inc bc
    ld hl, sp-$09
    dec d
    ei
    nop
    add sp, $14
    ei
    ld hl, sp-$19
    inc d
    add b
    ld hl, sp-$10
    cp d
    inc [hl]
    ld [bc], a
    ld hl, sp-$0f
    inc [hl]
    ld [bc], a
    nop
    ldh a, [rWave_5]
    ld a, [$e1f8]
    inc [hl]
    ld a, [$e000]
    inc [hl]
    add b
    ld hl, sp-$10
    cp d
    inc [hl]
    ld [bc], a
    ld hl, sp-$1d
    inc [hl]
    ld [bc], a
    nop
    ldh [c], a
    dec [hl]
    ld a, [$e1f8]
    inc [hl]
    ld a, [$e000]
    inc [hl]
    add b
    ld hl, sp-$10
    cp d
    inc [hl]
    ld [bc], a
    ld hl, sp-$0d
    inc [hl]
    ld [bc], a
    nop
    ldh a, [c]
    dec [hl]
    ld a, [$e1f8]
    inc [hl]
    ld a, [$e000]
    inc [hl]
    add b
    ld a, [$e400]
    inc [hl]
    ld hl, sp-$10
    cp d
    inc [hl]
    ld [bc], a
    ld hl, sp-$0f
    inc [hl]
    ld [bc], a
    nop
    ldh a, [rWave_5]
    ld a, [$e1f8]
    inc [hl]
    add b
    ld a, [$f400]
    inc [hl]
    ld hl, sp-$10
    cp d
    inc [hl]
    ld [bc], a
    ld hl, sp-$0f
    inc [hl]
    ld [bc], a
    nop
    ldh a, [rWave_5]
    ld a, [$e1f8]
    inc [hl]
    add b
    ld sp, hl
    ldh a, [$ffba]
    inc [hl]
    inc bc
    ld hl, sp-$0a
    inc [hl]
    inc bc
    nop
    push af
    dec [hl]
    ei
    ld hl, sp-$1a
    inc [hl]
    ei
    nop
    push hl
    inc [hl]
    add b
    ld sp, hl
    ldh a, [$ffba]
    inc [hl]
    inc bc
    ld hl, sp-$08
    inc [hl]
    inc bc
    nop
    rst $30
    dec [hl]
    ei
    ld hl, sp-$18
    inc [hl]
    ei
    nop
    rst $20
    inc [hl]
    add b
    nop
    nop
    pop de
    dec d
    nop
    ld hl, sp-$30
    dec d
    ld hl, sp+$00
    pop bc
    inc d
    ld hl, sp-$08
    ret nz

    inc d
    add b
    nop
    ld hl, sp-$50
    dec d
    nop
    nop
    pop de
    dec d
    ld hl, sp+$00
    pop bc
    inc d
    ld hl, sp-$08
    ret nz

    inc d
    add b
    nop
    nop
    or c
    dec d
    nop
    ld hl, sp-$30
    dec d
    ld hl, sp+$00
    pop bc
    inc d
    ld hl, sp-$08
    ret nz

    inc d
    add b
    nop
    nop
    db $d3
    dec d
    nop
    ld hl, sp-$2e
    dec d
    ld hl, sp+$00
    pop bc
    inc d
    ld hl, sp-$08
    ret nz

    inc d
    add b
    nop
    nop
    jp Jump_000_0015


    ld hl, sp-$3e
    dec d
    ld hl, sp+$00
    pop bc
    inc d
    ld hl, sp-$08
    ret nz

    inc d
    add b
    ld sp, hl
    nop
    or l
    inc d
    ld sp, hl
    ld hl, sp-$4c
    inc d
    ld bc, $b300
    dec d
    ld bc, $b2f8
    dec d
    add b
    ld bc, $d500
    dec d
    ld bc, $d4f8
    dec d
    ld sp, hl
    nop
    push bc
    inc d
    ld sp, hl
    ld hl, sp-$3c
    inc d
    add b
    nop
    nop
    rst $10
    inc d
    nop
    ld hl, sp-$2a
    inc d
    ld hl, sp+$00
    rst $00
    inc d
    ld hl, sp-$08
    add $14
    add b
    nop
    ld hl, sp-$4a
    inc d
    nop
    nop
    rst $10
    inc d
    ld hl, sp+$00
    rst $00
    inc d
    ld hl, sp-$08
    add $14
    add b
    nop
    ld hl, sp-$17
    inc d
    nop
    nop
    or a
    inc d
    ld hl, sp+$00
    rst $00
    inc d
    ld hl, sp-$08
    add $14
    add b
    nop
    nop
    ld sp, hl
    inc d
    nop
    ld hl, sp-$17
    inc d
    ld hl, sp+$00
    rst $00
    inc d
    ld hl, sp-$08
    add $14
    add b
    ld d, $5b
    cp b
    ld e, c
    ld h, a
    ld e, d
    cp c
    ld e, e
    ld h, c
    ld e, e
    inc bc
    ld e, d
    or d
    ld e, d
    ld h, c
    ld e, e
    ld a, d
    ld e, e
    inc e
    ld e, d
    bit 3, d
    ld a, d
    ld e, e
    cpl
    ld e, e
    ld c, b
    ld e, e
    pop de
    ld e, c
    ld [$8059], a
    ld e, d
    sbc c
    ld e, d
    db $eb
    ld e, e
    jp nc, $935b

    ld e, e
    and h
    ld e, e
    dec [hl]
    ld e, d
    ld c, [hl]
    ld e, d
    db $e4
    ld e, d
    db $fd
    ld e, d
    sub e
    ld e, e
    and h
    ld e, e
    inc b
    ld e, h
    cp c
    ld e, e
    inc b
    ld e, h
    cp c
    ld e, e
    inc b
    ld e, h
    cp c
    ld e, e
    inc b
    ld e, h
    cp c
    ld e, e
    nop
    or $56
    dec d
    nop
    ld [bc], a
    ld e, b
    inc d
    nop
    ld a, [$1457]
    ld hl, sp+$02
    ld d, l
    inc d
    ld hl, sp-$06
    ld d, h
    inc d
    ld hl, sp-$0e
    ld d, e
    inc d
    add b
    nop
    or $56
    dec d
    nop
    ld [bc], a
    ld e, d
    inc d
    nop
    ld a, [$1459]
    ld hl, sp+$02
    ld d, l
    inc d
    ld hl, sp-$06
    ld d, h
    inc d
    ld hl, sp-$0e
    ld d, e
    inc d
    add b
    nop
    or $56
    dec d
    nop
    ld [bc], a
    ld e, h
    inc d
    nop
    ld a, [$145b]
    ld hl, sp+$02
    ld d, l
    inc d
    ld hl, sp-$06
    ld d, h
    inc d
    ld hl, sp-$0e
    ld d, e
    inc d
    add b
    nop
    or $56
    dec d
    ld hl, sp-$06
    ld e, [hl]
    inc d
    ld hl, sp-$0e
    ld e, l
    inc d
    nop
    ld [bc], a
    ld e, b
    inc d
    nop
    ld a, [$1457]
    ld hl, sp+$02
    ld d, l
    inc d
    add b
    nop
    or $56
    dec d
    ld hl, sp-$06
    ld h, b
    inc d
    ld hl, sp-$0e
    ld e, a
    inc d
    nop
    ld [bc], a
    ld e, b
    inc d
    nop
    ld a, [$1457]
    ld hl, sp+$02
    ld d, l
    inc d
    add b
    nop
    dec b
    ld h, [hl]
    inc d
    nop
    db $fd
    ld h, l
    inc d
    nop
    push af
    ld h, h
    dec d
    ld hl, sp+$05
    ld h, e
    inc d
    ld hl, sp-$03
    ld h, d
    inc d
    ld hl, sp-$0b
    ld h, c
    inc d
    add b
    nop
    db $fd
    ld l, d
    inc d
    nop
    push af
    ld l, c
    dec d
    ld hl, sp-$03
    ld l, b
    inc d
    ld hl, sp-$0b
    ld h, a
    inc d
    nop
    dec b
    ld h, [hl]
    inc d
    ld hl, sp+$05
    ld h, e
    inc d
    add b
    nop
    ld [bc], a
    ld d, [hl]
    dec [hl]
    nop
    or $58
    inc [hl]
    nop
    cp $57
    inc [hl]
    ld hl, sp-$0a
    ld d, l
    inc [hl]
    ld hl, sp-$02
    ld d, h
    inc [hl]
    ld hl, sp+$06
    ld d, e
    inc [hl]
    add b
    nop
    ld [bc], a
    ld d, [hl]
    dec [hl]
    nop
    or $5a
    inc [hl]
    nop
    cp $59
    inc [hl]
    ld hl, sp-$0a
    ld d, l
    inc [hl]
    ld hl, sp-$02
    ld d, h
    inc [hl]
    ld hl, sp+$06
    ld d, e
    inc [hl]
    add b
    nop
    ld [bc], a
    ld d, [hl]
    dec [hl]
    nop
    or $5c
    inc [hl]
    nop
    cp $5b
    inc [hl]
    ld hl, sp-$0a
    ld d, l
    inc [hl]
    ld hl, sp-$02
    ld d, h
    inc [hl]
    ld hl, sp+$06
    ld d, e
    inc [hl]
    add b
    nop
    ld [bc], a
    ld d, [hl]
    dec [hl]
    ld hl, sp-$02
    ld e, [hl]
    inc [hl]
    ld hl, sp+$06
    ld e, l
    inc [hl]
    nop
    or $58
    inc [hl]
    nop
    cp $57
    inc [hl]
    ld hl, sp-$0a
    ld d, l
    inc [hl]
    add b
    nop
    ld [bc], a
    ld d, [hl]
    dec [hl]
    ld hl, sp-$02
    ld h, b
    inc [hl]
    ld hl, sp+$06
    ld e, a
    inc [hl]
    nop
    or $58
    inc [hl]
    nop
    cp $57
    inc [hl]
    ld hl, sp-$0a
    ld d, l
    inc [hl]
    add b
    nop
    di
    ld h, [hl]
    inc [hl]
    nop
    ei
    ld h, l
    inc [hl]
    nop
    inc bc
    ld h, h
    dec [hl]
    ld hl, sp-$0d
    ld h, e
    inc [hl]
    ld hl, sp-$05
    ld h, d
    inc [hl]
    ld hl, sp+$03
    ld h, c
    inc [hl]
    add b
    nop
    ei
    ld l, d
    inc [hl]
    nop
    inc bc
    ld l, c
    dec [hl]
    ld hl, sp-$05
    ld l, b
    inc [hl]
    ld hl, sp+$03
    ld h, a
    inc [hl]
    nop
    di
    ld h, [hl]
    inc [hl]
    ld hl, sp-$0d
    ld h, e
    inc [hl]
    add b
    inc bc
    nop
    ld [hl], b
    dec d
    inc bc
    ld hl, sp+$6f
    dec d
    ei
    nop
    ld l, [hl]
    inc d
    ei
    ld hl, sp+$6d
    inc d
    di
    nop
    ld l, h
    inc d
    di
    ld hl, sp+$6b
    inc d
    add b
    inc bc
    ld hl, sp+$71
    dec d
    inc bc
    nop
    ld [hl], b
    dec d
    ei
    nop
    ld l, [hl]
    inc d
    ei
    ld hl, sp+$6d
    inc d
    di
    nop
    ld l, h
    inc d
    di
    ld hl, sp+$6b
    inc d
    add b
    inc bc
    nop
    ld [hl], d
    dec d
    inc bc
    ld hl, sp+$6f
    dec d
    ei
    nop
    ld l, [hl]
    inc d
    ei
    ld hl, sp+$6d
    inc d
    di
    nop
    ld l, h
    inc d
    di
    ld hl, sp+$6b
    inc d
    add b
    ei
    nop
    ld [hl], h
    inc d
    ei
    ld hl, sp+$73
    inc d
    inc bc
    nop
    ld [hl], b
    dec d
    inc bc
    ld hl, sp+$6f
    dec d
    di
    nop
    ld l, h
    inc d
    di
    ld hl, sp+$6b
    inc d
    add b
    ei
    nop
    halt
    inc d
    ei
    ld hl, sp+$75
    inc d
    inc bc
    nop
    ld [hl], b
    dec d
    inc bc
    ld hl, sp+$6f
    dec d
    di
    nop
    ld l, h
    inc d
    di
    ld hl, sp+$6b
    inc d
    add b
    ld bc, $7f00
    dec d
    ld bc, $7ef8
    dec d
    ld sp, hl
    nop
    ld a, l
    inc d
    ld sp, hl
    ld hl, sp+$7c
    inc d
    add b
    add hl, bc
    ld hl, sp+$7b
    inc d
    ld bc, $7a00
    dec d
    ld bc, $79f8
    dec d
    ld sp, hl
    nop
    ld a, b
    inc d
    ld sp, hl
    ld hl, sp+$77
    inc d
    add b
    ldh a, [rP1]
    rst $28
    inc d
    ldh a, [$fff8]
    xor $14
    nop
    nop
    db $fd
    inc d
    nop
    ld hl, sp-$04
    inc d
    ld hl, sp+$00
    db $ed
    inc d
    ld hl, sp-$08
    db $ec
    inc d
    add b
    nop
    nop
    db $eb
    inc d
    ldh a, [rP1]
    rst $28
    inc d
    ldh a, [$fff8]
    xor $14
    nop
    ld hl, sp-$04
    inc d
    ld hl, sp+$00
    db $ed
    inc d
    ld hl, sp-$08
    db $ec
    inc d
    add b
    nop
    nop
    ei
    inc d
    nop
    ld hl, sp-$16
    inc d
    ldh a, [rP1]
    rst $28
    inc d
    ldh a, [$fff8]
    xor $14
    ld hl, sp+$00
    db $ed
    inc d
    ld hl, sp-$08
    db $ec
    inc d
    add b
    nop
    nop
    ei
    inc d
    nop
    ld hl, sp-$06
    inc d
    ldh a, [rP1]
    rst $28
    inc d
    ldh a, [$fff8]
    xor $14
    ld hl, sp+$00
    db $ed
    inc d
    ld hl, sp-$08
    db $ec
    inc d
    add b
    ld b, a
    ld e, [hl]
    add l
    ld e, h
    ld h, [hl]
    ld e, l
    jr z, jr_014_5c84

    sub d
    ld e, [hl]
    ret nc

    ld e, h
    or c
    ld e, l
    sub d
    ld e, [hl]
    call nz, $025e
    ld e, l
    db $e3
    ld e, l
    call nz, Call_014_605e
    ld e, [hl]
    ld a, c
    ld e, [hl]
    sbc [hl]
    ld e, h
    or a
    ld e, h
    ld a, a
    ld e, l
    sbc b
    ld e, l
    ld b, c
    ld e, a
    ld e, d
    ld e, a
    or $5e
    rrca
    ld e, a
    inc [hl]
    ld e, l
    ld c, l
    ld e, l
    dec d
    ld e, [hl]
    ld l, $5e
    or $5e
    rrca
    ld e, a
    ld [hl], e
    ld e, a
    jr z, jr_014_5cb8

    ld [hl], e
    ld e, a
    jr z, @+$61

    ld [hl], e
    ld e, a
    jr z, @+$61

    ld [hl], e
    ld e, a
    jr z, @+$61

    bit 4, c
    db $e4
    ld h, c
    add hl, bc
    ld h, b
    ld [hl+], a
    ld h, b
    ld [$0360], a
    ld h, c
    bit 4, c
    db $e4
    ld h, c
    or d
    ld h, c
    ldh a, [$ff5f]
    pop de
    ld h, b
    or d
    ld h, c
    db $dd
    ld e, [hl]
    dec de
    ld e, l
    db $fc
    ld e, l
    db $dd

jr_014_5c84:
    ld e, [hl]
    nop
    db $f4
    rst $18
    dec d
    ld hl, sp+$02
    rst $08
    inc d
    ld hl, sp-$06
    cp a
    inc d
    ld hl, sp-$0e
    xor a
    inc d
    nop
    ld [bc], a
    add hl, de
    inc d
    nop
    ld a, [$1418]
    add b
    nop
    push af
    rst $18
    dec d
    ld hl, sp+$02
    rst $08
    inc d
    ld hl, sp-$06
    cp a
    inc d
    ld hl, sp-$0e
    xor a
    inc d
    nop
    ld [bc], a
    dec de
    inc d
    nop
    ld a, [$141a]
    add b
    nop

jr_014_5cb8:
    push af
    rst $18
    dec d
    ld hl, sp+$02
    rst $08
    inc d
    ld hl, sp-$06
    cp a
    inc d
    ld hl, sp-$0e
    xor a
    inc d
    nop
    ld [bc], a
    dec e
    inc d
    nop
    ld a, [$141c]
    add b
    nop
    db $f4
    rst $18
    dec d
    ld hl, sp+$02
    rst $08
    inc d
    nop
    ld [bc], a
    add hl, de
    inc d
    nop
    ld a, [$1418]
    ld hl, sp-$06
    rra
    inc d
    ld hl, sp-$0e
    ld e, $14
    add b
    nop
    db $f4
    rst $18
    dec d
    ld hl, sp+$02
    rst $08
    inc d
    ld hl, sp-$03
    ld hl, $f814
    push af
    jr nz, @+$18

    nop
    ld [bc], a
    add hl, de
    inc d
    nop
    ld a, [$1418]
    add b
    nop
    db $f4
    rst $18
    dec d
    ld hl, sp+$02
    rst $08
    inc d
    ld hl, sp-$06
    inc hl
    inc d
    ld hl, sp-$0e
    ld [hl+], a
    inc d
    nop
    ld [bc], a
    add hl, de
    inc d
    nop
    ld a, [$1418]
    add b
    nop
    db $f4
    rst $18
    dec d
    ld hl, sp+$02
    rst $08
    inc d
    ld hl, sp-$06
    dec h
    inc d
    ld hl, sp-$0e
    inc h
    inc d
    nop
    ld [bc], a
    add hl, de
    inc d
    nop
    ld a, [$1418]
    add b
    nop
    inc bc
    dec hl
    inc d
    nop
    ei
    ld a, [hl+]
    inc d
    nop
    di
    add hl, hl
    dec d
    ld hl, sp+$03
    jr z, jr_014_5d58

    ld hl, sp-$05
    daa
    inc d
    ld hl, sp-$0d
    ld h, $14
    add b
    nop
    ei
    cpl
    inc d
    nop
    di
    ld l, $15
    ld hl, sp-$05
    dec l

jr_014_5d58:
    inc d
    ld hl, sp-$0d
    inc l
    inc d
    nop
    inc bc
    dec hl
    inc d
    ld hl, sp+$03
    jr z, jr_014_5d79

    add b
    nop
    inc b
    rst $18
    dec [hl]
    ld hl, sp-$0a
    rst $08
    inc [hl]
    ld hl, sp-$02
    cp a
    inc [hl]
    ld hl, sp+$06
    xor a
    inc [hl]
    nop
    or $19

jr_014_5d79:
    inc [hl]
    nop
    cp $18
    inc [hl]
    add b
    nop
    inc bc
    rst $18
    dec [hl]
    ld hl, sp-$0a
    rst $08
    inc [hl]
    ld hl, sp-$02
    cp a
    inc [hl]
    ld hl, sp+$06
    xor a
    inc [hl]
    nop
    or $1b
    inc [hl]
    nop
    cp $1a
    inc [hl]
    add b
    nop
    inc bc
    rst $18
    dec [hl]
    ld hl, sp-$0a
    rst $08
    inc [hl]
    ld hl, sp-$02
    cp a
    inc [hl]
    ld hl, sp+$06
    xor a
    inc [hl]
    nop
    or $1d
    inc [hl]
    nop
    cp $1c
    inc [hl]
    add b
    nop
    inc b
    rst $18
    dec [hl]
    ld hl, sp-$0a
    rst $08
    inc [hl]
    nop
    or $19
    inc [hl]
    nop
    cp $18
    inc [hl]
    ld hl, sp-$02
    rra
    inc [hl]
    ld hl, sp+$06
    ld e, $34
    add b
    nop
    inc b
    rst $18
    dec [hl]
    ld hl, sp-$0a
    rst $08
    inc [hl]
    ld hl, sp-$05
    ld hl, $f834
    inc bc
    jr nz, jr_014_5e10

    nop
    or $19
    inc [hl]
    nop
    cp $18
    inc [hl]
    add b
    nop
    inc b
    rst $18
    dec [hl]
    ld hl, sp-$0a
    rst $08
    inc [hl]
    ld hl, sp-$02
    inc hl
    inc [hl]
    ld hl, sp+$06
    ld [hl+], a
    inc [hl]
    nop
    or $19
    inc [hl]
    nop
    cp $18
    inc [hl]
    add b
    nop
    inc b
    rst $18
    dec [hl]
    ld hl, sp-$0a
    rst $08
    inc [hl]
    ld hl, sp-$02
    dec h
    inc [hl]
    ld hl, sp+$06
    inc h
    inc [hl]
    nop
    or $19
    inc [hl]

jr_014_5e10:
    nop
    cp $18
    inc [hl]
    add b
    nop
    push af
    dec hl
    inc [hl]
    nop
    db $fd
    ld a, [hl+]
    inc [hl]
    nop
    dec b
    add hl, hl
    dec [hl]
    ld hl, sp-$0b
    jr z, jr_014_5e59

    ld hl, sp-$03
    daa
    inc [hl]
    ld hl, sp+$05
    ld h, $34
    add b
    nop
    db $fd
    cpl
    inc [hl]
    nop
    dec b
    ld l, $35
    ld hl, sp-$03
    dec l
    inc [hl]
    ld hl, sp+$05
    inc l
    inc [hl]
    nop
    push af
    dec hl
    inc [hl]
    ld hl, sp-$0b
    jr z, @+$36

    add b
    ld bc, $3500
    dec d
    ld bc, $34f8
    dec d
    ld sp, hl
    nop
    inc sp
    inc d
    ld sp, hl
    ld hl, sp+$32
    inc d
    pop af
    nop

jr_014_5e59:
    ld sp, $f114
    ld hl, sp+$30
    inc d
    add b
    ld bc, $36f8
    dec d
    ld bc, $3500
    dec d
    ld sp, hl
    nop
    inc sp
    inc d
    ld sp, hl
    ld hl, sp+$32
    inc d
    pop af
    nop
    ld sp, $f114
    ld hl, sp+$30
    inc d
    add b
    ld bc, $3700
    dec d
    ld bc, $34f8
    dec d
    ld sp, hl
    nop
    inc sp
    inc d
    ld sp, hl
    ld hl, sp+$32
    inc d
    pop af
    nop
    ld sp, $f114
    ld hl, sp+$30
    inc d
    add b
    ld sp, hl
    nop
    add hl, sp
    inc d
    ld sp, hl
    ld hl, sp+$38
    inc d
    ld bc, $3500
    dec d
    ld bc, $34f8
    dec d
    pop af
    nop
    ld sp, $f114
    ld hl, sp+$30
    inc d
    add b
    ld sp, hl
    nop
    dec sp
    ld d, $f9
    ld hl, sp+$3a
    ld d, $01
    nop
    dec [hl]
    dec d
    ld bc, $34f8
    dec d
    pop af
    nop
    ld sp, $f114
    ld hl, sp+$30
    inc d
    add b
    ld sp, hl
    nop
    dec a
    inc d
    ld sp, hl
    ld hl, sp+$3c
    inc d
    ld bc, $3500
    dec d
    ld bc, $34f8
    dec d
    pop af
    nop
    ld sp, $f114
    ld hl, sp+$30
    inc d
    add b
    ld sp, hl
    nop
    ccf
    inc d
    ld sp, hl
    ld hl, sp+$3e
    inc d
    ld bc, $3500
    dec d
    ld bc, $34f8
    dec d
    pop af
    nop
    ld sp, $f114
    ld hl, sp+$30
    inc d
    add b
    ei
    nop
    ld b, [hl]
    inc d
    ei
    ld hl, sp+$45
    inc d
    inc bc
    nop
    ld b, d
    dec d
    inc bc
    ld hl, sp+$41
    dec d
    di
    nop
    ld sp, $f314
    ld hl, sp+$40
    inc d
    add b
    inc bc
    nop
    ld c, b
    dec d
    inc bc
    ld hl, sp+$47
    dec d
    ei
    nop
    ld b, [hl]
    inc d
    ei
    ld hl, sp+$45
    inc d
    di
    nop
    ld b, h
    inc d
    di
    ld hl, sp+$43
    inc d
    add b
    ld bc, $4e00
    inc d
    ld bc, $4df8
    inc d
    ld sp, hl
    nop
    ld c, h
    inc d
    ld sp, hl
    ld hl, sp+$4b
    inc d
    pop af
    nop
    ld c, d
    inc d
    pop af
    ld hl, sp+$49
    inc d
    add b
    ld bc, $5200
    inc d
    ld bc, $4ff8
    inc d
    ld sp, hl
    nop
    ld c, h
    inc d
    ld sp, hl
    ld hl, sp+$4b
    inc d
    pop af
    nop
    ld c, d
    inc d
    pop af
    ld hl, sp+$49
    inc d
    add b
    ld bc, $4df8
    inc d
    ld bc, $5000
    inc d
    ld sp, hl
    nop
    ld c, h
    inc d
    ld sp, hl
    ld hl, sp+$4b
    inc d
    pop af
    nop
    ld c, d
    inc d
    pop af
    ld hl, sp+$49
    inc d
    add b
    ld bc, $5200
    inc d
    ld bc, $51f8
    inc d
    ld sp, hl
    nop
    ld c, h
    inc d
    ld sp, hl
    ld hl, sp+$4b
    inc d
    pop af
    nop
    ld c, d
    inc d
    pop af
    ld hl, sp+$49
    inc d
    add b
    nop
    db $f4
    rst $18
    dec d
    ld hl, sp+$02
    rst $08
    inc d
    ld hl, sp-$06
    cp a
    inc d
    ld hl, sp-$0e
    xor a
    inc d
    nop
    ld [bc], a
    add hl, de
    inc d
    nop
    ld a, [$1418]
    add b
    nop
    push af
    rst $18
    dec d
    ld hl, sp+$02
    rst $08
    inc d
    ld hl, sp-$06
    cp a
    inc d
    ld hl, sp-$0e
    xor a
    inc d
    nop
    ld [bc], a
    dec de
    inc d
    nop
    ld a, [$141a]
    add b
    nop
    push af
    rst $18
    dec d
    ld hl, sp+$02
    rst $08
    inc d
    ld hl, sp-$06
    cp a
    inc d
    ld hl, sp-$0e
    xor a
    inc d
    nop
    ld [bc], a
    dec e
    inc d
    nop
    ld a, [$141c]
    add b
    nop
    db $f4
    rst $18
    dec d
    ld hl, sp+$02
    rst $08
    inc d
    nop
    ld [bc], a
    add hl, de
    inc d
    nop
    ld a, [$1418]
    ld hl, sp-$06
    rra
    inc d
    ld hl, sp-$0e
    ld e, $14
    add b
    nop
    db $f4
    rst $18
    dec d
    ld hl, sp+$02
    rst $08
    inc d
    ld hl, sp-$03
    ld hl, $f814
    push af
    jr nz, jr_014_6016

    nop
    ld [bc], a
    add hl, de
    inc d
    nop
    ld a, [$1418]
    add b
    nop
    push af
    rst $18
    dec d
    ld hl, sp+$02
    rst $08
    inc d
    nop
    ld [bc], a
    dec de
    inc d
    nop

jr_014_6016:
    ld a, [$141a]
    ld hl, sp-$03
    ld hl, $f814
    push af
    jr nz, jr_014_6037

    add b
    nop
    push af
    rst $18
    dec d
    ld hl, sp+$02
    rst $08
    inc d
    nop
    ld [bc], a
    dec e
    inc d
    nop
    ld a, [$141c]
    ld hl, sp-$03
    ld hl, $f814

jr_014_6037:
    push af
    jr nz, @+$18

    add b
    nop
    inc bc
    dec hl
    inc d
    nop
    ei
    ld a, [hl+]
    inc d
    nop
    di
    add hl, hl
    dec d
    ld hl, sp+$03
    jr z, jr_014_605f

    ld hl, sp-$05
    daa
    inc d
    ld hl, sp-$0d
    ld h, $14
    add b
    nop
    ei
    cpl
    inc d
    nop
    di
    ld l, $15
    ld hl, sp-$05

Call_014_605e:
    dec l

jr_014_605f:
    inc d
    ld hl, sp-$0d
    inc l
    inc d
    nop
    inc bc
    dec hl
    inc d
    ld hl, sp+$03
    jr z, jr_014_6080

    add b
    nop
    inc b
    rst $18
    dec [hl]
    ld hl, sp-$0a
    rst $08
    inc [hl]
    ld hl, sp-$02
    cp a
    inc [hl]
    ld hl, sp+$06
    xor a
    inc [hl]
    nop
    or $19

jr_014_6080:
    inc [hl]
    nop
    cp $18
    inc [hl]
    add b
    nop
    inc bc
    rst $18
    dec [hl]
    ld hl, sp-$0a
    rst $08
    inc [hl]
    ld hl, sp-$02
    cp a
    inc [hl]
    ld hl, sp+$06
    xor a
    inc [hl]
    nop
    or $1b
    inc [hl]
    nop
    cp $1a
    inc [hl]
    add b
    nop
    inc bc
    rst $18
    dec [hl]
    ld hl, sp-$0a
    rst $08
    inc [hl]
    ld hl, sp-$02
    cp a
    inc [hl]
    ld hl, sp+$06
    xor a
    inc [hl]
    nop
    or $1d
    inc [hl]
    nop
    cp $1c
    inc [hl]
    add b
    nop
    inc b
    rst $18
    dec [hl]
    ld hl, sp-$0a
    rst $08
    inc [hl]
    nop
    or $19
    inc [hl]
    nop
    cp $18
    inc [hl]
    ld hl, sp-$02
    rra
    inc [hl]
    ld hl, sp+$06
    ld e, $34
    add b
    nop
    inc b
    rst $18
    dec [hl]
    ld hl, sp-$0a
    rst $08
    inc [hl]
    ld hl, sp-$05
    ld hl, $f834
    inc bc
    jr nz, @+$38

    nop
    or $19
    inc [hl]
    nop
    cp $18
    inc [hl]
    add b
    nop
    inc bc
    rst $18
    dec [hl]
    ld hl, sp-$0a
    rst $08
    inc [hl]
    nop
    or $1b
    inc [hl]
    nop
    cp $1a
    inc [hl]
    ld hl, sp-$05
    ld hl, $f834
    inc bc
    jr nz, jr_014_6138

    add b
    nop
    inc bc
    rst $18
    dec [hl]
    ld hl, sp-$0a
    rst $08
    inc [hl]
    nop
    or $1d
    inc [hl]
    nop
    cp $1c
    inc [hl]
    ld hl, sp-$05
    ld hl, $f834
    inc bc
    jr nz, jr_014_6151

    add b
    nop
    push af
    dec hl
    inc [hl]
    nop
    db $fd
    ld a, [hl+]
    inc [hl]
    nop
    dec b
    add hl, hl
    dec [hl]
    ld hl, sp-$0b
    jr z, jr_014_6160

    ld hl, sp-$03
    daa
    inc [hl]
    ld hl, sp+$05
    ld h, $34
    add b
    nop
    db $fd
    cpl

jr_014_6138:
    inc [hl]
    nop
    dec b
    ld l, $35
    ld hl, sp-$03
    dec l
    inc [hl]
    ld hl, sp+$05
    inc l
    inc [hl]
    nop
    push af
    dec hl
    inc [hl]
    ld hl, sp-$0b
    jr z, jr_014_6181

    add b
    inc bc
    nop
    dec [hl]

jr_014_6151:
    dec d
    inc bc
    ld hl, sp+$34
    dec d
    ei
    nop
    inc sp
    inc d
    ei
    ld hl, sp+$32
    inc d
    di
    nop

jr_014_6160:
    ld sp, $f314
    ld hl, sp+$30
    inc d
    add b
    inc bc
    ld hl, sp+$36
    dec d
    inc bc
    nop
    dec [hl]
    dec d
    ei
    nop
    inc sp
    inc d
    ei
    ld hl, sp+$32
    inc d
    di
    nop
    ld sp, $f314
    ld hl, sp+$30
    inc d
    add b
    inc bc

jr_014_6181:
    nop
    scf
    dec d
    inc bc
    ld hl, sp+$34
    dec d
    ei
    nop
    inc sp
    inc d
    ei
    ld hl, sp+$32
    inc d
    di
    nop
    ld sp, $f314
    ld hl, sp+$30
    inc d
    add b
    ei
    nop
    add hl, sp
    inc d
    ei
    ld hl, sp+$38
    inc d
    inc bc
    nop
    dec [hl]
    dec d
    inc bc
    ld hl, sp+$34
    dec d
    di
    nop
    ld sp, $f314
    ld hl, sp+$30
    inc d
    add b
    ei
    nop
    dec sp
    ld d, $fb
    ld hl, sp+$3a
    ld d, $03
    nop
    dec [hl]
    dec d
    inc bc
    ld hl, sp+$34
    dec d
    di
    nop
    ld sp, $f314
    ld hl, sp+$30
    inc d
    add b
    inc bc
    ld hl, sp+$36
    dec d
    inc bc
    nop
    dec [hl]
    dec d
    ei
    nop
    dec sp
    ld d, $fb
    ld hl, sp+$3a
    ld d, $f3
    nop
    ld sp, $f314
    ld hl, sp+$30
    inc d
    add b
    ei
    nop
    dec sp
    ld d, $fb
    ld hl, sp+$3a
    ld d, $03
    nop
    scf
    dec d
    inc bc
    ld hl, sp+$34
    dec d
    di
    nop
    ld sp, $f314
    ld hl, sp+$30
    inc d
    add b
    db $fd
    nop
    ld b, [hl]
    inc d
    db $fd
    ld hl, sp+$45
    inc d
    dec b
    nop
    ld b, d
    dec d
    dec b
    ld hl, sp+$41
    dec d
    push af
    nop
    ld sp, $f514
    ld hl, sp+$40
    inc d
    add b
    dec b
    nop
    ld c, b
    dec d
    dec b
    ld hl, sp+$47
    dec d
    db $fd
    nop
    ld b, [hl]
    inc d
    db $fd
    ld hl, sp+$45
    inc d
    push af
    nop
    ld b, h
    inc d
    push af
    ld hl, sp+$43
    inc d
    add b
    inc bc
    nop
    ld c, [hl]
    inc d
    inc bc
    ld hl, sp+$4d
    inc d
    ei
    nop
    ld c, h
    inc d
    ei
    ld hl, sp+$4b
    inc d
    di
    nop
    ld c, d
    inc d
    di
    ld hl, sp+$49
    inc d
    add b
    inc bc
    nop
    ld d, d
    inc d
    inc bc
    ld hl, sp+$4f
    inc d
    ei
    nop
    ld c, h
    inc d
    ei
    ld hl, sp+$4b
    inc d
    di
    nop
    ld c, d
    inc d
    di
    ld hl, sp+$49
    inc d
    add b
    inc bc
    ld hl, sp+$4d
    inc d
    inc bc
    nop
    ld d, b
    inc d
    ei
    nop
    ld c, h
    inc d
    ei
    ld hl, sp+$4b
    inc d
    di
    nop
    ld c, d
    inc d
    di
    ld hl, sp+$49
    inc d
    add b
    inc bc
    nop
    ld d, d
    inc d
    inc bc
    ld hl, sp+$51
    inc d
    ei
    nop
    ld c, h
    inc d
    ei
    ld hl, sp+$4b
    inc d
    di
    nop
    ld c, d
    inc d
    di
    ld hl, sp+$49
    inc d
    add b
    call z, $b362
    ld h, d
    call z, $b362
    ld h, d
    rla
    ld h, e
    cp $62
    rla
    ld h, e
    cp $62
    or e
    ld h, d
    or e
    ld h, d
    cp $62
    or e
    ld h, d
    push hl
    ld h, d
    push hl
    ld h, d
    jr nc, jr_014_6314

    jr nc, jr_014_6316

    ld hl, sp-$0c
    ret z

    inc d
    nop
    dec b
    cp e
    inc d
    nop
    db $fd
    xor e
    inc d
    nop
    push af
    xor d
    dec d
    ld hl, sp+$04
    jp z, $f814

    db $fc
    ret


    inc d
    add b
    nop
    dec b
    jp c, Jump_000_0014

    db $fd
    reti


    inc d
    nop
    push af
    ret c

    dec d
    ld hl, sp-$0c
    ret z

    inc d
    ld hl, sp+$04
    jp z, $f814

    db $fc
    ret


    inc d
    add b
    ld hl, sp-$04
    db $db
    inc d
    ld hl, sp-$0c
    rl h
    nop
    dec b
    cp e
    inc d
    nop
    db $fd
    xor e
    inc d
    nop
    push af
    xor d
    dec d
    ld hl, sp+$04
    jp z, $8014

    ld hl, sp+$04
    ret z

    inc [hl]
    nop
    di
    cp e
    inc [hl]
    nop
    ei
    xor e
    inc [hl]
    nop
    inc bc
    xor d
    dec [hl]
    ld hl, sp-$0c
    jp z, $f834

    db $fc

jr_014_6314:
    ret


    inc [hl]

jr_014_6316:
    add b
    nop
    di
    jp c, Jump_000_0034

    ei
    reti


    inc [hl]
    nop
    inc bc
    ret c

    dec [hl]
    ld hl, sp+$04
    ret z

    inc [hl]
    ld hl, sp-$0c
    jp z, $f834

    db $fc
    ret


    inc [hl]
    add b
    ld hl, sp-$04
    db $db
    inc [hl]
    ld hl, sp+$04
    swap h
    nop
    di
    cp e
    inc [hl]
    nop
    ei
    xor e
    inc [hl]
    nop
    inc bc
    xor d
    dec [hl]
    ld hl, sp-$0c
    jp z, $8034

    add hl, hl
    ld h, h
    add hl, hl
    ld h, h
    add hl, hl
    ld h, h
    add hl, hl
    ld h, h
    inc l
    ld h, h
    inc l
    ld h, h
    inc l
    ld h, h
    inc l
    ld h, h
    cpl
    ld h, h
    cpl
    ld h, h
    cpl
    ld h, h
    cpl
    ld h, h
    ld [hl-], a
    ld h, h
    ld [hl-], a
    ld h, h
    ld [hl-], a
    ld h, h
    ld [hl-], a
    ld h, h
    scf
    ld h, h
    scf
    ld h, h
    scf
    ld h, h
    scf
    ld h, h
    inc a
    ld h, h
    inc a
    ld h, h
    inc a
    ld h, h
    inc a
    ld h, h
    ld b, c
    ld h, h
    ld b, c
    ld h, h
    ld b, c
    ld h, h
    ld b, c
    ld h, h
    ld b, c
    ld h, h
    ld b, c
    ld h, h
    ld b, c
    ld h, h
    ld b, c
    ld h, h
    ld b, c
    ld h, h
    ld b, c
    ld h, h
    ld b, c
    ld h, h
    ld b, c
    ld h, h
    ld b, h
    ld h, h
    ld b, h
    ld h, h
    ld b, h
    ld h, h
    ld b, h
    ld h, h
    ld b, a
    ld h, h
    ld b, a
    ld h, h
    ld b, a
    ld h, h
    ld b, a
    ld h, h
    ld c, d
    ld h, h
    ld c, d
    ld h, h
    ld c, d
    ld h, h
    ld c, d
    ld h, h
    ld c, a
    ld h, h
    ld c, a
    ld h, h
    ld c, a
    ld h, h
    ld c, a
    ld h, h
    ld d, h
    ld h, h
    ld d, h
    ld h, h
    ld d, h
    ld h, h
    ld d, h
    ld h, h
    ld e, c
    ld h, h
    ld e, c
    ld h, h
    ld e, c
    ld h, h
    ld e, c
    ld h, h
    ld e, c
    ld h, h
    ld e, c
    ld h, h
    ld e, c
    ld h, h
    ld e, c
    ld h, h
    ld e, c
    ld h, h
    ld e, c
    ld h, h
    ld e, c
    ld h, h
    ld e, c
    ld h, h
    ld e, h
    ld h, h
    ld e, h
    ld h, h
    ld e, h
    ld h, h
    ld e, h
    ld h, h
    ld e, a
    ld h, h
    ld e, a
    ld h, h
    ld e, a
    ld h, h
    ld e, a
    ld h, h
    ld h, d
    ld h, h
    ld h, d
    ld h, h
    ld h, d
    ld h, h
    ld h, d
    ld h, h
    ld h, a
    ld h, h
    ld h, a
    ld h, h
    ld h, a
    ld h, h
    ld h, a
    ld h, h
    ld l, h
    ld h, h
    ld l, h
    ld h, h
    ld l, h
    ld h, h
    ld l, h
    ld h, h
    ld [hl], c
    ld h, h
    ld [hl], c
    ld h, h
    ld [hl], c
    ld h, h
    ld [hl], c
    ld h, h
    halt
    ld h, h
    halt
    ld h, h
    halt
    ld h, h
    halt
    ld h, h
    ld a, c
    ld h, h
    ld a, c
    ld h, h
    ld a, c
    ld h, h
    ld a, c
    ld h, h
    ld a, [hl]
    ld h, h
    ld a, [hl]
    ld h, h
    ld a, [hl]
    ld h, h
    ld a, [hl]
    ld h, h
    add c
    ld h, h
    add c
    ld h, h
    add c
    ld h, h
    add c
    ld h, h
    add h
    ld h, h
    add h
    ld h, h
    add h
    ld h, h
    add h
    ld h, h
    ldh a, [rP1]
    rst $38
    ldh a, [rP1]
    rst $38
    ldh a, [rP1]
    rst $38
    rra
    nop
    rra
    ld bc, $1fff
    nop
    rra
    ld bc, $1fff
    nop
    rra
    ld bc, $f0ff
    nop
    rst $38
    ldh a, [rP1]
    rst $38
    ldh a, [rP1]
    rst $38
    rra
    nop
    rra
    ld bc, $1fff
    nop
    rra
    ld bc, $1fff
    nop
    rra
    ld bc, $f0ff
    nop
    rst $38
    ldh a, [rP1]
    rst $38
    ldh a, [rP1]
    rst $38
    rra
    nop
    rra
    ld bc, $1fff
    nop
    rra
    ld bc, $1fff
    nop
    rra
    ld bc, $1fff
    nop
    rra
    ld bc, $f0ff
    nop
    rst $38
    rra
    nop
    rra
    ld bc, $f0ff
    nop
    rst $38
    ldh a, [rP1]
    rst $38
    ldh a, [rP1]
    rst $38
    nop
    nop
    ld h, e
    ld h, a
    nop
    nop
    ld h, a
    ld h, a
    nop
    nop
    ld l, e
    ld h, a
    nop
    nop
    ld l, a
    ld h, a
    nop
    nop
    ld [hl], e
    ld h, a
    nop
    nop
    ld [hl], a
    ld h, a
    nop
    nop
    ld a, e
    ld h, a
    nop
    nop
    ld a, a
    ld h, a
    nop
    nop
    add e
    ld h, a
    nop
    nop
    add a
    ld h, a
    nop
    nop
    adc e
    ld h, a
    nop
    nop
    adc a
    ld h, a
    nop
    nop
    sub e
    ld h, a
    nop
    nop
    sub a
    ld h, a
    nop
    nop
    sbc e
    ld h, a
    nop
    nop
    sbc a
    ld h, a
    nop
    nop
    and e
    ld h, a
    nop
    nop
    and a
    ld h, a
    nop
    nop
    xor e
    ld h, a
    nop
    nop
    xor a
    ld h, a
    nop
    nop
    or e
    ld h, a
    nop
    nop
    or a
    ld h, a
    nop
    nop
    cp e
    ld h, a
    nop
    nop
    cp a
    ld h, a
    nop
    nop
    jp Jump_000_0067


    nop
    rst $00
    ld h, a
    nop
    nop
    bit 4, a
    nop
    nop
    rst $08
    ld h, a
    db $fc
    inc b
    jp hl


    dec d
    db $f4
    db $fc
    ret c

    dec d
    db $fc
    db $fc
    add sp, $15
    add b
    db $fc
    inc b
    jp c, $fc15

    db $fc
    reti


    dec d
    add b
    db $f4
    db $fc
    db $db
    dec d
    db $fc
    db $fc
    db $eb
    dec d
    db $fc
    db $f4
    ld [$8015], a
    db $fc
    db $fc
    db $ec
    dec d
    add b
    db $f4
    db $fc
    db $ed
    dec d
    db $fc
    db $fc
    xor $15
    add b
    db $fc
    db $fc
    rst $28
    dec d
    add b
    db $fc
    db $f4
    jp hl


    dec [hl]
    db $f4
    db $fc
    ret c

    dec [hl]
    db $fc
    db $fc
    add sp, $35
    add b
    db $fc
    db $f4
    jp c, $fc35

    db $fc
    reti


    dec [hl]
    add b
    nop
    nop
    pop bc
    dec d
    ld hl, sp+$00
    or c
    inc d
    nop
    ld hl, sp-$40
    dec d
    ld hl, sp-$08
    or b
    inc d
    add b
    nop
    nop
    jp $f815


    nop
    or e
    inc d
    nop
    ld hl, sp-$3e
    dec d
    ld hl, sp-$08
    or d
    inc d
    add b
    nop
    nop
    push bc
    dec d
    nop
    ld hl, sp-$3c
    dec d
    ld hl, sp+$00
    or l
    inc d
    ld hl, sp-$08
    or h
    inc d
    add b
    nop
    nop
    rst $00
    dec d
    nop
    ld hl, sp-$3a
    inc d
    ld hl, sp+$00
    or a
    inc d
    ld hl, sp-$08
    or [hl]
    inc d
    add b
    nop
    nop
    ret


    inc d
    nop
    ld hl, sp-$38
    dec d
    ld hl, sp+$00
    cp c
    inc d
    ld hl, sp-$08
    cp b
    inc d
    add b
    nop
    nop
    rl h
    nop
    ld hl, sp-$36
    dec d
    ld hl, sp+$00
    cp e
    inc d
    ld hl, sp-$08
    cp d
    inc d
    add b
    nop
    ld hl, sp-$37
    inc [hl]
    nop
    nop
    ret z

    dec [hl]
    ld hl, sp-$08
    cp c
    inc [hl]
    ld hl, sp+$00
    cp b
    inc [hl]
    add b
    nop
    ld hl, sp-$35
    inc [hl]
    nop
    nop
    jp z, $f835

    ld hl, sp-$45
    inc [hl]
    ld hl, sp+$00
    cp d
    inc [hl]
    add b
    ld hl, sp+$00
    pop de
    inc d
    nop
    nop
    pop hl
    inc d
    nop
    ld hl, sp-$20
    dec d
    ld hl, sp-$08
    ret nc

    inc d
    add b
    nop
    nop
    db $e3
    inc d
    nop
    ld hl, sp-$1e
    inc d
    ld hl, sp+$00
    db $d3
    inc d
    ld hl, sp-$08
    jp nc, $8014

    ld hl, sp-$08
    pop de
    inc [hl]
    nop
    ld hl, sp-$1f
    inc [hl]
    nop
    nop
    ldh [rWave_5], a
    ld hl, sp+$00
    ret nc

    inc [hl]
    add b
    nop
    ld hl, sp-$1d
    inc [hl]
    nop
    nop
    ldh [c], a
    inc [hl]
    ld hl, sp-$08
    db $d3
    inc [hl]
    ld hl, sp+$00
    jp nc, $8034

    ld hl, sp+$00
    push de
    inc d
    nop
    ld hl, sp-$1c
    dec d
    ld hl, sp-$08
    call nc, Call_000_0014
    nop
    push hl
    dec d
    add b
    nop
    nop
    rst $20
    dec d
    ld hl, sp+$00
    rst $10
    inc d
    nop
    ld hl, sp-$1a
    dec d
    ld hl, sp-$08
    sub $14
    add b
    ld hl, sp-$08
    push de
    inc [hl]
    nop
    nop
    db $e4
    dec [hl]
    ld hl, sp+$00
    call nc, Call_000_0034
    ld hl, sp-$1b
    dec [hl]
    add b
    nop
    ld hl, sp-$19
    dec [hl]
    ld hl, sp-$08
    rst $10
    inc [hl]
    nop
    nop
    and $35
    ld hl, sp+$00
    sub $34
    add b
    nop
    nop
    dec h
    ld d, $00
    ld hl, sp+$24
    ld d, $f8
    nop
    dec d
    ld d, $f8
    ld hl, sp+$14
    ld d, $80
    nop
    nop
    daa
    ld d, $00
    ld hl, sp+$26
    ld d, $f8
    nop
    rla
    ld d, $f8
    ld hl, sp+$16
    ld d, $80
    nop
    nop
    add hl, hl
    ld d, $00
    ld hl, sp+$28
    ld d, $f8
    nop
    add hl, de
    ld d, $f8
    ld hl, sp+$18
    ld d, $80
    nop
    nop
    dec hl
    ld d, $00
    ld hl, sp+$2a
    ld d, $f8
    nop
    dec de
    ld d, $f8
    ld hl, sp+$1a
    ld d, $80
    nop
    nop
    dec l
    ld d, $00
    ld hl, sp+$2c
    ld d, $f8
    nop
    dec e
    ld d, $f8
    ld hl, sp+$1c
    ld d, $80
    nop
    nop
    cpl
    ld d, $00
    ld hl, sp+$2e
    ld d, $f8
    nop
    rra
    ld d, $f8
    ld hl, sp+$1e
    ld d, $80
    nop
    ld hl, sp+$2d
    ld [hl], $00
    nop
    inc l
    ld [hl], $f8
    ld hl, sp+$1d
    ld [hl], $f8
    nop
    inc e
    ld [hl], $80
    nop
    ld hl, sp+$2f
    ld [hl], $00
    nop
    ld l, $36
    ld hl, sp-$08
    rra
    ld [hl], $f8
    nop
    ld e, $36
    add b
    nop
    nop
    ld sp, $0016
    ld hl, sp+$30
    ld d, $f8
    nop
    ld hl, $f816
    ld hl, sp+$20
    ld d, $80
    nop
    nop
    inc sp
    ld d, $00
    ld hl, sp+$32
    ld d, $f8
    nop
    inc hl
    ld d, $f8
    ld hl, sp+$22
    ld d, $80
    nop
    ld hl, sp+$31
    ld [hl], $00
    nop
    jr nc, jr_014_673b

    ld hl, sp-$08
    ld hl, $f836
    nop
    jr nz, @+$38

    add b
    nop
    ld hl, sp+$33
    ld [hl], $00
    nop
    ld [hl-], a
    ld [hl], $f8
    ld hl, sp+$23
    ld [hl], $f8
    nop
    ld [hl+], a
    ld [hl], $80
    nop
    nop
    scf
    ld d, $00
    ld hl, sp+$36
    ld d, $f8
    nop
    dec [hl]
    ld d, $f8
    ld hl, sp+$34
    ld d, $80
    nop
    nop
    dec sp
    ld d, $00
    ld hl, sp+$3a
    ld d, $f8
    nop
    add hl, sp

jr_014_673b:
    ld d, $f8
    ld hl, sp+$38
    ld d, $80
    nop
    ld hl, sp+$37
    ld [hl], $00
    nop
    ld [hl], $36
    ld hl, sp-$08
    dec [hl]
    ld [hl], $f8
    nop
    inc [hl]
    ld [hl], $80
    nop
    ld hl, sp+$3b
    ld [hl], $00
    nop
    ld a, [hl-]
    ld [hl], $f8
    ld hl, sp+$39
    ld [hl], $f8
    nop
    jr c, jr_014_6798

    add b
    rra
    ld h, l
    jr z, jr_014_67cc

    rst $30
    ld h, h
    inc b
    ld h, l
    dec l
    ld h, l
    ld a, [hl-]
    ld h, l
    dec c
    ld h, l
    ld a, [de]
    ld h, l
    ld b, e
    ld h, l
    ld d, h
    ld h, l
    add a
    ld h, l
    sbc b
    ld h, l
    xor c
    ld h, l
    cp d
    ld h, l
    ld h, l
    ld h, l
    halt
    ld h, l
    bit 4, l
    call c, $cb65
    ld h, l
    call c, $ed65
    ld h, l
    cp $65
    db $ed
    ld h, l
    cp $65
    rrca
    ld h, [hl]
    jr nz, jr_014_67fd

    rrca

jr_014_6798:
    ld h, [hl]
    jr nz, jr_014_6801

    ld sp, $4266
    ld h, [hl]
    ld sp, $4266
    ld h, [hl]
    ld d, e
    ld h, [hl]
    ld h, h
    ld h, [hl]
    sub a
    ld h, [hl]
    xor b
    ld h, [hl]
    cp c
    ld h, [hl]
    jp z, $7566

    ld h, [hl]
    add [hl]
    ld h, [hl]
    db $db
    ld h, [hl]
    db $ec
    ld h, [hl]
    db $db
    ld h, [hl]
    db $ec
    ld h, [hl]
    db $fd
    ld h, [hl]
    ld c, $67
    db $fd
    ld h, [hl]
    ld c, $67
    rra
    ld h, a
    jr nc, @+$69

    rra
    ld h, a
    jr nc, jr_014_6832

    ld b, c

jr_014_67cc:
    ld h, a
    ld d, d
    ld h, a
    ld b, c
    ld h, a
    ld d, d
    ld h, a
    dec bc
    ld l, b
    dec bc
    ld l, b
    dec bc
    ld l, b
    dec bc
    ld l, b
    db $10
    ld l, b
    db $10
    ld l, b
    db $10
    ld l, b
    db $10
    ld l, b
    dec d
    ld l, b
    dec d
    ld l, b
    dec d
    ld l, b
    dec d
    ld l, b
    ld a, [de]
    ld l, b
    ld a, [de]
    ld l, b
    ld a, [de]
    ld l, b
    ld a, [de]
    ld l, b
    rra
    ld l, b
    rra
    ld l, b
    rra
    ld l, b
    rra
    ld l, b
    inc h
    ld l, b

jr_014_67fd:
    inc h
    ld l, b
    inc h
    ld l, b

jr_014_6801:
    inc h
    ld l, b
    add hl, hl
    ld l, b
    add hl, hl
    ld l, b
    add hl, hl
    ld l, b
    add hl, hl
    ld l, b
    rrca
    nop
    rrca
    ld bc, $0fff
    nop
    rrca
    ld bc, $1fff
    nop
    rra
    ld bc, $0fff
    nop
    rrca
    ld bc, $0fff

jr_014_6820:
    nop
    rrca
    ld bc, $1fff
    nop
    rra
    ld bc, $0fff
    nop
    rrca
    ld bc, $00ff
    nop
    ld [hl], $68

jr_014_6832:
    nop
    nop
    jr c, jr_014_689e

    ld c, b
    ld l, b
    ld a, c
    ld l, b

jr_014_683a:
    or d
    ld l, b
    db $eb
    ld l, b
    inc h
    ld l, c
    ld e, l
    ld l, c
    sub [hl]
    ld l, c
    rst $08
    ld l, c
    ld [$f96a], sp
    reti


    push bc
    nop
    ld bc, $c5f8
    nop
    ld de, $c516
    nop
    ret


    ret c

    push bc
    nop
    ret c

    jr z, jr_014_6820

    nop
    ret nz

    add hl, hl
    push bc
    nop
    add hl, hl
    jr nc, @-$39

    nop
    inc a
    nop
    push bc
    nop
    jr z, jr_014_683a

    push bc
    nop
    ld hl, sp+$40
    push bc
    nop
    db $ed
    cp b
    push bc
    nop
    ldh [$ff08], a
    push bc
    nop
    add b
    rst $20
    call z, Call_000_00d5
    add sp, $02
    push de
    nop
    call nz, $d518
    nop
    db $fc
    scf
    push de
    nop
    inc h
    ld sp, $00d5
    jp c, $d53b

    nop
    ld [$d506], sp
    nop
    ld [hl-], a
    db $eb
    push de
    nop
    ld a, [$d5cd]
    nop
    rst $10

jr_014_689e:
    and $d5
    nop
    dec h
    cp e
    push de
    nop
    ld [$d523], sp
    nop
    scf
    ld c, $d5
    nop
    push bc
    ret nz

    push de
    nop
    add b
    or $f9
    push de
    nop
    add hl, sp
    scf
    push de
    nop
    add sp, $36
    push de
    nop
    add hl, bc
    inc a
    push de
    nop
    ld a, [de]
    jr z, @-$29

    nop
    inc d
    inc de
    push de
    nop
    ret nc

    inc de
    push de
    nop
    cp b
    jr @-$29

    nop
    ld b, b
    add sp, -$2b
    nop
    jp hl


    db $ed
    push de
    nop
    ld [hl], $c0
    push de
    nop
    rlca
    ret z

    push de
    nop
    rst $30
    ret c

    push de
    nop
    pop de
    pop bc
    push de
    nop
    add b
    rlca
    rst $30
    push de
    nop
    cp d
    dec sp
    push de
    nop
    or $35
    push de
    nop
    jr jr_014_692f

    push de
    nop
    cpl
    ld [hl+], a
    push de
    nop
    jp nz, $d519

    nop
    db $db
    ld de, $00d5
    rra
    ld d, $d5
    nop
    ld a, [$d5ef]
    nop
    cp b
    db $ec
    push de
    nop
    ld b, c
    push bc
    push de
    nop
    rst $18
    jp z, Jump_000_00d5

    inc de
    ret nz

    push de
    nop
    add hl, bc
    reti


    push de
    nop
    add b
    ret nc

    ld [de], a
    push de
    nop
    and $16
    push de
    nop
    ret z

    ld b, d
    push de

jr_014_692f:
    nop
    inc bc
    inc a
    push de
    nop
    ld h, $31
    push de
    nop
    ld b, b
    add hl, hl
    push de
    nop
    dec l
    ld c, $d5
    nop
    inc de
    cp $d5
    nop
    jp nz, $d5f0

    nop
    dec b
    add sp, -$2b
    nop
    rla
    ret nc

    push de
    nop
    cp [hl]
    pop bc
    push de
    nop
    db $ec
    ret nc

    push de
    nop
    ld hl, $d5bc
    nop
    add b
    call c, $d510
    nop
    db $f4
    dec bc
    push de
    nop
    add hl, sp
    dec sp
    push de
    nop
    inc d
    dec sp
    push de
    nop
    jp c, $d53c

    nop
    cp e
    ld a, [hl+]
    push de
    nop
    dec a
    ld a, [bc]
    push de
    nop
    dec h
    nop
    push de
    nop
    jp nc, $d5e8

    nop
    rla
    db $e4
    push de
    nop
    rst $38
    set 2, l
    nop
    cpl

jr_014_698a:
    cp [hl]
    push de
    nop
    inc hl
    call Call_000_00d5
    adc $bf
    push de

jr_014_6994:
    nop
    add b
    ld b, b
    rst $00
    push de
    nop
    dec c
    jp Jump_000_00d5


    call c, $d5c7
    nop
    scf
    call nc, Call_000_00d5
    ldh [c], a
    db $ec
    push de
    nop
    jr z, jr_014_6994

    push de
    nop
    ld a, [hl-]
    ld a, [$00d5]
    cp e
    jr jr_014_698a

    nop
    rlca
    ld b, $d5
    nop
    db $eb
    inc d
    push de
    nop
    sla c
    push de
    nop
    ld h, $30
    push de
    nop
    jp hl


    scf
    push de
    nop
    cp c
    inc a
    push de
    nop
    add b
    cp b

jr_014_69d0:
    cp $d5
    nop
    cp e
    jp nc, Jump_000_00d5

    inc hl
    cp e
    push de
    nop
    set 0, b
    push de
    nop
    rst $28
    rst $08
    push de
    nop
    call $d542
    nop
    jr c, jr_014_6a24

    push de
    nop
    ld a, [$d539]
    nop
    jp c, $d52d

    nop
    rl l
    push de
    nop
    ei
    rlca
    push de
    nop
    ld hl, $d516
    nop
    ld a, [$d5f0]
    nop
    inc a
    db $ec
    push de
    nop
    add b

jr_014_6a08:
    db $d3
    ret c

    push de
    nop
    jr c, jr_014_69d0

    push de
    nop
    inc b
    ret


    push de
    nop

jr_014_6a14:
    rst $18
    ret z

    push de
    nop
    cp e
    rst $28
    push de
    nop
    ld c, $e4
    push de
    nop
    rst $08
    inc b
    push de
    nop

jr_014_6a24:
    inc de
    ld de, $00d5
    ld a, [hl-]
    dec bc
    push de
    nop
    ldh [c], a
    dec d
    push de
    nop
    db $ed
    jr z, jr_014_6a08

    nop
    cp d
    dec sp
    push de
    nop
    ld [de], a
    inc a
    push de
    nop
    ldh [c], a
    jr c, jr_014_6a14

    nop
    add b
    ld b, l
    ld l, d
    ld c, b
    ld l, d
    ldh a, [rP1]
    rst $38
    rra
    nop
    rra
    ld bc, $021f
    rra
    inc bc
    rra
    inc b
    rra
    dec b
    rra
    ld b, $1f
    rlca
    rst $38
    nop
    nop
    and c
    ld l, d
    nop
    nop
    xor c
    ld l, d
    nop
    nop
    xor e
    ld l, d
    nop
    nop
    xor l
    ld l, d
    nop
    nop
    or c
    ld l, d
    nop
    nop
    or e
    ld l, d
    nop
    nop
    ld b, [hl]
    ld l, h
    nop
    nop
    ld c, [hl]
    ld l, h
    nop
    nop
    ld d, b
    ld l, h
    nop
    nop
    ld d, d
    ld l, h
    nop
    nop
    ld d, [hl]
    ld l, h
    nop
    nop
    ld e, b
    ld l, h
    nop
    nop
    ld h, a
    ld l, [hl]
    nop
    nop
    ld l, a
    ld l, [hl]
    nop
    nop
    ld [hl], c
    ld l, [hl]
    nop
    nop
    ld [hl], e
    ld l, [hl]
    nop
    nop
    ld [hl], a
    ld l, [hl]
    nop
    nop
    ld a, c
    ld l, [hl]
    jp z, $b56a

    ld l, d
    rst $18
    ld l, d
    or l
    ld l, d
    or l
    ld l, d
    pop af
    ld l, e
    ld c, b
    ld l, e
    ld h, c
    ld l, e
    cp [hl]
    ld l, e
    db $f4
    ld l, d
    inc bc
    nop
    ld d, d
    inc d
    inc bc
    ld hl, sp+$51
    dec d
    ei
    nop
    ld d, b
    inc d
    ei
    ld hl, sp+$4f
    inc d
    ld sp, hl
    ld [$1426], sp
    add b
    ei
    nop
    ld d, b
    inc d
    ei
    ld hl, sp+$4f
    inc d
    inc bc
    nop
    add hl, de
    inc d
    inc bc
    ld hl, sp+$18
    dec d
    ld sp, hl
    ld [$1426], sp
    add b
    ei
    nop
    ld d, b
    inc d
    ei
    ld hl, sp+$4f
    inc d
    inc bc
    nop
    dec de
    inc d
    inc bc
    ld hl, sp+$1a
    dec d
    ld sp, hl
    ld [$1426], sp
    add b
    inc bc
    nop
    ld d, d
    inc d
    inc bc
    ld hl, sp+$51
    dec d
    ei
    nop
    ld d, b
    inc d
    ei
    ld hl, sp+$1c
    inc d
    ld sp, hl
    ld [$1426], sp
    add b
    inc bc
    nop
    ld d, d
    inc d
    inc bc
    ld hl, sp+$51
    dec d
    ei
    nop
    ld d, b
    inc d
    ei
    ld hl, sp+$1d
    inc d
    ld sp, hl
    ld [$1426], sp
    add b
    inc b
    nop
    ld hl, $0414
    ld hl, sp+$20
    dec d
    db $fc
    nop
    rra
    inc d
    db $fc
    ld hl, sp+$1e
    inc d
    ld a, [$2608]
    inc d
    add b
    inc b
    nop
    dec h
    inc d
    inc b
    ld hl, sp+$24
    dec d
    db $fc
    nop
    inc hl
    inc d
    db $fc
    ld hl, sp+$22
    inc d
    ld a, [$2608]
    inc d
    add b
    ld [bc], a
    rlca
    ld b, h
    inc d
    ld [bc], a
    rst $38
    ld b, e
    inc d
    ld [bc], a
    rst $30
    ld b, d
    dec d
    ld a, [$4107]
    inc d
    ld a, [$40ff]
    inc d
    ld a, [$3ff7]
    inc d
    add b
    ld [bc], a
    rlca
    ld c, d
    inc d
    ld [bc], a
    rst $38
    ld c, c
    inc d
    ld [bc], a
    rst $30
    ld c, b
    dec d
    ld a, [$4707]
    inc d
    ld a, [$46ff]
    inc d
    ld a, [$45f7]
    inc d
    add b
    nop
    nop
    ld a, [hl+]
    dec d
    nop
    ld hl, sp+$29
    dec d
    ld hl, sp+$00
    jr z, jr_014_6b9a

    ld hl, sp-$08
    daa
    inc d
    add b
    nop
    ld hl, sp+$2b
    dec d
    nop
    nop
    ld a, [hl+]
    dec d
    ld hl, sp+$00
    jr z, jr_014_6bab

    ld hl, sp-$08
    daa

jr_014_6b9a:
    inc d
    add b
    nop
    nop
    inc l
    dec d
    nop
    ld hl, sp+$29
    dec d
    ld hl, sp+$00
    jr z, jr_014_6bbc

    ld hl, sp-$08
    daa

jr_014_6bab:
    inc d
    add b
    nop
    nop
    ld l, $15
    nop
    ld hl, sp+$2d
    dec d
    ld hl, sp+$00
    jr z, jr_014_6bcd

    ld hl, sp-$08
    daa

jr_014_6bbc:
    inc d
    add b
    nop
    nop
    jr nc, jr_014_6bd7

    nop
    ld hl, sp+$2f
    dec d
    ld hl, sp+$00
    jr z, jr_014_6bde

    ld hl, sp-$08
    daa

jr_014_6bcd:
    inc d
    add b
    ld bc, $3200
    dec d
    ld bc, $31f8
    dec d

jr_014_6bd7:
    ld sp, hl
    nop
    jr z, jr_014_6bef

    ld sp, hl
    ld hl, sp+$27

jr_014_6bde:
    inc d
    add b
    ld bc, $3600
    dec d
    ld bc, $35f8
    dec d
    ld sp, hl
    nop
    inc [hl]
    inc d
    ld sp, hl
    ld hl, sp+$33

jr_014_6bef:
    inc d
    add b
    nop
    nop
    ld c, [hl]
    dec d
    nop
    ld hl, sp+$4d
    dec d
    ld hl, sp+$00
    ld c, h
    inc d
    ld hl, sp-$08
    ld c, e
    inc d
    add b
    nop
    nop
    ld a, [hl-]
    inc d
    nop
    ld hl, sp+$39
    inc d
    ld hl, sp+$00
    jr c, jr_014_6c22

    ld hl, sp-$08
    scf
    inc d
    add b
    nop
    ld hl, sp+$3b
    inc d
    nop
    nop
    ld a, [hl-]
    inc d
    ld hl, sp+$00
    jr c, jr_014_6c33

    ld hl, sp-$08
    scf

jr_014_6c22:
    inc d
    add b
    nop
    ld hl, sp+$3d
    inc d
    nop
    nop
    inc a
    inc d
    ld hl, sp+$00
    jr c, jr_014_6c44

    ld hl, sp-$08
    scf

jr_014_6c33:
    inc d
    add b
    nop
    nop
    ld a, $14
    nop
    ld hl, sp+$3d
    inc d
    ld hl, sp+$00
    jr c, @+$16

    ld hl, sp-$08
    scf

jr_014_6c44:
    inc d
    add b
    ld [hl], e
    ld l, h
    ld e, d
    ld l, h
    adc h
    ld l, h
    ld e, d
    ld l, h
    ld e, d
    ld l, h
    ld [$096d], a
    ld l, l
    ld h, $6d
    xor e
    ld l, l
    and l
    ld l, h
    nop
    or $60
    dec d
    ld hl, sp+$02
    ld e, a
    inc d
    ld hl, sp-$06
    ld e, [hl]
    inc d
    ld hl, sp-$0e
    ld e, l
    inc d
    nop
    ld [bc], a
    add hl, de
    inc d
    nop
    ld a, [$1418]
    add b
    nop
    or $60
    dec d
    ld hl, sp+$02
    ld e, a
    inc d
    ld hl, sp-$06
    ld e, [hl]
    inc d
    ld hl, sp-$0e
    ld e, l
    inc d
    nop
    ld [bc], a
    dec de
    inc d
    nop
    ld a, [$141a]
    add b
    nop
    or $60
    dec d
    ld hl, sp+$02
    ld e, a
    inc d
    ld hl, sp-$06
    ld e, [hl]
    inc d
    ld hl, sp-$0e
    ld e, l
    inc d
    nop
    ld [bc], a
    dec e
    inc d
    nop
    ld a, [$141c]
    add b
    nop
    or $60
    dec d
    ld hl, sp+$02
    ld e, a
    inc d
    ld hl, sp-$06
    rra
    inc d
    ld hl, sp-$0e
    ld e, $14
    nop
    ld [bc], a
    add hl, de
    inc d
    nop
    ld a, [$1418]
    add b
    nop
    or $60
    dec d
    ld hl, sp+$02
    ld e, a
    inc d
    ld hl, sp-$06
    ld hl, $f814
    ldh a, [c]
    jr nz, jr_014_6ce2

    nop
    ld [bc], a
    add hl, de
    inc d
    nop
    ld a, [$1418]
    add b
    nop
    dec b
    daa
    inc d
    nop
    db $fd
    ld h, $14
    nop
    push af
    dec h

jr_014_6ce2:
    dec d
    ld hl, sp+$05
    inc h
    inc d
    ld hl, sp-$03
    inc hl
    inc d
    ld hl, sp-$0b
    ld [hl+], a
    inc d
    add b
    nop
    db $fd
    dec hl
    inc d
    nop
    push af
    ld a, [hl+]
    dec d
    nop
    dec b
    daa
    inc d
    ld hl, sp+$05
    inc h
    inc d
    ld hl, sp-$03
    add hl, hl
    inc d
    ld hl, sp-$0b
    jr z, jr_014_6d1c

    add b
    rst $30
    ld [bc], a
    ld e, a
    inc d
    rst $30
    ld a, [$144c]
    rst $30
    ldh a, [c]
    ld c, e
    inc d
    rlca
    ld bc, $1450
    rst $38
    ld b, $4f

jr_014_6d1c:
    inc d
    rst $38
    cp $4e
    inc d
    rst $38
    or $4d
    dec d
    add b
    rlca
    ld [bc], a
    ld e, b
    inc d
    rlca
    ld a, [$1457]
    rst $38
    ld b, $56
    inc d
    rst $38
    cp $55
    inc d
    rst $38
    or $54
    dec d
    rst $30
    ld [bc], a
    ld d, e
    inc d
    rst $30
    ld a, [$1452]
    rst $30
    ldh a, [c]
    ld d, c
    inc d
    add b
    inc bc
    nop
    ld sp, $0315
    ld hl, sp+$30
    dec d
    ei
    nop
    cpl
    inc d
    ei
    ld hl, sp+$2e
    inc d
    di
    nop
    dec l
    inc d
    di
    ld hl, sp+$2c
    inc d
    add b
    inc bc
    ld hl, sp+$32
    dec d
    inc bc
    nop
    ld sp, $fb15
    nop
    cpl
    inc d
    ei
    ld hl, sp+$2e
    inc d
    di
    nop
    dec l
    inc d
    di
    ld hl, sp+$2c
    inc d
    add b
    inc bc
    nop
    inc sp
    dec d
    inc bc
    ld hl, sp+$30
    dec d
    ei
    nop
    cpl
    inc d
    ei
    ld hl, sp+$2e
    inc d
    di
    nop
    dec l
    inc d
    di
    ld hl, sp+$2c
    inc d
    add b
    ei
    nop
    dec [hl]
    inc d
    ei
    ld hl, sp+$34
    inc d
    inc bc
    nop
    ld sp, $0315
    ld hl, sp+$30
    dec d
    di
    nop
    dec l
    inc d
    di
    ld hl, sp+$2c
    inc d
    add b
    ei
    nop
    scf
    inc d
    ei
    ld hl, sp+$36
    inc d
    inc bc
    nop
    ld sp, $0315
    ld hl, sp+$30
    dec d
    di
    nop
    dec l
    inc d
    di
    ld hl, sp+$2c
    inc d
    add b
    add hl, bc
    ld hl, sp+$3c
    inc d
    ld bc, $3b00
    dec d
    ld bc, $3af8
    dec d
    ld sp, hl
    nop
    add hl, sp
    inc d
    ld sp, hl
    ld hl, sp+$38
    inc d
    add b
    ld bc, $4000
    dec d
    ld bc, $3ff8
    dec d
    ld sp, hl
    nop
    ld a, $14
    ld sp, hl
    ld hl, sp+$3d
    inc d
    add b
    di
    nop
    dec l
    inc d
    di
    ld hl, sp+$2c
    inc d
    inc bc
    nop
    ld e, h
    dec d
    inc bc
    ld hl, sp+$5b
    dec d
    ei
    nop
    ld e, d
    inc d
    ei
    ld hl, sp+$59
    inc d
    add b
    ld [bc], a
    nop
    ld b, [hl]
    inc d
    ld [bc], a
    ld hl, sp+$45
    inc d
    ld a, [$4400]
    inc d
    ld a, [$43f8]
    inc d
    ldh a, [c]
    nop
    ld b, d
    inc d
    ldh a, [c]
    ld hl, sp+$41
    inc d
    add b
    ld [bc], a
    nop
    ld c, b
    inc d
    ld [bc], a
    ld hl, sp+$45
    inc d
    ld a, [$4400]
    inc d
    ld a, [$43f8]
    inc d
    ldh a, [c]
    nop
    ld b, d
    inc d
    ldh a, [c]
    ld hl, sp+$41
    inc d
    add b
    ld [bc], a
    nop
    ld c, d
    inc d
    ld [bc], a
    ld hl, sp+$47
    inc d
    ld a, [$4400]
    inc d
    ld a, [$43f8]
    inc d
    ldh a, [c]
    nop
    ld b, d
    inc d
    ldh a, [c]
    ld hl, sp+$41
    inc d
    add b
    ld [bc], a
    nop
    ld c, d
    inc d
    ld [bc], a
    ld hl, sp+$49
    inc d
    ld a, [$4400]
    inc d
    ld a, [$43f8]
    inc d
    ldh a, [c]
    nop
    ld b, d
    inc d
    ldh a, [c]
    ld hl, sp+$41
    inc d
    add b
    sub h
    ld l, [hl]
    ld a, e
    ld l, [hl]
    xor l
    ld l, [hl]
    ld a, e
    ld l, [hl]
    ld a, e
    ld l, [hl]
    db $e3
    ld [hl], b
    adc [hl]
    ld l, a
    xor a
    ld l, a
    ld hl, sp+$6e
    add $6e
    nop
    db $f4
    ld h, h
    dec d
    ld hl, sp+$02
    ld h, e
    inc d
    ld hl, sp-$06
    ld h, d
    inc d
    ld hl, sp-$0e
    ld h, c
    inc d
    nop
    ld [bc], a
    add hl, de
    inc d
    nop
    ld a, [$1418]
    add b
    nop
    push af
    ld h, h
    dec d
    ld hl, sp+$02
    ld h, e
    inc d
    ld hl, sp-$06
    ld h, d
    inc d
    ld hl, sp-$0e
    ld h, c
    inc d
    nop
    ld [bc], a
    dec de
    inc d
    nop
    ld a, [$141a]
    add b
    nop
    push af
    ld h, h
    dec d
    ld hl, sp+$02
    ld h, e
    inc d
    ld hl, sp-$06
    ld h, d
    inc d
    ld hl, sp-$0e
    ld h, c
    inc d
    nop
    ld [bc], a
    dec e
    inc d
    nop
    ld a, [$141c]
    add b
    nop
    db $f4
    ld h, h
    dec d
    ld hl, sp+$02
    ld h, e
    inc d
    ld hl, sp-$06
    rra
    inc d
    ld hl, sp-$0e
    ld e, $14
    nop
    ld [bc], a
    add hl, de
    inc d
    nop
    ld a, [$1418]
    add b
    nop
    db $f4
    ld h, h
    dec d
    ld hl, sp+$02
    ld h, e
    inc d
    ld hl, sp-$06
    inc hl
    inc d
    ld hl, sp-$0e
    ld [hl+], a
    inc d
    nop
    ld [bc], a
    add hl, de
    inc d
    nop
    ld a, [$1418]
    add b
    nop
    db $f4
    ld h, h
    dec d
    ld hl, sp+$02
    ld h, e
    inc d
    ld hl, sp-$06
    dec h
    inc d
    ld hl, sp-$0e
    inc h
    inc d
    nop
    ld [bc], a
    add hl, de
    inc d
    nop
    ld a, [$1418]
    add b
    nop
    db $f4
    ld h, h
    dec d
    ld hl, sp+$02
    ld h, e
    inc d
    ld hl, sp-$03
    ld hl, $f814
    push af
    jr nz, jr_014_6f37

    nop
    ld [bc], a
    add hl, de
    inc d
    nop
    ld a, [$1418]
    add b
    nop
    push af
    ld h, h
    dec d
    ld hl, sp+$02
    ld h, e
    inc d
    ld hl, sp-$03
    ld hl, $f814

jr_014_6f37:
    push af
    jr nz, jr_014_6f50

    nop
    ld [bc], a
    dec de
    inc d
    nop
    ld a, [$141a]
    add b
    nop
    push af
    ld h, h
    dec d
    ld hl, sp+$02
    ld h, e
    inc d
    ld hl, sp-$03
    ld hl, $f814

jr_014_6f50:
    push af
    jr nz, @+$18

    nop
    ld [bc], a
    dec e
    inc d
    nop
    ld a, [$141c]
    add b
    nop
    inc bc
    dec hl
    inc d
    nop
    ei
    ld a, [hl+]
    inc d
    nop
    di
    add hl, hl
    dec d
    ld hl, sp+$03
    jr z, jr_014_6f80

    ld hl, sp-$05
    daa
    inc d
    ld hl, sp-$0d
    ld h, $14
    add b
    nop
    ei
    cpl
    inc d
    nop
    di
    ld l, $15
    ld hl, sp-$05
    dec l

jr_014_6f80:
    inc d
    ld hl, sp-$0d
    inc l
    inc d
    nop
    inc bc
    dec hl
    inc d
    ld hl, sp+$03
    jr z, jr_014_6fa1

    add b
    rst $38
    push af
    ld h, h
    dec d
    rst $30
    ld [bc], a
    ld h, e
    inc d
    rlca
    ld [bc], a
    ld e, h
    inc d
    rlca
    ld a, [$145b]
    rst $38
    ld [bc], a
    ld e, d

jr_014_6fa1:
    inc d
    rst $38
    ld a, [$1459]
    rst $30
    ld a, [$1458]
    rst $30
    ldh a, [c]
    ld d, a
    inc d
    add b
    rst $38
    push af
    ld h, h
    dec d
    rst $30
    ld [bc], a
    ld h, e
    inc d
    rlca
    ld [bc], a
    ld h, b

Call_014_6fba:
    inc d
    rst $38
    ld a, [bc]
    ld e, a
    inc d
    rst $38
    ld [bc], a
    ld e, [hl]
    inc d
    rst $38
    ld a, [$145d]
    rst $30
    ld a, [$1458]
    rst $30
    ldh a, [c]
    ld d, a
    inc d
    add b
    ld [bc], a
    nop
    dec [hl]
    dec d
    ld [bc], a
    ld hl, sp+$34
    dec d
    ld a, [$3300]
    inc d
    ld a, [$32f8]
    inc d
    ldh a, [c]
    nop
    ld sp, $f214
    ld hl, sp+$30
    inc d
    add b
    ld [bc], a
    ld hl, sp+$36
    dec d
    ld [bc], a
    nop
    dec [hl]
    dec d
    ld a, [$3300]
    inc d
    ld a, [$32f8]
    inc d
    ldh a, [c]
    nop
    ld sp, $f214
    ld hl, sp+$30
    inc d
    add b
    ld [bc], a
    nop
    scf
    dec d
    ld [bc], a
    ld hl, sp+$34
    dec d
    ld a, [$3300]
    inc d
    ld a, [$32f8]
    inc d
    ldh a, [c]
    nop
    ld sp, $f214
    ld hl, sp+$30
    inc d
    add b
    ld a, [$3900]
    inc d
    ld a, [$38f8]
    inc d
    ld [bc], a
    nop
    dec [hl]
    dec d
    ld [bc], a
    ld hl, sp+$34
    dec d
    ldh a, [c]
    nop
    ld sp, $f214
    ld hl, sp+$30
    inc d
    add b
    ld a, [$3d00]
    inc d
    ld a, [$3cf8]
    inc d
    ld [bc], a
    nop
    dec [hl]
    dec d
    ld [bc], a
    ld hl, sp+$34
    dec d
    ldh a, [c]
    nop
    ld sp, $f214
    ld hl, sp+$30
    inc d
    add b
    ld a, [$3f00]
    inc d
    ld a, [$3ef8]
    inc d
    ld [bc], a
    nop
    dec [hl]
    dec d
    ld [bc], a
    ld hl, sp+$34
    dec d
    ldh a, [c]
    nop
    ld sp, $f214
    ld hl, sp+$30
    inc d
    add b
    ld a, [$3b00]
    ld d, $fa
    ld hl, sp+$3a
    ld d, $02
    nop
    dec [hl]
    dec d
    ld [bc], a
    ld hl, sp+$34
    dec d
    ldh a, [c]
    nop
    ld sp, $f214
    ld hl, sp+$30
    inc d
    add b
    ld [bc], a
    ld hl, sp+$36
    dec d
    ld a, [$3b00]
    ld d, $fa
    ld hl, sp+$3a
    ld d, $02
    nop
    dec [hl]
    dec d
    ldh a, [c]
    nop
    ld sp, $f214
    ld hl, sp+$30
    inc d
    add b
    ld [bc], a
    nop
    scf
    dec d
    ld a, [$3b00]
    ld d, $fa
    ld hl, sp+$3a
    ld d, $02
    ld hl, sp+$34
    dec d
    ldh a, [c]
    nop
    ld sp, $f214
    ld hl, sp+$30
    inc d
    add b
    push af
    ld hl, sp+$40
    inc d
    db $fd
    nop
    dec a
    inc d
    db $fd
    ld hl, sp+$3c
    inc d
    dec b
    nop
    ld b, d
    dec d
    dec b
    ld hl, sp+$41
    dec d
    push af
    nop
    ld sp, $8014
    dec b
    nop
    ld c, b
    dec d
    dec b
    ld hl, sp+$47
    dec d
    db $fd
    nop
    ld b, [hl]
    inc d
    db $fd
    ld hl, sp+$45
    inc d
    push af
    nop
    ld b, h
    inc d
    push af
    ld hl, sp+$43
    inc d
    add b
    ld [bc], a
    nop
    ld d, [hl]
    dec d
    ld [bc], a
    ld hl, sp+$55
    dec d
    ld a, [$5400]
    inc d
    ld a, [$53f8]
    inc d
    ldh a, [c]
    nop
    ld sp, $f214
    ld hl, sp+$30
    inc d
    add b
    ld [bc], a
    nop
    ld c, [hl]
    inc d
    ld [bc], a
    ld hl, sp+$4d
    inc d
    ld a, [$4c00]
    inc d
    ld a, [$4bf8]
    inc d
    ldh a, [c]
    nop
    ld c, d
    inc d
    ldh a, [c]
    ld hl, sp+$49
    inc d
    add b
    ld [bc], a
    nop
    ld d, b
    inc d
    ld [bc], a
    ld hl, sp+$4d
    inc d
    ld a, [$4c00]
    inc d
    ld a, [$4bf8]
    inc d
    ldh a, [c]
    nop
    ld c, d
    inc d
    ldh a, [c]
    ld hl, sp+$49
    inc d
    add b
    ld [bc], a
    nop
    ld d, d
    inc d
    ld [bc], a
    ld hl, sp+$4f
    inc d
    ld a, [$4c00]
    inc d
    ld a, [$4bf8]
    inc d
    ldh a, [c]
    nop
    ld c, d
    inc d
    ldh a, [c]
    ld hl, sp+$49
    inc d
    add b
    ld [bc], a
    nop
    ld d, d
    inc d
    ld [bc], a
    ld hl, sp+$51
    inc d
    ld a, [$4c00]
    inc d
    ld a, [$4bf8]
    inc d
    ldh a, [c]
    nop
    ld c, d
    inc d
    ldh a, [c]
    ld hl, sp+$49
    inc d
    add b
    add a
    ld [hl], c
    add h
    ld [hl], c
    add h
    ld [hl], c
    sub b
    ld [hl], c
    add h
    ld [hl], c
    add h
    ld [hl], c
    add a
    ld [hl], c
    add h
    ld [hl], c
    add h
    ld [hl], c
    sub b
    ld [hl], c
    add h
    ld [hl], c
    add h
    ld [hl], c
    add a
    ld [hl], c
    add h
    ld [hl], c
    add h
    ld [hl], c
    sub b
    ld [hl], c
    add h
    ld [hl], c
    add h
    ld [hl], c
    ldh a, [rP1]
    rst $38
    rrca
    nop
    rrca
    ld bc, $020f
    rrca
    inc bc
    rst $38
    ld [$0800], sp
    ld bc, $00ff
    ld [$005f], sp
    nop
    stop
    jr c, jr_014_71e2

    nop
    ld a, h
    rrca
    ld bc, $0fc0
    ld bc, $010f
    rrca
    ld bc, $010f
    rrca
    ld bc, $0106
    inc d
    nop
    rra
    ld l, [hl]
    nop
    inc h
    nop
    ld l, $42
    nop
    rrca
    ld bc, $010f
    ldh [rIF], a
    ld bc, $010f
    rrca
    ld bc, $010f
    dec b
    ld bc, $0024
    ld a, [hl]
    ld a, $00
    ld [bc], a
    ld a, $00
    ld l, d
    nop
    ld [hl+], a
    rrca
    ld bc, $010f
    ld a, [$010e]
    nop
    ret nz

    dec b
    halt
    nop
    ld h, $00
    ld a, [hl-]

jr_014_71e2:
    inc bc
    nop
    ld a, [bc]
    rrca
    ld bc, $010f
    rrca
    ld bc, $010f
    rrca
    ld bc, $010f
    db $fc
    rrca
    ld bc, $0102
    ld b, $00
    rrca
    inc b
    dec bc
    rlca
    rst $38
    rrca
    rlca
    rrca
    dec b
    rrca
    dec b
    rra
    dec c
    rst $38
    rra
    rrca
    ret nz

    nop
    ret nz

    add b
    ldh [rP1], a
    rst $38
    ret nc

    and b
    xor h
    ret nc

    rst $18
    ldh [rIE], a
    rst $38
    ei
    ld a, a
    rst $38
    add a
    rra
    ret nz

    nop
    ldh a, [$ffc0]
    add sp, -$31
    ret nc

    ld e, $0f
    rrca
    ld [$3020], a
    ld [bc], a
    ld a, a
    cp a
    rst $38
    ld a, a
    rst $18
    jr c, @-$07

    ld e, b
    cp d
    ld d, c
    db $eb
    rst $38
    db $10
    jr c, jr_014_7239

jr_014_7239:
    db $e4
    ret c

    or h
    ret z

Jump_014_723d:
    call nc, $88ff
    db $ec
    ret nz

    ld h, h
    ret nz

    ldh [rLCDC], a
    and b
    di
    ld b, b
    ret nz

    ld l, $06
    add c
    inc b
    ret nz

    add b
    ldh a, [rP1]
    sbc a
    call z, $bfb0
    ret nz

    rst $38
    stop
    add hl, bc
    ld b, $f8
    ld e, a
    ret nz

    db $e4
    ret c

    rra
    rrca
    inc hl
    ld b, $01
    jr nz, jr_014_7268

jr_014_7268:
    ldh a, [c]
    pop hl
    rra
    ld a, a
    ld d, b
    ld [$0601], sp
    db $fd
    adc b
    rst $18
    add hl, bc
    rst $38
    ld d, $09
    add hl, de
    nop
    ldh a, [c]
    call z, $c0af
    rst $38
    ldh [$ff80], a
    and b
    ret nz

    or b
    ret nz

    ld d, b
    and b
    adc a
    or b
    nop
    add b
    nop
    rst $20
    ld [bc], a
    inc bc
    inc bc
    ld bc, $df09
    rst $38
    ccf
    rst $38
    ldh [$ff7b], a
    sub c
    xor d
    ld de, $fe33
    ldh [rNR44], a
    ldh a, [c]
    call z, $c4aa
    and $80
    ld h, h
    rst $38
    ret nz

    or b
    ld h, b
    ldh a, [rNR41]
    ld d, b
    jr nz, jr_014_72de

    cp $aa
    inc l
    dec de
    nop
    ccf
    ld [de], a
    rla
    ld c, $1f
    rst $38
    rrca
    rra
    dec bc
    rra
    dec bc
    ccf
    dec de
    ld a, $6f
    rra
    dec a
    ld e, $1f
    ld h, b
    ld c, $a0
    ld b, b
    and b
    dec b
    rst $18
    ret nz

    ret c

    ldh [rIE], a
    ld hl, sp+$0b
    ld a, [bc]
    add b
    nop
    rst $38
    ldh a, [$ff80]
    ret z

    or b
    inc bc
    nop
    rlca

jr_014_72de:
    ld [bc], a
    rst $18
    rlca
    ld bc, $0106
    inc bc
    db $e4
    jr nc, jr_014_7367

    rst $38
    rst $38
    cp a
    ld a, a
    ei
    rst $00
    ld h, a
    add c
    add [hl]
    ld bc, $05f7
    ld [bc], a
    rlca

jr_014_72f6:
    ld h, b
    dec bc
    db $e4
    sbc b
    ld e, [hl]
    add b
    jp hl


    add b
    ld b, b
    inc d
    ld hl, $4000
    and b
    nop
    dec c
    nop
    rra
    push af
    add hl, bc
    ld c, c
    ld b, $80
    ld b, b
    dec bc
    ret nz

    nop
    and c
    ld b, b
    rst $28
    ld e, a
    and c
    cp a
    rst $08
    rlca
    db $10
    call c, $e600
    rst $28
    ret c

    ei
    ret nz

    ldh [$ff60], a
    dec c
    dec a
    ld e, $1e
    db $fc
    ld [$0136], a
    ld b, $7f
    inc e
    ld a, h
    jr z, jr_014_73ad

    jr z, @-$07

    cp h
    ld e, b
    add sp, $00
    ld d, $ec
    ldh a, [$fff4]
    jr c, jr_014_72f6

    inc a
    ld a, a
    add hl, sp
    call nz, $0339
    nop
    ld [bc], a
    and b
    add hl, bc
    rlca
    rst $30
    inc bc
    rrca
    rlca
    add c
    inc d
    ld e, $09
    rra
    ld a, [bc]
    rst $38
    ld b, b
    add b
    ret nz

    nop
    ldh [$ffc0], a
    ld [hl], b
    ldh [$fffb], a
    ld a, b
    ldh a, [rNR41]
    nop
    sub b
    ld hl, sp+$50
    rra
    add hl, bc
    rst $38
    rra

jr_014_7367:
    dec bc
    rla
    dec c
    rla
    dec c
    dec de
    dec b
    ld a, a
    rra
    dec bc
    rrca
    inc bc
    inc bc
    nop
    ld b, b
    ldh [rNR34], a
    ld a, [$020d]
    dec de
    nop
    ld [bc], a
    rla
    dec c
    rra
    inc bc
    rra
    rst $38
    dec bc
    dec bc
    nop
    ld hl, sp-$70
    ld hl, sp-$30
    add sp, $3f
    or b
    ld hl, sp-$60
    add sp, -$70
    ldh a, [rP1]
    ld a, [bc]
    ld bc, $7a1d
    ld h, e
    ld b, b
    ld [bc], a
    and b
    inc hl
    add hl, bc
    ld b, $09
    ld b, $e5
    ld b, $a4
    dec b
    rlca
    pop hl
    ld b, $f0
    db $e3
    ld b, $04
    rlca

jr_014_73ad:
    rla
    nop
    rlca
    dec de
    ccf
    dec b
    rla
    add hl, bc
    rrca
    inc bc
    rlca
    nop
    rlca
    dec b
    ld a, [bc]
    ld h, [hl]
    db $e3
    add hl, bc
    rra
    add hl, bc
    ld [$e00a], sp
    add hl, bc
    ld hl, sp-$70
    db $e4
    add hl, bc
    cp a
    dec c
    cpl
    inc de
    dec l
    dec de
    dec de
    xor h
    ld b, a
    ld h, [hl]
    rst $18
    nop
    ld a, [hl]
    inc h
    ld b, $03
    ld hl, $0700
    nop
    xor l
    rrca
    ld h, h
    rlca
    ld h, b
    ret nz

    ld hl, $e000
    ret nz

    add hl, hl
    ldh a, [$ffdf]
    ldh [$fff8], a
    ldh a, [$fff8]
    ldh a, [$ffe0]
    inc e
    ld c, $1f
    rst $38
    inc c
    ld e, $09
    ld e, $09
    dec d
    ld [$fc0c], sp
    ldh [rSCX], a

jr_014_73ff:
    add b
    rrca
    or b
    ld a, b
    or b
    ld hl, sp+$10
    cp b
    rrca
    db $10
    xor b
    db $10
    or b
    ld bc, $042f
    inc b
    ld b, c
    ld [de], a
    ld h, c
    ld [de], a
    ld hl, sp+$0f
    inc b
    nop
    inc b
    jr nz, jr_014_741f

    dec e
    ld [$081c], sp

jr_014_741f:
    inc d
    db $fc
    jr nz, jr_014_7427

    ld bc, $5804
    or b

jr_014_7427:
    ld l, b
    sub b
    ld l, b
    sub b
    rst $30
    ret nc

    nop

jr_014_742e:
    ld b, b
    ldh [rOBP0], a
    rra
    rrca
    dec e
    ld c, $d7
    dec de
    inc c
    ld d, $00
    ld b, $0b
    ld b, b
    stop
    nop
    db $fd
    ld l, b
    ld [bc], a
    ld b, $d8
    jr nc, jr_014_73ff

    db $10
    jr z, jr_014_745a

    add a
    jr c, jr_014_745d

    jr nc, jr_014_7451

    ld b, $e7

jr_014_7451:
    add hl, bc
    inc bc
    ld b, $e7
    add hl, bc
    ld a, b
    sbc c
    ldh a, [$ffe1]

jr_014_745a:
    add hl, bc
    jr nz, @+$39

jr_014_745d:
    inc b
    dec b
    db $e4
    ld d, h
    pop hl
    add hl, bc
    ld [hl], b
    rst $08
    and b
    ld d, b
    and b
    ld h, b
    ld h, b
    inc hl
    pop hl
    ld c, [hl]
    rra
    ld c, $ff
    ld d, $0d
    ld l, $19
    dec [hl]
    ld [$1038], sp
    db $fd
    jr jr_014_747e

    ld [bc], a
    ldh a, [rBCPS]

jr_014_747e:
    or b
    or h
    jr jr_014_742e

    rst $20
    db $10
    sbc h
    ld [$0103], sp
    ld bc, $7e51
    nop
    ld e, d
    db $e3
    nop
    inc a
    add d
    nop
    rrca
    ld bc, $5aa9
    ld a, $00
    ld b, c
    db $fd
    ld a, $cb
    ld e, e
    add b
    nop
    and h
    ld e, e
    ld h, h
    dec de
    rst $38
    or c
    ld a, [hl]
    ld hl, sp+$3f
    cp h
    ld a, a
    ld e, d
    dec a
    rst $38
    cp $43
    rst $20
    nop
    ld a, [hl]
    add b
    ld b, l
    cp d
    rst $38
    add d
    ld a, l
    inc bc
    db $fc
    ld b, $f8
    inc bc
    db $fc
    rst $30
    ld [hl], e
    adc [hl]
    adc [hl]
    xor d
    ld e, [hl]
    inc c
    nop
    adc d
    inc b
    ld a, a
    ld a, d
    add h
    ld b, [hl]
    cp b
    add d
    ld a, h
    ld [bc], a
    inc c
    ld [bc], a
    ld hl, sp-$5f
    dec b
    and e
    inc b
    rst $20
    ld sp, $8070
    ld c, [hl]
    or b
    add l
    db $fd
    ld a, d
    rst $00
    ld bc, $7fb0
    ld sp, hl
    ld a, $bc
    ld a, a
    cp $a3
    inc sp
    ld h, b
    add b
    ld e, b
    and b
    ld b, [hl]
    cp b
    add l
    rst $30
    ld a, d
    ld b, $f8
    ld b, e
    ld h, h
    ld b, c
    nop

jr_014_74fa:
    cp [hl]
    ld b, c
    cp a
    add b
    ld a, a
    ld h, h
    dec de
    ld h, l
    ld a, [de]
    push bc
    dec [hl]
    ld h, [hl]
    ld a, a
    add b
    ld e, d
    and h
    ld b, h
    cp b
    add h
    ld a, b
    ld b, c
    inc l
    rst $38
    inc b
    inc bc
    ld [$0f07], sp
    nop
    ld a, [bc]
    dec b
    rst $30
    db $10
    rrca
    dec d
    jr nc, jr_014_756a

    ldh [rP1], a
    db $10
    ldh [rIE], a
    ld [$f8f0], sp
    nop
    jr z, jr_014_74fa

    inc b
    ld hl, sp-$19
    ld d, h
    xor b
    rlca
    add h
    ld bc, $27c0
    rlca
    dec bc
    rlca
    rst $30
    dec e
    dec bc

jr_014_753a:
    ldh a, [$ff84]
    ld bc, $b04c
    ret z

    ldh a, [$ffef]

jr_014_7542:
    add sp, $70
    ld e, h
    add sp, $41
    jr nc, jr_014_7555

    inc bc
    inc de
    rst $38
    inc c
    ld [hl+], a
    dec e
    jr c, jr_014_7558

    add hl, bc
    ld b, $19
    db $fd

jr_014_7555:
    ld b, $01

Jump_014_7557:
    inc b

jr_014_7558:
    jr jr_014_753a

    db $e4
    jr jr_014_757f

    call c, Call_000_0e9f
    ldh a, [rOBP0]
    or b
    ld c, h
    ld sp, $e420
    inc a
    ld b, b
    rst $18

jr_014_756a:
    add b
    ld h, b
    add b
    sub b
    ld h, b
    and c
    ld b, [hl]
    ld b, $01
    ld a, a
    ld [$1107], sp
    ld c, $15
    ld a, [bc]
    add hl, de
    jr nz, jr_014_7582

    cp $81

jr_014_757f:
    ld c, [hl]
    jr nc, jr_014_7542

jr_014_7582:
    ld [$44f0], sp
    cp b
    ld d, h
    db $fd
    xor b
    ld hl, $6805
    ldh a, [$ffd2]
    ldh [$ffed], a
    ld [de], a
    rst $38
    ld a, [bc]
    db $f4
    ld d, h
    xor b
    sub h
    ld l, b
    add sp, $50
    db $db
    ld [hl], b
    nop
    and e
    inc de
    ld a, $01
    dec h
    inc e
    ld [bc], a
    db $fc

jr_014_75a5:
    cp [hl]
    inc hl
    nop
    inc h
    ret c

    call c, $d888
    ldh [rOCPS], a
    ld e, e
    rst $08
    inc a
    ld a, $01
    ld d, $80
    inc sp
    ld b, [hl]
    inc d
    ldh a, [rDIV]
    ld h, a
    ld hl, sp-$0a
    inc c

jr_014_75bf:
    and c
    jr z, jr_014_75a5

    ld [hl], e
    or b
    ld a, a
    dec h
    inc b
    rst $38
    ld c, $05
    rlca
    ld bc, $0001
    ld c, $f0
    ld a, a
    ld b, $fc
    inc b
    ld hl, sp+$18
    ldh [$ff60], a
    ldh [c], a
    ld b, d
    rst $30
    add b
    nop
    add hl, de
    add b
    dec c
    dec de
    rlca
    dec d
    dec bc
    sbc a
    inc de
    inc c
    ld c, $04
    inc b
    ldh [$ff6f], a
    add e
    dec c
    ld d, h
    rst $30
    add sp, -$1c
    jr jr_014_7617

    ld hl, $040b
    add hl, bc
    rlca
    cp a
    add hl, bc
    rlca
    inc b
    inc bc
    rlca
    ld [bc], a
    inc hl
    ld c, b
    add sp, -$01
    db $10
    ret z

    ldh a, [$ffc8]
    ldh a, [$ff90]
    ld h, b
    ld [hl], b
    ld sp, hl
    jr nz, jr_014_75bf

    inc c
    ldh [$ff72], a
    add hl, sp
    rla
    dec hl
    rla
    dec e

jr_014_7617:
    rst $18
    inc bc
    dec bc
    inc b
    rlca
    ld [bc], a
    pop hl
    add hl, hl
    nop
    nop
    rst $38
    adc $f4
    ld [$5c74], a
    ldh [$ffe8], a
    db $10
    rst $30
    ld [hl], b
    jr nz, jr_014_764e

    ldh [c], a
    ld [hl], h
    ld [$0ef0], sp
    ldh a, [$ff7f]
    dec b
    ld a, [$f806]
    inc h
    ret c

    ld hl, sp+$20
    dec l
    or $00
    dec b
    rlca
    dec b
    ldh [rSC], a
    jr jr_014_764e

    dec d
    ld a, [bc]
    rst $18
    inc d
    dec bc
    dec bc
    dec b

jr_014_764e:
    rlca
    nop
    dec l
    ret nc

    ldh [$ff9f], a
    xor $10
    add hl, bc
    or $56
    inc b
    rrca
    and a
    inc h
    add b
    rra
    ld a, a
    ld l, h
    inc de
    or c
    ld a, [hl]
    nop
    ld [$20ff], sp
    jr nz, @-$72

    adc h
    nop
    nop
    ld h, [hl]
    ld h, [hl]
    rst $38
    ld [$0508], sp
    dec b
    ret nz

    ret nz

    dec d
    dec d
    rst $38
    xor l
    xor l
    ld a, [$7ffa]
    ld a, a
    sub $d6
    rst $38
    jp hl


    jp hl


    ccf
    ccf
    jp c, $7dda

    ld a, l
    rst $38
    and h
    rst $30
    dec h
    xor l
    adc $f3
    or l
    db $eb
    rst $38
    ld a, [hl-]
    rst $20
    push bc
    rst $30
    ld [hl], $be
    sbc l
    rst $38
    rst $38
    halt
    halt
    xor a
    xor b
    ld a, d
    ld h, a
    xor c
    sbc c
    rst $38
    ld [hl], b
    ld d, b
    ret nz

    and b
    ldh [$ffa0], a
    and b
    ld h, b
    rst $38
    ld a, [hl+]
    ld a, [hl+]
    push bc
    push bc
    ld hl, sp+$38
    cp c
    reti


    rst $38
    ld e, [hl]
    ld h, [hl]
    rla
    dec de
    dec sp
    dec a
    dec sp
    dec a
    rst $38
    inc c
    inc c
    ccf
    inc hl
    ld a, e
    ld e, b
    call nc, $ffed
    cp e
    add $4f
    adc b
    ld a, [hl-]
    ld b, a
    xor c
    reti


    rst $38
    or b
    or b
    ld a, h
    ld b, h
    add $82
    xor [hl]
    ld [hl], $ff
    rst $18
    pop hl
    ei
    add d
    and a
    ld h, c
    db $eb
    add hl, de
    rst $38
    ld a, a
    add b
    ld a, [$807a]
    ld a, a
    add b
    nop
    rst $38
    add b
    ld a, [de]
    push af
    ld [hl], l
    ld a, d
    add l
    ret nz

    ld d, d
    rst $38
    cp $01
    ld b, c
    ld b, b
    ld bc, $01fe
    nop
    rst $38
    ld bc, $2548
    inc h
    add d
    ld a, l
    ld bc, $ffd0
    inc d
    inc d
    nop
    nop
    and c
    and c
    ld d, b
    ld d, b
    rst $38
    and d
    and d
    ret nc

    ret nc

    or $76
    jp hl


    add hl, hl
    rst $38
    ld [hl], l
    or l
    cp $9e
    dec a
    ld c, l
    ld a, a
    ld b, a
    rst $38
    ld l, d
    ld d, d
    cpl
    ld d, e
    ld [hl], $48
    db $fd
    add e
    rst $38
    ld e, e
    and a
    jp hl


    scf
    ld d, h
    db $db
    ld l, d
    db $ed
    rst $38
    rra
    db $fd
    push bc
    dec sp
    ei
    rlca
    add a
    ld a, a
    rst $38
    ld l, b
    ld [hl], a
    add sp, -$09
    ld d, [hl]
    ld e, c
    pop af
    cp $ff
    ld e, b
    ld e, a
    adc $cf
    scf
    scf
    ld e, l
    ld e, l
    rst $38
    db $ed
    rst $28
    ld l, b
    rst $28
    nop
    rst $38
    add b
    ld a, a
    cp $30
    ld b, $ff
    rst $38
    rst $38
    ld e, d
    ld e, d
    jr nz, @+$01

    rst $38
    nop
    rst $38
    rlca
    ld hl, sp+$78
    add a
    add c
    ld a, a
    rst $38
    rra
    rst $38
    ld a, [$55fa]
    ld d, l
    ld a, [bc]
    or $ff
    dec [hl]
    call Call_000_3ece
    dec de
    ei
    cp $fe
    cp a
    ld b, l
    ld b, l
    xor d
    xor d
    ld b, l
    ld b, l
    ld bc, $ca0e
    rst $18
    rst $38
    and l
    rst $28
    ld [hl-], a
    rst $38
    ld bc, $1d0e
    ld a, a
    rst $18
    ld b, b
    rst $38
    sub d
    rst $38
    ld [$0340], sp
    ld de, $e7ff
    adc h
    rst $38
    ld hl, $00a0
    ld bc, $0c01
    di
    inc e
    rst $30
    db $e3
    add hl, de
    rst $20

jr_014_77ab:
    inc bc
    ld bc, $70f0
    db $eb
    ld a, e
    rst $38
    adc a
    ld a, a
    ld h, b
    sbc a
    sbc [hl]
    pop hl
    pop bc
    cp $ff
    db $fc
    rst $38
    cpl
    cpl
    adc l
    sbc [hl]
    pop hl
    cp $ff
    jp nz, Jump_000_1cfd

    db $e3
    ld hl, $c6df
    ld a, $ff
    inc e
    db $fc
    ld [$eeea], a
    xor c
    ld e, h
    add e
    rst $38
    ldh [$ff9b], a
    cp l
    adc $fb
    xor h
    push af
    set 7, a
    ld a, a
    ld h, l
    rra
    ld c, $df
    ld d, d
    ld l, a
    xor c
    rst $38
    push hl
    and b
    ld [hl], h
    ld d, d
    ccf
    adc b
    cp [hl]
    ld d, d
    rst $38
    xor $1c
    db $fc
    ldh [$fffb], a
    ld a, e
    ld a, l
    add d
    rst $30
    pop hl
    ld [hl], a
    rst $38
    nop
    ld a, [bc]
    rst $38
    db $fd
    inc bc
    db $fd
    rst $38
    ld bc, $21fe
    jr nz, jr_014_77ab

    ld e, l
    ld b, c
    ld l, b
    rst $38
    rst $38
    cp $fe
    ld bc, $bfff
    ret nz

    cp a
    rst $38
    add b
    ld a, a
    halt
    ld a, c
    sub h
    sbc e
    inc a
    dec sp
    rst $38
    rlca
    inc b
    jp c, Jump_014_44db

    ld b, h
    adc c
    adc c
    rst $38
    ld [hl+], a
    ld [hl+], a
    cp a
    ret nz

    ld a, a
    add b
    pop af
    ld c, $f7
    adc $3f
    ccf
    ret nz

    ld b, $da
    jp c, $2d2d

    rst $38
    inc sp
    db $f4
    sub [hl]
    ld [hl], l
    jp z, Jump_014_723d

    adc l
    rst $38
    sbc l
    db $e3
    db $fd
    db $fd
    halt
    halt
    and e
    and e
    db $fd
    rra
    or b
    inc bc
    push af
    push af
    xor d
    xor d
    inc d
    inc d
    rst $38
    adc b
    adc b
    ld [hl-], a
    ld [hl-], a
    ld [bc], a
    ld [bc], a
    ld d, c
    ld d, c
    rst $38
    adc d
    adc d
    ld b, c
    ld b, c
    xor d
    ld l, d
    ld d, l
    or l
    rst $38
    xor b
    ret c

    ld d, h
    ld l, h
    dec l
    dec [hl]
    ld [$fff6], a
    halt
    ld a, d
    scf
    dec sp
    inc e
    ld a, [de]
    dec e
    dec de
    rst $38
    ld d, e
    ld e, l
    inc hl
    dec a
    inc sp
    dec a
    inc hl
    dec a
    rst $38
    inc de
    dec e
    inc de
    dec e
    ld a, [hl-]
    inc a
    dec hl
    dec a
    rst $38
    ld [hl+], a
    inc a
    push hl
    ei
    add $fa
    db $dd
    db $e3
    rst $38
    ld a, [de]
    ld a, e
    ld h, c
    inc a
    jp nc, $f8b3

    add a
    cp a
    jp nz, Jump_014_4cbf

    dec a
    call z, Call_014_50bd
    inc de
    ld hl, sp-$01
    ld a, [$f1e6]
    ret


    db $d3
    xor e
    or $a6
    rst $38
    call nc, Call_014_7f8c
    xor a
    rst $38
    nop
    jp $ff42


    ei
    ld a, d
    or l
    inc [hl]
    xor c
    ld l, d
    bit 1, d
    rst $28
    db $d3
    ld d, d
    rst $30
    ld a, [hl]
    ld d, b

jr_014_78c9:
    dec d
    rra
    sbc a
    add a
    rst $38
    ld c, a
    ld b, e
    cp e
    or l
    ld l, a
    ld h, l
    dec hl
    ld sp, $efff
    push hl
    ld b, l
    ld b, l
    ld [de], a
    ld [de], a
    or l
    or l
    rst $38
    ld [hl+], a
    ld [hl+], a
    push de
    push de
    xor e
    xor d
    ld [de], a
    dec d
    rst $38
    add l
    adc e
    ld d, l
    ld d, l
    ld a, [hl+]
    ld a, [hl+]
    ld c, l
    ld c, [hl]
    rst $38
    xor [hl]
    or c
    halt
    adc [hl]
    sub b
    ld [hl], b
    ret nz

    ret nz

    rst $38
    nop
    nop
    ld d, h
    ld d, h
    and b
    and b
    db $fc
    inc bc
    cp a
    ei
    db $fc
    rrca
    rrca
    ld bc, $0101
    daa
    and h
    rst $38
    di
    ccf
    and b
    db $ed
    db $db
    jp c, Jump_000_2eb6

    rst $38
    sub $fb
    rst $00
    ld e, a
    or e
    ld a, $41
    db $e4
    rst $38
    scf
    dec h
    call Call_014_6fba
    db $ed
    or a
    ld a, d
    rst $38
    scf
    ld l, a
    ld [hl], c
    push af
    xor $ab
    db $dd
    xor [hl]
    rst $38
    pop af
    ccf
    xor h
    call nc, $bfeb
    ret nz

    ld a, c
    rst $38
    or [hl]
    pop de
    xor b
    jr c, jr_014_78c9

    inc e
    ld l, h
    db $f4
    rst $38
    add a
    xor l
    ld [hl], l
    sub $3b
    cp l
    jp $ffa2


    db $dd
    ld c, a
    cp l
    and $7c
    inc hl
    dec a
    ld b, b
    rst $38
    rst $38
    sbc e
    db $e4
    ld l, $da
    ld e, h
    or h
    inc l
    rst $38
    call nc, $a45c
    sub [hl]
    ld a, d
    ld a, $c1
    ld b, b
    rst $38
    rst $38
    ldh a, [c]
    sbc a
    ld hl, sp+$2f
    ld e, b
    rla
    ld e, c
    rst $38
    rla
    ld a, $31
    ld [hl], l
    ld l, [hl]
    xor d
    db $dd
    and a
    rst $38
    db $f4
    ld a, $a2
    db $eb
    call $d2b3
    dec h
    rst $38
    pop de
    jp nc, Jump_000_39e8

    or [hl]
    rra
    ld a, b
    and h
    rst $38
    rst $30
    xor l
    ld hl, $0d7a
    push de
    sbc e
    xor d
    ld a, a
    scf
    push de
    ld h, a
    ld [hl], $de
    db $dd
    inc sp
    dec c
    jr nc, @+$01

    call z, Call_014_4ebd
    cp a
    ld c, l
    cp [hl]
    ld [hl+], a
    db $dd
    ei
    inc e
    db $e3
    ld h, b
    inc hl
    rst $38
    db $fc
    rst $38
    ld d, [hl]
    adc [hl]
    rst $38
    ld d, [hl]
    add [hl]
    ld [hl], a
    xor a
    ld d, a
    adc a
    ld [hl], l
    xor a
    cp $21
    nop
    ld d, c
    and a
    sub l
    inc a
    sbc l
    ld a, [hl]
    xor l
    rst $38
    ld a, [hl]
    xor c
    ld a, [hl]
    sub c
    ld a, [hl]
    or l
    ld a, [hl]
    or l
    rst $38
    inc a
    sub l
    ld a, [hl]
    ld e, e
    ld d, c
    ld l, e
    ld h, c
    rst $28
    rst $38
    push af
    ld l, e
    pop hl
    ld l, a
    push hl
    ld l, a
    push hl
    ld a, a
    rst $38
    push af
    ld l, e
    push hl
    ld e, e
    ld d, a
    xor e
    or a
    ld [hl], c
    rst $38
    ld l, a
    or e
    xor a
    ld d, e
    ld l, a
    rst $20
    rst $18
    ld h, $ff
    ld e, [hl]
    and h
    call c, $a0a0
    ret nz

    ret nz

    add b
    ld a, [hl]
    stop
    ret nz

    ret nz

    add [hl]
    add [hl]
    ld [$0f08], sp
    scf
    rst $38
    xor a
    ret c

    ld e, e
    or d
    push de
    or [hl]
    jp $ffbc


    ccf
    pop bc
    add $f1
    scf
    cp h
    dec e
    ld a, [hl]
    rst $38
    db $ec
    inc de
    ei
    dec c
    ld e, l
    or [hl]
    or l
    sub $ff
    ldh [c], a
    db $dd
    cp l
    jp $be76


    sbc l
    ld a, a
    rst $38
    or [hl]
    adc $6b
    sub a
    or $b9
    rst $00
    cp b
    rst $30
    ccf
    ret nz

    rst $00
    ld [bc], a
    ld [bc], a
    ld h, d
    ld a, l
    rst $00
    ld sp, hl
    rst $38
    adc c
    or $f5
    ld c, $7e
    add c
    db $fd
    add e
    cp $01
    ld [bc], a
    ld l, a
    ret c

    db $db
    or d
    ld d, l
    or [hl]
    ld b, e
    rst $38
    cp h
    dec a
    jp $f98e


    inc hl
    db $fc
    add hl, bc
    rst $38
    cp $cc
    inc sp
    ldh a, [c]
    dec c
    ld e, c
    cp [hl]
    and e
    rst $38
    call nz, $c9f7
    cp h
    jp $bf61


    adc b
    rst $38
    ld a, a
    cp a
    db $e4
    dec [hl]
    sub b
    db $eb
    cp b
    cp e
    rst $30
    ld b, [hl]
    db $fd
    inc sp
    nop
    inc b
    cp [hl]
    dec e
    ld a, [hl]
    ld [hl], d
    rst $38
    and l
    ld l, c
    adc [hl]
    ld d, l
    sbc d
    rst $28
    ld [hl], h
    or d
    ld a, a
    ld c, a
    push hl
    rla
    halt
    cp [hl]
    ld e, l
    cp a
    dec c
    ld b, b
    rst $38
    ld l, d
    ld l, d
    or h
    or h
    cp d
    add $35
    rst $30
    rst $38
    pop bc
    ld a, e
    and l
    ld h, a
    ld hl, sp+$06
    add c
    ld a, e
    rst $38
    ld d, b
    xor a
    ld d, e
    xor h
    ld e, h
    and e
    ld h, c
    sbc a
    ei
    ld hl, $21df
    nop
    rra
    ldh [rIE], a
    nop
    add c
    ei
    ld a, [hl]
    add e
    ld h, $00
    rst $38
    nop
    ld l, e
    push af
    bit 7, a
    dec h
    dec sp
    push bc

jr_014_7ac3:
    rlca
    ld sp, hl
    rrca
    ei
    ld hl, rJOYP
    rst $38
    rlca
    xor a
    rst $18
    xor a
    rst $18
    xor [hl]
    sbc $ff
    xor h
    call c, $dfaf
    rst $20
    rst $18
    rst $10
    rst $28
    rst $38
    pop de
    rst $28
    nop
    nop
    jr jr_014_7afa

    ld h, b
    ld h, b
    rst $38
    ret nz

    ret nz

    pop hl
    pop hl
    add e
    add e
    rst $00
    rst $00
    rst $38
    rst $08
    rst $08
    nop
    nop
    inc d
    inc d
    ld [hl], $36
    rst $38
    cp [hl]
    cp [hl]
    cp e

jr_014_7afa:
    cp a
    dec sp
    ccf
    di
    rst $38
    rst $38
    ld h, c
    rst $38
    or a
    call nz, $925e
    rst $00
    add l
    rst $38
    db $d3
    sub d
    jp hl


    jr z, jr_014_7ac3

    ld d, h
    sbc $20
    rst $38
    ld l, h
    inc e
    and h
    rst $30
    and l
    dec l
    ld a, [hl]
    ld bc, $e5ff
    and [hl]
    cp $51
    push af
    add a
    ld [hl], $5e
    rst $28
    ld a, l
    ld d, e
    and h
    rst $10
    nop
    add hl, sp
    db $fd
    push hl
    xor a
    rst $30
    ld [hl-], a
    rst $38
    call $3902
    and b
    rst $30
    inc b
    jp hl


    rst $38
    sub $bb
    pop bc
    or a
    ld [$29ff], sp
    add $ff
    ld sp, $449a
    rst $38
    ld [hl], e
    and h
    sbc l
    ld l, b
    rst $38
    xor [hl]
    ld d, e
    ld l, d
    sub l
    rst $18

jr_014_7b4f:
    ld a, [bc]
    db $f4
    xor e
    cp a
    ld l, d
    sub h
    rst $38
    dec d
    ret nz

    ccf
    ldh [rLY], a
    ld a, a
    ei
    rst $38
    ld a, a
    ld [hl], b
    ld a, $61
    rst $18
    ld b, c
    pop de
    ld d, c
    ei
    inc bc
    db $fc
    ldh [rLY], a
    cp $ff
    cp $ff
    nop
    rst $38
    ld a, l
    inc b
    ld a, l
    inc b
    ld c, l
    ld c, h
    ld c, h
    di
    rst $38
    sub e
    db $ec
    jr nz, jr_014_7b4f

    ld c, l
    xor [hl]
    ccf
    pop bc
    rst $38
    adc [hl]
    db $fc
    ld [hl+], a
    db $fc
    ld [$bcff], sp
    db $e3
    rst $38
    dec hl
    sbc h
    pop hl
    and b
    xor l
    sbc $3f
    pop hl
    rst $38
    add $f4
    ld [hl], $bc
    dec e
    ld a, a
    sbc c
    ld a, e
    rst $38
    sbc b
    ld a, d
    adc l
    ld a, a
    adc l
    ld a, a
    adc e
    ld a, l
    rst $38
    ld b, l
    cp e
    dec sp
    rst $00
    ld b, $fe
    db $10
    db $10
    rst $38
    add c
    add c
    jr z, jr_014_7bdc

    ld [bc], a
    ld [bc], a
    ld c, l
    ld c, l
    rst $38
    add a
    add [hl]
    inc de
    db $10
    ld c, [hl]
    ld c, l
    ld b, d
    ld b, d
    rst $38
    inc b
    inc b
    ld d, c
    ld d, c
    rst $38
    ret nz

    db $ec
    inc e
    rst $38
    and h
    ld h, a
    sbc b
    sbc b
    ld h, e
    ld h, e
    inc hl
    inc hl
    rst $38
    db $10
    db $10
    ld d, b
    ld d, b
    ld hl, sp+$08
    ld l, [hl]
    ld [hl], d

jr_014_7bdc:
    rst $38
    ld c, e
    call z, $3211
    add h
    adc l
    xor l
    xor l
    rst $38
    ld h, $3f
    ret z

    rst $10
    or h
    ei
    ccf
    ld e, b
    rst $38
    ld d, [hl]
    ld l, b
    inc a
    ld hl, $101b
    ld [bc], a
    sbc $ff
    ld b, c
    cp a

jr_014_7bfa:
    db $10
    rst $28
    ccf
    ret nz

    pop af
    ld bc, $0eff
    dec bc
    ld h, a
    sbc h
    call z, $e473
    db $e4
    rst $38
    push bc
    db $fd
    rla
    rst $28
    inc hl
    rst $18
    ldh [rNR34], a
    rst $38
    push af
    rst $08
    cp l
    ld l, e
    ld e, e
    add a
    or [hl]
    adc $ff
    dec a
    add e
    adc $b9
    or a
    ld c, h
    ld a, [hl]
    or e
    db $fc
    nop
    jr nz, jr_014_7c29

    ld a, [de]

jr_014_7c29:
    ld b, c
    xor c

jr_014_7c2b:
    adc $7d
    or d
    rst $18
    db $fd
    ld h, h
    dec b
    ld a, [de]
    add e
    ld a, [hl]
    jp $a33e


    ld e, [hl]
    db $db
    swap [hl]
    ld b, e
    nop
    db $d3
    ld l, $41
    nop
    xor c
    ld d, [hl]
    inc hl
    push de
    ld a, [hl+]
    add c
    jr jr_014_7bfa

    ld c, h
    ld h, $00
    nop
    ldh a, [rKEY1]
    ld sp, $db00
    rst $18
    ld b, c
    ld hl, $e000
    ld e, a
    ld b, c
    ld d, l
    rst $38
    ld a, a
    ld a, e
    cp a
    ld b, b
    ld h, c
    rrca
    ld a, l
    inc b
    dec b
    ld hl, sp+$41
    ld d, l
    db $fc
    ld h, c
    ld b, l
    ld bc, $b832
    ld l, a
    ld e, b
    rst $10
    or l
    ld a, e
    rst $38
    db $fc
    rlca
    and c
    ld a, a
    adc b
    ld a, a
    and h
    rst $30
    rst $38
    ld [hl], l
    adc l
    jp c, Jump_014_7557

    ei
    xor d
    ld [hl], a
    rst $38
    push af
    rlca
    or [hl]
    ld a, $1d
    ld a, a
    and e
    ld h, d
    rst $38
    ret


    jr c, jr_014_7c2b

    ld a, b
    call $853c
    ld a, h
    rst $38
    push bc
    inc a
    adc e
    ld a, [hl]
    rst $00
    ld a, $97
    sub c
    rst $38
    inc l
    ld a, [hl+]
    sub [hl]
    sbc d
    dec l
    ld sp, $a1bd
    rst $38
    ld a, l
    ld h, c
    ld l, d
    halt
    jp nc, Jump_000_08ee

    ld c, a
    rst $38
    ld d, h
    call c, $9b1a
    ld [hl], $b6
    daa
    or a
    rst $38
    ld [hl+], a
    or e
    ld e, b
    ret c

    sub a
    rst $18
    ld [bc], a
    and $ff
    ld [hl+], a
    ld [hl-], a
    ld e, e
    db $db
    ld h, l
    ld l, l
    db $e4
    db $ed
    rst $38
    ld e, c
    reti


    dec bc
    dec de
    sub $f6
    db $10
    ld h, a
    rst $38
    dec sp
    ld c, h
    ld [de], a
    daa
    dec d
    ld [hl+], a
    dec c
    ld [hl], a
    rst $38
    ld a, [hl+]
    pop de
    ld e, $e7
    adc c
    ldh a, [c]
    ld c, h
    or e
    rst $38
    daa
    call c, $e619
    and [hl]
    ld a, c
    ld h, h
    sbc a
    rst $38
    jp z, $b435

    db $db
    rst $10
    jr z, @-$66

    ld b, [hl]
    rst $38
    ld [hl], c
    xor e
    db $f4
    ld [$67b9], a
    ld l, e
    add a
    rst $38
    cp e
    rst $30
    ld c, d
    and [hl]
    xor c
    ld h, a
    ld b, e
    db $fc
    rst $18
    sbc [hl]
    ldh [c], a
    dec hl
    call Call_000_0033
    ld a, [hl-]
    sub d
    add sp, -$01
    add hl, hl
    or $0f
    ld hl, sp+$40
    rst $38
    sbc [hl]
    ld [hl], e
    rst $38
    ld a, b
    rrca
    call nc, $a99b
    scf
    call c, $ff6f
    ld hl, $ccdf
    inc sp
    add b
    ld b, b
    cp a
    ld a, a
    db $fd
    cp a
    ld hl, $001d
    add d
    ld a, h
    or l
    ld a, c
    xor e
    rst $38
    ld [hl], e
    inc de
    ld [hl+], a
    xor a
    adc $5d
    sbc [hl]
    cp e
    rst $38
    inc a
    ld [hl], a
    ld a, b
    jp hl


    or $d7
    xor $af
    rst $38
    sbc $ab
    ld [hl], a
    or l
    ld a, e
    cp $01
    add c
    ei
    ld b, d
    cp [hl]
    ld h, h
    ld [bc], a
    ld a, a
    add b
    ld [hl], b
    or b
    ld a, c
    rst $30
    cp c
    ld h, b
    and b
    or b
    rrca
    cp a
    ccf
    ret nz

    jr nz, @+$01

    rst $18
    db $fd
    inc bc
    ccf
    dec a
    rst $00
    push bc
    rlca
    rst $38
    dec b
    ccf
    dec a
    inc bc
    db $fd
    db $fd
    inc bc
    add a
    rst $38
    ld a, e
    ld e, h
    db $e3
    and [hl]
    push de
    ld e, e
    cp d
    add hl, sp
    rst $38
    call nz, $fb17
    adc a
    ld sp, hl
    ld [hl+], a
    db $fd
    ld a, [bc]
    rst $38
    db $fd
    cp h
    jp $9527


    db $d3
    ld [$ffa9], a
    db $e4
    scf
    ei
    push bc
    di
    ld [hl], $bd
    ld e, $f9
    ld a, l
    ld bc, $4917
    nop
    cp c
    rst $08
    ldh a, [c]
    sbc l
    rst $00
    rst $38
    cp b
    cp a
    ret nz

    rst $08
    ldh a, [$ff73]
    ld a, h
    ld a, d
    rst $38
    ld a, l
    ld [hl], $39
    ld l, h
    ld l, a
    or b
    or b
    ld l, h
    rst $38
    rst $28
    ld a, b
    cp b
    ld d, c
    rst $28
    xor a
    or b
    and $ff
    ld sp, hl
    adc $f1
    ld c, c
    call Call_000_3b32
    dec h
    rst $38
    and $16
    add hl, de
    sbc [hl]
    pop hl
    scf
    ld hl, sp+$6f
    rst $38
    add sp, $2f
    add sp, $4a
    ld [hl], c
    db $dd
    and $3f
    rst $38
    ld b, h
    adc [hl]
    di
    and [hl]
    ei
    ld h, e
    ld a, l
    ret


    rst $38
    xor $7b
    ld a, e
    ld c, h
    or e
    or c
    ld c, [hl]
    ld l, h
    rst $38
    or e
    or l
    adc $da
    scf
    add hl, hl
    reti


    sbc a
    rst $38
    sub b
    pop af
    ld c, $9d
    ld [hl], e
    ld e, e
    rst $30
    cp e
    rst $38
    ld h, a
    ld [hl], d
    adc $e7
    ld e, a
    add $b6
    adc l
    rst $38
    ld l, l
    ld [de], a
    sub d
    ld e, e
    db $e4
    or a
    jp nc, $fe6b

    nop
    ld a, [hl-]
    ld c, l
    or e
    add [hl]
    ld sp, hl
    ld hl, $09fe
    rst $38
    cp $52
    and l
    add hl, hl
    adc $55
    sbc d
    db $eb
    rst $38
    ld [hl], h
    or c
    ld c, a
    db $ec
    rra
    ld h, c
    cp a
    ld c, b
    rst $18
    cp a
    sub a
    ld h, a
    rst $38
    nop
    ldh [$ff71], a
    ld a, a
    jp nz, Jump_000_01fd

    ld b, c
    db $10
    sub a
    ld l, a
    ld b, c
    cp [hl]
    rst $38
    nop
    ld hl, sp-$20
    ld [hl], c
    ld b, b
    dec l
    ld h, b
    dec l
    nop
    ld b, c
    ld a, $af
    sbc [hl]
    rst $38
    pop de
    adc $ef
    ldh [$ff75], a
    ldh a, [$ffbb]
    ld a, b
    rst $38
    ld e, l
    cp h
    cpl
    sbc $ff
    nop
    dec hl
    jp c, Jump_000_29ff

    ret c

    add hl, hl
    ret c

    dec l
    call c, $da2b
    rst $38
    dec hl
    jp c, $dc2d

    dec l
    call c, Call_000_2baf
    rst $38
    xor a
    dec hl
    adc a
    dec bc
    rst $18
    ld e, e
    rst $18
    ld e, e
    cp a
    sbc a
    dec de
    rst $08
    ld c, e
    sbc a
    dec de
    nop
    ld d, d
    adc a
    rst $38
    adc b
    ld [hl], a
    or b
    rst $08
    ld d, c
    cp a
    adc h
    ld a, a

jr_014_7e93:
    cp $01
    jr nz, jr_014_7e93

    add a
    push de
    ld l, l
    xor d
    rst $18
    push hl
    rst $38
    xor a
    ld [hl], d
    cp a
    push bc
    ld [hl], a
    or [hl]
    ld a, $9d
    ld bc, $ff7f
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_014_7f8c:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
