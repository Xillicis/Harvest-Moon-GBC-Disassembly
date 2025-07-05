; Disassembly of "harvest_moon.gbc"
; This file was created with:
; mgbdis v2.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $032", ROMX[$4000], BANK[$32]

    ld [hl-], a
    nop
    nop
    ld bc, $0042
    nop
    add hl, bc
    ld b, d
    nop
    nop
    ld de, $0042
    nop
    add hl, de
    ld b, d
    nop
    nop
    ld d, l
    ld b, e
    nop
    nop
    ld e, l
    ld b, e
    nop
    nop
    ld h, l
    ld b, e
    nop
    nop
    ld l, l
    ld b, e
    nop
    nop
    sbc c
    ld b, h
    nop
    nop
    sbc a
    ld b, h
    nop
    nop
    and l
    ld b, h
    nop
    nop
    xor e
    ld b, h
    nop
    nop
    push hl
    ld b, l
    nop
    nop
    di
    ld b, l
    nop
    nop
    ld bc, $0046
    nop
    rrca
    ld b, [hl]
    nop
    nop
    dec e
    ld c, c
    nop
    nop
    dec hl
    ld c, c
    nop
    nop
    add hl, sp
    ld c, c
    nop
    nop
    ld b, a
    ld c, c
    nop
    nop
    pop hl
    ld c, e
    nop
    nop
    jp hl


    ld c, e
    nop
    nop
    pop af
    ld c, e
    nop
    nop
    ld sp, hl
    ld c, e
    nop
    nop
    dec [hl]
    ld c, l
    nop
    nop
    dec a
    ld c, l
    nop
    nop
    ld b, l
    ld c, l
    nop
    nop
    ld c, l
    ld c, l
    ld bc, $7900
    ld c, [hl]
    ld bc, $8100
    ld c, [hl]
    ld bc, $8900
    ld c, [hl]
    ld bc, $9100
    ld c, [hl]
    ld bc, wVRAMBlitCommandList
    ld c, a
    ld bc, $3b00
    ld d, b
    ld bc, $5600
    ld d, b
    ld bc, $5e00
    ld d, b
    ld bc, $6600
    ld d, b
    ld bc, $6e00
    ld d, b
    ld bc, $7200
    ld d, d
    ld bc, $7a00
    ld d, d
    ld bc, $8200
    ld d, d
    ld bc, $8a00
    ld d, d
    ld bc, $7600
    ld d, h
    ld [bc], a
    nop
    cp $54
    ld [bc], a
    nop
    ld b, $55
    ld [bc], a
    nop
    ld c, $55
    ld [bc], a
    nop
    sub d
    ld d, [hl]
    ld [bc], a
    nop
    sbc d
    ld d, [hl]
    ld [bc], a
    nop
    and d
    ld d, [hl]
    ld [bc], a
    nop
    xor d
    ld d, [hl]
    ld [bc], a
    nop
    sbc d
    ld e, b
    ld [bc], a
    nop
    xor b
    ld e, b
    ld [bc], a
    nop
    or [hl]
    ld e, b
    ld [bc], a
    nop
    call nz, $0258
    nop
    ld e, d
    ld e, d
    ld [bc], a
    nop
    ld l, b
    ld e, d
    ld [bc], a
    nop
    halt
    ld e, d
    inc bc
    nop
    sub l
    ld e, e
    inc bc
    nop
    ld b, $5c
    inc bc
    nop
    ld a, [bc]
    ld e, h
    inc bc
    nop
    ld c, $5c
    inc bc
    nop
    ld [de], a
    ld e, h
    inc bc
    nop
    ld d, $5d
    inc bc
    nop
    rst $38
    ld e, l
    inc bc
    nop
    add hl, bc
    ld e, [hl]
    inc bc
    nop
    inc de
    ld e, [hl]
    inc bc
    nop
    dec e
    ld e, [hl]
    inc bc
    nop
    or e
    ld h, b
    nop
    ld bc, $6156
    nop
    ld bc, $6160
    nop
    ld bc, $616a
    nop
    nop
    ld hl, $0042
    nop
    inc hl
    ld b, d
    nop
    nop
    dec h
    ld b, d
    nop
    nop
    daa
    ld b, d
    nop
    nop
    ld bc, $004c
    nop
    inc bc
    ld c, h
    nop
    nop
    dec b
    ld c, h
    nop
    nop
    rlca
    ld c, h
    nop
    nop
    or c
    ld b, h
    nop
    nop
    or e
    ld b, h
    nop
    nop
    or l
    ld b, h
    nop
    nop
    or a
    ld b, h
    inc bc
    ld bc, $634b
    inc bc
    ld bc, $6353
    inc bc
    ld bc, $6359
    inc bc
    ld bc, $635b
    inc bc
    ld bc, $63c3
    inc bc
    ld bc, $63cb
    inc bc
    ld bc, $63d3
    inc bc
    ld bc, $63db
    inc bc
    ld bc, $65df
    inc bc
    ld bc, $65e1
    inc bc
    ld bc, $65e3
    inc bc
    ld bc, $65e5
    inc bc
    ld bc, $664b
    inc bc
    ld bc, $6659
    inc bc
    ld bc, $6667
    inc bc
    ld bc, $6675
    nop
    ld [bc], a
    ld [hl], e
    ld l, b
    inc bc
    nop
    ld d, $5c
    inc bc
    nop
    ld a, [de]
    ld e, h
    inc bc
    nop
    ld e, $5c
    inc bc
    nop
    ld [hl+], a
    ld e, h
    nop
    nop
    dec e
    ld b, [hl]
    nop
    nop
    dec hl
    ld b, [hl]
    nop
    nop
    add hl, sp
    ld b, [hl]
    nop
    nop
    ld b, a
    ld b, [hl]
    nop
    ld [bc], a
    add l
    ld l, b
    nop
    ld [bc], a
    adc l
    ld l, b
    nop
    ld [bc], a
    sub l
    ld l, b
    nop
    ld [bc], a
    sbc l
    ld l, b
    nop
    ld [bc], a
    and l
    ld l, b
    nop
    ld [bc], a
    and a
    ld l, b
    nop
    ld [bc], a
    xor c
    ld l, b
    nop
    ld [bc], a
    xor e
    ld l, b
    nop
    ld [bc], a
    xor l
    ld l, b
    nop
    ld [bc], a
    or l
    ld l, b
    nop
    ld [bc], a
    cp l
    ld l, b
    nop
    ld [bc], a
    push bc
    ld l, b
    nop
    ld [bc], a
    call $0068
    ld [bc], a
    rst $08
    ld l, b
    nop
    ld [bc], a
    pop de
    ld l, b
    nop
    ld [bc], a
    db $d3
    ld l, b
    nop
    nop
    add l
    ld l, h
    nop
    nop
    add l
    ld l, h
    nop
    nop
    add l
    ld l, h
    nop
    nop
    add l
    ld l, h
    add hl, hl
    ld b, d
    ld b, d
    ld b, d
    add hl, hl
    ld b, d
    ld e, e
    ld b, d
    ld [hl], h
    ld b, d
    adc l
    ld b, d
    ld [hl], h
    ld b, d
    and [hl]
    ld b, d
    cp a
    ld b, d
    ret c

    ld b, d
    cp a
    ld b, d
    pop af
    ld b, d
    ld a, [bc]
    ld b, e
    inc hl
    ld b, e
    ld a, [bc]
    ld b, e
    inc a
    ld b, e
    add hl, hl
    ld b, d
    ld [hl], h
    ld b, d
    cp a
    ld b, d
    ld a, [bc]
    ld b, e
    ld sp, hl
    nop
    dec b
    nop
    ld sp, hl
    ld hl, sp+$04
    nop
    pop af
    nop
    inc bc
    nop
    pop af
    ld hl, sp+$02
    nop
    jp hl


    nop
    ld bc, $e900
    ld hl, sp+$00
    nop
    add b
    ld hl, sp+$00
    add hl, bc
    nop
    ld hl, sp-$08
    ld [$f000], sp
    nop
    rlca
    nop
    ldh a, [$fff8]
    ld b, $00
    add sp, $00
    ld bc, $e800
    ld hl, sp+$00
    nop
    add b
    add sp, $00
    ld bc, $e800
    ld hl, sp+$00
    nop
    ld hl, sp+$00
    dec c
    nop
    ld hl, sp-$08
    inc c
    nop
    ldh a, [rP1]
    dec bc
    nop
    ldh a, [$fff8]
    ld a, [bc]
    nop
    add b
    ld sp, hl
    nop
    inc de
    nop
    ld sp, hl
    ld hl, sp+$12
    nop
    pop af
    nop
    ld de, $f100
    ld hl, sp+$10
    nop
    jp hl


    nop
    rrca
    nop
    jp hl


    ld hl, sp+$0e
    nop
    add b
    ld hl, sp+$00
    rla
    nop
    ld hl, sp-$08
    ld d, $00
    ldh a, [rP1]
    dec d
    nop
    ldh a, [$fff8]
    inc d
    nop
    add sp, $00
    rrca
    nop
    add sp, -$08
    ld c, $00
    add b
    ld hl, sp+$00
    dec de
    nop
    ld hl, sp-$08
    ld a, [de]
    nop
    ldh a, [rP1]
    add hl, de
    nop
    ldh a, [$fff8]
    jr jr_032_42b6

jr_032_42b6:
    add sp, $00
    rrca

jr_032_42b9:
    nop
    add sp, -$08
    ld c, $00
    add b
    ld sp, hl
    ld hl, sp+$13
    jr nz, @-$05

    nop
    ld [de], a
    jr nz, jr_032_42b9

    ld hl, sp+$11
    jr nz, @-$0d

    nop
    db $10
    jr nz, jr_032_42b9

    ld hl, sp+$0f
    jr nz, @-$15

    nop

jr_032_42d5:
    ld c, $20

Jump_032_42d7:
    add b
    ld hl, sp-$08
    dec de
    jr nz, jr_032_42d5

    nop
    ld a, [de]
    jr nz, @-$0e

    ld hl, sp+$19
    jr nz, jr_032_42d5

    nop
    jr @+$22

    add sp, -$08

jr_032_42ea:
    rrca
    jr nz, jr_032_42d5

    nop

jr_032_42ee:
    ld c, $20
    add b
    ld hl, sp-$08
    rla
    jr nz, jr_032_42ee

    nop
    ld d, $20
    ldh a, [$fff8]
    dec d
    jr nz, jr_032_42ee

    nop
    inc d
    jr nz, jr_032_42ea

    ld hl, sp+$0f
    jr nz, jr_032_42ee

    nop
    ld c, $20
    add b
    ld sp, hl
    ld bc, $0021
    ld sp, hl
    ld sp, hl
    jr nz, jr_032_4312

jr_032_4312:
    pop af
    ld bc, $001f
    pop af
    ld sp, hl
    ld e, $00
    jp hl


    ld bc, $001d
    jp hl


    ld sp, hl
    inc e
    nop
    add b
    ld hl, sp+$01
    dec h
    nop
    ld hl, sp-$07
    inc h
    nop
    ldh a, [rSB]
    inc hl
    nop
    ldh a, [$fff9]
    ld [hl+], a
    nop
    add sp, $01
    dec e
    nop
    add sp, -$07
    inc e
    nop
    add b
    ld hl, sp+$01
    add hl, hl
    nop
    ld hl, sp-$07
    jr z, jr_032_4344

jr_032_4344:
    ldh a, [rSB]
    daa
    nop
    ldh a, [$fff9]
    ld h, $00
    add sp, $01
    dec e
    nop
    add sp, -$07
    inc e
    nop
    add b
    ld [hl], l
    ld b, e
    adc [hl]
    ld b, e
    ld [hl], l
    ld b, e
    and a
    ld b, e
    ret nz

    ld b, e
    push de
    ld b, e
    ret nz

    ld b, e
    xor $43
    rlca
    ld b, h
    inc e
    ld b, h
    rlca
    ld b, h
    dec [hl]
    ld b, h
    ld c, [hl]
    ld b, h
    ld h, a
    ld b, h
    ld c, [hl]
    ld b, h
    add b
    ld b, h
    ld sp, hl
    nop
    cpl
    nop
    ld sp, hl
    ld hl, sp+$2e
    nop
    pop af
    nop
    dec l
    nop
    pop af
    ld hl, sp+$2c
    nop
    jp hl


    nop
    dec hl
    nop
    jp hl


    ld hl, sp+$2a
    nop
    add b
    rst $20
    nop
    dec hl
    nop
    rst $30
    nop
    inc [hl]
    nop
    rst $30
    ld hl, sp+$33
    nop
    rst $28
    nop
    ld [hl-], a
    nop
    rst $28
    ld hl, sp+$31
    nop
    rst $20
    ld hl, sp+$30
    nop
    add b
    rst $20
    nop
    dec hl
    nop
    rst $20
    ld hl, sp+$30
    nop
    rst $30
    nop
    jr c, jr_032_43b3

jr_032_43b3:
    rst $30
    ld hl, sp+$37
    nop
    rst $28
    nop
    ld [hl], $00
    rst $28
    ld hl, sp+$35
    nop
    add b
    ld sp, hl
    db $fd
    dec sp
    nop
    pop af
    nop
    ld a, [hl-]
    nop
    pop af
    ld hl, sp+$39
    nop
    jp hl


    nop

jr_032_43ce:
    rrca
    nop
    jp hl


    ld hl, sp+$0e
    nop
    add b
    rst $30
    nop
    ld b, c
    nop
    rst $30
    ld hl, sp+$40
    nop
    rst $28
    nop
    ccf
    nop
    rst $28
    ld hl, sp+$3e
    nop
    rst $20
    nop
    dec a
    nop
    rst $20
    ld hl, sp+$3c
    nop
    add b
    rst $20
    nop
    dec a
    nop
    rst $20
    ld hl, sp+$3c
    nop
    rst $30
    nop
    ld b, l
    nop
    rst $30
    ld hl, sp+$44

jr_032_43fd:
    nop
    rst $28
    nop
    ld b, e

jr_032_4401:
    nop
    rst $28
    ld hl, sp+$42
    nop
    add b
    ld sp, hl
    ei
    dec sp
    jr nz, jr_032_43fd

    ld hl, sp+$3a
    jr nz, jr_032_4401

    nop
    add hl, sp
    jr nz, jr_032_43fd

jr_032_4414:
    ld hl, sp+$0f
    jr nz, jr_032_4401

jr_032_4418:
    nop
    ld c, $20
    add b
    rst $30
    ld hl, sp+$41
    jr nz, jr_032_4418

jr_032_4421:
    nop
    ld b, b
    jr nz, jr_032_4414

    ld hl, sp+$3f
    jr nz, jr_032_4418

    nop
    ld a, $20
    rst $20
    ld hl, sp+$3d
    jr nz, jr_032_4418

    nop
    inc a
    jr nz, @-$7e

jr_032_4435:
    rst $20
    ld hl, sp+$3d
    jr nz, jr_032_4421

    nop
    inc a
    jr nz, jr_032_4435

    ld hl, sp+$45
    jr nz, @-$07

    nop
    ld b, h
    jr nz, jr_032_4435

    ld hl, sp+$43
    jr nz, @-$0f

    nop
    ld b, d
    jr nz, jr_032_43ce

    ld sp, hl
    ld bc, $0021
    ld sp, hl
    ld sp, hl
    jr nz, jr_032_4456

jr_032_4456:
    pop af
    ld bc, $0049
    pop af
    ld sp, hl
    ld c, b
    nop
    jp hl


    ld bc, $0047
    jp hl


    ld sp, hl
    ld b, [hl]
    nop
    add b
    rst $20
    ld sp, hl
    ld b, [hl]
    nop
    rst $30
    ld bc, $004e
    rst $30
    ld sp, hl
    ld c, l
    nop
    rst $28
    ld bc, $004c
    rst $28
    ld sp, hl
    ld c, e
    nop
    rst $20
    ld bc, $004a
    add b
    rst $30
    ld bc, $0052
    rst $30
    ld sp, hl
    ld d, c
    nop
    rst $28
    ld bc, $0050
    rst $20
    ld sp, hl
    ld b, [hl]
    nop
    rst $20
    ld bc, $004a
    rst $28
    ld sp, hl
    ld c, a
    nop
    add b
    cp c
    ld b, h
    jp nc, $eb44

    ld b, h
    inc b
    ld b, l
    dec e
    ld b, l
    ld [hl], $45
    ld c, a
    ld b, l
    ld l, b
    ld b, l
    add c
    ld b, l
    sbc d
    ld b, l
    or e
    ld b, l
    call z, $d245
    ld b, h
    dec e
    ld b, l
    ld l, b
    ld b, l
    or e
    ld b, l
    ld hl, sp+$00
    ld e, b
    nop
    ld hl, sp-$08
    ld d, a
    nop
    ldh a, [rP1]
    ld d, [hl]
    nop
    ldh a, [$fff8]
    ld d, l
    nop
    add sp, $00
    ld d, h
    nop
    add sp, -$08
    ld d, e
    nop
    add b
    jp hl


    nop
    ld bc, $e900
    ld hl, sp+$00
    nop
    ld sp, hl
    nop
    ld e, h
    nop
    ld sp, hl
    ld hl, sp+$5b
    nop
    pop af
    nop
    ld e, d
    nop
    pop af
    ld hl, sp+$59
    nop
    add b
    ld sp, hl
    nop
    ld h, d
    nop
    ld sp, hl
    ld hl, sp+$61
    nop
    pop af
    nop
    ld h, b
    nop
    pop af
    ld hl, sp+$5f
    nop
    jp hl


    nop
    ld e, [hl]
    nop
    jp hl


    ld hl, sp+$5d
    nop
    add b
    ld hl, sp-$01
    ld l, b
    nop
    ld hl, sp-$09
    ld h, a
    nop
    ldh a, [rIE]
    ld h, [hl]
    nop
    ldh a, [$fff7]
    ld h, l
    nop
    add sp, -$01
    ld h, h
    nop
    add sp, -$09

jr_032_451a:
    ld h, e
    nop
    add b
    jp hl


    nop
    rrca
    nop
    jp hl


    ld hl, sp+$0e
    nop
    ld sp, hl
    nop
    ld l, h
    nop
    ld sp, hl
    ld hl, sp+$6b
    nop
    pop af
    nop
    ld l, d
    nop
    pop af
    ld hl, sp+$69
    nop
    add b
    ld sp, hl
    nop
    ld [hl], d
    nop
    ld sp, hl
    ld hl, sp+$71
    nop
    pop af
    nop
    ld [hl], b
    nop
    pop af
    ld hl, sp+$6f
    nop
    jp hl


    nop
    ld l, [hl]
    nop
    jp hl


    ld hl, sp+$6d
    nop
    add b
    ld hl, sp-$07
    ld l, b
    jr nz, @-$06

    ld bc, $2067
    ldh a, [$fff9]
    ld h, [hl]
    jr nz, @-$0e

    ld bc, $2065
    add sp, -$07
    ld h, h
    jr nz, @-$16

    ld bc, $2063
    add b
    jp hl


    ld hl, sp+$0f
    jr nz, @-$15

    nop

jr_032_456e:
    ld c, $20
    ld sp, hl
    ld hl, sp+$6c
    jr nz, jr_032_456e

    nop
    ld l, e
    jr nz, @-$0d

    ld hl, sp+$6a

jr_032_457b:
    jr nz, jr_032_456e

    nop
    ld l, c

jr_032_457f:
    jr nz, @-$7e

    ld sp, hl
    ld hl, sp+$72
    jr nz, jr_032_457f

    nop
    ld [hl], c
    jr nz, jr_032_457b

    ld hl, sp+$70
    jr nz, jr_032_457f

    nop
    ld l, a
    jr nz, jr_032_457b

    ld hl, sp+$6e
    jr nz, jr_032_457f

    nop
    ld l, l
    jr nz, jr_032_451a

    db $ec
    ld bc, $001d
    db $ec
    ld sp, hl
    inc e
    nop
    db $fc
    ld bc, $0076
    db $fc
    ld sp, hl
    ld [hl], l
    nop
    db $f4
    ld bc, $0074
    db $f4
    ld sp, hl
    ld [hl], e
    nop
    add b
    jp hl


    ld sp, hl
    inc e
    nop
    jp hl


    ld bc, $0047
    ld sp, hl
    ld bc, $007a
    ld sp, hl
    ld sp, hl
    ld a, c
    nop
    pop af
    ld bc, $0078
    pop af
    ld sp, hl
    ld [hl], a
    nop
    add b
    jp hl


    ld bc, $0047
    jp hl


    ld sp, hl
    db $fd
    nop
    ld sp, hl
    ld bc, $007a
    ld sp, hl
    ld sp, hl
    ld a, c
    nop
    pop af
    ld bc, $007c
    pop af
    ld sp, hl
    ld a, e
    nop
    add b
    ld d, l
    ld b, [hl]
    ld l, [hl]
    ld b, [hl]
    adc e
    ld b, [hl]
    xor b
    ld b, [hl]
    push bc
    ld b, [hl]
    sbc $46
    rst $30
    ld b, [hl]
    db $10
    ld b, a
    add hl, hl
    ld b, a
    ld b, d
    ld b, a
    ld e, e
    ld b, a
    ld [hl], h
    ld b, a
    adc l
    ld b, a
    and [hl]
    ld b, a
    cp a
    ld b, a
    ret c

    ld b, a
    pop af
    ld b, a
    ld a, [bc]
    ld c, b
    inc hl
    ld c, b
    inc a
    ld c, b
    ld d, l
    ld c, b
    ld l, [hl]
    ld c, b
    add a
    ld c, b
    and b
    ld c, b
    cp c
    ld c, b
    jp nc, $eb48

    ld c, b
    inc b
    ld c, c
    ld d, l
    ld b, [hl]
    ld l, [hl]
    ld b, [hl]
    adc e
    ld b, [hl]
    xor b
    ld b, [hl]
    push bc
    ld b, [hl]
    sbc $46
    rst $30
    ld b, [hl]
    db $10
    ld b, a
    add hl, hl
    ld b, a
    ld b, d
    ld b, a
    ld e, e
    ld b, a
    ld [hl], h
    ld b, a
    adc l
    ld b, a
    and [hl]
    ld b, a
    cp a
    ld b, a
    ret c

    ld b, a
    pop af
    ld b, a
    ld a, [bc]
    ld c, b
    inc hl
    ld c, b
    inc a
    ld c, b
    ld d, l
    ld c, b
    ld l, [hl]
    ld c, b
    add a
    ld c, b
    and b
    ld c, b
    cp c
    ld c, b
    jp nc, $eb48

    ld c, b
    inc b
    ld c, c
    ei
    nop
    add c
    nop
    ei
    ld hl, sp-$80
    nop
    di
    nop
    ld a, a
    nop
    di
    ld hl, sp+$7e
    nop
    db $eb
    ld hl, sp+$7d
    nop
    db $eb
    nop
    dec hl
    nop
    add b
    ld hl, sp+$00
    adc b
    nop
    ld hl, sp-$08
    add a
    nop
    ldh a, [rP1]
    add [hl]
    nop
    ldh a, [$fff8]
    add l
    nop
    add sp, $00
    add h
    nop
    add sp, -$08
    add e
    nop
    ldh [$fffb], a
    add d
    nop
    add b
    ldh a, [rP1]
    adc b
    nop
    ldh a, [$fff8]
    add a
    nop
    add sp, $00
    add [hl]
    nop
    add sp, -$08
    add l
    nop
    ldh [rP1], a
    add h
    nop
    ldh [$fff8], a
    add e
    nop
    ret c

    ei
    add d
    nop
    add b
    add sp, $00
    adc b
    nop
    add sp, -$08
    add a
    nop
    ldh [rP1], a
    add [hl]
    nop
    ldh [$fff8], a
    add l
    nop
    ret c

    nop
    add h
    nop
    ret c

    ld hl, sp-$7d
    nop
    ret nc

    ei
    add d
    nop
    add b
    db $ec
    nop
    sub b
    nop
    db $ec
    ld hl, sp-$71
    nop
    db $e4
    nop
    adc [hl]
    nop
    db $e4
    ld hl, sp-$73
    nop
    call c, $8c00
    nop
    call c, $8bf8
    nop
    add b
    db $f4
    nop
    sub b
    nop
    db $f4
    ld hl, sp-$71
    nop
    db $ec
    nop
    adc [hl]
    nop
    db $ec
    ld hl, sp-$73
    nop
    db $e4
    nop
    adc h
    nop
    db $e4
    ld hl, sp-$75
    nop
    add b
    ld hl, sp+$00
    sub b
    nop
    ld hl, sp-$08
    adc a
    nop
    ldh a, [rP1]
    adc [hl]
    nop
    ldh a, [$fff8]
    adc l
    nop
    add sp, $00
    adc h
    nop
    add sp, -$08
    adc e
    nop
    add b
    ld sp, hl
    rst $38
    sbc b
    nop
    ld sp, hl
    rst $30
    sub a
    nop
    pop af
    rst $38
    sub [hl]
    nop
    pop af
    rst $30
    sub l
    nop
    jp hl


    rst $38
    sub h
    nop
    jp hl


    rst $30
    sub e
    nop
    add b
    ldh [$fff9], a
    add d
    nop
    ld hl, sp-$05
    sbc l
    nop
    ldh a, [rIE]
    sbc h
    nop
    ldh a, [$fff7]
    sbc e
    nop
    add sp, -$01
    sbc d
    nop
    add sp, -$09
    sbc c
    nop
    add b
    add sp, -$01
    sbc [hl]
    nop
    ret c

    ld sp, hl
    add d
    nop
    ldh a, [$fffb]
    sbc l
    nop
    add sp, -$09
    sbc e
    nop
    ldh [rIE], a
    sbc d
    nop
    ldh [$fff7], a
    sbc c
    nop
    add b
    ldh [rIE], a
    sbc a
    nop
    add sp, -$05
    sbc l
    nop
    ldh [$fff7], a
    sbc e
    nop
    ret c

    rst $38
    sbc d
    nop
    ret c

    rst $30
    sbc c
    nop
    ret nc

    ld sp, hl
    add d
    nop
    add b
    db $eb
    rst $38
    and l
    nop
    db $eb
    rst $30
    and h
    nop
    db $e3
    rst $38
    and e
    nop
    db $e3
    rst $30
    and d
    nop
    db $db
    rst $38
    and c
    nop
    db $db
    rst $30
    and b
    nop
    add b
    di
    rst $38
    and l
    nop
    di
    rst $30
    and h
    nop
    db $eb
    rst $38
    and e
    nop
    db $eb
    rst $30
    and d
    nop
    db $e3
    rst $38
    and c
    nop
    db $e3
    rst $30

jr_032_47a3:
    and b
    nop
    add b
    rst $30
    rst $38
    and l
    nop
    rst $30
    rst $30
    and h
    nop
    rst $28
    rst $38
    and e
    nop
    rst $28
    rst $30
    and d
    nop
    rst $20
    rst $38
    and c
    nop
    rst $20
    rst $30
    and b

jr_032_47bd:
    nop
    add b
    ld sp, hl
    ld sp, hl
    sbc b
    jr nz, jr_032_47bd

    ld bc, $2097
    pop af
    ld sp, hl
    sub [hl]
    jr nz, jr_032_47bd

    ld bc, $2095
    jp hl


    ld sp, hl

jr_032_47d1:
    sub h
    jr nz, jr_032_47bd

    ld bc, $2093
    add b
    ldh [rIE], a
    add d
    jr nz, @-$06

    db $fd
    sbc l
    jr nz, jr_032_47d1

    ld sp, hl
    sbc h
    jr nz, @-$0e

    ld bc, $209b
    add sp, -$07

jr_032_47ea:
    sbc d
    jr nz, @-$16

    ld bc, $2099
    add b
    add sp, -$07

jr_032_47f3:
    sbc [hl]
    jr nz, @-$26

    rst $38

jr_032_47f7:
    add d
    jr nz, jr_032_47ea

    db $fd
    sbc l
    jr nz, @-$16

    ld bc, $209b
    ldh [$fff9], a
    sbc d
    jr nz, @-$1e

    ld bc, $2099
    add b
    ldh [$fff9], a
    sbc a
    jr nz, jr_032_47f7

    db $fd
    sbc l
    jr nz, jr_032_47f3

jr_032_4813:
    ld bc, $209b
    ret c

    ld sp, hl
    sbc d
    jr nz, jr_032_47f3

    ld bc, $2099
    ret nc

    rst $38
    add d
    jr nz, jr_032_47a3

    db $eb
    ld sp, hl
    and l
    jr nz, jr_032_4813

    ld bc, $20a4
    db $e3
    ld sp, hl
    and e
    jr nz, jr_032_4813

    ld bc, $20a2
    db $db

jr_032_4834:
    ld sp, hl
    and c
    jr nz, jr_032_4813

    ld bc, $20a0
    add b
    di
    ld sp, hl
    and l
    jr nz, jr_032_4834

    ld bc, $20a4
    db $eb
    ld sp, hl
    and e
    jr nz, jr_032_4834

    ld bc, $20a2
    db $e3
    ld sp, hl
    and c
    jr nz, jr_032_4834

jr_032_4851:
    ld bc, $20a0
    add b
    rst $30
    ld sp, hl
    and l
    jr nz, jr_032_4851

    ld bc, $20a4
    rst $28
    ld sp, hl
    and e
    jr nz, jr_032_4851

    ld bc, $20a2
    rst $20
    ld sp, hl
    and c
    jr nz, jr_032_4851

    ld bc, $20a0
    add b
    ld hl, sp+$00
    xor [hl]
    nop
    ld hl, sp-$08
    xor l
    nop
    ldh a, [rP1]
    xor h
    nop
    ldh a, [$fff8]
    xor e
    nop
    add sp, $00
    xor d
    nop
    add sp, -$08
    xor c
    nop
    add b
    ld hl, sp+$00
    or h
    nop
    ld hl, sp-$08
    or e
    nop
    ldh a, [rP1]
    or d
    nop
    ldh a, [$fff8]
    or c
    nop
    add sp, $00
    or b
    nop
    add sp, -$08
    xor a
    nop
    add b
    db $ec
    ld hl, sp-$4b
    nop
    db $f4
    nop
    or h
    nop
    db $f4
    ld hl, sp-$4d
    nop
    db $ec
    nop
    or d
    nop
    db $e4
    ld hl, sp-$51
    nop
    db $e4
    nop
    or b
    nop
    add b
    ldh [$fff8], a
    or [hl]
    nop
    add sp, $00
    or h
    nop
    add sp, -$08
    or e
    nop
    ldh [rP1], a
    or d
    nop
    ret c

    nop
    or b
    nop
    ret c

    ld hl, sp-$51
    nop
    add b
    db $ed
    nop
    cp h
    nop
    db $ed
    ld hl, sp-$45
    nop
    push hl
    nop
    cp d
    nop
    push hl
    ld hl, sp-$47
    nop
    db $dd
    nop
    cp b
    nop
    db $dd
    ld hl, sp-$49
    nop
    add b
    push af
    nop
    cp h
    nop
    push af
    ld hl, sp-$45
    nop
    db $ed
    nop
    cp d
    nop
    db $ed
    ld hl, sp-$47
    nop
    push hl
    nop
    cp b
    nop
    push hl
    ld hl, sp-$49
    nop
    add b
    jp hl


    ld hl, sp-$49
    nop
    ld sp, hl
    nop
    cp h
    nop
    ld sp, hl
    ld hl, sp-$45
    nop
    pop af
    nop
    cp a
    nop
    pop af
    ld hl, sp-$42
    nop
    jp hl


    nop
    cp l
    nop
    add b
    ld d, l
    ld c, c
    ld l, [hl]
    ld c, c
    add a
    ld c, c
    and b
    ld c, c
    cp c
    ld c, c
    jp nc, $eb49

    ld c, c
    inc b
    ld c, d
    dec e
    ld c, d
    ld [hl-], a
    ld c, d
    ld b, a
    ld c, d
    ld e, h
    ld c, d
    ld [hl], c
    ld c, d
    add [hl]
    ld c, d
    sbc e
    ld c, d
    or h
    ld c, d
    ret


    ld c, d
    sbc $4a
    di
    ld c, d
    ld [$1d4b], sp
    ld c, e
    ld [hl-], a
    ld c, e
    ld c, e
    ld c, e
    ld h, h
    ld c, e
    ld a, l
    ld c, e
    sub [hl]
    ld c, e
    xor a
    ld c, e
    ret z

    ld c, e
    ld a, [wVRAMBlitCommandList]
    nop
    ld a, [$c4f8]
    nop
    ldh a, [c]
    nop
    jp $f200


    ld hl, sp-$3e
    nop
    ld [$c100], a
    nop
    ld [$c0f8], a
    nop
    add b
    ld hl, sp+$00
    adc b
    nop
    ld hl, sp-$08
    add a
    nop
    add sp, $00
    rst $00
    nop
    add sp, -$08
    add $00
    ldh a, [rP1]
    ret


    nop
    ldh a, [$fff8]
    ret z

    nop
    add b
    ldh a, [rP1]
    adc b
    nop
    ldh a, [$fff8]
    add a
    nop
    ldh [rP1], a
    rst $00
    nop
    ldh [$fff8], a
    add $00
    add sp, $00
    ret


    nop
    add sp, -$08
    ret z

    nop
    add b
    add sp, $00
    adc b
    nop
    add sp, -$08
    add a
    nop
    ret c

    nop
    rst $00
    nop
    ret c

    ld hl, sp-$3a
    nop
    ldh [rP1], a
    ret


    nop
    ldh [$fff8], a
    ret z

    nop
    add b
    db $ec
    nop
    adc b
    nop
    db $ec
    ld hl, sp-$79
    nop
    call c, $c700
    nop
    call c, $c6f8
    nop
    db $e4
    nop
    ret


    nop
    db $e4
    ld hl, sp-$38
    nop
    add b
    db $f4
    nop
    adc b
    nop
    db $f4
    ld hl, sp-$79
    nop
    db $e4
    nop
    rst $00
    nop
    db $e4
    ld hl, sp-$3a
    nop
    db $ec
    nop
    ret


    nop
    db $ec
    ld hl, sp-$38
    nop
    add b
    ld hl, sp+$00
    adc b
    nop
    ld hl, sp-$08
    add a
    nop
    add sp, $00
    rst $00
    nop
    add sp, -$08
    add $00
    ldh a, [rP1]
    ret


    nop
    ldh a, [$fff8]
    ret z

    nop
    add b
    add sp, -$01
    cp $00
    add sp, -$09
    ld h, e
    nop
    ld hl, sp-$01
    call $f800
    rst $30
    call z, $f000
    rst $38
    rlc b
    ldh a, [$fff7]
    jp z, $8000

    ld hl, sp-$04
    jp nc, $f000

    nop
    pop de
    nop
    ldh a, [$fff8]
    ret nc

    nop
    add sp, $00
    rst $08
    nop
    add sp, -$08
    adc $00
    add b
    ldh a, [$fffc]
    jp nc, $e800

    nop
    pop de
    nop
    add sp, -$08
    ret nc

    nop
    ldh [rP1], a
    rst $08
    nop
    ldh [$fff8], a
    adc $00
    add b
    add sp, -$04
    jp nc, $e000

    nop
    pop de
    nop
    ldh [$fff8], a
    ret nc

    nop
    ret c

    nop
    rst $08
    nop
    ret c

    ld hl, sp-$32
    nop
    add b
    db $ec
    db $fc
    jp nc, $e400

    nop
    pop de
    nop
    db $e4
    ld hl, sp-$30
    nop
    call c, $cf00
    nop
    call c, $cef8
    nop
    add b
    db $f4
    db $fc
    jp nc, $ec00

    nop
    pop de
    nop
    db $ec
    ld hl, sp-$30
    nop
    db $e4
    nop
    rst $08
    nop
    db $e4
    ld hl, sp-$32
    nop
    add b
    ld hl, sp-$04
    jp nc, $f000

    nop
    pop de
    nop
    ldh a, [$fff8]
    ret nc

    nop
    add sp, $00
    rst $08
    nop
    add sp, -$08
    adc $00
    add b
    add sp, -$07
    cp $20
    add sp, $01
    sub e
    jr nz, @-$06

    ld sp, hl
    call $f820
    ld bc, $20cc
    ldh a, [$fff9]

jr_032_4aad:
    sla b
    ldh a, [rSB]
    jp z, $8020

    ld hl, sp-$04

jr_032_4ab6:
    jp nc, $f020

    ld hl, sp-$2f
    jr nz, jr_032_4aad

    nop
    ret nc

    jr nz, @-$16

    ld hl, sp-$31

jr_032_4ac3:
    jr nz, jr_032_4aad

    nop
    adc $20
    add b
    ldh a, [$fffc]
    jp nc, $e820

    ld hl, sp-$2f
    jr nz, @-$16

    nop
    ret nc

    jr nz, jr_032_4ab6

    ld hl, sp-$31
    jr nz, @-$1e

    nop
    adc $20
    add b
    add sp, -$04

jr_032_4ae0:
    jp nc, $e020

    ld hl, sp-$2f
    jr nz, @-$1e

    nop
    ret nc

    jr nz, jr_032_4ac3

    ld hl, sp-$31
    jr nz, @-$26

    nop
    adc $20
    add b
    db $ec
    db $fc
    jp nc, $e420

    ld hl, sp-$2f
    jr nz, jr_032_4ae0

    nop

jr_032_4afd:
    ret nc

    jr nz, @-$22

    ld hl, sp-$31
    jr nz, jr_032_4ae0

    nop
    adc $20
    add b
    db $f4
    db $fc
    jp nc, $ec20

    ld hl, sp-$2f
    jr nz, jr_032_4afd

    nop

jr_032_4b12:
    ret nc

    jr nz, @-$1a

    ld hl, sp-$31
    jr nz, jr_032_4afd

    nop
    adc $20
    add b
    ld hl, sp-$04
    jp nc, $f020

    ld hl, sp-$2f
    jr nz, @-$0e

    nop
    ret nc

    jr nz, jr_032_4b12

    ld hl, sp-$31
    jr nz, @-$16

    nop
    adc $20
    add b
    add sp, $01
    call nc, $e800
    ld sp, hl
    db $d3
    nop
    ld hl, sp+$01
    ret c

    nop
    ld hl, sp-$07
    rst $10
    nop
    ldh a, [rSB]
    sub $00
    ldh a, [$fff9]
    push de
    nop
    add b
    ld hl, sp+$01
    sbc $00
    ld hl, sp-$07
    db $dd
    nop
    ldh a, [rSB]
    call c, $f000
    ld sp, hl
    db $db
    nop
    add sp, $01
    jp c, $e800

    ld sp, hl
    reti


    nop
    add b
    ldh a, [rSB]
    sbc $00
    ldh a, [$fff9]
    db $dd
    nop
    add sp, $01
    call c, $e800
    ld sp, hl
    db $db
    nop
    ldh [rSB], a
    jp c, $e000

    ld sp, hl
    reti


    nop
    add b
    add sp, $01
    sbc $00
    add sp, -$07
    db $dd
    nop
    ldh [rSB], a
    call c, $e000
    ld sp, hl
    db $db
    nop
    ret c

    ld bc, $00da
    ret c

    ld sp, hl
    reti


    nop
    add b
    db $ec
    ld bc, $00de
    db $ec
    ld sp, hl
    db $dd
    nop
    db $e4
    ld bc, $00dc
    db $e4
    ld sp, hl
    db $db
    nop
    call c, $da01
    nop
    call c, $d9f9
    nop
    add b
    db $f4
    ld bc, $00de
    db $f4
    ld sp, hl
    db $dd
    nop
    db $ec
    ld bc, $00dc
    db $ec
    ld sp, hl
    db $db
    nop
    db $e4
    ld bc, $00da
    db $e4
    ld sp, hl
    reti


    nop
    add b
    ld hl, sp+$01
    sbc $00
    ld hl, sp-$07
    db $dd
    nop
    ldh a, [rSB]
    call c, $f000
    ld sp, hl
    db $db
    nop
    add sp, $01
    jp c, $e800

    ld sp, hl
    reti


    nop
    add b
    add hl, bc
    ld c, h
    ld [hl+], a
    ld c, h
    add hl, bc
    ld c, h
    dec sp
    ld c, h
    ld d, h
    ld c, h
    ld l, l
    ld c, h
    ld d, h
    ld c, h
    add [hl]
    ld c, h
    sbc a
    ld c, h
    cp b
    ld c, h
    sbc a
    ld c, h
    pop de
    ld c, h
    ld [$034c], a
    ld c, l
    ld [$1c4c], a
    ld c, l
    add hl, bc
    ld c, h
    ld d, h
    ld c, h
    sbc a
    ld c, h
    ld [$f94c], a
    nop
    ld h, d
    nop
    ld sp, hl
    ld hl, sp+$61
    nop
    pop af
    nop
    ld h, b
    nop
    pop af
    ld hl, sp+$5f
    nop
    jp hl


    nop
    ld e, [hl]
    nop
    jp hl


    ld hl, sp+$5d
    nop
    add b
    ld hl, sp+$00
    add hl, bc
    nop
    ld hl, sp-$08
    ld [$f000], sp
    nop
    ld h, b
    nop
    ldh a, [$fff8]
    ld e, a
    nop
    add sp, $00
    ld e, [hl]
    nop
    add sp, -$08

jr_032_4c38:
    ld e, l
    nop
    add b
    ld hl, sp+$00
    dec c
    nop
    ld hl, sp-$08
    inc c
    nop
    ldh a, [rP1]
    ld h, b
    nop
    ldh a, [$fff8]
    ld e, a
    nop
    add sp, $00
    ld e, [hl]
    nop
    add sp, -$08

jr_032_4c51:
    ld e, l
    nop
    add b
    ld sp, hl
    nop
    ld [hl], d
    nop
    ld sp, hl
    ld hl, sp+$71
    nop
    pop af
    nop
    ld [hl], b
    nop
    pop af
    ld hl, sp+$6f
    nop
    jp hl


    nop
    ld l, [hl]
    nop
    jp hl


    ld hl, sp+$6d
    nop
    add b
    ld hl, sp+$00
    ldh [rP1], a
    ld hl, sp-$08
    rst $18
    nop
    ldh a, [rP1]
    ld [hl], b
    nop
    ldh a, [$fff8]
    ld l, a
    nop
    add sp, $00
    ld l, [hl]
    nop
    add sp, -$08
    ld l, l
    nop
    add b
    ld hl, sp+$00
    ldh [c], a
    nop
    ld hl, sp-$08
    pop hl
    nop
    ldh a, [rP1]
    ld [hl], b
    nop
    ldh a, [$fff8]
    ld l, a
    nop
    add sp, $00
    ld l, [hl]

jr_032_4c99:
    nop
    add sp, -$08
    ld l, l

jr_032_4c9d:
    nop
    add b
    ld sp, hl
    ld hl, sp+$72
    jr nz, jr_032_4c9d

    nop
    ld [hl], c
    jr nz, jr_032_4c99

    ld hl, sp+$70
    jr nz, jr_032_4c9d

    nop
    ld l, a
    jr nz, jr_032_4c99

    ld hl, sp+$6e
    jr nz, jr_032_4c9d

    nop

jr_032_4cb5:
    ld l, l
    jr nz, jr_032_4c38

    ld hl, sp-$08
    ldh [rNR41], a
    ld hl, sp+$00
    rst $18
    jr nz, @-$0e

    ld hl, sp+$70
    jr nz, jr_032_4cb5

    nop
    ld l, a
    jr nz, @-$16

    ld hl, sp+$6e
    jr nz, jr_032_4cb5

    nop

jr_032_4cce:
    ld l, l
    jr nz, jr_032_4c51

    ld hl, sp-$08
    ldh [c], a
    jr nz, jr_032_4cce

    nop
    pop hl
    jr nz, @-$0e

    ld hl, sp+$70
    jr nz, jr_032_4cce

    nop
    ld l, a
    jr nz, @-$16

    ld hl, sp+$6e
    jr nz, jr_032_4cce

    nop
    ld l, l
    jr nz, @-$7e

    jp hl


    ld sp, hl
    db $fd
    nop
    jp hl


    ld bc, $001d
    ld sp, hl
    ld bc, $007a
    ld sp, hl
    ld sp, hl
    ld a, c
    nop
    pop af
    ld bc, $007c
    pop af
    ld sp, hl
    ld a, e
    nop
    add b
    add sp, -$07
    db $fd
    nop
    ld hl, sp+$01
    dec h
    nop
    ld hl, sp-$07
    db $e3
    nop
    add sp, $01
    dec e
    nop
    ldh a, [rSB]
    ld a, h
    nop
    ldh a, [$fff9]
    ld a, e
    nop
    add b
    add sp, -$07
    db $fd
    nop
    ld hl, sp-$07
    jr z, jr_032_4d24

jr_032_4d24:
    ld hl, sp+$01
    db $e4
    nop
    add sp, $01
    dec e
    nop
    ldh a, [rSB]
    ld a, h
    nop
    ldh a, [$fff9]
    ld a, e
    nop
    add b
    ld d, l
    ld c, l
    ld l, [hl]
    ld c, l
    ld d, l
    ld c, l
    add a
    ld c, l
    and b
    ld c, l
    or l
    ld c, l
    and b
    ld c, l
    adc $4d
    rst $20
    ld c, l
    db $fc
    ld c, l
    rst $20
    ld c, l
    dec d
    ld c, [hl]
    ld l, $4e
    ld b, a
    ld c, [hl]
    ld l, $4e
    ld h, b
    ld c, [hl]
    ld sp, hl
    nop
    ld h, d
    nop
    ld sp, hl
    ld hl, sp+$61
    nop
    pop af
    nop
    add sp, $00
    pop af
    ld hl, sp-$19
    nop
    jp hl


    nop
    and $00
    jp hl


    ld hl, sp-$1b
    nop
    add b
    rst $30
    nop
    db $ec
    nop
    rst $30
    ld hl, sp-$15
    nop
    rst $28
    nop
    add sp, $00
    rst $28
    ld hl, sp-$19
    nop
    rst $20
    nop
    and $00
    rst $20
    ld hl, sp-$1b
    nop
    add b
    rst $30
    nop
    ld [$f700], a
    ld hl, sp-$17
    nop
    rst $28
    nop
    add sp, $00
    rst $28
    ld hl, sp-$19
    nop
    rst $20
    nop
    and $00
    rst $20
    ld hl, sp-$1b
    nop
    add b
    ld sp, hl
    db $fd
    pop af
    nop
    pop af
    nop
    ldh a, [rP1]
    pop af
    ld hl, sp-$11
    nop
    jp hl


    nop

jr_032_4dae:
    xor $00
    jp hl


    ld hl, sp-$13
    nop
    add b
    rst $28
    nop
    ldh a, [rP1]
    rst $28
    ld hl, sp-$11
    nop
    rst $20
    nop
    xor $00
    rst $20
    ld hl, sp-$13
    nop
    rst $30
    nop
    di
    nop
    rst $30
    ld hl, sp-$0e
    nop
    add b
    rst $28
    nop
    ldh a, [rP1]
    rst $28
    ld hl, sp-$11
    nop
    rst $20
    nop
    xor $00
    rst $20
    ld hl, sp-$13

jr_032_4ddd:
    nop
    rst $30
    nop
    push af

jr_032_4de1:
    nop
    rst $30
    ld hl, sp-$0c
    nop
    add b
    ld sp, hl
    ei
    pop af
    jr nz, jr_032_4ddd

jr_032_4dec:
    ld hl, sp-$10
    jr nz, jr_032_4de1

jr_032_4df0:
    nop
    rst $28
    jr nz, jr_032_4ddd

    ld hl, sp-$12
    jr nz, jr_032_4de1

    nop
    db $ed
    jr nz, @-$7e

    rst $28
    ld hl, sp-$10
    jr nz, jr_032_4df0

    nop
    rst $28
    jr nz, jr_032_4dec

jr_032_4e05:
    ld hl, sp-$12
    jr nz, jr_032_4df0

jr_032_4e09:
    nop
    db $ed
    jr nz, @-$07

    ld hl, sp-$0d
    jr nz, @-$07

    nop
    ldh a, [c]
    jr nz, @-$7e

    rst $28
    ld hl, sp-$10
    jr nz, jr_032_4e09

    nop
    rst $28
    jr nz, jr_032_4e05

    ld hl, sp-$12
    jr nz, jr_032_4e09

    nop
    db $ed
    jr nz, @-$07

    ld hl, sp-$0b
    jr nz, @-$07

    nop
    db $f4
    jr nz, jr_032_4dae

    ld sp, hl
    ld bc, $00f8
    ld sp, hl
    ld sp, hl
    rst $30
    nop
    pop af
    ld bc, $007c
    pop af
    ld sp, hl
    ld a, e
    nop
    jp hl


    ld bc, $001d
    jp hl


    ld sp, hl
    or $00
    add b
    rst $30
    ld bc, $00fa
    rst $30
    ld sp, hl
    ld sp, hl
    nop
    rst $28
    ld bc, $007c
    rst $28
    ld sp, hl
    ld a, e
    nop
    rst $20
    ld bc, $001d
    rst $20
    ld sp, hl
    or $00
    add b
    rst $30
    ld bc, $00fc
    rst $30
    ld sp, hl
    ei
    nop
    rst $28
    ld bc, $007c
    rst $28
    ld sp, hl
    ld a, e
    nop
    rst $20
    ld bc, $001d
    rst $20
    ld sp, hl
    or $00
    add b
    sbc c
    ld c, [hl]
    or d
    ld c, [hl]
    sbc c
    ld c, [hl]
    bit 1, [hl]
    db $e4
    ld c, [hl]
    db $fd
    ld c, [hl]
    db $e4
    ld c, [hl]
    ld d, $4f
    cpl
    ld c, a
    ld c, b
    ld c, a
    cpl
    ld c, a
    ld h, c
    ld c, a
    ld a, d
    ld c, a
    sub e
    ld c, a
    ld a, d
    ld c, a
    xor h
    ld c, a
    ld sp, hl
    nop
    dec b
    nop
    ld sp, hl
    ld hl, sp+$04
    nop
    pop af
    nop
    inc bc
    nop
    pop af
    ld hl, sp+$02
    nop
    jp hl


    nop
    ld bc, $e900
    ld hl, sp+$00
    nop
    add b
    ldh a, [rP1]
    inc bc
    nop
    ldh a, [$fff8]
    ld [bc], a
    nop
    add sp, $00
    ld bc, $e800
    ld hl, sp+$00
    nop
    ld hl, sp+$00
    rlca
    nop
    ld hl, sp-$08

jr_032_4ec8:
    ld b, $00
    add b
    ldh a, [rP1]
    inc bc
    nop
    ldh a, [$fff8]
    ld [bc], a
    nop
    add sp, $00
    ld bc, $e800
    ld hl, sp+$00
    nop
    ld hl, sp+$00
    add hl, bc
    nop
    ld hl, sp-$08

jr_032_4ee1:
    ld [$8000], sp
    ld sp, hl
    nop
    rrca
    nop
    ld sp, hl
    ld hl, sp+$0e
    nop
    pop af
    nop
    dec c
    nop
    pop af
    ld hl, sp+$0c
    nop
    jp hl


    nop
    dec bc
    nop
    jp hl


    ld hl, sp+$0a
    nop
    add b
    ldh a, [rP1]
    dec c
    nop
    ldh a, [$fff8]
    inc c
    nop
    add sp, $00
    dec bc
    nop
    add sp, -$08
    ld a, [bc]
    nop
    ld hl, sp+$00
    ld de, $f800
    ld hl, sp+$10
    nop
    add b
    ldh a, [rP1]
    dec c
    nop
    ldh a, [$fff8]
    inc c
    nop
    add sp, $00
    dec bc
    nop
    add sp, -$08
    ld a, [bc]
    nop
    ld hl, sp+$00
    inc de

jr_032_4f29:
    nop
    ld hl, sp-$08
    ld [de], a

jr_032_4f2d:
    nop
    add b
    ld sp, hl
    ld hl, sp+$0f
    jr nz, jr_032_4f2d

    nop
    ld c, $20
    pop af
    ld hl, sp+$0d
    jr nz, jr_032_4f2d

    nop

jr_032_4f3d:
    inc c
    jr nz, jr_032_4f29

    ld hl, sp+$0b
    jr nz, jr_032_4f2d

    nop
    ld a, [bc]
    jr nz, jr_032_4ec8

    ldh a, [$fff8]
    dec c
    jr nz, jr_032_4f3d

    nop
    inc c
    jr nz, @-$16

jr_032_4f51:
    ld hl, sp+$0b
    jr nz, jr_032_4f3d

jr_032_4f55:
    nop

jr_032_4f56:
    ld a, [bc]
    jr nz, jr_032_4f51

    ld hl, sp+$11
    jr nz, jr_032_4f55

    nop
    db $10
    jr nz, jr_032_4ee1

    ldh a, [$fff8]
    dec c
    jr nz, jr_032_4f56

    nop
    inc c
    jr nz, @-$16

jr_032_4f6a:
    ld hl, sp+$0b
    jr nz, jr_032_4f56

jr_032_4f6e:
    nop
    ld a, [bc]
    jr nz, jr_032_4f6a

    ld hl, sp+$13
    jr nz, jr_032_4f6e

    nop
    ld [de], a
    jr nz, @-$7e

    ld sp, hl
    ld bc, $0019
    ld sp, hl
    ld sp, hl
    jr jr_032_4f82

jr_032_4f82:
    pop af
    ld bc, $0017
    pop af
    ld sp, hl
    ld d, $00
    jp hl


    ld bc, $0015
    jp hl


    ld sp, hl
    inc d
    nop
    add b
    ld hl, sp+$01
    dec de
    nop
    ld hl, sp-$07
    ld a, [de]
    nop
    ldh a, [rSB]
    rla
    nop
    ldh a, [$fff9]
    ld d, $00
    add sp, $01
    dec d
    nop
    add sp, -$07
    inc d
    nop
    add b
    ld hl, sp+$01
    dec e
    nop
    ld hl, sp-$07
    inc e
    nop
    ldh a, [rSB]
    rla
    nop
    ldh a, [$fff9]
    ld d, $00
    add sp, $01
    dec d
    nop
    add sp, -$07
    inc d
    nop
    add b
    add hl, hl
    ld b, d
    rst $10
    ld c, a
    ldh a, [rVBK]
    add hl, bc
    ld d, b
    ld [hl+], a
    ld d, b
    add hl, bc
    ld d, b
    ld [hl+], a
    ld d, b
    add hl, bc
    ld d, b
    ld [hl+], a
    ld d, b
    ld hl, sp+$00
    inc hl
    nop
    ld hl, sp-$08
    ld [hl+], a
    nop
    ldh a, [rP1]
    ld hl, $f000
    ld hl, sp+$20
    nop
    add sp, $00
    rra
    nop
    add sp, -$08
    ld e, $00
    add b
    ld hl, sp+$01
    add hl, hl
    nop
    ld hl, sp-$07
    jr z, jr_032_4ff8

jr_032_4ff8:
    ldh a, [rSB]
    daa
    nop
    ldh a, [$fff9]
    ld h, $00
    add sp, $01
    dec h
    nop
    add sp, -$07
    inc h
    nop
    add b
    ld hl, sp+$00
    cpl
    nop
    ld hl, sp-$08
    ld l, $00
    ldh a, [rP1]
    dec l
    nop
    ldh a, [$fff8]
    inc l
    nop
    add sp, $00
    dec hl
    nop
    add sp, -$08
    ld a, [hl+]
    nop
    add b
    ld hl, sp+$00
    cpl
    nop
    ld hl, sp-$08
    ld l, $00
    ldh a, [rP1]
    inc sp
    nop
    ldh a, [$fff8]
    ld [hl-], a
    nop
    add sp, $00
    ld sp, $e800
    ld hl, sp+$30
    nop
    add b
    dec a
    ld d, b
    ld hl, sp+$00
    add hl, sp
    nop
    ld hl, sp-$08
    jr c, jr_032_5045

jr_032_5045:
    ldh a, [rP1]
    scf
    nop
    ldh a, [$fff8]
    ld [hl], $00
    add sp, $00
    dec [hl]
    nop
    add sp, -$08
    inc [hl]
    nop
    add b
    halt
    ld d, b
    sub a
    ld d, b
    or h
    ld d, b
    push de
    ld d, b
    or $50
    rla
    ld d, c
    jr c, jr_032_50b5

    ld d, l
    ld d, c
    ld [hl], d
    ld d, c
    sub e
    ld d, c
    or h
    ld d, c
    pop de
    ld d, c
    xor $51
    rrca
    ld d, d
    jr nc, jr_032_50c6

    ld d, c
    ld d, d
    db $fc
    ld bc, $0041
    db $fc
    ld sp, hl
    ld b, b
    nop
    db $f4
    ld bc, $003f
    db $f4
    ld sp, hl
    ld a, $00
    db $f4
    pop af
    dec a
    nop
    db $ec
    ld bc, $003c
    db $ec
    ld sp, hl
    dec sp
    nop
    db $ec
    pop af
    ld a, [hl-]
    nop
    add b
    db $fd
    inc b
    ld c, b
    nop
    db $fd
    db $fc
    ld b, a
    nop
    db $fd
    db $f4
    ld b, [hl]
    nop
    push af
    ld bc, $0045
    push af
    ld sp, hl
    ld b, h
    nop
    db $ed
    ld bc, $0043
    db $ed
    ld sp, hl
    ld b, d
    nop
    add b
    db $ed

jr_032_50b5:
    ld bc, $0043
    db $ed
    ld sp, hl
    ld b, d
    nop
    db $fd
    add hl, bc
    ld c, [hl]
    nop
    db $fd
    ld bc, $004d
    db $fd
    ld sp, hl

jr_032_50c6:
    ld c, h
    nop
    push af
    add hl, bc
    ld c, e
    nop
    push af
    ld bc, $004a
    push af
    ld sp, hl
    ld c, c
    nop
    add b
    db $ec
    ld bc, $0043
    db $ec
    ld sp, hl
    ld b, d
    nop
    db $fc
    add hl, bc
    ld d, h
    nop
    db $fc
    ld bc, $0053
    db $fc
    ld sp, hl
    ld d, d
    nop
    db $f4
    add hl, bc
    ld d, c
    nop
    db $f4
    ld bc, $0050
    db $f4
    ld sp, hl
    ld c, a
    nop
    add b
    ld hl, sp-$03
    ld e, h
    nop
    ld hl, sp-$0b
    ld e, e
    nop
    ldh a, [rTIMA]
    ld e, d
    nop
    ldh a, [$fffd]
    ld e, c
    nop
    ldh a, [$fff5]
    ld e, b
    nop
    add sp, $05
    ld d, a
    nop
    add sp, -$03
    ld d, [hl]
    nop
    add sp, -$0b
    ld d, l
    nop
    add b
    ld hl, sp-$03
    ld h, e
    nop
    ld hl, sp-$0b
    ld h, d
    nop
    ld hl, sp-$13
    ld h, c
    nop
    ldh a, [$fffd]
    ld h, b
    nop
    add sp, -$0c
    ld d, l
    nop
    ldh a, [$fff5]
    ld e, a
    nop
    ldh a, [$ffed]
    ld e, [hl]
    nop
    add sp, -$04
    ld e, l
    nop
    add b
    add sp, -$04
    ld e, l
    nop
    add sp, -$0c
    ld d, l
    nop
    ld hl, sp-$03
    ld l, b
    nop
    ld hl, sp-$0b
    ld h, a
    nop
    ldh a, [rDIV]
    ld h, [hl]
    nop
    ldh a, [$fffc]
    ld h, l
    nop
    ldh a, [$fff4]
    ld h, h
    nop
    add b
    ld hl, sp-$03
    ld l, a
    nop
    ld hl, sp-$0b
    ld l, [hl]
    nop
    ldh a, [rTIMA]
    ld l, l
    nop
    ldh a, [$fffd]
    ld l, h
    nop
    ldh a, [$fff5]
    ld l, e
    nop
    add sp, -$03

jr_032_516b:
    ld l, d
    nop
    add sp, -$0b

jr_032_516f:
    ld l, c
    nop
    add b
    ld hl, sp-$05
    ld e, h
    jr nz, jr_032_516f

jr_032_5177:
    inc bc
    ld e, e
    jr nz, jr_032_516b

    di
    ld e, d
    jr nz, jr_032_516f

    ei
    ld e, c
    jr nz, @-$0e

    inc bc
    ld e, b
    jr nz, jr_032_516f

    di
    ld d, a
    jr nz, @-$16

    ei

jr_032_518c:
    ld d, [hl]
    jr nz, jr_032_5177

    inc bc

jr_032_5190:
    ld d, l
    jr nz, @-$7e

    ld hl, sp-$05
    ld h, e
    jr nz, jr_032_5190

jr_032_5198:
    inc bc
    ld h, d
    jr nz, @-$06

jr_032_519c:
    dec bc
    ld h, c
    jr nz, jr_032_5190

    ei

jr_032_51a1:
    ld h, b
    jr nz, jr_032_518c

    inc b
    ld d, l
    jr nz, jr_032_5198

    inc bc
    ld e, a
    jr nz, jr_032_519c

    dec bc
    ld e, [hl]
    jr nz, jr_032_5198

    db $fc
    ld e, l
    jr nz, @-$7e

    add sp, -$04
    ld e, l
    jr nz, jr_032_51a1

jr_032_51b9:
    inc b
    ld d, l
    jr nz, @-$06

jr_032_51bd:
    ei
    ld l, b
    jr nz, jr_032_51b9

    inc bc
    ld h, a
    jr nz, @-$0e

    db $f4
    ld h, [hl]
    jr nz, jr_032_51b9

    db $fc

jr_032_51ca:
    ld h, l
    jr nz, jr_032_51bd

    inc b

jr_032_51ce:
    ld h, h
    jr nz, @-$7e

    ld hl, sp-$05
    ld l, a
    jr nz, jr_032_51ce

    inc bc
    ld l, [hl]
    jr nz, jr_032_51ca

    di
    ld l, l
    jr nz, jr_032_51ce

    ei
    ld l, h
    jr nz, @-$0e

    inc bc
    ld l, e
    jr nz, jr_032_51ce

    ei
    ld l, d
    jr nz, @-$16

    inc bc
    ld l, c
    jr nz, @-$7e

    db $fc
    ld a, [bc]
    ld [hl], a
    nop
    db $fc
    ld [bc], a
    halt
    nop
    db $fc
    ld a, [$0075]
    db $f4
    ld a, [bc]
    ld [hl], h
    nop
    db $f4
    ld [bc], a
    ld [hl], e
    nop
    db $f4
    ld a, [$0072]
    db $ec
    ld [bc], a
    ld [hl], c
    nop
    db $ec
    ld a, [$0070]
    add b
    ld a, [$7f02]
    nop
    ld a, [$7efa]
    nop
    ldh a, [c]
    ld [bc], a
    ld a, l
    nop
    ldh a, [c]
    ld a, [$007c]
    ldh a, [c]
    ldh a, [c]
    ld a, e
    nop
    ld [$7a02], a
    nop
    ld [$79fa], a
    nop
    ld [$78f2], a
    nop
    add b
    ld a, [$8702]
    nop
    ld a, [$86fa]
    nop
    ld a, [$85f2]
    nop
    ldh a, [c]
    ld [bc], a
    add h
    nop
    ldh a, [c]
    ld a, [$0083]
    ldh a, [c]
    ldh a, [c]
    add d
    nop
    ld [$8102], a
    nop
    ld [$80fa], a
    nop
    add b
    ld a, [$8f02]
    nop
    ld a, [$8efa]
    nop
    ld a, [$8df2]
    nop
    ldh a, [c]
    ld [bc], a
    adc h
    nop
    ldh a, [c]
    ld a, [$008b]
    ldh a, [c]
    ldh a, [c]
    adc d
    nop
    ld [$8902], a
    nop
    ld [$88fa], a
    nop
    add b
    sub d
    ld d, d
    xor a
    ld d, d
    call z, $e952
    ld d, d
    ld b, $53
    inc hl
    ld d, e
    ld b, h
    ld d, e
    ld h, l
    ld d, e
    add [hl]
    ld d, e
    and e
    ld d, e
    call nz, $e553
    ld d, e
    ld b, $54
    daa
    ld d, h
    ld b, h
    ld d, h
    ld e, l
    ld d, h
    ld sp, hl
    nop
    sub [hl]
    nop
    ld sp, hl
    ld hl, sp-$6b
    nop
    pop af
    nop
    sub h
    nop
    pop af
    ld hl, sp-$6d
    nop
    jp hl


    nop
    sub d
    nop
    jp hl


    ld hl, sp-$6f
    nop
    pop hl
    ld hl, sp-$70
    nop
    add b
    ld bc, $9dfb
    nop
    ld sp, hl
    nop
    sbc h
    nop
    ld sp, hl
    ld hl, sp-$65
    nop
    pop af
    nop
    sbc d
    nop
    pop af
    ld hl, sp-$67
    nop
    jp hl


    nop
    sbc b
    nop
    jp hl


    ld hl, sp-$69
    nop
    add b
    ld [bc], a
    ei
    and h
    nop
    ld a, [$a300]
    nop
    ld a, [$a2f8]
    nop
    ldh a, [c]
    nop
    and c
    nop
    ldh a, [c]
    ld hl, sp-$60
    nop
    ld [$9f00], a
    nop
    ld [$9ef8], a
    nop
    add b
    ld [$9f00], a
    nop
    ld [$9ef8], a
    nop
    ld [bc], a
    ei
    xor c
    nop
    ld a, [$a800]
    nop
    ld a, [$a7f8]
    nop
    ldh a, [c]
    nop
    and [hl]
    nop
    ldh a, [c]
    ld hl, sp-$5b
    nop
    add b
    ld hl, sp-$01
    or b
    nop
    ld hl, sp-$09
    xor a
    nop
    ldh a, [rIE]
    xor [hl]
    nop
    ldh a, [$fff7]
    xor l
    nop
    add sp, -$01
    xor h
    nop
    add sp, -$09
    xor e
    nop
    ldh [$fffe], a
    xor d
    nop
    add b

jr_032_5323:
    ld a, [$b8fe]
    nop
    ld a, [$b7f6]
    nop
    ld a, [$b6ee]
    nop
    ldh a, [c]
    cp $b5
    nop
    ldh a, [c]
    or $b4
    nop
    ldh a, [c]
    xor $b3
    nop
    ld [$b2fe], a
    nop
    ld [$b1f6], a
    nop
    add b

jr_032_5344:
    ld [$b2fe], a
    nop
    ld [$b1f6], a
    nop
    ld a, [$b8fe]
    nop
    ld a, [$bdf6]
    nop
    ld a, [$bcee]
    nop
    ldh a, [c]
    cp $bb
    nop
    ldh a, [c]
    or $ba
    nop
    ldh a, [c]
    xor $b9
    nop
    add b

jr_032_5365:
    jp hl


    cp $b2
    nop
    jp hl


    or $b1
    nop
    ld sp, hl
    cp $c3
    nop
    ld sp, hl
    or $c2
    nop
    ld sp, hl
    xor $c1
    nop
    pop af
    cp $c0
    nop
    pop af
    or $bf
    nop
    pop af
    xor $be
    nop
    add b

jr_032_5386:
    ld hl, sp-$07
    or b
    jr nz, @-$06

    ld bc, $20af
    ldh a, [$fff9]
    xor [hl]
    jr nz, @-$0e

    ld bc, $20ad
    add sp, -$07
    xor h
    jr nz, @-$16

    ld bc, $20ab
    ldh [$fffa], a
    xor d
    jr nz, jr_032_5323

    ld a, [$b8fa]

jr_032_53a6:
    jr nz, @-$04

    ld [bc], a
    or a

jr_032_53aa:
    jr nz, jr_032_53a6

    ld a, [bc]
    or [hl]
    jr nz, @-$0c

    ld a, [$20b5]

jr_032_53b3:
    ldh a, [c]
    ld [bc], a
    or h
    jr nz, jr_032_53aa

    ld a, [bc]
    or e
    jr nz, jr_032_53a6

    ld a, [$20b2]
    ld [$b102], a
    jr nz, jr_032_5344

    ld [$b2fa], a

jr_032_53c7:
    jr nz, jr_032_53b3

    ld [bc], a
    or c

jr_032_53cb:
    jr nz, jr_032_53c7

    ld a, [$20b8]
    ld a, [$bd02]

jr_032_53d3:
    jr nz, @-$04

    ld a, [bc]
    cp h
    jr nz, jr_032_53cb

    ld a, [$20bb]
    ldh a, [c]
    ld [bc], a
    cp d
    jr nz, jr_032_53d3

    ld a, [bc]
    cp c
    jr nz, jr_032_5365

    jp hl


    ld a, [$20b2]
    jp hl


    ld [bc], a

jr_032_53eb:
    or c
    jr nz, @-$05

    ld a, [$20c3]
    ld sp, hl
    ld [bc], a

jr_032_53f3:
    jp nz, $f920

    ld a, [bc]
    pop bc
    jr nz, jr_032_53eb

    ld a, [$20c0]
    pop af
    ld [bc], a
    cp a
    jr nz, jr_032_53f3

    ld a, [bc]
    cp [hl]
    jr nz, jr_032_5386

    ld hl, sp+$01
    rlc b
    ld hl, sp-$07
    jp z, $f000

    ld bc, $00c9
    ldh a, [$fff9]
    ret z

    nop
    add sp, $01
    rst $00
    nop
    add sp, -$07
    add $00
    ldh [rSB], a
    push bc
    nop
    ldh [$fff9], a
    call nz, $8000
    ld hl, sp+$01
    jp nc, $f800

    ld sp, hl
    pop de
    nop
    ldh a, [rSB]
    ret nc

    nop
    ldh a, [$fff9]
    rst $08
    nop
    add sp, $01
    adc $00
    add sp, -$07
    call $e000
    ld bc, $00cc
    add b
    ld hl, sp-$07
    pop de
    nop
    add sp, -$07
    call $f800
    ld bc, $00d6
    ldh a, [rSB]
    push de
    nop
    ldh a, [$fff9]
    call nc, $e800
    ld bc, $00d3
    add b
    ld sp, hl
    ld bc, $00dc
    ld sp, hl
    ld sp, hl
    db $db
    nop
    pop af
    ld bc, $00da
    pop af
    ld sp, hl
    reti


    nop
    jp hl


    ld bc, $00d8
    jp hl


    ld sp, hl
    rst $10
    nop
    add b
    ld a, [hl]
    ld d, h
    sbc e
    ld d, h
    cp h
    ld d, h
    db $dd
    ld d, h
    ld hl, sp+$00
    db $e3
    nop
    ld hl, sp-$08
    ldh [c], a
    nop
    ldh a, [rP1]
    pop hl
    nop
    ldh a, [$fff8]
    ldh [rP1], a
    add sp, $00
    rst $18
    nop
    add sp, -$08
    sbc $00
    ldh [$fff8], a
    db $dd
    nop
    add b
    cp $00
    db $eb
    nop
    cp $f8
    ld [$f600], a
    nop
    jp hl


    nop
    or $f8
    add sp, $00
    xor $00
    rst $20
    nop
    xor $f8
    and $00
    and $00
    push hl
    nop
    and $f8
    db $e4
    nop
    add b
    ld bc, $f300
    nop
    ld bc, $f2f8
    nop
    ld sp, hl
    nop
    pop af
    nop
    ld sp, hl
    ld hl, sp-$10
    nop
    pop af
    nop
    rst $28
    nop
    pop af
    ld hl, sp-$12
    nop
    jp hl


    nop
    db $ed
    nop
    jp hl


    ld hl, sp-$14
    nop
    add b
    ldh a, [rP1]
    or $00
    add sp, $00
    db $ed
    nop
    nop
    nop
    ld a, [$0000]
    ld hl, sp-$07
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp-$08
    rst $30
    nop
    ldh a, [$fff8]
    push af
    nop
    add sp, -$08
    db $f4
    nop
    add b
    ld d, $55
    scf
    ld d, l
    ld e, b
    ld d, l
    ld a, c
    ld d, l
    sbc d
    ld d, l
    cp e
    ld d, l
    call c, $fd55
    ld d, l
    ld e, $56
    dec sp
    ld d, [hl]
    ld e, h
    ld d, [hl]
    ld a, c
    ld d, [hl]
    ld hl, sp+$01
    rlca
    nop
    ld hl, sp-$07
    ld b, $00
    ldh a, [rSB]
    dec b
    nop
    ldh a, [$fff9]
    inc b
    nop
    add sp, $09
    inc bc
    nop
    add sp, $01
    ld [bc], a
    nop
    add sp, -$07
    ld bc, $e000
    ld bc, $0000
    add b
    ld a, [$0ffd]
    nop

jr_032_553b:
    ld a, [$0ef5]
    nop
    ld a, [$0ded]
    nop
    ldh a, [c]
    db $fd
    inc c
    nop
    ldh a, [c]
    push af
    dec bc
    nop
    ldh a, [c]
    db $ed
    ld a, [bc]
    nop
    ld [$09fd], a
    nop
    ld [$08f5], a
    nop
    add b
    ld a, [$0ffd]
    nop
    ld a, [$14f5]
    nop
    ld a, [$13ed]
    nop
    ld [$09fd], a
    nop
    ld [$08f5], a
    nop
    ldh a, [c]
    db $fd
    ld [de], a
    nop
    ldh a, [c]
    push af
    ld de, $f200
    db $ed
    stop
    add b
    ld a, [$0ffd]
    nop

jr_032_557d:
    ld a, [$14f5]
    nop
    ld a, [$13ed]
    nop
    ld [$09fd], a
    nop
    ld [$08f5], a
    nop
    ldh a, [c]
    db $fd
    ld [de], a
    nop
    ldh a, [c]
    push af

jr_032_5593:
    ld de, $f200
    db $ed

jr_032_5597:
    stop
    add b
    ld hl, sp-$09
    rlca
    jr nz, jr_032_5597

    rst $38
    ld b, $20
    ldh a, [$fff7]
    dec b
    jr nz, jr_032_5597

    rst $38
    inc b
    jr nz, jr_032_5593

    rst $28
    inc bc
    jr nz, jr_032_5597

    rst $30
    ld [bc], a
    jr nz, @-$16

    rst $38
    ld bc, $e020
    rst $30
    nop
    jr nz, jr_032_553b

    ld a, [$0ffb]

jr_032_55be:
    jr nz, @-$04

    inc bc
    ld c, $20
    ld a, [$0d0b]
    jr nz, @-$0c

    ei
    inc c
    jr nz, jr_032_55be

    inc bc
    dec bc
    jr nz, @-$0c

    dec bc
    ld a, [bc]
    jr nz, jr_032_55be

    ei
    add hl, bc
    jr nz, @-$14

    inc bc
    ld [$8020], sp
    ld a, [$0ffb]

jr_032_55df:
    jr nz, @-$04

    inc bc
    inc d
    jr nz, jr_032_55df

    dec bc
    inc de

jr_032_55e7:
    jr nz, @-$14

    ei
    add hl, bc
    jr nz, @-$14

    inc bc
    ld [$f220], sp
    ei
    ld [de], a
    jr nz, jr_032_55e7

    inc bc
    ld de, $f220
    dec bc
    db $10
    jr nz, jr_032_557d

    jp hl


    ld a, [$2009]
    jp hl


    ld [bc], a
    ld [$f920], sp
    ld a, [$201a]
    ld sp, hl
    ld [bc], a
    add hl, de
    jr nz, @-$05

    ld a, [bc]
    jr jr_032_5631

    pop af
    ld a, [$2017]
    pop af
    ld [bc], a
    ld d, $20
    pop af
    ld a, [bc]
    dec d
    jr nz, @-$7e

    ld hl, sp+$01
    ld hl, $f800
    ld sp, hl
    jr nz, jr_032_5626

jr_032_5626:
    ldh a, [rSB]
    rra
    nop
    ldh a, [$fff9]
    ld e, $00
    add sp, $01
    dec e

jr_032_5631:
    nop
    add sp, -$07
    inc e
    nop
    ldh [rIE], a
    dec de
    nop
    add b
    ld hl, sp+$01
    jr z, jr_032_563f

jr_032_563f:
    ld hl, sp-$07
    daa
    nop
    ldh a, [rSB]
    ld h, $00
    ldh a, [$fff9]
    dec h
    nop
    add sp, $01
    inc h
    nop
    add sp, -$07
    inc hl
    nop
    ldh [$fffa], a
    dec de
    nop
    ldh [rSC], a
    ld [hl+], a
    nop
    add b
    ld hl, sp+$0a
    cpl
    nop
    ld hl, sp+$02
    ld l, $00
    ld hl, sp-$06
    dec l
    nop
    ldh a, [rSC]
    inc l
    nop
    ldh a, [$fffa]
    dec hl
    nop
    add sp, $02
    ld a, [hl+]
    nop
    add sp, -$06
    add hl, hl
    nop
    add b
    ld sp, hl
    ld bc, $0035
    ld sp, hl
    ld sp, hl
    inc [hl]
    nop
    pop af
    ld bc, $0033
    pop af
    ld sp, hl
    ld [hl-], a
    nop
    jp hl


    ld bc, $0031
    jp hl


    ld sp, hl
    jr nc, jr_032_5691

jr_032_5691:
    add b
    or d
    ld d, [hl]
    rst $08
    ld d, [hl]
    db $ec
    ld d, [hl]
    add hl, bc
    ld d, a
    ld h, $57
    ld b, a
    ld d, a
    ld l, b
    ld d, a
    adc c
    ld d, a
    xor d
    ld d, a
    bit 2, a
    db $ec
    ld d, a
    dec c
    ld e, b
    ld l, $58
    ld c, e
    ld e, b
    ld l, b
    ld e, b
    add c
    ld e, b
    ld hl, sp+$00
    inc a
    nop
    ld hl, sp-$08
    dec sp
    nop
    ldh a, [rP1]
    ld a, [hl-]
    nop
    ldh a, [$fff8]
    add hl, sp
    nop
    add sp, $00
    jr c, jr_032_56c6

jr_032_56c6:
    add sp, -$08
    scf
    nop
    ldh [$fff8], a
    ld [hl], $00
    add b
    inc b
    ld a, [$0043]
    db $fc
    nop
    ld b, d
    nop
    db $fc
    ld hl, sp+$41
    nop
    db $f4
    nop
    ld b, b
    nop
    db $f4
    ld hl, sp+$3f
    nop
    db $ec
    nop
    ld a, $00
    db $ec
    ld hl, sp+$3d
    nop
    add b
    inc b
    ld a, [$004a]
    db $fc
    nop
    ld c, c
    nop
    db $fc
    ld hl, sp+$48
    nop
    db $f4
    nop
    ld b, a
    nop
    db $f4
    ld hl, sp+$46
    nop
    db $ec
    nop
    ld b, l
    nop
    db $ec
    ld hl, sp+$44
    nop
    add b
    inc bc
    ld a, [$0050]
    ei
    nop
    ld c, a
    nop
    ei
    ld hl, sp+$4e
    nop
    di
    nop
    ld c, l
    nop
    di
    ld hl, sp+$4c
    nop
    db $eb
    nop
    ld b, l
    nop
    db $eb
    ld hl, sp+$4b
    nop
    add b
    ld hl, sp-$03
    ld e, b
    nop
    ld hl, sp-$0b
    ld d, a
    nop
    ldh a, [$fffd]
    ld d, [hl]
    nop
    ldh a, [$fff5]
    ld d, l
    nop
    add sp, -$03
    ld d, h
    nop
    add sp, -$0b
    ld d, e
    nop
    ldh [$fffd], a
    ld d, d
    nop
    ldh [$fff5], a
    ld d, c
    nop
    add b
    ld a, [$60fb]
    nop

jr_032_574b:
    ld a, [$5ff3]
    nop
    ld a, [$5eeb]
    nop
    ldh a, [c]
    ei
    ld e, l
    nop
    ldh a, [c]
    di
    ld e, h
    nop
    ldh a, [c]
    db $eb
    ld e, e
    nop
    ld [$5afb], a
    nop
    ld [$59f3], a
    nop
    add b
    ld [$62fb], a
    nop

jr_032_576c:
    ld [$61f3], a
    nop
    ld a, [$60fb]
    nop
    ld a, [$67f3]
    nop
    ld a, [$66eb]
    nop
    ldh a, [c]
    ei
    ld h, l
    nop
    ldh a, [c]
    di
    ld h, h
    nop
    ldh a, [c]
    db $eb
    ld h, e
    nop
    add b
    jp hl


    db $fc
    ld h, d
    nop

jr_032_578d:
    jp hl


    db $f4
    ld h, c
    nop
    ld sp, hl
    db $fc
    ld l, l
    nop
    ld sp, hl
    db $f4
    ld l, h
    nop
    ld sp, hl
    db $ec
    ld l, e
    nop
    pop af
    db $fc
    ld l, d
    nop
    pop af
    db $f4

jr_032_57a3:
    ld l, c
    nop
    pop af
    db $ec

jr_032_57a7:
    ld l, b
    nop
    add b
    ld hl, sp-$05
    ld e, b
    jr nz, jr_032_57a7

    inc bc
    ld d, a
    jr nz, jr_032_57a3

    ei
    ld d, [hl]
    jr nz, jr_032_57a7

    inc bc
    ld d, l
    jr nz, jr_032_57a3

    ei
    ld d, h
    jr nz, jr_032_57a7

    inc bc
    ld d, e
    jr nz, jr_032_57a3

    ei
    ld d, d
    jr nz, jr_032_57a7

    inc bc
    ld d, c
    jr nz, jr_032_574b

    ld a, [$60fd]

jr_032_57ce:
    jr nz, @-$04

    dec b
    ld e, a

jr_032_57d2:
    jr nz, jr_032_57ce

    dec c
    ld e, [hl]
    jr nz, @-$0c

    db $fd
    ld e, l
    jr nz, jr_032_57ce

    dec b
    ld e, h
    jr nz, jr_032_57d2

    dec c
    ld e, e
    jr nz, jr_032_57ce

    db $fd
    ld e, d
    jr nz, jr_032_57d2

    dec b
    ld e, c
    jr nz, jr_032_576c

    ld [$62fd], a

jr_032_57ef:
    jr nz, @-$14

    dec b
    ld h, c

jr_032_57f3:
    jr nz, jr_032_57ef

    db $fd
    ld h, b

jr_032_57f7:
    jr nz, jr_032_57f3

    dec b
    ld h, a

jr_032_57fb:
    jr nz, jr_032_57f7

    dec c
    ld h, [hl]
    jr nz, jr_032_57f3

    db $fd
    ld h, l
    jr nz, jr_032_57f7

    dec b
    ld h, h
    jr nz, jr_032_57fb

    dec c
    ld h, e
    jr nz, jr_032_578d

    jp hl


    db $fc

jr_032_580f:
    ld h, d
    jr nz, jr_032_57fb

    inc b

jr_032_5813:
    ld h, c
    jr nz, jr_032_580f

    db $fc

jr_032_5817:
    ld l, l
    jr nz, jr_032_5813

    inc b

jr_032_581b:
    ld l, h
    jr nz, jr_032_5817

    inc c
    ld l, e
    jr nz, jr_032_5813

    db $fc
    ld l, d
    jr nz, jr_032_5817

    inc b
    ld l, c
    jr nz, jr_032_581b

    inc c
    ld l, b
    jr nz, @-$7e

    ld hl, sp+$01
    ld [hl], h
    nop
    ld hl, sp-$07
    ld [hl], e
    nop
    ldh a, [rSB]
    ld [hl], d
    nop
    ldh a, [$fff9]
    ld [hl], c
    nop
    add sp, $01
    ld [hl], b
    nop
    add sp, -$07
    ld l, a
    nop
    ldh [rIE], a
    ld l, [hl]
    nop
    add b
    or $01
    ld a, e
    nop
    or $f9
    ld a, d
    nop
    xor $01
    ld a, c
    nop
    xor $f9
    ld a, b
    nop
    and $01
    ld [hl], a
    nop
    and $f9
    halt
    nop
    sbc $01
    ld [hl], l
    nop
    add b
    or $f9
    ld a, d
    nop
    or $01
    add b
    nop
    xor $01
    ld a, a
    nop
    xor $f9
    ld a, [hl]
    nop
    and $01
    ld a, l
    nop
    and $f9
    ld a, h
    nop
    add b
    ld hl, sp+$01
    add l
    nop
    ld hl, sp-$07
    add h
    nop
    ldh a, [rSB]
    add e
    nop
    ldh a, [$fff9]
    add d
    nop
    add sp, -$07
    halt
    nop
    add sp, $01
    add c
    nop
    add b
    jp nc, $f358

    ld e, b
    inc d
    ld e, c
    di
    ld e, b
    inc d
    ld e, c
    di
    ld e, b
    inc d
    ld e, c
    ld sp, $5259
    ld e, c
    ld [hl], e
    ld e, c
    ld d, d
    ld e, c
    ld [hl], e
    ld e, c
    ld d, d
    ld e, c
    ld [hl], e
    ld e, c
    sub h
    ld e, c
    or l
    ld e, c
    sub $59
    or l
    ld e, c
    sub $59
    or l
    ld e, c
    sub $59
    rst $30
    ld e, c
    jr jr_032_5922

    add hl, sp
    ld e, d
    jr jr_032_5926

    add hl, sp
    ld e, d
    jr jr_032_592a

    add hl, sp
    ld e, d
    ld hl, sp+$00
    adc l
    nop
    ld hl, sp-$08
    adc h
    nop
    ldh a, [rP1]
    adc e
    nop
    ldh a, [$fff8]
    adc d
    nop
    ldh a, [$fff0]
    adc c
    nop
    add sp, $00
    adc b
    nop
    add sp, -$08
    add a
    nop
    add sp, -$10
    add [hl]
    nop
    add b
    nop
    ld bc, $0095
    nop
    ld sp, hl
    sub h
    nop
    ld hl, sp+$01
    sub e
    nop
    ld hl, sp-$07
    sub d
    nop
    ldh a, [rSB]
    sub c
    nop
    ldh a, [$fff9]
    sub b
    nop
    add sp, $01
    adc a
    nop
    add sp, -$07
    adc [hl]
    nop
    add b
    nop
    ld sp, hl
    sbc d
    nop
    add sp, $01
    adc a
    nop
    add sp, -$07
    adc [hl]
    nop
    ld hl, sp+$01

jr_032_5922:
    sbc c
    nop
    ld hl, sp-$07

jr_032_5926:
    sbc b
    nop
    ldh a, [rSB]

jr_032_592a:
    sub a
    nop
    ldh a, [$fff9]
    sub [hl]
    nop
    add b
    ld hl, sp+$00
    and d
    nop

jr_032_5935:
    ld hl, sp-$08
    and c
    nop
    ldh a, [rP1]
    and b
    nop
    ldh a, [$fff8]
    sbc a
    nop
    add sp, $00
    sbc [hl]
    nop
    add sp, -$08
    sbc l
    nop
    ldh [rP1], a
    sbc h
    nop
    ldh [$fff8], a
    sbc e
    nop
    add b
    ld hl, sp-$02
    xor d
    nop

jr_032_5956:
    ld hl, sp-$0a
    xor c
    nop
    ld hl, sp-$12
    xor b
    nop
    ldh a, [$fffe]
    and a
    nop
    ldh a, [$fff6]
    and [hl]
    nop
    ldh a, [$ffee]
    and l
    nop
    add sp, -$02
    and h
    nop
    add sp, -$0a
    and e
    nop
    add b
    ld hl, sp-$02
    or c
    nop

jr_032_5977:
    ld hl, sp-$0a
    or b
    nop
    add sp, -$02
    and h
    nop
    ldh a, [$fffe]
    xor a
    nop
    ldh a, [$fff6]
    xor [hl]
    nop
    ldh a, [$ffee]
    xor l
    nop
    add sp, -$0a

jr_032_598d:
    xor h
    nop
    add sp, -$12

jr_032_5991:
    xor e
    nop
    add b
    ld hl, sp-$08
    and d
    jr nz, jr_032_5991

    nop
    and c
    jr nz, jr_032_598d

    ld hl, sp-$60
    jr nz, jr_032_5991

    nop
    sbc a
    jr nz, jr_032_598d

    ld hl, sp-$62
    jr nz, jr_032_5991

    nop
    sbc l
    jr nz, jr_032_598d

    ld hl, sp-$64
    jr nz, jr_032_5991

    nop

jr_032_59b2:
    sbc e
    jr nz, jr_032_5935

    ld hl, sp-$06
    xor d
    jr nz, jr_032_59b2

jr_032_59ba:
    ld [bc], a
    xor c
    jr nz, @-$06

    ld a, [bc]
    xor b
    jr nz, jr_032_59b2

    ld a, [$20a7]
    ldh a, [rSC]

jr_032_59c7:
    and [hl]
    jr nz, jr_032_59ba

    ld a, [bc]
    and l
    jr nz, @-$16

    ld a, [$20a4]
    add sp, $02

jr_032_59d3:
    and e
    jr nz, jr_032_5956

    ld hl, sp-$06
    or c
    jr nz, jr_032_59d3

jr_032_59db:
    ld [bc], a
    or b
    jr nz, jr_032_59c7

    ld a, [$20a4]
    ldh a, [$fffa]
    xor a
    jr nz, @-$0e

    ld [bc], a
    xor [hl]
    jr nz, jr_032_59db

    ld a, [bc]
    xor l
    jr nz, @-$16

    ld [bc], a
    xor h
    jr nz, jr_032_59db

    ld a, [bc]
    xor e
    jr nz, jr_032_5977

    ld hl, sp+$01
    cp c
    nop
    ld hl, sp-$07
    cp b
    nop
    ldh a, [rSB]
    or a
    nop
    ldh a, [$fff9]
    or [hl]
    nop
    add sp, $09
    or l
    nop
    add sp, $01
    or h
    nop
    add sp, -$07
    or e
    nop
    ldh [rSB], a
    or d
    nop
    add b
    ld hl, sp+$09
    pop bc
    nop
    ld hl, sp+$01
    ret nz

    nop
    ld hl, sp-$07
    cp a
    nop
    ldh a, [$ff09]
    cp [hl]
    nop
    ldh a, [rSB]
    cp l
    nop
    ldh a, [$fff9]
    cp h
    nop
    add sp, $01
    cp e
    nop
    add sp, -$07
    cp d
    nop
    add b
    ld hl, sp-$07
    cp a
    nop
    ldh a, [$fff9]
    cp h
    nop
    add sp, -$07
    cp d
    nop
    ld hl, sp+$01
    add $00
    ldh a, [$ff09]
    push bc
    nop
    ldh a, [rSB]
    call nz, $e800
    add hl, bc
    jp $e800


    ld bc, $00c2
    add b
    add h
    ld e, d
    and l
    ld e, d
    cp [hl]
    ld e, d
    and l
    ld e, d
    cp [hl]
    ld e, d
    and l
    ld e, d
    cp [hl]
    ld e, d
    rst $10
    ld e, d
    ld hl, sp+$5a
    add hl, de
    ld e, e
    ld hl, sp+$5a
    add hl, de
    ld e, e
    ld hl, sp+$5a
    add hl, de
    ld e, e
    ld [hl], $5b
    ld d, a
    ld e, e
    ld a, b
    ld e, e
    ld d, a
    ld e, e
    ld a, b
    ld e, e
    ld d, a
    ld e, e
    ld a, b
    ld e, e
    ld sp, hl
    nop
    adc $00
    ld sp, hl
    ld hl, sp-$33
    nop
    pop af
    nop
    call z, $f100
    ld hl, sp-$35
    nop
    add sp, $08
    jp z, $e900

    nop
    ret


    nop
    jp hl


    ld hl, sp-$38
    nop
    pop hl
    ld hl, sp-$39
    nop
    add b
    ld sp, hl
    nop
    call nc, $f900
    ld hl, sp-$2d
    nop
    jp hl


    nop
    ret nc

    nop
    pop af
    nop
    jp nc, $f100

    ld hl, sp-$2f
    nop
    jp hl


    ld hl, sp-$31
    nop
    add b
    ld sp, hl
    nop
    jp c, $f900

    ld hl, sp-$27
    nop
    pop af
    nop
    ret c

    nop
    pop af
    ld hl, sp-$29
    nop
    jp hl


    nop
    sub $00
    jp hl


    ld hl, sp-$2b
    nop
    add b

jr_032_5ad7:
    ld hl, sp-$01
    pop hl
    nop
    ld hl, sp-$09
    ldh [rP1], a
    ldh a, [rIE]
    rst $18
    nop
    ldh a, [$fff7]
    sbc $00
    add sp, -$01
    db $dd
    nop
    add sp, -$09
    call c, $e000
    ld bc, $00ca
    ldh [$fff9], a
    db $db
    nop
    add b
    ld sp, hl
    rst $38
    jp hl


    nop
    ld sp, hl
    rst $30
    add sp, $00
    ld sp, hl
    rst $28
    rst $20
    nop
    pop af
    rst $38
    and $00
    pop af
    rst $30
    push hl
    nop
    pop af
    rst $28
    db $e4
    nop
    jp hl


    rst $38
    db $e3
    nop
    jp hl


    rst $30
    ldh [c], a
    nop
    add b
    add sp, -$01
    db $e3
    nop
    add sp, -$09
    ldh [c], a
    nop
    ld hl, sp-$03
    xor $00
    ld hl, sp-$0b
    db $ed
    nop
    ldh a, [rIE]
    db $ec
    nop
    ldh a, [$fff7]
    db $eb
    nop
    ldh a, [$ffef]

jr_032_5b33:
    ld [$8000], a
    ld hl, sp-$07
    pop hl
    jr nz, jr_032_5b33

    ld bc, $20e0
    ldh a, [$fff9]
    rst $18
    jr nz, jr_032_5b33

    ld bc, $20de
    add sp, -$07
    db $dd
    jr nz, jr_032_5b33

    ld bc, $20dc
    ldh [$fff7], a
    jp z, $e020

    rst $38
    db $db

jr_032_5b55:
    jr nz, jr_032_5ad7

    ld sp, hl
    ld sp, hl

jr_032_5b59:
    jp hl


    jr nz, jr_032_5b55

    ld bc, $20e8
    ld sp, hl
    add hl, bc
    rst $20
    jr nz, jr_032_5b55

    ld sp, hl

jr_032_5b65:
    and $20
    pop af
    ld bc, $20e5
    pop af
    add hl, bc
    db $e4
    jr nz, jr_032_5b59

    ld sp, hl
    db $e3
    jr nz, @-$15

    ld bc, $20e2
    add b
    add sp, -$07
    db $e3
    jr nz, jr_032_5b65

jr_032_5b7d:
    ld bc, $20e2
    ld hl, sp-$05
    xor $20
    ld hl, sp+$03
    db $ed
    jr nz, @-$0e

    ld sp, hl
    db $ec
    jr nz, jr_032_5b7d

    ld bc, $20eb
    ldh a, [$ff09]
    ld [$8020], a
    and e
    ld e, e
    call nz, $e55b
    ld e, e
    call nz, $e55b
    ld e, e
    call nz, $e55b
    ld e, e
    ld hl, sp+$01
    rlca
    nop
    ld hl, sp-$07
    ld b, $00
    ldh a, [rSB]
    dec b
    nop
    ldh a, [$fff9]
    inc b
    nop
    ld [$0309], a
    nop
    add sp, $01
    ld [bc], a
    nop
    add sp, -$07
    ld bc, $e000
    ld bc, $0000
    add b
    ld sp, hl
    add hl, bc
    rrca
    nop
    ld sp, hl
    ld bc, $000e
    ld sp, hl
    ld sp, hl
    dec c
    nop
    pop af
    add hl, bc
    inc c
    nop
    pop af
    ld bc, $000b
    pop af
    ld sp, hl
    ld a, [bc]
    nop
    jp hl


    ld bc, $0009
    jp hl


    ld sp, hl
    ld [$8000], sp
    add sp, -$07
    ld [$f800], sp
    ld bc, $0016
    ld hl, sp-$07
    dec d
    nop
    ldh a, [$ff09]
    inc d
    nop
    ldh a, [rSB]
    inc de
    nop
    ldh a, [$fff9]
    ld [de], a
    nop
    add sp, $09
    ld de, $e800
    ld bc, $0010
    add b
    ld h, $5c
    ccf
    ld e, h
    ld h, b
    ld e, h
    ld a, l
    ld e, h
    sbc [hl]
    ld e, h
    cp e
    ld e, h
    call c, $f55c
    ld e, h
    ld h, $5c
    ccf
    ld e, h
    ld h, b
    ld e, h
    ld a, l
    ld e, h
    sbc [hl]
    ld e, h
    cp e
    ld e, h
    call c, $f55c
    ld e, h
    db $fc
    ld bc, $001c
    db $fc
    ld sp, hl
    dec de
    nop
    db $f4
    ld bc, $001a
    db $f4
    ld sp, hl
    add hl, de
    nop
    db $ec
    ld bc, $0018
    db $ec
    ld sp, hl
    rla
    nop
    add b
    ld [bc], a
    ld bc, $0022
    ld [$17f9], a
    nop
    ld a, [$2101]
    nop
    ld a, [$20f9]
    nop
    db $ec
    add hl, bc
    ld de, $f200
    ld bc, $001f
    ldh a, [c]
    ld sp, hl
    ld e, $00
    ld [$1d01], a
    nop
    add b
    ld sp, hl
    rst $38
    add hl, hl
    nop
    ld sp, hl
    rst $30
    jr z, jr_032_5c68

jr_032_5c68:
    ld hl, sp-$11
    daa
    nop
    pop af
    rst $38
    ld h, $00
    pop af
    rst $30
    dec h
    nop
    jp hl


    rst $38
    inc h
    nop
    jp hl


    rst $30
    inc hl
    nop
    add b
    ld hl, sp-$02
    ld sp, $f800
    or $30
    nop
    ldh a, [$fffe]
    cpl
    nop
    ldh a, [$fff6]
    ld l, $00
    ldh a, [$ffee]
    dec l
    nop
    add sp, -$02
    inc l
    nop
    add sp, -$0a
    dec hl
    nop
    add sp, -$12
    ld a, [hl+]

jr_032_5c9c:
    nop
    add b
    ld sp, hl
    ld sp, hl

jr_032_5ca0:
    add hl, hl
    jr nz, jr_032_5c9c

    ld bc, $2028
    ld hl, sp+$09
    daa
    jr nz, jr_032_5c9c

    ld sp, hl
    ld h, $20
    pop af
    ld bc, $2025
    jp hl


    ld sp, hl
    inc h
    jr nz, jr_032_5ca0

    ld bc, $2023
    add b
    ld hl, sp-$06
    ld sp, $f820

jr_032_5cc0:
    ld [bc], a
    jr nc, @+$22

    ldh a, [$fffa]
    cpl
    jr nz, @-$0e

    ld [bc], a
    ld l, $20
    ldh a, [$ff0a]
    dec l
    jr nz, @-$16

    ld a, [$202c]
    add sp, $02
    dec hl
    jr nz, jr_032_5cc0

    ld a, [bc]
    ld a, [hl+]
    jr nz, @-$7e

    ei
    ld bc, $0037
    ei
    ld sp, hl
    ld [hl], $00
    di
    ld bc, $0035
    di
    ld sp, hl
    inc [hl]
    nop
    db $eb
    ld bc, $0033
    db $eb
    ld sp, hl
    ld [hl-], a
    nop
    add b
    ld hl, sp+$01
    ld a, $00
    ld hl, sp-$07
    dec a
    nop
    add sp, $09
    ld de, $f000
    add hl, bc
    inc a
    nop
    ldh a, [rSB]
    dec sp
    nop
    ldh a, [$fff9]
    ld a, [hl-]
    nop
    add sp, $01
    add hl, sp
    nop
    add sp, -$07
    jr c, jr_032_5d15

jr_032_5d15:
    add b
    inc h
    ld e, l
    ld b, c
    ld e, l
    ld e, [hl]
    ld e, l
    ld a, e
    ld e, l
    sbc h
    ld e, l
    cp l
    ld e, l
    sbc $5d
    ld a, [$4408]
    nop
    db $fc
    nop
    ld b, e
    nop
    db $fc
    ld hl, sp+$42
    nop
    db $f4
    nop
    ld b, c
    nop
    db $f4
    ld hl, sp+$40
    nop
    db $ec
    ld sp, hl
    rla
    nop
    db $ec
    ld bc, $003f
    add b
    ld a, [$4b08]
    nop
    ld a, [$4a00]
    nop
    ld a, [$49f8]
    nop
    ldh a, [c]
    nop
    ld c, b
    nop
    ldh a, [c]
    ld hl, sp+$47
    nop
    ld [$4600], a
    nop
    ld [$45f8], a
    nop
    add b
    ld hl, sp+$08
    ld d, d
    nop
    ld hl, sp+$00
    ld d, c
    nop
    ld hl, sp-$08
    ld d, b
    nop
    ldh a, [rP1]
    ld c, a
    nop
    ldh a, [$fff8]
    ld c, [hl]
    nop
    add sp, $00
    ld c, l
    nop
    add sp, -$08
    ld c, h
    nop
    add b
    ld hl, sp+$08
    ld d, d
    nop
    ld hl, sp+$00
    ld d, c
    nop
    ld hl, sp-$08
    ld d, b
    nop
    ldh a, [rP1]
    ld c, a
    nop
    add sp, $00
    ld c, l
    nop
    add sp, -$08
    ld c, h
    nop
    ldh a, [$fff8]
    ld d, h
    nop
    ldh a, [$fff0]
    ld d, e
    nop
    add b
    ld hl, sp+$08
    ld d, d
    nop
    ld hl, sp+$00
    ld d, c
    nop
    ld hl, sp-$08
    ld d, b
    nop
    ldh a, [$fff8]
    ld d, [hl]
    nop
    ldh a, [$fff0]
    ld d, l
    nop
    ldh a, [rP1]
    ld c, a
    nop
    add sp, $00
    ld c, l
    nop
    add sp, -$08
    ld c, h
    nop
    add b
    ld hl, sp+$08
    ld d, d
    nop
    ld hl, sp+$00
    ld d, c
    nop
    ld hl, sp-$08
    ld d, b
    nop
    ldh a, [rP1]
    ld e, e
    nop
    ldh a, [$fff8]
    ld e, d
    nop
    ldh a, [$fff0]
    ld e, c
    nop
    add sp, $00
    ld e, b
    nop
    add sp, -$08
    ld d, a
    nop
    add b
    ld sp, hl
    ld hl, sp+$68
    nop
    push af
    ldh a, [rHDMA3]
    nop
    ld sp, hl
    ld [$0061], sp
    ld sp, hl
    nop
    ld h, b
    nop
    pop af
    nop
    ld e, a
    nop
    pop af
    ld hl, sp+$5e
    nop
    jp hl


    nop
    ld e, l
    nop
    jp hl


    ld hl, sp+$5c
    nop
    add b
    daa
    ld e, [hl]
    ld c, b
    ld e, [hl]
    ld l, c
    ld e, [hl]
    adc d
    ld e, [hl]
    xor e
    ld e, [hl]
    ret z

    ld e, [hl]
    push hl
    ld e, [hl]
    ld b, $5f
    daa
    ld e, a
    ld c, h
    ld e, a
    ld [hl], c
    ld e, a
    adc [hl]
    ld e, a
    xor a
    ld e, a
    ret nc

    ld e, a
    push af
    ld e, a
    ld a, [de]
    ld h, b
    dec sp
    ld h, b
    ld e, b
    ld h, b
    ld a, c
    ld h, b
    sbc d
    ld h, b
    ld sp, hl
    nop
    ld l, c
    nop
    ld sp, hl
    ld hl, sp+$68
    nop
    pop af
    nop
    ld h, a
    nop
    pop af
    ld hl, sp+$66
    nop
    jp hl


    nop
    ld h, l
    nop
    jp hl


    ld hl, sp+$64
    nop
    pop hl
    nop
    ld h, e
    nop
    pop hl
    ld hl, sp+$62
    nop
    add b
    ld hl, sp+$00
    ld l, a
    nop
    ld hl, sp-$08
    ld l, [hl]
    nop
    ldh a, [rP1]
    ld l, l
    nop
    ldh a, [$fff8]
    ld l, h
    nop
    ldh [rP1], a
    ld h, e
    nop
    ldh [$fff8], a
    ld h, d
    nop
    add sp, $00
    ld l, e
    nop
    add sp, -$08
    ld l, d
    nop
    add b
    db $fd
    nop
    ld [hl], a
    nop
    db $fd
    ld hl, sp+$76
    nop
    push af
    nop
    ld [hl], l
    nop
    push af
    ld hl, sp+$74
    nop
    db $ed
    nop
    ld [hl], e
    nop
    db $ed
    ld hl, sp+$72
    nop
    push hl
    nop
    ld [hl], c
    nop
    push hl
    ld hl, sp+$70
    nop
    add b
    nop
    nop
    ld a, a
    nop
    nop
    ld hl, sp+$7e
    nop
    ld hl, sp+$00
    ld a, l
    nop
    ld hl, sp-$08
    ld a, h
    nop
    ldh a, [rP1]
    ld a, e
    nop
    ldh a, [$fff8]
    ld a, d
    nop
    add sp, $00
    ld a, c
    nop
    add sp, -$08
    ld a, b
    nop
    add b
    jp hl


    nop
    ld a, c
    nop
    jp hl


    ld hl, sp+$78
    nop
    ld bc, $84f9
    nop
    ld sp, hl
    nop
    add e
    nop
    ld sp, hl
    ld hl, sp-$7e
    nop
    pop af
    nop
    add c
    nop
    pop af
    ld hl, sp-$80
    nop
    add b
    db $fc
    db $f4
    ld d, e
    nop
    ld hl, sp-$04
    adc d
    nop
    ldh a, [rP1]
    adc c
    nop
    ldh a, [$fff8]
    adc b
    nop
    add sp, $00
    add a
    nop
    add sp, -$08
    add [hl]
    nop
    ldh [$fffb], a
    add l
    nop
    add b
    ld hl, sp-$01
    sub d
    nop
    ld hl, sp-$09
    sub c
    nop
    ldh a, [rIE]
    sub b
    nop
    ldh a, [$fff7]
    adc a
    nop
    add sp, $07
    adc [hl]
    nop
    add sp, -$01
    adc l
    nop
    add sp, -$09
    adc h
    nop
    ldh [rIE], a
    adc e
    nop
    add b
    rst $30
    cp $9a
    nop
    rst $30
    or $99
    nop

jr_032_5f0e:
    rst $30
    xor $98
    nop
    rst $28
    cp $97
    nop
    rst $28
    or $96
    nop
    rst $28
    xor $95
    nop
    rst $20
    cp $94
    nop
    rst $20
    or $93
    nop
    add b
    xor $ee
    db $eb
    nop
    or $fe
    sbc d
    nop

jr_032_5f2f:
    xor $fe
    sub a
    nop
    or $f6
    sbc l
    nop
    and $fe
    sub h
    nop
    and $f6
    sub e
    nop
    xor $f6
    sbc e
    nop
    cp $ee
    sbc [hl]
    nop
    or $ee
    sbc h
    nop
    add b
    ldh a, [$ffee]
    db $ec
    nop

jr_032_5f50:
    nop
    xor $ed
    nop
    ld hl, sp-$12
    and e
    nop
    ld hl, sp-$02
    and l
    nop
    ld hl, sp-$0a
    and h
    nop
    ldh a, [$fffe]
    and d
    nop
    ldh a, [$fff6]
    and c
    nop
    add sp, -$02

jr_032_5f6a:
    and b
    nop
    add sp, -$0a

jr_032_5f6e:
    sbc a
    nop
    add b
    db $fc
    inc b
    ld d, e
    jr nz, jr_032_5f6e

    db $fc
    adc d
    jr nz, jr_032_5f6a

    ld hl, sp-$77
    jr nz, jr_032_5f6e

    nop
    adc b
    jr nz, jr_032_5f6a

    ld hl, sp-$79
    jr nz, jr_032_5f6e

    nop
    add [hl]
    jr nz, jr_032_5f6a

    db $fd

jr_032_5f8b:
    add l
    jr nz, jr_032_5f0e

    ld hl, sp-$07
    sub d
    jr nz, jr_032_5f8b

    ld bc, $2091
    ldh a, [$fff9]
    sub b
    jr nz, jr_032_5f8b

    ld bc, $208f
    add sp, -$0f
    adc [hl]
    jr nz, jr_032_5f8b

    ld sp, hl
    adc l
    jr nz, @-$16

    ld bc, $208c
    ldh [$fff9], a
    adc e
    jr nz, jr_032_5f2f

jr_032_5faf:
    rst $30
    ld a, [$209a]

jr_032_5fb3:
    rst $30
    ld [bc], a
    sbc c
    jr nz, jr_032_5faf

    ld a, [bc]
    sbc b
    jr nz, @-$0f

    ld a, [$2097]
    rst $28
    ld [bc], a
    sub [hl]
    jr nz, jr_032_5fb3

    ld a, [bc]
    sub l
    jr nz, jr_032_5faf

    ld a, [$2094]

jr_032_5fcb:
    rst $20
    ld [bc], a
    sub e
    jr nz, jr_032_5f50

    xor $0a
    db $eb

jr_032_5fd3:
    jr nz, jr_032_5fcb

    ld a, [$209a]
    xor $fa
    sub a
    jr nz, jr_032_5fd3

    ld [bc], a
    sbc l
    jr nz, @-$18

    ld a, [$2094]
    and $02
    sub e

jr_032_5fe7:
    jr nz, @-$10

    ld [bc], a
    sbc e

jr_032_5feb:
    jr nz, jr_032_5feb

    ld a, [bc]
    sbc [hl]
    jr nz, jr_032_5fe7

    ld a, [bc]
    sbc h
    jr nz, @-$7e

    ldh a, [$ff0a]
    db $ec
    jr nz, jr_032_5ffa

jr_032_5ffa:
    ld a, [bc]
    db $ed
    jr nz, @-$06

    ld a, [bc]
    and e
    jr nz, jr_032_5ffa

    ld a, [$20a5]
    ld hl, sp+$02
    and h
    jr nz, jr_032_5ffa

    ld a, [$20a2]
    ldh a, [rSC]
    and c
    jr nz, jr_032_5ffa

    ld a, [$20a0]
    add sp, $02
    sbc a
    jr nz, @-$7e

    ld sp, hl
    ld bc, $00ad
    ld sp, hl
    ld sp, hl
    xor h
    nop
    pop af
    ld bc, $00ab
    pop af
    ld sp, hl
    xor d
    nop
    jp hl


    ld bc, $00a9
    jp hl


    ld sp, hl
    xor b
    nop
    pop hl
    nop
    and a
    nop
    pop hl
    ld hl, sp-$5a
    nop
    add b
    ld hl, sp+$01
    or h
    nop
    ld hl, sp-$07
    or e
    nop
    ldh a, [rSB]
    or d
    nop
    ldh a, [$fff9]
    or c
    nop
    add sp, $01
    or b
    nop
    add sp, -$07
    xor a
    nop
    ldh [rP1], a
    xor [hl]
    nop
    add b
    ld a, [$bc01]
    nop
    ld a, [$bbf9]
    nop
    ldh a, [c]
    ld bc, $00ba
    ldh a, [c]
    ld sp, hl
    cp c
    nop
    ld [$b801], a
    nop
    ld [$b7f9], a
    nop
    ldh [c], a
    ld bc, $00b6
    ldh [c], a
    ld sp, hl
    or l
    nop
    add b
    ld a, [$c401]
    nop
    ld a, [$c3f9]
    nop
    ldh a, [c]
    ld bc, $00c2
    ldh a, [c]
    ld sp, hl
    pop bc
    nop
    ld [$c001], a
    nop
    ld [$bff9], a
    nop
    ldh [c], a
    ld bc, $00be
    ldh [c], a
    ld sp, hl
    cp l
    nop
    add b
    ld sp, hl
    ld bc, $00ca
    ld sp, hl
    ld sp, hl
    ret


    nop
    pop af
    ld bc, $00c8
    pop af
    ld sp, hl
    rst $00
    nop
    jp hl


    ld bc, $00c6
    jp hl


    ld sp, hl
    push bc
    nop
    add b
    cp l
    ld h, b
    sbc $60
    rst $38
    ld h, b
    inc e
    ld h, c
    add hl, sp
    ld h, c
    ld hl, sp+$00
    jp nc, $f800

    ld hl, sp-$2f
    nop
    ldh a, [rP1]
    ret nc

    nop
    ldh a, [$fff8]
    rst $08
    nop
    add sp, $00
    adc $00
    add sp, -$08
    call $e000
    ld hl, sp-$34
    nop
    ret c

    ld hl, sp-$35
    nop
    add b
    ld hl, sp+$00
    jp c, $f800

    ld hl, sp-$27
    nop
    ldh a, [rP1]
    ret c

    nop
    ldh a, [$fff8]
    rst $10
    nop
    add sp, $00
    sub $00
    add sp, -$08
    push de
    nop
    ldh [$fff8], a
    call nc, $d800
    ld hl, sp-$2d
    nop
    add b
    db $fd
    ei
    pop hl
    nop
    push af
    nop
    ldh [rP1], a
    push af
    ld hl, sp-$21
    nop
    db $ed
    nop
    sbc $00
    db $ed
    ld hl, sp-$23
    nop
    push hl
    nop
    call c, $e500
    ld hl, sp-$25
    nop
    add b
    nop
    ld a, [$00e8]
    ld hl, sp+$00
    rst $20
    nop
    ld hl, sp-$08
    and $00
    ldh a, [rP1]
    push hl
    nop
    ldh a, [$fff8]
    db $e4
    nop
    add sp, $00
    db $e3
    nop
    add sp, -$08
    ldh [c], a
    nop
    add b
    nop
    ld a, [$00e8]
    ld hl, sp+$00
    rst $20
    nop
    ld hl, sp-$08
    and $00
    add sp, $00
    db $e3
    nop
    add sp, -$08
    ldh [c], a
    nop
    ldh a, [rP1]
    ld [$f000], a
    ld hl, sp-$17
    nop
    add b
    ld [hl], h
    ld h, c
    sub l
    ld h, c
    or [hl]
    ld h, c
    rst $10
    ld h, c
    ld hl, sp+$61
    add hl, de
    ld h, d
    ld a, [hl-]
    ld h, d
    ld e, e
    ld h, d
    ld a, h
    ld h, d
    sbc l
    ld h, d
    cp [hl]
    ld h, d
    db $db
    ld h, d
    db $fc
    ld h, d
    add hl, de
    ld h, e
    ld [hl-], a
    ld h, e
    ld hl, sp-$02
    rlca
    nop
    ld hl, sp-$0a
    ld b, $00
    ldh a, [$fffe]
    dec b
    nop
    ldh a, [$fff6]
    inc b
    nop
    add sp, -$02
    inc bc
    nop
    add sp, -$0a
    ld [bc], a
    nop
    ldh [$fffe], a
    ld bc, $e000
    or $00
    nop
    add b
    ld hl, sp+$00
    dec c
    nop
    ld hl, sp-$08
    inc c
    nop
    ldh a, [rP1]
    dec bc
    nop
    ldh a, [$fff8]
    ld a, [bc]
    nop
    ldh [rP1], a
    ld bc, $e000
    ld hl, sp+$00
    nop
    add sp, $00
    add hl, bc
    nop
    add sp, -$08
    ld [$8000], sp
    ld hl, sp-$02
    dec d
    nop

jr_032_61ba:
    ld hl, sp-$0a
    inc d
    nop
    ld hl, sp-$12
    inc de
    nop
    ldh a, [$fffe]
    ld [de], a
    nop
    ldh a, [$fff6]
    ld de, $f000
    xor $10
    nop
    add sp, -$02
    rrca
    nop
    add sp, -$0a
    ld c, $00
    add b
    ld hl, sp-$02
    inc e
    nop
    ld hl, sp-$0a
    dec de
    nop
    ld hl, sp-$12
    ld a, [de]
    nop
    ldh a, [$fffe]
    add hl, de
    nop
    ldh a, [$fff6]
    jr jr_032_61eb

jr_032_61eb:
    ldh a, [$ffee]
    rla
    nop
    add sp, -$02
    rrca
    nop
    add sp, -$0a
    ld d, $00
    add b
    ld hl, sp-$02
    inc e
    nop
    ld hl, sp-$0a
    dec de
    nop
    ld hl, sp-$12
    ld a, [de]
    nop
    add sp, -$0a
    dec e
    nop
    ldh a, [$fffe]
    jr nz, jr_032_620c

jr_032_620c:
    add sp, -$02
    rrca
    nop
    ldh a, [$fff6]

jr_032_6212:
    rra
    nop
    ldh a, [$ffee]

jr_032_6216:
    ld e, $00
    add b
    ld hl, sp-$06
    rlca
    jr nz, jr_032_6216

    ld [bc], a
    ld b, $20
    ldh a, [$fffa]
    dec b
    jr nz, jr_032_6216

    ld [bc], a
    inc b
    jr nz, jr_032_6212

Jump_032_622a:
    ld a, [$2003]
    add sp, $02

jr_032_622f:
    ld [bc], a
    jr nz, jr_032_6212

    ld a, [$2001]
    ldh [rSC], a

jr_032_6237:
    nop
    jr nz, jr_032_61ba

    ld hl, sp-$08
    dec c
    jr nz, jr_032_6237

jr_032_623f:
    nop
    inc c
    jr nz, @-$0e

    ld hl, sp+$0b
    jr nz, jr_032_6237

    nop
    ld a, [bc]
    jr nz, @-$1e

    ld hl, sp+$01
    jr nz, jr_032_622f

    nop
    nop
    jr nz, @-$16

    ld hl, sp+$09
    jr nz, jr_032_623f

    nop

jr_032_6258:
    ld [$8020], sp
    ld hl, sp-$06
    dec d
    jr nz, jr_032_6258

    ld [bc], a
    inc d
    jr nz, @-$06

    ld a, [bc]
    inc de
    jr nz, jr_032_6258

    ld a, [$2012]
    ldh a, [rSC]
    ld de, $f020
    ld a, [bc]
    db $10
    jr nz, @-$16

    ld a, [$200f]
    add sp, $02

jr_032_6279:
    ld c, $20
    add b
    ld hl, sp-$06
    inc e
    jr nz, jr_032_6279

    ld [bc], a
    dec de
    jr nz, @-$06

    ld a, [bc]
    ld a, [de]
    jr nz, jr_032_6279

    ld a, [$2019]
    ldh a, [rSC]
    jr @+$22

    ldh a, [$ff0a]

jr_032_6292:
    rla
    jr nz, @-$16

    ld a, [$200f]
    add sp, $02

jr_032_629a:
    ld d, $20
    add b
    ld hl, sp-$06
    inc e
    jr nz, jr_032_629a

    ld [bc], a
    dec de
    jr nz, @-$06

jr_032_62a6:
    ld a, [bc]
    ld a, [de]
    jr nz, jr_032_6292

jr_032_62aa:
    ld [bc], a
    dec e
    jr nz, @-$0e

    ld a, [$2020]
    add sp, -$06
    rrca
    jr nz, jr_032_62a6

    ld [bc], a
    rra
    jr nz, jr_032_62aa

    ld a, [bc]
    ld e, $20
    add b
    ld a, [$2701]
    nop
    ld a, [$26f9]
    nop
    ldh a, [c]
    ld bc, $0025
    ldh a, [c]
    ld sp, hl
    inc h
    nop
    ld [$2301], a
    nop
    ld [$22f9], a
    nop
    ldh [c], a
    ld bc, $0021
    add b
    ld hl, sp+$01
    cpl
    nop
    ld hl, sp-$07
    ld l, $00
    ldh a, [rSB]
    dec l
    nop
    ldh a, [$fff9]
    inc l
    nop
    add sp, $01
    dec hl
    nop
    add sp, -$07
    ld a, [hl+]
    nop
    ldh [rSB], a
    add hl, hl
    nop
    ret c

    ld bc, $0028
    add b
    or $01
    ld [hl], $00
    or $f9
    dec [hl]
    nop
    xor $01
    inc [hl]
    nop
    xor $f9
    inc sp
    nop
    and $01
    ld [hl-], a
    nop

jr_032_6310:
    and $f9
    ld sp, $de00
    db $fd
    jr nc, jr_032_6318

jr_032_6318:
    add b
    or $01
    inc a
    nop
    or $f9
    dec sp
    nop

jr_032_6321:
    xor $01
    ld a, [hl-]
    nop
    xor $f9
    add hl, sp
    nop
    and $01
    jr c, jr_032_632d

jr_032_632d:
    and $f9
    scf
    nop
    add b
    or $01
    inc a
    nop
    or $f9
    dec sp
    nop
    and $01
    jr c, jr_032_633e

jr_032_633e:
    and $f9
    scf
    nop
    xor $01
    ld a, $00
    xor $f9
    dec a
    nop
    add b
    ld e, l
    ld h, e
    ld l, [hl]
    ld h, e
    and c
    ld h, e
    or d
    ld h, e
    and c
    ld h, e
    ld a, a
    ld h, e
    sub b
    ld h, e
    and c
    ld h, e
    or d
    ld h, e
    ld hl, sp+$00
    ld b, [hl]
    nop
    ld hl, sp-$08
    ld b, l
    nop
    ldh a, [rP1]
    ld b, h
    nop
    ldh a, [$fff8]
    ld b, e
    nop
    add b
    ld hl, sp+$00
    ld c, d
    nop
    ld hl, sp-$08
    ld c, c
    nop
    ldh a, [rP1]

jr_032_6378:
    ld c, b
    nop
    ldh a, [$fff8]

jr_032_637c:
    ld b, a
    nop
    add b
    ld hl, sp-$08
    ld b, [hl]
    jr nz, jr_032_637c

    nop
    ld b, l
    jr nz, jr_032_6378

    ld hl, sp+$44
    jr nz, jr_032_637c

    nop

jr_032_638d:
    ld b, e
    jr nz, jr_032_6310

    ld hl, sp-$08
    ld c, d
    jr nz, jr_032_638d

    nop
    ld c, c
    jr nz, @-$0e

    ld hl, sp+$48
    jr nz, jr_032_638d

    nop
    ld b, a
    jr nz, jr_032_6321

    ld hl, sp+$00
    ld b, b
    nop
    ld hl, sp-$08
    ccf
    nop
    ldh a, [rP1]
    ld a, $00
    ldh a, [$fff8]
    dec a
    nop
    add b
    ld hl, sp+$00
    ld b, d
    nop
    ld hl, sp-$08
    ld b, c
    nop
    ldh a, [rP1]
    ld a, $00
    ldh a, [$fff8]
    dec a
    nop
    add b
    db $e3
    ld h, e
    nop
    ld h, h
    ld b, d
    ld h, h
    ld b, d
    ld h, h
    ld e, a
    ld h, h
    add b
    ld h, h
    and l
    ld h, h
    add $64
    rst $20
    ld h, h
    ld [$2d65], sp
    ld h, l
    ld c, [hl]
    ld h, l
    ld l, a
    ld h, l
    sub b
    ld h, l
    xor l
    ld h, l
    add $65
    ld sp, hl
    nop
    ld l, l
    nop
    ld sp, hl
    ld hl, sp+$6c
    nop
    pop af
    nop
    ld l, e
    nop
    pop af
    ld hl, sp+$6a
    nop
    jp hl


    nop
    ld l, c
    nop
    jp hl


    ld hl, sp+$68
    nop
    pop hl
    ld hl, sp+$67
    nop
    add b
    add hl, bc
    ld sp, hl
    ld [hl], l
    nop
    ld bc, $74f9
    nop
    ld sp, hl
    nop
    ld [hl], e
    nop
    ld sp, hl
    ld hl, sp+$72
    nop
    pop af
    nop
    ld [hl], c
    nop
    pop af
    ld hl, sp+$70
    nop
    jp hl


    nop
    ld l, a
    nop
    jp hl


    ld hl, sp+$6e
    nop
    add b
    ld a, [bc]
    ld sp, hl
    ld [hl], l
    nop
    ld [bc], a
    ld sp, hl
    ld a, h
    nop
    ld a, [$7b00]
    nop
    ld a, [$7af8]
    nop
    ldh a, [c]
    nop
    ld a, c
    nop
    ldh a, [c]
    ld hl, sp+$78
    nop
    ld [$7700], a
    nop
    ld [$76f8], a
    nop
    add b
    ld [bc], a
    ld sp, hl
    add c
    nop
    ld a, [$8000]
    nop
    ld a, [$7ff8]
    nop
    ldh a, [c]
    nop
    ld a, [hl]
    nop
    ldh a, [c]
    ld hl, sp+$7d
    nop
    ld [$7700], a
    nop
    ld [$76f8], a
    nop
    add b
    db $eb
    rlca
    ld c, [hl]
    nop
    ld hl, sp-$01
    ld d, d
    nop
    ld hl, sp-$09
    ld d, c
    nop
    ldh a, [rIE]
    ld d, b
    nop
    ldh a, [$fff7]
    ld c, a
    nop
    add sp, -$01
    ld c, l
    nop
    add sp, -$09
    ld c, h
    nop
    ldh [$fffe], a
    ld c, e
    nop
    add b
    ld a, [$5bfe]
    nop
    ld a, [$5af6]
    nop

jr_032_6488:
    ld a, [$59ee]
    nop
    ldh a, [c]
    cp $58
    nop
    ldh a, [c]
    or $57
    nop
    ldh a, [c]
    xor $56
    nop
    ld [$55fe], a
    nop
    ld [$54f6], a
    nop
    ld [$53ee], a
    nop
    add b
    ld a, [$5bfe]
    nop
    ld a, [$60f6]
    nop

jr_032_64ad:
    ld a, [$5fee]
    nop
    ldh a, [c]
    cp $5e
    nop
    ldh a, [c]
    or $5d
    nop
    ldh a, [c]
    xor $5c
    nop
    ld [$55fe], a
    nop
    ld [$54f6], a
    nop
    add b
    jp hl


    cp $55
    nop
    jp hl


    or $54
    nop

jr_032_64ce:
    ld sp, hl
    cp $66
    nop
    ld sp, hl
    or $65
    nop
    ld sp, hl
    xor $64
    nop
    pop af
    cp $63
    nop
    pop af
    or $62
    nop
    pop af
    xor $61
    nop
    add b
    db $eb

jr_032_64e8:
    pop af
    ld c, [hl]
    jr nz, @-$06

    ld sp, hl
    ld d, d
    jr nz, jr_032_64e8

    ld bc, $2051
    ldh a, [$fff9]
    ld d, b
    jr nz, jr_032_64e8

    ld bc, $204f
    add sp, -$07
    ld c, l
    jr nz, jr_032_64e8

    ld bc, $204c
    ldh [$fffa], a
    ld c, e
    jr nz, jr_032_6488

    ld a, [$5bfa]

jr_032_650b:
    jr nz, @-$04

    ld [bc], a
    ld e, d

jr_032_650f:
    jr nz, jr_032_650b

    ld a, [bc]
    ld e, c

jr_032_6513:
    jr nz, @-$0c

    ld a, [$2058]
    ldh a, [c]
    ld [bc], a
    ld d, a
    jr nz, jr_032_650f

    ld a, [bc]
    ld d, [hl]
    jr nz, jr_032_650b

    ld a, [$2055]
    ld [$5402], a
    jr nz, jr_032_6513

    ld a, [bc]
    ld d, e
    jr nz, jr_032_64ad

    ld a, [$5bfa]

jr_032_6530:
    jr nz, @-$04

    ld [bc], a
    ld h, b

jr_032_6534:
    jr nz, jr_032_6530

    ld a, [bc]
    ld e, a
    jr nz, @-$0c

    ld a, [$205e]
    ldh a, [c]
    ld [bc], a
    ld e, l
    jr nz, jr_032_6534

    ld a, [bc]
    ld e, h
    jr nz, jr_032_6530

    ld a, [$2055]
    ld [$5402], a
    jr nz, jr_032_64ce

    jp hl


    ld a, [$2055]
    jp hl


    ld [bc], a

jr_032_6554:
    ld d, h
    jr nz, @-$05

    ld a, [$2066]
    ld sp, hl
    ld [bc], a

jr_032_655c:
    ld h, l
    jr nz, @-$05

    ld a, [bc]
    ld h, h
    jr nz, jr_032_6554

    ld a, [$2063]
    pop af
    ld [bc], a
    ld h, d
    jr nz, jr_032_655c

    ld a, [bc]
    ld h, c
    jr nz, @-$7e

    ld hl, sp+$01
    adc c
    nop
    ld hl, sp-$07
    adc b
    nop
    ldh a, [rSB]
    add a
    nop
    ldh a, [$fff9]
    add [hl]
    nop
    add sp, $01
    add l
    nop
    add sp, -$07
    add h
    nop
    ldh [rSB], a
    add e
    nop
    ldh [$fff9], a
    add d
    nop
    add b
    ld hl, sp+$01
    sub b
    nop
    ld hl, sp-$07
    adc a
    nop
    ldh a, [rSB]
    adc [hl]
    nop
    ldh a, [$fff9]
    adc l
    nop
    add sp, $01
    adc h
    nop
    add sp, -$07
    adc e
    nop
    ldh [rSB], a
    adc d
    nop
    add b
    ld hl, sp-$07
    adc a
    nop
    ld hl, sp+$01
    sub h
    nop
    ldh a, [rSB]
    sub e
    nop
    ldh a, [$fff9]
    sub d
    nop
    add sp, -$07
    adc e
    nop
    add sp, $01
    sub c
    nop
    add b
    ld sp, hl
    ld bc, $009a
    ld sp, hl

jr_032_65cb:
    ld sp, hl
    sbc c
    nop
    pop af
    ld bc, $0098
    pop af
    ld sp, hl
    sub a
    nop
    jp hl


    ld bc, $0096
    jp hl


    ld sp, hl
    sub l
    nop
    add b
    rst $20
    ld h, l
    add hl, de
    ld h, [hl]
    ld [hl-], a
    ld h, [hl]
    nop
    ld h, [hl]
    ld hl, sp+$00
    and b
    nop
    ld hl, sp-$08
    sbc a
    nop
    ldh a, [rP1]
    sbc [hl]
    nop
    ldh a, [$fff8]
    sbc l
    nop
    add sp, $00
    sbc h
    nop
    add sp, -$08
    sbc e
    nop
    add b
    ld hl, sp+$01
    and [hl]
    nop
    ld hl, sp-$07
    and l
    nop
    ldh a, [rSB]
    and h
    nop
    ldh a, [$fff9]
    and e
    nop
    add sp, $01
    and d
    nop
    add sp, -$07
    and c
    nop
    add b
    rst $28
    ldh a, [$ffa9]
    nop
    ld hl, sp-$04
    xor h
    nop
    ldh a, [rP1]
    xor e
    nop
    ldh a, [$fff8]
    xor d
    nop
    add sp, $00

jr_032_662b:
    xor b
    nop
    add sp, -$08

jr_032_662f:
    and a
    nop
    add b
    rst $28
    ld [$20a9], sp
    ld hl, sp-$04
    xor h
    jr nz, jr_032_662b

    ld hl, sp-$55
    jr nz, jr_032_662f

    nop
    xor d
    jr nz, jr_032_662b

    ld hl, sp-$58
    jr nz, jr_032_662f

    nop
    and a
    jr nz, jr_032_65cb

    add e
    ld h, [hl]
    and b
    ld h, [hl]
    pop bc
    ld h, [hl]
    ldh [c], a
    ld h, [hl]
    pop bc
    ld h, [hl]
    ldh [c], a
    ld h, [hl]
    ldh [c], a
    ld h, [hl]
    add e
    ld h, a
    sbc h
    ld h, a
    or l
    ld h, a
    sub $67
    or l
    ld h, a
    sub $67
    or l
    ld h, a
    ei
    ld h, a
    inc d
    ld l, b
    dec l
    ld l, b
    ld c, [hl]
    ld l, b
    dec l
    ld l, b
    ld c, [hl]
    ld l, b
    dec l
    ld l, b
    inc bc
    ld h, a
    inc h
    ld h, a
    ld b, c
    ld h, a
    ld h, d
    ld h, a
    ld b, c
    ld h, a
    ld h, d
    ld h, a
    ld b, c
    ld h, a
    ld hl, sp+$08
    or e
    nop
    ld hl, sp+$00
    or d
    nop
    ld hl, sp-$08
    or c
    nop
    ldh a, [rP1]
    or b
    nop
    ldh a, [$fff8]
    xor a
    nop
    add sp, $00
    xor [hl]
    nop
    add sp, -$08
    xor l
    nop
    add b
    ld hl, sp+$09
    cp e
    nop
    ld hl, sp+$01
    cp d
    nop
    ld hl, sp-$07
    cp c
    nop
    ldh a, [$ff09]
    cp b
    nop
    ldh a, [rSB]
    or a
    nop
    ldh a, [$fff9]
    or [hl]
    nop
    add sp, $01
    or l
    nop
    add sp, -$07
    or h
    nop
    add b
    rst $28
    ld [$00b8], sp
    rst $30
    ld [$00c2], sp
    ld hl, sp+$00
    pop bc
    nop
    ld hl, sp-$08
    ret nz

    nop
    ldh a, [rP1]
    cp a
    nop
    ldh a, [$fff8]
    cp [hl]
    nop
    add sp, $00
    cp l
    nop
    add sp, -$08
    cp h
    nop
    add b
    ld hl, sp-$08
    rst $00
    nop
    rst $28
    ld [$00b8], sp
    rst $30
    ld [$00c2], sp
    ld hl, sp+$00
    pop bc
    nop
    ldh a, [rP1]
    cp a
    nop
    ldh a, [$fff8]
    cp [hl]
    nop
    add sp, $00
    cp l
    nop
    add sp, -$08
    cp h
    nop
    add b
    ld hl, sp+$08
    rst $08
    nop
    ld hl, sp+$00
    adc $00
    ld hl, sp-$08
    call $f000
    ld [$00cc], sp
    ldh a, [rP1]
    rlc b
    ldh a, [$fff8]
    jp z, $e800

    nop
    ret


    nop
    add sp, -$08
    ret z

    nop
    add b
    ld hl, sp+$08
    sub $00
    ld hl, sp+$00
    push de
    nop
    ld hl, sp-$08
    call nc, $f000
    nop
    db $d3
    nop
    ldh a, [$fff8]
    jp nc, $e800

    nop
    pop de
    nop
    add sp, -$08
    ret nc

    nop
    add b
    nop
    nop
    sbc $00
    ld hl, sp+$08
    db $dd
    nop
    ld hl, sp+$00
    call c, $f800
    ld hl, sp-$25
    nop
    ldh a, [rP1]
    jp c, $f000

    ld hl, sp-$27
    nop
    add sp, $00
    ret c

    nop
    add sp, -$08
    rst $10
    nop
    add b
    nop
    nop
    sbc $00
    ld hl, sp+$08
    db $dd
    nop
    ld hl, sp+$00
    call c, $f000
    nop
    jp c, $e800

    nop
    ret c

    nop
    add sp, -$08
    rst $10
    nop
    ld hl, sp-$08
    ldh [rP1], a
    ldh a, [$fff8]
    rst $18
    nop
    add b
    ld hl, sp+$00
    and $00
    ld hl, sp-$08
    push hl
    nop
    ldh a, [rP1]
    db $e4
    nop
    ldh a, [$fff8]
    db $e3
    nop
    add sp, $00
    ldh [c], a
    nop
    add sp, -$08
    pop hl
    nop
    add b
    ld hl, sp+$00
    db $ec
    nop
    ld hl, sp-$08
    db $eb
    nop
    ldh a, [rP1]
    ld [$f000], a
    ld hl, sp-$17
    nop
    add sp, $00
    add sp, $00
    add sp, -$08
    rst $20
    nop
    add b
    ldh a, [$ff08]
    cp b
    nop
    ld hl, sp+$08
    di
    nop
    ld hl, sp+$00
    ldh a, [c]
    nop
    ld hl, sp-$08
    pop af
    nop
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [$fff8]
    rst $28
    nop
    add sp, $00
    xor $00
    add sp, -$08
    db $ed
    nop
    add b
    ldh a, [$ff08]
    cp b
    nop
    ld hl, sp+$08
    di
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp-$08
    rst $30
    nop
    ld hl, sp-$10
    or $00
    ldh a, [rP1]
    push af
    nop
    ldh a, [$fff8]
    db $f4
    nop
    add sp, $00

jr_032_67f4:
    xor $00
    add sp, -$08

jr_032_67f8:
    db $ed
    nop
    add b
    ld hl, sp-$08
    and $20
    ld hl, sp+$00
    push hl
    jr nz, jr_032_67f4

    ld hl, sp-$1c
    jr nz, jr_032_67f8

    nop
    db $e3
    jr nz, jr_032_67f4

    ld hl, sp-$1e
    jr nz, jr_032_67f8

    nop

jr_032_6811:
    pop hl
    jr nz, @-$7e

    ld hl, sp-$08
    db $ec
    jr nz, jr_032_6811

    nop
    db $eb
    jr nz, @-$0e

    ld hl, sp-$16
    jr nz, jr_032_6811

    nop
    jp hl


    jr nz, @-$16

    ld hl, sp-$18
    jr nz, jr_032_6811

    nop

jr_032_682a:
    rst $20
    jr nz, @-$7e

    ldh a, [$fff0]
    cp b
    jr nz, jr_032_682a

jr_032_6832:
    ldh a, [$fff3]
    jr nz, @-$06

    ld hl, sp-$0e
    jr nz, jr_032_6832

    nop
    pop af
    jr nz, @-$0e

    ld hl, sp-$10
    jr nz, jr_032_6832

    nop
    rst $28
    jr nz, @-$16

    ld hl, sp-$12
    jr nz, jr_032_6832

    nop

jr_032_684b:
    db $ed
    jr nz, @-$7e

    ldh a, [$fff0]
    cp b
    jr nz, jr_032_684b

jr_032_6853:
    ldh a, [$fff3]
    jr nz, @-$06

jr_032_6857:
    ld hl, sp-$08
    jr nz, jr_032_6853

    nop
    rst $30
    jr nz, jr_032_6857

    ld [$20f6], sp
    ldh a, [$fff8]
    push af
    jr nz, jr_032_6857

    nop
    db $f4
    jr nz, jr_032_6853

    ld hl, sp-$12
    jr nz, jr_032_6857

    nop
    db $ed
    jr nz, @-$7e

    push de
    ld l, b
    ldh a, [c]
    ld l, b
    dec de
    ld l, c
    ld b, h
    ld l, c
    dec de
    ld l, c
    ld b, h
    ld l, c
    dec de
    ld l, c
    ld b, h
    ld l, c
    push de
    ld l, b
    add [hl]
    ld l, c
    ld l, l
    ld l, c
    sbc a
    ld l, c
    ld l, l
    ld l, c
    db $dd
    ld l, c
    cp b
    ld l, c
    ld [bc], a
    ld l, d
    cp b
    ld l, c
    ld c, h
    ld l, d
    daa
    ld l, d
    ld [hl], c
    ld l, d
    daa
    ld l, d
    or a
    ld l, d
    sub [hl]
    ld l, d
    ret c

    ld l, d
    sub [hl]
    ld l, d
    ld l, l
    ld l, c
    cp b
    ld l, c
    daa
    ld l, d
    sub [hl]
    ld l, d
    ld [de], a
    ld l, e
    ld sp, hl
    ld l, d
    dec hl
    ld l, e
    ld sp, hl
    ld l, d
    ld l, c
    ld l, e
    ld b, h
    ld l, e
    adc [hl]
    ld l, e
    ld b, h
    ld l, e
    ret c

    ld l, e
    or e
    ld l, e
    db $fd
    ld l, e
    or e
    ld l, e
    ld b, e
    ld l, h
    ld [hl+], a
    ld l, h
    ld h, h
    ld l, h
    ld [hl+], a
    ld l, h
    ld sp, hl
    ld l, d
    ld b, h
    ld l, e
    or e
    ld l, e
    ld [hl+], a
    ld l, h
    add sp, $00
    ld bc, $0000
    nop
    ld b, $00
    ld hl, sp+$00
    dec b
    nop
    ld hl, sp-$08
    inc b
    nop
    ldh a, [rP1]
    inc bc
    nop
    ldh a, [$fff8]
    ld [bc], a
    nop
    add sp, -$08
    nop
    nop
    add b
    nop
    rst $38
    rrca
    nop
    ld hl, sp+$08
    ld c, $00
    ld hl, sp+$00
    dec c
    nop
    ld hl, sp-$08
    inc c
    nop
    ldh a, [$ff08]
    dec bc
    nop
    ldh a, [rP1]
    ld a, [bc]
    nop
    ldh a, [$fff8]
    add hl, bc
    nop
    add sp, $00
    ld [$e800], sp
    ld hl, sp+$07
    nop
    nop
    ld hl, sp-$2a
    nop
    add b
    ld hl, sp+$08
    add hl, de
    nop
    ld hl, sp+$00
    jr jr_032_6923

jr_032_6923:
    ld hl, sp-$08
    rla
    nop
    ldh a, [$ff08]
    ld d, $00
    ldh a, [rP1]
    dec d
    nop
    ldh a, [$fff8]
    inc d
    nop
    add sp, $08
    inc de
    nop
    add sp, $00
    ld [de], a
    nop
    add sp, -$08
    ld de, $e000
    rst $38
    stop
    add b
    ld hl, sp+$08
    ld [hl+], a
    nop
    ld hl, sp+$00
    ld hl, $f800
    ld hl, sp+$20
    nop
    ldh a, [$ff08]
    rra
    nop
    ldh a, [rP1]
    ld e, $00
    ldh a, [$fff8]
    dec e
    nop
    add sp, $08
    inc e
    nop
    add sp, $00
    dec de
    nop
    add sp, -$08
    ld a, [de]
    nop
    ldh [rIE], a
    stop
    add b
    ld sp, hl
    nop
    jr z, jr_032_6971

jr_032_6971:
    ld sp, hl
    ld hl, sp+$27
    nop
    pop af
    nop
    ld h, $00
    pop af
    ld hl, sp+$25
    nop
    jp hl


    nop
    inc h
    nop
    jp hl


    ld hl, sp+$23
    nop
    add b
    ld hl, sp+$00
    ld a, [hl+]
    nop
    ld hl, sp-$08
    add hl, hl
    nop
    ldh a, [rP1]
    ld h, $00
    ldh a, [$fff8]
    dec h
    nop
    add sp, $00
    inc h
    nop
    add sp, -$08
    inc hl
    nop
    add b
    ld hl, sp+$00
    inc l
    nop
    ld hl, sp-$08
    dec hl
    nop
    ldh a, [rP1]
    ld h, $00
    ldh a, [$fff8]
    dec h
    nop
    add sp, $00
    inc h
    nop
    add sp, -$08
    inc hl
    nop
    add b
    ld sp, hl
    nop
    dec [hl]
    nop
    ld sp, hl
    ld hl, sp+$34
    nop
    ld sp, hl
    ldh a, [rWave_3]
    nop
    pop af
    nop
    ld [hl-], a
    nop
    pop af
    ld hl, sp+$31
    nop
    pop af
    ldh a, [rWave_0]
    nop
    jp hl


    nop
    cpl
    nop
    jp hl


    ld hl, sp+$2e
    nop
    jp hl


    ldh a, [$ff2d]
    nop
    add b
    ld hl, sp+$00
    scf
    nop
    ld hl, sp-$08
    ld [hl], $00
    ld hl, sp-$10
    inc sp
    nop
    ldh a, [rP1]
    ld [hl-], a
    nop
    ldh a, [$fff8]
    ld sp, $f000
    ldh a, [rWave_0]
    nop
    add sp, $00
    cpl
    nop
    add sp, -$08
    ld l, $00
    add sp, -$10
    dec l
    nop
    add b
    ld hl, sp+$00
    add hl, sp
    nop
    ld hl, sp-$08
    jr c, jr_032_6a0a

jr_032_6a0a:
    ld hl, sp-$10
    inc sp
    nop
    ldh a, [rP1]
    ld [hl-], a
    nop
    ldh a, [$fff8]
    ld sp, $f000
    ldh a, [rWave_0]
    nop
    add sp, $00
    cpl
    nop
    add sp, -$08
    ld l, $00
    add sp, -$10
    dec l

jr_032_6a25:
    nop
    add b
    ld sp, hl
    ld hl, sp+$35
    jr nz, jr_032_6a25

    nop

jr_032_6a2d:
    inc [hl]
    jr nz, @-$05

    ld [$2033], sp
    pop af
    ld hl, sp+$32
    jr nz, @-$0d

    nop
    ld sp, $f120
    ld [$2030], sp
    jp hl


    ld hl, sp+$2f
    jr nz, jr_032_6a2d

    nop
    ld l, $20
    jp hl


    ld [$202d], sp
    add b
    ld hl, sp-$08
    scf
    jr nz, @-$06

jr_032_6a51:
    nop
    ld [hl], $20
    ld hl, sp+$08
    inc sp
    jr nz, @-$0e

    ld hl, sp+$32
    jr nz, @-$0e

    nop
    ld sp, $f020
    ld [$2030], sp
    add sp, -$08
    cpl
    jr nz, jr_032_6a51

    nop
    ld l, $20
    add sp, $08

jr_032_6a6e:
    dec l
    jr nz, @-$7e

    ld hl, sp-$08
    add hl, sp
    jr nz, jr_032_6a6e

jr_032_6a76:
    nop
    jr c, @+$22

    ld hl, sp+$08
    inc sp
    jr nz, jr_032_6a6e

    ld hl, sp+$32
    jr nz, @-$0e

    nop
    ld sp, $f020
    ld [$2030], sp
    add sp, -$08
    cpl
    jr nz, jr_032_6a76

    nop
    ld l, $20
    add sp, $08
    dec l
    jr nz, @-$7e

    ld sp, hl
    ld bc, $0041
    ld sp, hl
    ld sp, hl
    ld b, b
    nop
    pop af
    ld bc, $003f
    pop af
    ld sp, hl
    ld a, $00
    jp hl


    ld bc, $003d
    jp hl


    ld sp, hl
    inc a
    nop
    pop hl
    ld bc, $003b
    pop hl
    ld sp, hl
    ld a, [hl-]
    nop
    add b
    ld hl, sp+$01
    ld b, e
    nop
    ld hl, sp-$07
    ld b, d
    nop
    ldh a, [rSB]
    ccf
    nop
    ldh a, [$fff9]
    ld a, $00
    add sp, $01
    dec a
    nop
    add sp, -$07
    inc a
    nop
    ldh [rSB], a
    dec sp
    nop
    ldh [$fff9], a
    ld a, [hl-]
    nop
    add b
    ld hl, sp+$01
    ld b, l
    nop
    ld hl, sp-$07
    ld b, h
    nop
    ldh a, [rSB]
    ccf
    nop
    ldh a, [$fff9]
    ld a, $00
    add sp, $01
    dec a
    nop
    add sp, -$07
    inc a
    nop
    ldh [rSB], a
    dec sp
    nop
    ldh [$fff9], a
    ld a, [hl-]
    nop
    add b
    ld sp, hl
    nop
    ld c, e
    nop
    ld sp, hl
    ld hl, sp+$4a
    nop
    pop af
    nop
    ld c, c
    nop
    pop af
    ld hl, sp+$48
    nop
    jp hl


    nop
    ld b, a
    nop
    jp hl


    ld hl, sp+$46
    nop
    add b
    ld hl, sp+$00
    ld c, l
    nop
    ld hl, sp-$08
    ld c, h
    nop
    ldh a, [rP1]
    ld c, c
    nop
    ldh a, [$fff8]
    ld c, b
    nop
    add sp, $00
    ld b, a
    nop
    add sp, -$08
    ld b, [hl]
    nop
    add b
    ld hl, sp+$00
    ld c, a
    nop
    ld hl, sp-$08
    ld c, [hl]
    nop
    ldh a, [rP1]
    ld c, c
    nop
    ldh a, [$fff8]
    ld c, b
    nop
    add sp, $00
    ld b, a
    nop
    add sp, -$08
    ld b, [hl]
    nop
    add b
    ld sp, hl
    nop
    dec [hl]
    nop
    ld sp, hl
    ld hl, sp+$56
    nop
    ld sp, hl
    ldh a, [rHDMA5]
    nop
    pop af
    nop
    ld d, h
    nop
    pop af
    ld hl, sp+$53
    nop
    pop af
    ldh a, [rHDMA2]
    nop
    jp hl


    nop
    cpl
    nop
    jp hl


    ld hl, sp+$51
    nop
    jp hl


    ldh a, [$ff50]
    nop
    add b
    ld hl, sp+$00
    ld e, b
    nop
    ld hl, sp-$08
    ld d, a
    nop
    ld hl, sp-$10
    ld d, l
    nop
    ldh a, [rP1]
    ld d, h
    nop
    ldh a, [$fff8]
    ld d, e
    nop
    ldh a, [$fff0]
    ld d, d
    nop
    add sp, $00
    cpl
    nop
    add sp, -$08
    ld d, c
    nop
    add sp, -$10
    ld d, b
    nop
    add b
    ld hl, sp+$00
    ld e, d
    nop
    ld hl, sp-$08
    ld e, c
    nop
    ld hl, sp-$10
    ld d, l
    nop
    ldh a, [rP1]
    ld d, h
    nop
    ldh a, [$fff8]
    ld d, e
    nop
    ldh a, [$fff0]
    ld d, d
    nop
    add sp, $00
    cpl
    nop
    add sp, -$08
    ld d, c
    nop
    add sp, -$10
    ld d, b

jr_032_6bb1:
    nop
    add b
    ld sp, hl
    ld hl, sp+$35
    jr nz, jr_032_6bb1

    nop

jr_032_6bb9:
    ld d, [hl]
    jr nz, @-$05

    ld [$2055], sp
    pop af
    ld hl, sp+$54
    jr nz, @-$0d

    nop
    ld d, e
    jr nz, jr_032_6bb9

    ld [$2052], sp
    jp hl


    ld hl, sp+$2f
    jr nz, jr_032_6bb9

    nop
    ld d, c
    jr nz, @-$15

    ld [$2050], sp
    add b
    ld hl, sp-$08
    ld e, b
    jr nz, @-$06

jr_032_6bdd:
    nop
    ld d, a
    jr nz, @-$06

jr_032_6be1:
    ld [$2055], sp
    ldh a, [$fff8]
    ld d, h
    jr nz, @-$0e

    nop
    ld d, e
    jr nz, jr_032_6bdd

    ld [$2052], sp
    add sp, -$08
    cpl
    jr nz, jr_032_6bdd

    nop
    ld d, c
    jr nz, jr_032_6be1

    ld [$2050], sp
    add b
    ld hl, sp-$08
    ld e, d
    jr nz, @-$06

jr_032_6c02:
    nop
    ld e, c
    jr nz, @-$06

jr_032_6c06:
    ld [$2055], sp
    ldh a, [$fff8]
    ld d, h
    jr nz, @-$0e

    nop
    ld d, e
    jr nz, jr_032_6c02

    ld [$2052], sp
    add sp, -$08
    cpl
    jr nz, jr_032_6c02

    nop
    ld d, c
    jr nz, jr_032_6c06

    ld [$2050], sp
    add b
    ld sp, hl
    ld bc, $0041
    ld sp, hl
    ld sp, hl
    ld b, b
    nop
    pop af
    ld bc, $003f
    pop af
    ld sp, hl
    ld a, $00
    jp hl


    ld bc, $005e
    jp hl


    ld sp, hl
    ld e, l
    nop
    pop hl
    ld bc, $005c
    pop hl
    ld sp, hl
    ld e, e
    nop
    add b
    ld hl, sp+$01
    ld b, e
    nop
    ld hl, sp-$07
    ld b, d
    nop
    ldh a, [rSB]
    ccf
    nop
    ldh a, [$fff9]
    ld a, $00
    add sp, $01
    ld e, [hl]
    nop
    add sp, -$07
    ld e, l
    nop
    ldh [rSB], a
    ld e, h
    nop
    ldh [$fff9], a
    ld e, e
    nop
    add b
    ld hl, sp+$01
    ld b, l
    nop
    ld hl, sp-$07
    ld b, h
    nop
    ldh a, [rSB]
    ccf
    nop
    ldh a, [$fff9]
    ld a, $00
    add sp, $01
    ld e, [hl]
    nop
    add sp, -$07
    ld e, l
    nop
    ldh [rSB], a
    ld e, h
    nop
    ldh [$fff9], a
    ld e, e
    nop
    add b
    call Call_032_6eab
    ld a, $18
    call DivideHLByA
    ld a, h
    or l
    jr z, jr_032_6ca9

    ld de, sSpriteTotalHappiness
    ld b, $0a

jr_032_6c96:
    dec hl
    ld a, h
    or l
    jr z, jr_032_6ca9

    dec b
    jr nz, jr_032_6c96

    ld a, [de]
    or a
    jr z, jr_032_6ca9

    ld a, [de]
    dec a
    ld [de], a
    ld b, $0a
    jr jr_032_6c96

jr_032_6ca9:
    ret


    xor a
    ld [$ccc7], a
    ld [$cc23], a
    ld a, [$cbe4]
    ld h, a
    ld a, [$cbe5]
    ld l, a
    ld a, $18
    call DivideHLByA
    ld a, h
    or l
    jp z, Jump_032_6d3f

    call Call_032_6e1e

jr_032_6cc6:
    xor a
    ld [$ccc8], a
    push hl
    ld de, $b949
    call Call_032_6d49
    ld de, $b95f
    call Call_032_6d49
    ld de, $b975
    call Call_032_6d49
    ld de, $b98b
    call Call_032_6d49
    xor a
    ld [$ccc5], a
    ld de, $b9a7
    call Call_032_6f49
    ld de, $b9b3
    call Call_032_6f49
    ld de, $b9bf
    call Call_032_6f49
    ld de, $b9cb
    call Call_032_6f49
    call Call_032_6fc5
    ld a, [$ccc8]
    or a
    jr z, jr_032_6d0f

    ld a, [$ccc7]
    inc a
    ld [$ccc7], a

jr_032_6d0f:
    ld a, [$ccc6]
    dec a
    ld [$ccc6], a
    cp $ff
    jr nz, jr_032_6d1d

    call Call_032_6e1e

jr_032_6d1d:
    pop hl
    dec hl
    ld a, h
    or l
    jr nz, jr_032_6cc6

    ld a, [$ccc6]
    or a
    jr z, jr_032_6d3f

    xor a
    ld [$b9a4], a
    ld [$b948], a
    ld [$b9a6], a
    ld [$b953], a
    ld [$b969], a
    ld [$b97f], a
    ld [$b995], a

Jump_032_6d3f:
jr_032_6d3f:
    call Call_032_704d
    call Call_000_1002
    call Call_032_70d3
    ret


Call_032_6d49:
    ld a, [de]
    cp $ff
    ret z

    push de
    ld a, [de]
    cp $03
    call z, Call_032_6e10
    pop de
    push de
    ld a, [de]
    cp $04
    call z, Call_032_6e02
    pop de
    push de
    ld a, [de]
    cp $02
    call z, Call_032_6db3
    pop de
    push de
    ld a, [de]
    cp $01
    call z, Call_032_6d97
    pop de
    push de
    ld a, [de]
    cp $00
    call z, Call_032_6d7b
    pop de
    push de
    call Call_032_6e43
    pop de
    ret


Call_032_6d7b:
    inc de
    inc de
    inc de
    inc de
    inc de
    ld a, [de]
    cp $0e
    jr c, jr_032_6d93

    ld a, [de]
    inc a
    ld [de], a
    xor a
    ld [de], a
    dec de
    dec de
    dec de
    dec de
    dec de
    ld a, $01
    ld [de], a
    ret


jr_032_6d93:
    ld a, [de]
    inc a
    ld [de], a
    ret


Call_032_6d97:
    inc de
    inc de
    inc de
    inc de
    inc de
    ld a, [de]
    cp $15
    jr c, jr_032_6daf

    ld a, [de]
    inc a
    ld [de], a
    xor a
    ld [de], a
    dec de
    dec de
    dec de
    dec de
    dec de
    ld a, $02
    ld [de], a
    ret


jr_032_6daf:
    ld a, [de]
    inc a
    ld [de], a
    ret


Call_032_6db3:
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    ld a, [de]
    ld b, a
    dec de
    dec de
    dec de
    ld a, [de]
    push de
    push hl
    call Call_032_6ee2
    pop hl
    pop de
    inc de
    inc de
    inc de
    inc de
    ld a, [de]
    bit 7, a
    jr z, jr_032_6e01

    res 7, a
    ld [de], a
    dec de
    xor a
    ld [de], a
    dec de
    dec de
    dec de
    ld a, [de]
    add $0a
    jr nc, jr_032_6de1

    xor a

jr_032_6de1:
    ld [de], a
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    call Call_032_7108
    ld a, [$cc23]
    or a
    jr nz, jr_032_6e01

    ld a, $03
    ld [de], a
    ld a, $05
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld a, $01
    ld [de], a
    jr jr_032_6e01

jr_032_6e01:
    ret


Call_032_6e02:
    inc de
    inc de
    inc de
    inc de
    inc de
    ld a, [de]
    cp $07
    jr nc, jr_032_6e0f

    ld a, [de]
    inc a
    ld [de], a

jr_032_6e0f:
    ret


Call_032_6e10:
    inc de
    inc de
    inc de
    inc de
    inc de
    ld a, [de]
    cp $15
    jr nc, jr_032_6e1d

    ld a, [de]
    inc a
    ld [de], a

jr_032_6e1d:
    ret


Call_032_6e1e:
    ld a, [sSpriteTotalHappiness]
    cp $5a
    jr nc, jr_032_6e32

    cp $3c
    jr nc, jr_032_6e37

    cp $1e
    jr nc, jr_032_6e3d

    xor a
    ld [$ccc6], a
    ret


jr_032_6e32:
    ld a, l
    ld [$ccc6], a
    ret


jr_032_6e37:
    ld a, $1d
    ld [$ccc6], a
    ret


jr_032_6e3d:
    ld a, $06
    ld [$ccc6], a
    ret


Call_032_6e43:
    ld a, [de]
    cp $00
    ret z

    cp $01
    ret z

    cp $ff
    ret z

    ld a, [$ccc6]
    or a
    jp nz, Jump_032_6e70

jr_032_6e54:
    push de
    inc de
    inc de
    inc de
    inc de
    inc de
    xor a
    ld [de], a
    inc de
    ld a, [de]
    sub $08
    jr nc, jr_032_6e63

    xor a

jr_032_6e63:
    ld [de], a
    dec de
    xor a
    ld [de], a
    inc de
    inc de
    inc de
    inc de
    ld a, $01
    ld [de], a
    pop de
    ret


Jump_032_6e70:
    ld a, [de]
    cp $00
    ret z

    cp $01
    ret z

    call Call_032_6ebd
    or a
    jr z, jr_032_6e54

    ld a, [de]
    cp $02
    ret nz

    push de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    ld a, [de]
    or a
    jr nz, jr_032_6e91

    pop de
    ret


jr_032_6e91:
    pop de
    push de
    inc de
    inc de
    inc de
    inc de
    inc de
    ld a, [de]
    inc a
    ld [de], a
    cp $03
    jr nc, jr_032_6ea1

    pop de
    ret


jr_032_6ea1:
    xor a
    ld [de], a
    inc de
    inc de
    inc de
    inc de
    xor a
    ld [de], a
    pop de
    ret


Call_032_6eab:
    ld a, [$cbe4]
    ld h, a
    ld a, [$cbe5]
    ld l, a
    ret


    ld b, a
    ld a, l
    sub b
    ld l, a
    ld a, h
    sbc $00
    ld h, a
    ret


Call_032_6ebd:
    ld a, [$b93b]
    ld b, a
    ld a, [$b93a]
    ld c, a
    or b
    jr z, jr_032_6ee0

    ld a, c
    dec a
    ld c, a
    jr nc, jr_032_6ed0

    ld a, b
    dec a
    ld b, a

jr_032_6ed0:
    ld a, b
    ld [$b93b], a
    ld a, c
    ld [$b93a], a
    ld a, $01
    ld [$ccc8], a
    ld a, $01
    ret


jr_032_6ee0:
    xor a
    ret


Call_032_6ee2:
    cp $0a
    jr c, jr_032_6ef0

    cp $50
    jr c, jr_032_6ef3

    cp $a0
    jr c, jr_032_6f02

    jr jr_032_6f11

jr_032_6ef0:
    ld a, $00
    ret


jr_032_6ef3:
    ld a, b
    cp $00
    jr nz, jr_032_6ef0

    ld a, [$ccc6]
    or a
    jr z, jr_032_6ef0

    ld a, $01
    jr jr_032_6f1e

jr_032_6f02:
    ld a, b
    cp $00
    jr nz, jr_032_6ef0

    ld a, [$ccc6]
    or a
    jr z, jr_032_6ef0

    ld a, $02
    jr jr_032_6f1e

jr_032_6f11:
    ld a, b
    cp $00
    jr nz, jr_032_6ef0

    ld a, [$ccc6]
    or a
    jr z, jr_032_6ef0

    ld a, $03

jr_032_6f1e:
    rst $00
    daa
    ld l, a
    jr z, @+$71

    jr nc, @+$71

    jr c, jr_032_6f96

    ret


    ld bc, $0096
    call Call_000_1162
    jr jr_032_6f3e

    ld bc, $00fa
    call Call_000_1162
    jr jr_032_6f3e

    ld bc, $015e
    call Call_000_1162

jr_032_6f3e:
    ld a, [$b942]
    cp $c9
    ret nc

    inc a
    ld [$b942], a
    ret


Call_032_6f49:
    push de
    ld a, [de]
    cp $03
    call z, Call_032_6f78
    pop de
    push de
    ld a, [de]
    cp $02
    call z, Call_032_6f96
    pop de
    push de
    ld a, [de]
    cp $01
    call z, Call_032_6fb4
    pop de
    push de
    call Call_032_700e
    pop de
    ld a, [de]
    cp $ff
    jr z, jr_032_6f72

    ld a, [de]
    cp $00
    ret nz

    ld a, $ff
    ld [de], a

jr_032_6f72:
    ld a, $01
    ld [$ccc5], a
    ret


Call_032_6f78:
    inc de
    inc de
    ld a, [de]
    or a
    jr nz, jr_032_6f95

    ld a, [$b9a5]
    or a
    jr z, jr_032_6f8e

    ld bc, $05dc
    push hl
    call Call_000_1162
    pop hl
    jr jr_032_6f95

jr_032_6f8e:
    ld a, $84
    ld [$b9a5], a
    jr jr_032_6f95

jr_032_6f95:
    ret


Call_032_6f96:
jr_032_6f96:
    inc de
    inc de
    ld a, [de]
    or a
    jr nz, jr_032_6fb3

    ld a, [$b9a5]
    or a
    jr z, jr_032_6fac

    ld bc, $0064
    push hl
    call Call_000_1162
    pop hl
    jr jr_032_6fb3

jr_032_6fac:
    ld a, $04
    ld [$b9a5], a
    jr jr_032_6fb3

jr_032_6fb3:
    ret


Call_032_6fb4:
    inc de
    ld a, [de]
    cp $07
    jr c, jr_032_6fc1

    xor a
    ld [de], a
    dec de
    ld a, $02
    ld [de], a
    ret


jr_032_6fc1:
    ld a, [de]
    inc a
    ld [de], a
    ret


Call_032_6fc5:
    ld a, [$b9a5]
    or a
    ret z

    dec a
    ld [$b9a5], a
    or a
    jr z, jr_032_6fd4

    cp $80
    ret nz

jr_032_6fd4:
    ld a, [$ccc5]
    or a
    jr nz, jr_032_6fe2

    ld a, [$b9a5]
    inc a
    ld [$b9a5], a
    ret


jr_032_6fe2:
    ld bc, $b9a7
    ld a, [bc]
    cp $ff
    jr z, jr_032_6ffd

    ld bc, $b9b3
    ld a, [bc]
    cp $ff
    jr z, jr_032_6ffd

    ld bc, $b9bf
    ld a, [bc]
    cp $ff
    jr z, jr_032_6ffd

    ld bc, $b9cb

jr_032_6ffd:
    ld a, $01
    ld [bc], a
    ld a, $01
    add c
    ld c, a
    ld a, $00
    adc b
    ld b, a
    xor a
    ld [bc], a
    ld [$b9a5], a
    ret


Call_032_700e:
    ld a, [de]
    cp $ff
    ret z

    cp $01
    ret z

    cp $00
    ret z

    ld a, [$ccc6]
    or a
    jp z, Jump_032_7026

    call Call_032_6ebd
    or a
    jp nz, Jump_032_7030

Jump_032_7026:
    push de
    inc de
    xor a
    ld [de], a
    inc de
    ld a, $01
    ld [de], a
    pop de
    ret


Jump_032_7030:
    push de
    inc de
    inc de
    ld a, [de]
    or a
    jr nz, jr_032_7039

    pop de
    ret


jr_032_7039:
    pop de
    push de
    inc de
    ld a, [de]
    cp $03
    jr nc, jr_032_7046

    ld a, [de]
    inc a
    ld [de], a
    pop de
    ret


jr_032_7046:
    xor a
    ld [de], a
    inc de
    xor a
    ld [de], a
    pop de
    ret


Call_032_704d:
    ld a, [$b9a7]
    cp $ff
    jr z, jr_032_706a

    cp $00
    jr z, jr_032_706a

    cp $01
    jr z, jr_032_706a

    ld a, [$b9a9]
    or a
    jr nz, jr_032_706a

    ld a, [$b9a4]
    set 0, a
    ld [$b9a4], a

jr_032_706a:
    ld a, [$b9b3]
    cp $ff
    jr z, jr_032_7087

    cp $00
    jr z, jr_032_7087

    cp $01
    jr z, jr_032_7087

    ld a, [$b9b5]
    or a
    jr nz, jr_032_7087

    ld a, [$b9a4]
    set 1, a
    ld [$b9a4], a

jr_032_7087:
    ld a, [$b9bf]
    cp $ff
    jr z, jr_032_70a4

    cp $00
    jr z, jr_032_70a4

    cp $01
    jr z, jr_032_70a4

    ld a, [$b9c1]
    or a
    jr nz, jr_032_70a4

    ld a, [$b9a4]
    set 2, a
    ld [$b9a4], a

jr_032_70a4:
    ld a, [$b9cb]
    cp $ff
    jr z, jr_032_70d2

    cp $00
    jr z, jr_032_70d2

    cp $01
    jr z, jr_032_70d2

    ld a, [$b9cd]
    or a
    jr nz, jr_032_70d2

    ld a, [$b9cb]
    cp $03
    jr z, jr_032_70ca

    ld a, [$b9a4]
    set 3, a
    ld [$b9a4], a
    jr jr_032_70d2

jr_032_70ca:
    ld a, [$b9a4]
    set 4, a
    ld [$b9a4], a

jr_032_70d2:
    ret


Call_032_70d3:
    ld a, [$b949]
    cp $ff
    ret nz

    ld a, [$b95f]
    cp $ff
    ret nz

    ld a, [$b975]
    cp $ff
    ret nz

    ld a, [$b98b]
    cp $ff
    ret nz

    ld a, [$b9a7]
    cp $ff
    ret nz

    ld a, [$b9b3]
    cp $ff
    ret nz

    ld a, [$b9bf]
    cp $ff
    ret nz

    ld a, [$b9cb]
    cp $ff
    ret nz

    xor a
    ld [$ccc7], a
    ret


Call_032_7108:
    ld a, [$b949]
    cp $03
    jr z, jr_032_7129

    ld a, [$b95f]
    cp $03
    jr z, jr_032_7129

    ld a, [$b975]
    cp $03
    jr z, jr_032_7129

    ld a, [$b98b]
    cp $03
    jr z, jr_032_7129

    xor a
    ld [$cc23], a
    ret


jr_032_7129:
    ld a, $01
    ld [$cc23], a
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


jr_032_738b:
    ld hl, $c800
    inc hl
    inc hl
    cp [hl]
    ret z

    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    inc hl
    xor a
    ld [hl], a
    ret


    ld a, $00
    jr jr_032_738b

    ld a, $01
    jr jr_032_738b

    ld a, $02
    jr jr_032_738b

    ld a, $03
    jr jr_032_738b

    ld a, $04
    jr jr_032_738b

    ld a, $05
    jr jr_032_738b

    ld a, $06
    jr jr_032_738b

    ld a, $07
    jr jr_032_738b

jr_032_73ba:
    ld a, $08
    jr jr_032_738b

    ld a, $09
    jr jr_032_738b

    ld a, $0a
    jr jr_032_738b

    ld a, $0b
    jr jr_032_738b

    ld a, $0c
    jr jr_032_738b

    ld a, $0d
    jr jr_032_738b

    ld a, $0e
    jr jr_032_738b

    ld a, $0f
    jr jr_032_738b

    ld a, $10
    jr jr_032_738b

    ld a, $11
    jr jr_032_738b

Jump_032_73e2:
    inc hl
    inc hl
    cp [hl]
    ret z

    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    inc hl
    xor a
    ld [hl], a
    ret


    nop
    ret z

    jr nz, jr_032_73ba

    ld b, b
    ret z

    ld h, b
    ret z

    ld a, [$cb62]
    add a
    ld hl, $73ee
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld b, a
    ld h, [hl]
    ld l, b
    push hl
    ld a, $0d
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    add $00
    pop hl
    jp Jump_032_73e2


    ret


    ld a, [$cb62]
    add a
    ld hl, $73ee
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld b, a
    ld h, [hl]
    ld l, b
    push hl
    ld a, $0d
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    add $04
    pop hl
    jp Jump_032_73e2


    ret


    ld a, [$cb62]
    add a
    ld hl, $73ee
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld b, a
    ld h, [hl]
    ld l, b
    push hl
    ld a, $0d
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    add $08
    pop hl
    jp Jump_032_73e2


    ret


    ld a, [$cb62]
    add a
    ld hl, $73ee
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld b, a
    ld h, [hl]
    ld l, b
    push hl
    ld a, $0d
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    add $0c
    pop hl
    jp Jump_032_73e2


    ret


    ld a, [$cb62]
    add a
    ld hl, $73ee
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld b, a
    ld h, [hl]
    ld l, b
    push hl
    ld a, $0d
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    add $10
    pop hl
    jp Jump_032_73e2


    ret


    ld a, [$cb62]
    add a
    ld hl, $73ee
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld b, a
    ld h, [hl]
    ld l, b
    push hl
    ld a, $0d
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    add $14
    pop hl
    jp Jump_032_73e2


    ret


    ld a, [$cb62]
    add a
    ld hl, $73ee
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld b, a
    ld h, [hl]
    ld l, b
    push hl
    ld a, $0d
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    add $20
    pop hl
    jp Jump_032_73e2


    ret


    ld a, [$cb62]
    add a
    ld hl, $73ee
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld b, a
    ld h, [hl]
    ld l, b
    push hl
    ld a, $0d
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    add $24
    pop hl
    jp Jump_032_73e2


    ret


    ld a, [$cb62]
    add a
    ld hl, $73ee
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld b, a
    ld h, [hl]
    ld l, b
    push hl
    ld a, $0d
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    add $28
    pop hl
    jp Jump_032_73e2


    ret


    ld a, [$cb62]
    add a
    ld hl, $73ee
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld b, a
    ld h, [hl]
    ld l, b
    push hl
    ld a, $0d
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    add $2c
    pop hl
    jp Jump_032_73e2


    ret


    ld a, [$cb62]
    add a
    ld hl, $73ee
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld b, a
    ld h, [hl]
    ld l, b
    push hl
    ld a, $0d
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    add $30
    pop hl
    jp Jump_032_73e2


    ret


    ld a, [$cb62]
    add a
    ld hl, $73ee
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld b, a
    ld h, [hl]
    ld l, b
    push hl
    ld a, $0d
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    add $34
    pop hl
    jp Jump_032_73e2


    ret


    ld a, [$cb62]
    add a
    ld hl, $73ee
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld b, a
    ld h, [hl]
    ld l, b
    push hl
    ld a, $0d
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    add $40
    pop hl
    jp Jump_032_73e2


    ret


    ld a, [$cb62]
    add a
    ld hl, $73ee
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld b, a
    ld h, [hl]
    ld l, b
    push hl
    ld a, $0d
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    add $44
    pop hl
    jp Jump_032_73e2


    ret


    ld a, [$cb62]
    add a
    ld hl, $73ee
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld b, a
    ld h, [hl]
    ld l, b
    push hl
    ld a, $0d
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    add $48
    pop hl
    jp Jump_032_73e2


    ret


    ld a, [$cb62]
    add a
    ld hl, $73ee
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld b, a
    ld h, [hl]
    ld l, b
    push hl
    ld a, $0d
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    add $4c
    pop hl
    jp Jump_032_73e2


    ret


    ld a, [$cb62]
    add a
    ld hl, $73ee
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld b, a
    ld h, [hl]
    ld l, b
    push hl
    ld a, $0d
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    add $50
    pop hl
    jp Jump_032_73e2


    ret


    ld a, [$cb62]
    add a
    ld hl, $73ee
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld b, a
    ld h, [hl]
    ld l, b
    push hl
    ld a, $0d
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    add $54
    pop hl
    jp Jump_032_73e2


    ret


    ld a, [$cb62]
    add a
    ld hl, $73ee
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld b, a
    ld h, [hl]
    ld l, b
    push hl
    ld a, $0d
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    add $58
    pop hl
    jp Jump_032_73e2


    ret


    ld a, [$cb62]
    add a
    ld hl, $73ee
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld b, a
    ld h, [hl]
    ld l, b
    push hl
    ld a, $0d
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    add $5c
    pop hl
    jp Jump_032_73e2


    ret


    ld a, [$cb62]
    add a
    ld hl, $73ee
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld b, a
    ld h, [hl]
    ld l, b
    push hl
    ld a, $0d
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    add $60
    pop hl
    jp Jump_032_73e2


    ret


    ld a, [$cb62]
    add a
    ld hl, $73ee
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld b, a
    ld h, [hl]
    ld l, b
    push hl
    ld a, $0d
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    add $64
    pop hl
    jp Jump_032_73e2


    ret


    ld a, [$cb62]
    add a
    ld hl, $73ee
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld b, a
    ld h, [hl]
    ld l, b
    push hl
    ld a, $0d
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    add $68
    pop hl
    jp Jump_032_73e2


    ret


    ld a, [$cb62]
    add a
    ld hl, $73ee
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld b, a
    ld h, [hl]
    ld l, b
    push hl
    ld a, $0d
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    add $6c
    pop hl
    jp Jump_032_73e2


    ret


Jump_032_7726:
    inc hl
    inc hl
    cp [hl]
    ret z

    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    inc hl
    xor a
    ld [hl], a
    ret


    add b
    ret z

    and b
    ret z

    ret nz

    ret z

    ldh [$ffc8], a
    ld a, [$cc1f]
    add a
    ld hl, $7732
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld b, a
    ld h, [hl]
    ld l, b
    push hl
    ld a, $0d
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    add $00
    pop hl
    jp Jump_032_7726


    ret


    ld a, [$cc1f]
    add a
    ld hl, $7732
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld b, a
    ld h, [hl]
    ld l, b
    push hl
    ld a, $0d
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    add $04
    pop hl
    jp Jump_032_7726


    ret


    ld a, [$cc1f]
    add a
    ld hl, $7732
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld b, a
    ld h, [hl]
    ld l, b
    push hl
    ld a, $0d
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    add $08
    pop hl
    jp Jump_032_7726


    ret


    ld a, [$cc1f]
    add a
    ld hl, $7732
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld b, a
    ld h, [hl]
    ld l, b
    push hl
    ld a, $0d
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    add $0c
    pop hl
    jp Jump_032_7726


    ret


    ld a, [$cc1f]
    add a
    ld hl, $7732
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld b, a
    ld h, [hl]
    ld l, b
    push hl
    ld a, $0d
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    add $10
    pop hl
    jp Jump_032_7726


    ret


    ld a, [$cc1f]
    add a
    ld hl, $7732
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld b, a
    ld h, [hl]
    ld l, b
    push hl
    ld a, $0d
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    add $14
    pop hl
    jp Jump_032_7726


    ret


    ld a, [$cc1f]
    add a
    ld hl, $7732
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld b, a
    ld h, [hl]
    ld l, b
    push hl
    ld a, $0d
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    add $18
    pop hl
    jp Jump_032_7726


    ret


    ld a, $01
    ld [$c640], a
    ld a, $02
    ld [$c641], a
    ld a, $76
    ld [$c642], a
    ld a, $ff
    ld [$c643], a
    ld a, $26
    ld [$c651], a
    xor a
    ld [$c64e], a
    ld [$c645], a
    ld [$c644], a
    ld a, $50
    ld [$c64a], a
    ld [$c64b], a
    xor a
    ld [$c650], a
    ret


    ld a, $01
    ld [$c640], a
    ld a, $02
    ld [$c641], a
    ld a, $77
    ld [$c642], a
    ld a, $ff
    ld [$c643], a
    ld a, $43
    ld [$c651], a
    xor a
    ld [$c64e], a
    ld [$c645], a
    ld [$c644], a
    ld a, $50
    ld [$c64a], a
    ld [$c64b], a
    xor a
    ld [$c650], a
    ret


    ld a, $01
    ld [$c640], a
    ld a, $02
    ld [$c641], a
    ld a, $78
    ld [$c642], a
    ld a, $ff
    ld [$c643], a
    ld a, $43
    ld [$c651], a
    xor a
    ld [$c64e], a
    ld [$c645], a
    ld [$c644], a
    ld a, $50
    ld [$c64a], a
    ld [$c64b], a
    xor a
    ld [$c650], a
    ret


    ld hl, $c820
    ld a, $0d
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    add $00
    ld hl, $c820
    jr jr_032_78f1

    ld hl, $c820
    ld a, $0d
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    add $04
    ld hl, $c820
    jr jr_032_78f1

    ld hl, $c820
    ld a, $08
    jr jr_032_78f1

    ld hl, $c820
    ld a, $0a
    jr jr_032_78f1

    ld hl, $c820
    ld a, $09

jr_032_78f1:
    inc hl
    inc hl
    cp [hl]
    ret z

    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    inc hl
    xor a
    ld [hl], a
    ret


    ld a, [$cb5b]
    ld b, a
    ld a, [$c80b]
    add b
    ld [$c80b], a
    ld a, [$cc98]
    or a
    ret z

    cp $03
    jr nz, jr_032_791f

    ld hl, $c80b
    inc [hl]
    ld a, [hl]
    cp $30
    ret c

    ld a, $04
    ld [$cc98], a
    ret


jr_032_791f:
    ld a, [$cc98]
    cp $04
    jr nz, jr_032_7927

    ret


jr_032_7927:
    ld a, [$cc98]
    cp $05
    jr nz, jr_032_793a

    ld a, [$cb56]
    cp $00
    ret nz

    ld a, $06
    ld [$cc98], a
    ret


jr_032_793a:
    ld a, [$cc98]
    cp $06
    ret nz

    ld a, [sSpriteEventFlags]
    set 5, a
    ld [sSpriteEventFlags], a
    ld hl, $c80b
    dec [hl]
    ld a, [hl]
    cp $00
    ret nz

    xor a
    ld [$cc98], a
    ld [$c800], a
    ld [$c80e], a
    ret


    ld a, [wPlayerSpriteID]
    cp $88
    jp z, Jump_032_7a29

    ld a, [$c630]
    or a
    jp nz, Jump_032_7a1d

    ld a, [$cb80]
    or a
    jp nz, Jump_032_7a28

    ld a, [wPlayerFacingDirection]
    cp $00
    jr z, jr_032_7988

    cp $01
    jr z, jr_032_79a2

    cp $02
    jr z, jr_032_79bc

    ld hl, $c62f
    ld a, $20
    ld [hl], a
    jr jr_032_79d6

jr_032_7988:
    ld hl, $c62f
    ld a, [hl]
    cp $1a
    jr nc, jr_032_79d6

    inc [hl]
    ld a, [$c60a]
    sub $00
    ld [$c62a], a
    ld a, [$c60b]
    add $08
    ld [$c62b], a
    ret


jr_032_79a2:
    ld hl, $c62f
    ld a, [hl]
    cp $1a
    jr nc, jr_032_79d6

    inc [hl]
    ld a, [$c60a]
    sub $10
    ld [$c62a], a
    ld a, [$c60b]
    sub $08
    ld [$c62b], a
    ret


jr_032_79bc:
    ld hl, $c62f
    ld a, [hl]
    cp $1a
    jr nc, jr_032_79d6

    inc [hl]
    ld a, [$c60a]
    add $10
    ld [$c62a], a
    ld a, [$c60b]
    sub $08
    ld [$c62b], a
    ret


jr_032_79d6:
    ld a, [$c60a]
    sub $01
    ld [$c62a], a
    ld a, [$c90d]
    cp $00
    jr z, jr_032_79f9

    cp $02
    jr c, jr_032_7a02

    cp $09
    jr c, jr_032_7a0b

    cp $14
    jr c, jr_032_7a14

    cp $1b
    jr c, jr_032_7a0b

    cp $1e
    jr c, jr_032_7a02

jr_032_79f9:
    ld a, [$c60b]
    sub $1a
    ld [$c62b], a
    ret


jr_032_7a02:
    ld a, [$c60b]
    sub $1e
    ld [$c62b], a
    ret


jr_032_7a0b:
    ld a, [$c60b]
    sub $24
    ld [$c62b], a
    ret


jr_032_7a14:
    ld a, [$c60b]
    sub $2a
    ld [$c62b], a
    ret


Jump_032_7a1d:
    ld a, [wInputFreezeTimer]
    cp $01
    ret nz

    xor a
    ld [$c620], a
    ret


Jump_032_7a28:
    ret


Jump_032_7a29:
    ld a, [wPlayerAnimationIndex]
    cp $01
    jr z, jr_032_7a38

    or a
    jr nz, jr_032_7a49

    xor a
    ld [$c620], a
    ret


jr_032_7a38:
    ld a, [$c60a]
    add $18
    ld [$c62a], a
    ld a, [$c60b]
    sub $10
    ld [$c62b], a
    ret


jr_032_7a49:
    ld a, [$c60a]
    sub $10
    ld [$c62a], a
    ld a, [$c60b]
    sub $08
    ld [$c62b], a
    ld a, [$cc73]
    cp $01
    ret z

    ld a, [$c60a]
    sub $18
    ld [$c62a], a
    ret


    nop
    ld [$00ff], sp
    nop
    rrca
    ld [$0407], sp
    inc bc
    ld [bc], a
    or $22
    nop
    nop
    inc bc
    nop
    ld bc, $10f0
    ldh [rNR10], a
    rst $38
    ldh a, [rP1]
    ld hl, sp+$08
    ld hl, sp+$08
    ldh a, [$ff88]
    db $fd
    ld a, b
    nop
    ld [bc], a
    ccf
    jr nz, jr_032_7aad

    ld de, $0006
    rst $38
    ld c, $0a
    ld c, $0a
    inc c
    nop
    inc e
    inc d
    cp $00
    ld bc, $1f00
    nop
    rra
    ld d, $1b
    ld [de], a
    cp $20
    nop
    ld a, [bc]
    inc sp
    ld [hl+], a
    nop
    nop
    db $e3

jr_032_7aad:
    ld [bc], a
    ld [hl], a
    db $e3
    nop
    ldh [rNR52], a
    nop
    nop
    nop
    rst $38
    jr nz, jr_032_7ab9

jr_032_7ab9:
    ei
    rrca
    ld [$0020], sp
    nop
    rrca
    nop
    rra
    db $10
    rst $38
    nop
    nop
    cp $00
    cp $02
    pop bc
    ld bc, $c3ff
    ld b, d
    add e
    nop
    inc bc
    add b
    add e
    add b
    ccf
    nop
    nop
    cpl
    jr nc, @-$4a

    call z, Call_000_0640
    ld b, b
    inc bc
    rst $28
    ldh a, [rNR10]
    add sp, $18
    ld bc, $7807
    ld c, b
    inc a
    cp a
    inc h
    inc c
    ld [de], a
    ld [$0804], sp
    ld [bc], a
    add hl, bc
    rst $38
    rst $30
    add b
    ld a, a
    ld b, b
    ld b, b
    rlca
    ld bc, $001e
    ld a, $fb
    jr nz, jr_032_7b1f

    nop
    ld b, $c7
    ld b, b
    add e
    nop
    ld bc, $26fe
    nop
    nop
    nop
    ldh [rNR41], a
    ldh [rNR41], a
    pop bc
    ld a, a
    ld bc, $40c1
    add c
    nop
    inc bc
    add d
    ld bc, $f105
    ld hl, sp+$2a

jr_032_7b1f:
    nop
    ld bc, $200b
    nop
    nop
    ld a, a
    ld b, b
    ld a, a
    rst $28
    ld b, b
    rst $38
    add b
    rst $38
    nop
    rlca
    ld sp, hl
    ld a, [bc]
    ldh a, [rIE]
    ld bc, $01e1
    ldh [rNR42], a
    add c
    ld b, b
    jp Jump_032_42d7


    add c
    ld [bc], a
    ld [bc], a
    ld a, [bc]
    ld b, $40
    inc bc
    ld [$fdf0], sp
    nop
    jr nz, jr_032_7b4a

jr_032_7b4a:
    db $10
    inc bc
    ld bc, $0507
    ld b, $f7
    nop
    ld b, $02
    ldh [$ff0d], a
    ld [$000c], sp
    inc c
    rst $38
    inc b
    ld a, h
    inc b
    jr c, jr_032_7ba4

    ld a, h
    ld b, b
    ld a, $ef
    ld [bc], a
    inc e
    ld [hl+], a
    ld a, $40
    ld [$110e], sp
    inc e
    rst $38
    inc d
    jr jr_032_7b71

jr_032_7b71:
    jr c, jr_032_7b9b

    jr c, @+$2a

    jr nc, @+$01

    nop
    ld [hl], b
    ld d, b
    ld [hl], b
    ld d, b
    ld h, c
    ld bc, $ff13
    ld [hl+], a
    inc sp
    ld [de], a
    ld h, e
    ld b, d
    ld b, e
    ld [hl+], a
    ld a, a
    sbc l
    ld a, $e0
    dec b
    nop
    jp $a742


    rrca
    ld b, e
    db $10
    rra
    rst $38
    db $10
    rrca
    db $10
    ld e, $01
    ccf

jr_032_7b9b:
    ld hl, $ff1e
    jr nz, jr_032_7bde

    nop
    inc a
    ld [bc], a
    ld a, [hl]

jr_032_7ba4:
    ld b, d
    inc bc
    cp e
    ld [bc], a
    ld bc, $0b51
    nop
    ld [$3108], sp
    nop
    jr @+$01

    db $10
    db $fc
    inc b
    db $fc
    ld [bc], a
    cp $81
    ld e, a
    rst $20
    ld h, b
    cpl
    jr nc, @-$7b

    rla
    ld hl, $8018
    add b
    ret nz

    ld sp, hl
    ld b, b
    ld h, b
    dec c
    and b
    rla
    pop hl
    ld de, $023e
    ld a, h
    rst $38
    ld b, b
    inc a
    ld b, b
    ld a, h
    inc b
    db $fc
    add h
    ld a, b
    cp c
    add b
    ld h, c
    ld a, [bc]
    and c

jr_032_7bde:
    add hl, de
    ld bc, $0202
    ld h, b
    ld a, [bc]
    ld [bc], a
    sbc e
    inc b
    inc b

jr_032_7be8:
    ld h, b
    ld a, [bc]
    add e
    add b
    ld bc, $e00b
    jr jr_032_7bf3

    ei
    inc e

jr_032_7bf3:
    db $10
    pop bc
    add hl, bc
    ld sp, hl
    add c
    ld a, c
    ld bc, $6f7b
    ld [bc], a
    ld a, e
    nop
    ld a, a
    ld hl, $0100
    ld a, [hl]
    pop hl
    rla
    rst $38
    jr nz, jr_032_7be8

    ld b, b
    sbc a
    ld bc, $a1bf
    ld a, $fb
    nop
    ld a, $00
    ld [$8083], sp
    add a
    add h

jr_032_7c18:
    inc bc
    db $d3
    inc b
    rlca
    ld h, c
    ld e, $20
    add hl, de
    rra
    add c
    rla
    jr nz, @+$01

    rst $38
    nop
    rst $18
    add hl, de
    add $00
    add d
    nop
    add d
    ld a, e
    ld [bc], a
    add b
    jr nz, jr_032_7c50

    jr jr_032_7c35

jr_032_7c35:
    jr @+$0a

    nop
    ld c, $e0
    db $d3
    rla
    jr nz, jr_032_7c59

    jr nz, jr_032_7c4c

    ld [bc], a
    inc e
    db $e3
    ld hl, $a1e0
    jp $02bf


    pop bc
    ld b, d
    rst $00

jr_032_7c4c:
    ld b, h
    add a
    ld h, d
    inc c

jr_032_7c50:
    nop
    rst $38
    nop
    add e
    ld [bc], a
    add e
    add d
    inc bc
    ld [bc], a

jr_032_7c59:
    ld [bc], a
    ld [hl], c
    inc bc
    ld h, e
    dec c
    ldh [rNR23], a
    pop bc
    rra
    db $10
    cp $02
    and c
    inc e
    xor $e1
    inc h
    inc a
    ld b, b
    ld a, b
    ret nz

    dec bc
    db $fc
    inc b
    ld a, [hl]
    cp $e4
    dec h
    inc c
    inc d
    inc a
    jr nz, jr_032_7c98

    ld [hl-], a
    dec bc
    ld sp, hl
    inc c
    dec b
    inc bc
    and c
    ld h, $07
    inc b
    rst $38
    ldh a, [rPCM34]
    db $fd
    adc a
    db $e3
    daa
    pop hl
    ld de, $10f1
    pop hl
    jr nz, @-$4b

    ld b, c
    pop bc
    push hl
    jr z, jr_032_7c18

    add hl, de

jr_032_7c98:
    ld hl, sp+$08
    ld b, b
    inc h
    ret nz

    cp $e3
    add hl, hl
    inc e
    db $10
    inc a
    inc h
    ld hl, sp-$38
    ldh a, [$ffdb]
    db $10
    ld b, b
    inc b
    ld bc, $2038
    and b
    jr jr_032_7cf1

    ld [hl], b
    ei
    db $10
    ld h, b
    db $e4
    dec hl
    ld a, [hl]
    ld [bc], a
    ld a, h
    nop
    ld a, h
    rst $00
    inc b
    ld a, b
    nop
    and c
    ld a, [hl+]
    pop hl
    inc l
    pop hl
    nop
    db $fc
    add h
    ld [hl], a
    ld hl, sp-$80
    ld hl, sp+$04
    dec c
    rrca
    db $10
    rra
    ld hl, $c72c
    jr nz, jr_032_7d55

    ld b, b
    ld c, c
    cpl
    ld b, b
    ld a, [hl+]
    inc b
    dec c
    nop
    nop
    db $fd
    db $fc
    ld hl, $8400
    ld a, b
    ld h, b
    jr c, @+$22

    jr @+$01

    db $10
    ld [$3c00], sp
    nop
    ld a, d
    nop

jr_032_7cf1:
    and l
    ccf
    nop
    cp l
    nop
    xor c
    nop
    ld h, [hl]
    ret nz

    nop
    ldh [$ff2b], a
    rst $38
    ld b, $fc
    dec c
    di
    ld [bc], a
    di
    ld [bc], a
    pop af
    rst $38
    ld bc, $08f8
    db $fc

jr_032_7d0b:
    ld b, $ff
    ld bc, $6f07
    nop
    rst $20
    jr nz, jr_032_7d0b

    ld b, d
    ld l, $7f
    ld b, b
    ret nz

    ld e, $bc
    and c
    ld a, [bc]
    ld h, $00
    adc $40
    daa
    ld bc, $0103
    cp $ff
    ld [bc], a
    cp $02
    rst $38
    nop
    ld l, [hl]
    ld b, d
    inc b
    ld sp, hl
    ld b, $03
    ld [bc], a
    pop hl
    add hl, de
    rst $38
    nop
    ld [hl], c
    db $10
    ld h, a
    db $dd
    inc hl
    add hl, bc
    inc bc
    adc h
    nop
    call z, $03e7
    ld bc, $f2fe
    and b
    scf
    xor $0a
    dec b
    and c
    inc [hl]
    nop
    nop
    adc a
    ld [$8fff], sp
    db $10
    adc a

jr_032_7d55:
    sub b
    sbc a
    sub d
    ld bc, rJOYP
    dec e
    ld [bc], a
    ccf
    ld [bc], a
    rra
    nop
    sbc a
    add b
    dec sp
    rst $18
    ld b, b
    ld h, e
    rlca
    add hl, de
    nop
    sbc c
    ldh [$ff2f], a
    nop
    ld [hl], $fc
    ld b, b
    ld [hl], $61
    scf
    sbc c
    nop
    call nc, $2e00
    nop
    ld e, a
    db $e4
    nop
    ld [$ee00], a
    ld h, [hl]
    add hl, bc
    di
    ld a, [hl+]
    nop
    ld [hl], a
    ldh a, [rP1]
    rst $20
    jr nz, jr_032_7d8b

jr_032_7d8b:
    rst $38
    nop
    and $24
    nop
    cp c
    ld h, a
    xor $40
    pop hl
    dec sp
    inc e
    nop
    ld l, c
    nop
    dec d
    ld a, c
    ld a, d
    ld h, b
    nop
    inc e
    ldh [rWave_c], a
    rst $28
    nop
    rst $28
    ld [$3e21], sp
    cp $a3
    ld c, $87
    add c
    add $00
    add $00
    adc [hl]
    rst $30
    adc b
    rra
    ld de, $0fa3
    ld l, a
    ld [$014f], sp
    cp a
    ld a, $20
    ld a, d
    ret nz

    ld b, $04
    and e
    db $10
    inc [hl]
    rst $38
    db $10
    inc a
    inc c
    ld a, c
    ld b, c
    ld a, c
    ld bc, $7a7c
    ld b, l
    ld de, $210a
    nop
    rst $28
    dec hl
    pop af
    sub b
    and e
    ld [de], a
    rst $38
    call $dd01
    ld d, h
    sbc c
    nop
    sbc c
    add hl, bc
    db $fd
    add $04
    inc bc
    rst $20
    dec b
    di
    ld [de], a
    ld sp, hl
    ld [$5e4f], sp
    add d
    pop hl
    ld h, c
    add a
    db $10
    ld hl, $f843
    add h
    dec d
    ret


    ccf
    nop
    ld b, a
    pop bc
    inc a
    ccf
    ld h, b
    dec hl
    and c
    ld b, l
    sbc e
    ld [bc], a
    ld a, a
    cp e
    xor b
    inc sp
    nop
    ld [hl-], a
    inc de
    adc l
    and h
    rla
    rst $38
    call z, $cc08
    inc b
    ret


    ld b, b
    sbc c
    db $10
    ld [hl], c
    sbc h
    adc d
    inc de
    pop hl
    ld d, $a7
    add hl, de
    ld [hl], b
    nop
    ld [hl-], a
    jr nz, jr_032_7e27

jr_032_7e27:
    push de
    ldh a, [c]
    jr nz, jr_032_7e2b

jr_032_7e2b:
    ld [hl-], a
    ldh [c], a
    ld c, c
    ldh a, [$ffc0]
    dec e
    ld [hl], e
    nop
    ld e, a
    ld [hl], c
    nop
    ld l, h
    nop
    ld h, c
    ld b, h
    ld d, b
    ret nz

    and $21
    cp $e1
    ld c, e
    db $e3
    nop
    ret


    nop
    pop bc
    nop
    rst $08
    cp d
    jr nz, jr_032_7e4b

jr_032_7e4b:
    pop hl
    inc b
    inc d
    jp $9300


    ld [hl+], a
    nop
    jp Jump_032_622a


    ld bc, $00cf
    ld bc, $22c9
    nop
    jp $4ee0


    and e
    ld bc, $c77d
    nop
    inc bc
    sbc a
    nop
    cp a
    nop
    scf
    ld [hl+], a
    nop
    ld d, l
    rla
    jr nz, jr_032_7e71

jr_032_7e71:
    daa
    jr nz, jr_032_7e74

jr_032_7e74:
    scf
    ld [bc], a
    inc c
    ldh a, [rSC]
    ld [$4374], sp
    nop
    inc hl
    add hl, de
    ld h, b
    nop
    ld [$0073], sp
    ld [hl], d
    ld b, b
    ld d, $e0
    dec c
    rlca
    ld b, d
    ld d, $e4
    ld b, $41
    rlca
    ld bc, $e71b
    nop
    add [hl]
    db $eb
    nop
    ld h, $22
    nop
    add a
    ldh [c], a
    ld d, l
    rra
    nop
    ld c, a
    ld [bc], a
    inc h
    nop
    rra
    rra
    ld e, l
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
    inc b
    rra
    nop
    rra
    nop
    nop
    nop
    inc b
    dec c
    add hl, sp
    rra
    nop
    add hl, sp
    ld l, l
    jr jr_032_7ef3

jr_032_7ef3:
    rst $28
    ld bc, $020f
    rrca
    ld [bc], a
    ldh a, [c]
    ld [$4002], sp
    ld e, $00
    dec bc
    inc b
    nop
    ld bc, $0302
    rst $38
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    cp a
    inc c
    dec c
    ld c, $0f
    jr nc, jr_032_7f46

    dec bc
    ld b, $10
    rst $38
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr jr_032_7fa1

    add hl, de
    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    dec c
    inc b
    rst $38
    jr nz, @+$23

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    rst $38
    jr z, jr_032_7f60

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    pop bc
    ld d, b
    inc c
    ld b, $0f
    ld [$0c0f], sp
    rrca

jr_032_7f46:
    inc c
    add hl, bc
    ld [bc], a
    ld [hl-], a
    inc sp
    rst $38
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_032_7f8b

    ld a, [hl-]
    dec sp
    ei
    inc a
    dec a
    rrca
    ld [bc], a
    add hl, sp
    add hl, sp
    ld b, d
    ld b, e
    ld b, h
    rst $38
    ld b, l

jr_032_7f60:
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld bc, $0f4d
    ld [bc], a
    rra
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
    ld hl, sp+$0f
    ld [bc], a
    rrca
    ld [bc], a
    dec c
    ld [bc], a
    ld a, $3f
    ld b, c
    ld c, [hl]
    ld c, a
    rst $38
    ld d, c
    ld d, d
    add hl, sp
    ld d, e
    ld d, h
    add hl, sp
    ld d, l

jr_032_7f8b:
    ld d, [hl]
    rra
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    rrca
    inc b
    rrca
    inc b
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

jr_032_7fa1:
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
    ld d, h
    ld e, $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
