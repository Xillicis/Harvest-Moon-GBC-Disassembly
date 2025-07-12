; Disassembly of "harvest_moon.gbc"
; This file was created with:
; mgbdis v2.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $00b", ROMX[$4000], BANK[$b]

    db $0B, $00, $08, $FF, $20, $20, $8C, $8C, $00, $00, $66, $66, $FF, $08, $08, $05
    db $05, $C0, $C0, $15, $15, $FF, $BD, $BD, $FA, $FA, $7F, $7F, $D7, $D7, $FF, $ED
    db $ED, $7F, $7F, $DA, $DA, $7F, $7F, $FF, $F7, $F7, $AD, $AD, $FF, $F3, $77, $6B
    db $FF, $FE, $E6, $F7, $F7, $BE, $BE, $F7, $F7, $FF, $00, $00, $0F, $08, $3A, $27
    db $2F, $1F, $FF, $7F, $5F, $5F, $3F, $FF, $BF, $BF, $7F, $FF, $00, $00, $C0, $C0
    db $F0, $30, $B8, $D8, $FF, $DE, $E6, $F7, $FB, $FB, $FD, $FB, $FD, $FF, $0C, $0C
    db $3F, $23, $7F, $5C, $D6, $EF, $FF, $BB, $C6, $7F, $B8, $3A, $47, $AF, $DF, $FF, $B0, $B0, $7C, $44, $FE, $BA, $CC, $74, $FF, $BF, $C1, $FF, $86, $BF, $79, $EF, $1D, $FF, $7F, $80, $FA, $7A, $80, $7F, $80, $00, $FF, $80, $1A, $F5, $75, $7A, $85, $C0, $52, $FF, $FE, $01, $41, $40, $01, $FE, $01, $00, $FF, $01, $48, $25, $24, $82, $7D, $01, $D0, $FF, $14, $14, $00, $00, $A1, $A1, $50, $50, $FF, $A2, 

    and d
    ret nc

    ret nc

    or $76
    jp hl


    add hl, hl
    rst $38
    ret nz

    or l
    ld h, b
    sbc [hl]
    ld [hl], b
    ld c, l
    jr c, jr_00b_4107

    rst $38
    jr c, jr_00b_4115

    ld a, h
    ld d, e
    ld a, [hl]
    ld c, b
    ld a, [hl]
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
    jr z, jr_00b_4115

    jr z, jr_00b_4117

    ld d, $19
    ld de, $ff1e
    ld [$0e0f], sp
    rrca
    ld bc, $0001
    nop
    rst $38
    db $fd
    rst $38
    ld a, b
    rst $38
    nop
    rst $38
    add b
    ld a, a
    adc $30
    ld b, $ff
    rst $38
    rst $38
    nop
    ld c, $e0
    nop
    rlca

Jump_00b_4101:
    ld hl, sp-$01
    ld a, b
    add a
    add c
    ld a, a

jr_00b_4107:
    ld e, $fe
    ldh [$ffe0], a
    rst $38
    nop
    nop
    ld a, [bc]

jr_00b_410f:
    or $34
    call z, $3ccc
    ld l, a

jr_00b_4115:
    jr jr_00b_410f

jr_00b_4117:
    ldh a, [$fff0]
    inc bc
    db $10
    rst $30
    rst $30
    and c
    ld c, $ff
    rst $28
    rst $28
    ld a, l
    ld a, l
    rst $30
    rst $30
    cp d
    cp d
    ld a, a
    ld a, a
    ld a, a
    ld b, b
    rst $38
    sub d
    rst $38
    ld [$0420], sp
    sbc a
    ld de, $8cff
    rst $38
    ld hl, $00a0
    ld bc, $0c01
    rst $18
    di
    inc e
    db $e3
    add hl, de
    rst $20
    inc bc
    ld bc, $7fef
    rst $38
    xor a
    ld a, a
    add e
    ld a, a
    ldh [$ff9f], a
    ld a, [hl]
    ld h, c
    rst $38
    rra
    ld e, $03
    inc bc
    nop
    nop
    db $ed
    cp $ff
    pop hl
    cp $c3
    db $fd
    rra
    db $e3
    inc l
    call c, $f8fb
    jr c, @+$03

    ld b, $fe
    cp c
    ld a, h
    and e
    db $e4
    rst $38
    sbc a
    add hl, sp
    ld c, [hl]
    ld a, e
    inc l
    push af
    bit 7, a
    rst $38
    ld h, l
    rra
    ld c, $ef
    ld [hl], d
    ld [hl], a
    cp c
    rst $18
    rst $38
    cp d
    db $ed
    db $db
    ld a, a
    ret z

    cp [hl]
    ld d, d
    xor $ff
    inc e
    call c, $fbc0
    ld a, e
    ld a, l
    add d
    pop hl
    ei
    ld [hl], a
    rst $38
    nop
    ld a, [bc]
    rst $38
    db $fd
    inc bc
    db $fd
    ld bc, $feff
    ld hl, $a220
    ld e, l
    ld b, c
    ld l, b
    rst $38
    rst $38
    cp $fe
    ld bc, $bfff
    ret nz

    cp a
    add b
    rst $38
    ld a, a
    halt
    ld a, c
    sub h
    sbc e
    inc a
    dec sp
    rlca
    rst $38
    inc b
    jp c, Jump_00b_44db

    ld b, h
    adc c
    adc c
    ld [hl+], a
    rst $38
    ld [hl+], a
    cp a
    ret nz

    ld a, a
    add b
    pop af
    ld c, $ce
    rst $38
    ccf
    ccf
    rst $38
    cpl
    cpl
    jp c, $2dda

    rst $38
    dec l
    inc sp
    db $f4
    sub [hl]
    ld [hl], l
    jp z, Jump_00b_723d

    rst $38
    adc l
    sbc l
    db $e3
    db $fd
    db $fd
    halt
    halt
    and e
    ei
    and e
    rra
    or b
    inc bc
    push af
    push af
    xor d
    xor d
    inc d
    ld a, a
    inc d
    adc b
    adc b
    ld [hl-], a
    ld [hl-], a
    ld [bc], a
    ld [bc], a
    ld b, c
    dec e
    rst $38
    ret nz

    ret nz

    and b
    ld h, b
    ld d, b
    or b
    xor b
    ret c

    rst $38
    call nc, $ecec
    db $f4
    ld [$f6f6], a
    ld a, [$f6ff]
    ld a, [$fafc]
    db $fd
    ei
    di
    db $fd
    ld a, a
    db $e3
    db $fd
    di
    db $fd
    ldh [c], a
    db $fc
    ldh a, [c]
    jr nz, jr_00b_421b

jr_00b_421b:
    rst $38
    ld a, [$eafc]
    db $fc
    ldh [c], a
    db $fc
    db $e4
    ld a, [$c6ff]
    ld a, [$221c]
    inc e
    ld a, a
    ld h, e
    ld a, $ff
    ld e, [hl]
    ccf
    ld a, b
    rlca
    ld b, d
    ccf
    ld c, [hl]
    ccf
    rst $38
    adc $bf
    xor l
    xor l
    ei
    ld a, [$797e]
    rst $38
    db $dd
    jp $d9ed


    dec a
    dec de
    rst $28
    set 7, a
    ld l, a
    ld e, e
    cp a
    and b
    rst $38
    rrca
    rst $38
    rst $28
    rst $38
    rst $30
    rst $20
    rst $30
    rst $28
    rst $18
    rst $28
    db $fd
    rst $28
    rst $38
    ld e, l
    rst $28
    db $fd
    dec b
    rst $38
    ldh a, [rIE]
    rst $30
    rst $38
    rst $28
    rst $20
    xor e
    rst $30
    ei
    rst $30
    cp a
    rst $30
    ld sp, hl
    rst $38
    nop
    ld hl, $2483
    ld bc, $0301
    ld [bc], a
    ld [bc], a
    rst $30
    dec b
    dec b
    dec bc
    ld b, c
    dec h
    dec c
    ld c, $6e
    ld [hl], c
    rst $08
    ld [hl], a
    adc a
    sbc a
    ld a, a
    db $10
    jr @+$22

    jr jr_00b_428b

jr_00b_428b:
    nop
    rrca
    db $fc
    inc bc
    ei
    db $fc
    pop bc
    nop
    dec b
    ld bc, $001f
    rlca
    add hl, hl
    rst $38
    cp [hl]
    and b
    ld hl, $401e
    ccf
    ret nz

    cp a
    rst $38
    ld b, b
    ccf
    jp nz, $61bd

    ld e, $31
    ld c, $ff
    and h
    and h
    ld bc, $ca01
    ld c, d
    db $ed
    ld hl, $52ff
    adc h
    ld h, c
    sbc [hl]
    ld c, c
    or [hl]
    ld d, c
    xor [hl]
    ldh a, [$ff2f]
    inc bc
    rra
    nop
    rra
    nop
    rlca
    cpl
    cp l
    reti


    ld a, $9a
    rst $38
    daa
    db $d3
    ld h, [hl]
    jp c, $d96d

    ccf
    db $db
    rst $38
    ld l, $da
    dec h
    sbc c
    adc $bf
    ld c, [hl]
    cp a
    cp a
    ld c, l
    cp [hl]
    ld [hl+], a
    db $dd
    inc e
    db $e3
    ld h, b
    inc hl
    rst $38
    rst $38
    db $fc
    rst $38
    or l
    sbc e
    push af
    reti


    ld l, l
    ld c, e
    rst $38
    db $ed
    db $db
    rst $20
    db $db
    ld l, $1b
    or $db
    rst $38
    halt
    ld e, e
    db $d3
    rst $20
    di
    rst $28
    ld [hl], a
    rst $28
    rst $38
    or $ef
    or d
    rst $28
    or l
    rst $28
    ld [hl], l
    rst $28
    ei
    or e
    rst $28
    and c
    rrca
    xor d
    rst $30
    adc e
    rst $30
    dec bc
    rst $38
    rst $30
    dec l
    rst $30
    xor [hl]
    rst $30
    xor l
    rst $30
    dec de
    rst $38
    rla
    dec hl
    scf
    ld sp, $332f
    cpl
    ld d, e
    ld a, a
    ld l, a
    ld h, a
    ld e, a
    daa
    ld e, a
    and a
    rst $18
    add l
    ld c, $f8
    rra
    nop
    rrca
    db $10
    rra
    nop
    nop
    nop
    cp b
    and a
    inc l
    rst $38
    inc hl
    ld a, [bc]
    add hl, bc
    and a
    and h
    inc d
    db $10
    adc b
    rst $38
    add b
    inc h
    jr nz, jr_00b_4399

    ld c, h
    and e
    ld e, h
    adc [hl]
    rst $38
    ld [hl], b
    cp d
    ld b, d
    ld h, h
    inc b
    ld [de], a
    ld [bc], a
    dec c
    rra
    dec b
    ld [de], a
    ld [bc], a
    pop af
    ld de, $032f
    rra
    nop
    rra
    nop
    cp $07
    ccf
    dec h
    pop de
    and [hl]
    ld e, d
    ld [hl], a
    adc e
    ld c, $ff
    ldh a, [c]
    add hl, de
    pop af
    rra
    rst $30
    ld a, [de]
    ldh a, [c]
    db $fd
    rst $38
    dec c
    ld l, d
    ld l, d
    or h
    or h
    cp d
    add $39
    rst $38
    rst $38
    push bc
    ld a, a
    cp l
    ld a, a
    ld hl, sp+$06
    add l
    rst $28
    ld a, a
    cp [hl]
    sbc e
    db $f4
    nop
    db $10
    xor $db
    xor $ff
    db $db
    inc h
    dec de
    db $f4
    db $db
    ld h, h

jr_00b_4399:
    ld e, c
    ld [hl], d
    rst $38
    rst $20
    ldh a, [c]
    rst $28
    ld d, h
    rst $28
    ld d, l
    rst $28
    sub b
    rst $38
    rst $28
    sub h
    rst $28
    ld sp, $b0e7
    rst $28
    xor d
    rst $38
    rst $20
    xor c
    rst $30
    jr z, @-$07

    ld c, d
    rst $30
    ld c, b
    rst $38
    rst $30
    dec c
    rst $30
    dec c
    rst $20
    ld [$aff7], sp
    db $fd
    rst $18
    dec h
    nop
    ld h, a
    ld e, a
    ld d, a
    ld l, a
    ld d, c
    ld l, a
    db $f4
    cpl
    rrca
    and e
    rrca
    ei
    jr nz, jr_00b_43d1

jr_00b_43d1:
    di
    rst $38
    ld h, c
    rst $38
    rst $38
    cp h
    add h
    dec h
    add hl, de
    ld d, d
    ld c, h
    xor c
    and [hl]
    rst $38
    dec a
    ld [bc], a
    db $e3
    sbc h
    ld sp, $3f0e
    ld b, b
    rst $38
    and h
    and h
    ld a, c
    ld bc, $7a86
    dec e
    push hl
    rst $38
    ld [hl-], a
    adc $6d
    sub c
    jp nz, $bd3c

    ld b, c
    ei
    rst $30
    rst $10
    nop
    ld b, a
    db $fd
    xor a
    rst $28
    db $fd
    rst $38
    rst $38
    db $fd
    or l
    cp [hl]
    cp [hl]
    rst $28
    db $fd
    ld d, a
    rst $38
    rst $38
    sub $ff
    ld a, a
    rst $38
    jp c, Jump_00b_4aff

    rst $38
    rst $38
    ld l, a
    rst $38
    cp d
    rst $38
    or [hl]
    rst $38
    ld d, h
    xor e
    rst $38
    ld d, l
    xor d
    add d
    ld a, l
    sub c
    ld l, [hl]
    ld d, h
    xor e
    rst $38
    ld b, h
    cp e
    xor c
    ld d, [hl]
    add hl, hl
    sub $c0
    ccf
    ld a, [$44e0]
    ld a, a
    jr nc, jr_00b_4438

    nop
    rst $38

jr_00b_4438:
    ld h, c
    rst $18
    ld b, c
    rst $28
    pop de
    ld d, c
    inc bc
    db $fc
    ldh [rLY], a
    cp $ff
    cp $ff
    rst $38
    nop
    ld a, l
    inc b
    ld a, l
    inc b
    ld c, l
    ld c, h
    rst $38
    cp a
    cp a
    ld a, l
    ld h, c
    db $e3
    db $dd
    pop hl
    sbc $ff
    pop hl
    sbc $7d
    ld h, d
    rst $18
    db $dd
    rst $30
    push af
    rst $38
    ld e, l
    ld b, c
    db $e3
    db $dd
    ld h, c
    ld e, [hl]
    pop hl
    sbc $ff
    ld e, c
    ld b, [hl]
    cp l
    cp d
    ld l, e
    ld l, c
    or [hl]
    or h
    rst $38
    sbc l
    ld a, a
    sbc h
    ld a, [hl]
    adc l
    ld a, a
    adc l
    ld a, a
    rst $38
    adc e
    ld a, l
    ld b, l
    cp e
    dec sp
    rst $00
    ld b, $fe
    rst $38
    db $10
    db $10
    add c
    add c
    jr z, jr_00b_44b3

    ld [bc], a
    ld [bc], a
    rst $38
    ld c, l
    ld c, l
    add a
    add [hl]
    inc de
    db $10
    ld c, [hl]
    ld c, l
    rst $38
    ld b, d
    ld b, d
    inc b
    inc b
    ld d, c
    ld d, c
    rst $38
    ret nz

    rst $38
    db $ec
    inc e
    and h
    ld h, a
    sbc b
    sbc b
    ld h, e
    ld h, e
    rst $38
    inc hl
    inc hl
    db $10
    db $10
    ld d, b
    ld d, b
    ld hl, sp+$08
    rst $38
    ld l, [hl]

jr_00b_44b3:
    ld [hl], d
    ld c, e
    call z, $3211
    add h
    adc l
    rst $38
    jr jr_00b_44d5

Jump_00b_44bd:
    ld a, l
    ld a, l
    rra
    rla
    ld c, a

Jump_00b_44c2:
    ld c, e
    rst $38
    rst $20
    ret nz

    ld a, $29
    inc e
    inc bc
    dec sp
    scf
    rst $38
    call c, $ffdc
    cp a
    rst $38
    rst $28
    rst $38
    ret nz

jr_00b_44d5:
    ld a, a
    ldh a, [rIF]
    ld b, $ff
    ld h, e

Jump_00b_44db:
    cp a
    inc e
    jr nz, jr_00b_4527

    rst $38
    ld a, $32
    cp $e6
    db $fc
    call z, Call_000_1efe
    rst $38
    ld a, [hl-]
    jp z, Jump_00b_6296

    ld e, h
    and h
    ldh [$ff9f], a
    rst $38
    add e
    ld a, h
    ld sp, hl
    add [hl]
    and e
    sbc h
    ld l, l
    ld d, e
    rst $38
    pop de
    call $bfb7
    ld d, l
    ld d, l
    adc [hl]
    halt
    rst $38
    cp a
    ld b, c
    ld b, c
    cp [hl]
    ld [hl], a
    adc c
    sbc [hl]
    ldh [c], a
    rst $38
    push hl
    push af
    ld a, [hl+]
    ld a, [hl+]
    cp l
    cp l
    add e
    ld a, [hl]
    ei
    jp Jump_00b_4d3e


    nop
    and c
    ld e, [hl]
    push de
    ld a, [hl+]
    rst $38
    rlca
    nop
    add c
    ld a, [hl]
    sub b
    ld c, l
    ld h, h
    ld e, e

jr_00b_4527:
    ld [hl], c
    dec [hl]
    ldh [rKEY1], a
    db $10
    ld c, [hl]
    db $db
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
    cp $61
    ld b, l
    cp a
    cp a
    ld l, l
    ld l, l
    rst $30
    add a
    adc a
    rst $38
    ld [hl], a
    ld c, $f6
    ld [hl], e
    add e
    sbc $1e
    rst $30
    rst $38
    ld [hl], a
    ld a, [hl+]
    ld a, [hl+]
    rst $30
    rst $00
    call $8bb5
    rst $38
    ld [hl], e
    ld a, $ce
    ld e, l
    sbc l
    rst $38
    ld a, a
    or l
    rst $38
    dec [hl]
    xor l
    xor l
    ld a, [$ff7a]
    sbc a
    cp $ff
    add $bd
    sbc c
    cp a
    db $db
    or $d2
    push af
    rst $38
    reti


    sub a
    sub c
    inc l
    ld a, [hl+]
    sub [hl]
    sbc d
    dec l
    rst $38
    ld sp, $a1bd
    ld a, l
    ld h, c
    ld l, d
    halt
    jp nc, $eeff

    ld [$544f], sp
    call c, $9b1a
    ld [hl], $ff
    or [hl]
    daa
    or a
    ld [hl+], a
    or e
    ld e, b
    ret c

    sub a
    rst $38
    rst $18
    ld [bc], a
    and $22
    ld [hl-], a
    ld e, e
    db $db
    ld h, l
    rst $38
    ld l, l
    db $e4
    db $ed
    ld e, c
    reti


    dec bc
    dec de
    sub $ff
    or $70
    ld l, a
    di
    adc $b0
    xor a
    dec [hl]
    rst $38
    cpl
    ld a, b
    ld [hl], a
    ld a, [$f8d5]
    rst $20
    ld a, c
    rst $38
    halt
    ld c, h
    or e
    inc hl
    call c, $ff19
    add [hl]
    rst $38
    ei
    ld h, b
    rst $38
    jp z, $2435

    db $db
    rst $10
    rst $38
    ld a, [hl]
    sbc [hl]
    ld h, [hl]
    ld e, d
    xor d
    ld e, $ea
    sbc [hl]
    rst $38
    and $6c
    call nc, $f40c
    ld c, [hl]
    or $8e
    ld sp, hl
    or $2f
    add hl, hl
    dec bc
    ld l, c
    add b
    ld b, b
    cp a
    ld a, a
    cp a
    cp $21
    dec e
    nop
    add d
    ld a, h
    or l
    ld a, c
    xor e
    ld [hl], e
    rst $38
    inc de
    ld [hl+], a
    xor a
    adc $5d
    sbc [hl]
    cp e
    inc a
    rst $38
    ld [hl], a
    ld a, b
    jp hl


    or $d7
    xor $af
    sbc $ff
    xor e
    ld [hl], a
    or l
    ld a, e
    cp $01
    add c
    ld b, d
    db $fd
    cp [hl]
    ld h, h
    ld [bc], a
    ld a, a
    add b
    ld [hl], b
    or b
    ld a, c
    cp c
    ei
    ld h, b
    and b
    or b
    rrca
    cp a
    ccf
    ret nz

    jr nz, @-$1f

    rst $38
    db $fd
    inc bc
    ccf
    dec a
    rst $00
    push bc
    rlca
    dec b
    rst $38
    ccf
    dec a
    inc bc
    db $fd
    db $fd
    inc bc
    add a
    ld a, e
    rst $38
    cp a
    cp a
    ld l, a
    ld h, c
    pop af
    xor $f9
    and $ff
    ldh a, [c]
    db $ed
    ld h, h
    ld e, e
    rst $28
    call nc, $cfff
    rst $38
    rst $30
    rst $30
    xor a
    and c
    pop af
    xor $e9
    and $ff
    or d
    xor l
    db $e4
    db $db
    cp a
    add h
    ld a, a
    ld a, a
    rst $38
    db $fd
    reti


    or [hl]
    sbc d
    or a
    db $d3
    or $da
    rst $38
    db $fd
    reti


    xor a
    db $db
    cp [hl]
    jp c, $d9b5

    rst $38
    cp c
    rst $08
    ldh a, [c]
    sbc l
    rst $00
    cp b
    cp a
    ret nz

    rst $38
    rst $08
    ldh a, [$ff73]
    ld a, h
    ld a, d
    ld a, l
    ld [hl], $39
    rst $38
    ld l, h
    ld l, a
    or b
    or b
    ld l, h
    rst $28
    ld a, b
    cp b
    rst $38
    ld d, c
    rst $28
    xor a
    or b
    and $f9
    adc $f1
    rst $38
    ld c, c
    call Call_000_3b32
    dec h
    and $16
    add hl, de
    rst $38
    sbc [hl]
    pop hl
    scf
    ld hl, sp+$6f
    add sp, $2f
    add sp, -$01
    ld a, [hl-]
    scf
    ld a, c
    ld h, [hl]
    ld a, e
    ld b, a
    ld a, h
    ld [hl], e
    rst $38
    call c, $bfdb
    cp h
    and a
    and a

jr_00b_46b8:
    rrca
    ld c, $ff
    ld c, h
    rst $38
    or c
    xor $4c
    ei
    inc sp
    sbc $f7
    ret z

    cp a
    jr nz, jr_00b_46b8

    ld h, a
    cp e
    cp d
    xor $d2
    rst $38
    inc c
    db $f4
    sbc $f6
    ld e, $e6
    cp [hl]
    ld b, d
    ccf
    ld a, [hl]
    cp d
    xor $6e
    add h
    add h
    cpl
    rrca
    dec bc
    ld a, c
    rst $28
    sub a
    ld h, a
    rst $38
    nop
    ldh [$ff71], a
    ld a, a
    jp nz, Jump_00b_7e01

    ld b, c
    db $10
    sub a
    ld l, a
    ld b, c
    cp [hl]
    rst $38
    nop
    ldh [$ff71], a
    db $fc
    ld b, b
    dec l
    ld h, b
    dec l
    nop
    ld b, c
    ld a, $af
    sbc [hl]
    pop de
    rst $38
    adc $ef
    ldh [$ff75], a
    ldh a, [$ffbb]
    ld a, b
    ld e, l
    rst $38
    cp h
    cpl
    sbc $ff
    nop
    dec hl
    jp c, $ff29

    ret c

    add hl, hl
    ret c

    dec l
    call c, $da2b
    dec hl
    rst $38
    jp c, $dc2d

    dec l
    call c, $2baf
    xor a
    rst $38
    dec hl
    adc a
    dec bc
    rst $18
    ld e, e
    rst $18
    ld e, e
    sbc a
    rst $38
    dec de
    rst $08
    ld c, e
    sbc a
    dec de
    rst $38
    sbc a
    sbc l
    rst $38
    ld l, l
    ccf
    jp $5da3


    ld c, [hl]
    or b
    or e
    rst $38
    ld b, e
    ld c, [hl]
    or [hl]
    rst $30
    ld b, a
    rst $30
    sub a
    sbc l
    rst $38
    ld h, l
    scf

jr_00b_474c:
    res 4, e
    ld e, l
    ld c, a
    or e
    or a
    rra
    ld b, a
    ld c, [hl]
    or [hl]
    rst $38
    ld c, a
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

jr_00b_4774:
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

jr_00b_4785:
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
    jr nc, jr_00b_474c

    sbc d
    ld [hl+], a
    nop
    rst $38
    jr nc, jr_00b_47ac

    rst $38
    rst $38

jr_00b_47ac:
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
    jr nc, jr_00b_4774

    jr nc, jr_00b_4785

    cp a
    ccf
    ld b, b
    ccf
    ccf
    nop
    ld h, e
    ld bc, $fff5
    ld b, $0d
    ld c, $fd
    cp $02
    db $fc
    db $fc
    db $fc
    inc b
    ld bc, $0067
    ld hl, sp+$07
    jp nz, $bc43

    ld a, a
    ld l, a
    jp nz, $a23f

    ld h, e
    ld hl, $aa00
    ld l, e
    ld hl, rJOYP
    xor [hl]
    ld l, a
    cp [hl]
    ld a, a
    or h
    ld a, a
    add b
    ld a, a
    adc a
    add c
    ld a, [hl]
    cp $80
    dec l
    add hl, bc
    or b
    rlca
    ld c, d
    nop
    dec l
    rst $38
    xor h
    dec h
    and h
    daa
    and [hl]
    ld l, e
    ld [$ff5b], a
    jp c, $d051

    ld d, l
    call nc, $d455
    cp a
    ld a, a
    ret nz

    rst $38
    add b
    ld [$5595], a
    xor d
    jr nc, jr_00b_4829

    inc a
    jr nz, @+$06

    db $e3
    ld [bc], a
    ld [$d515], a
    ld a, [hl+]
    ld [hl-], a

jr_00b_4829:
    dec bc
    sub b
    dec bc
    rst $38
    db $fd
    inc bc
    rst $38
    ld bc, $29d7
    xor d
    ld d, l
    xor $30
    inc c
    cp $01
    cp $63
    inc c
    dec c
    nop
    ld [de], a
    rst $38
    dec c
    jr nz, jr_00b_4863

    ld e, $01
    inc b
    inc bc
    ld [$07fd], sp
    ld hl, $d810
    nop
    inc h
    ret c

    ld [bc], a
    db $fc
    cp a
    inc a
    ret nz

    db $10
    ldh [$ff88], a
    ld [hl], b
    inc bc
    ld b, $6f
    ld e, a
    ldh [$ff58], a
    ret nc

    ld e, a
    rst $10

jr_00b_4863:
    jr nz, jr_00b_4865

jr_00b_4865:
    ret nc

    inc bc
    rlca
    ld hl, sp+$63
    db $10
    jr nz, jr_00b_486d

jr_00b_486d:
    inc b
    ld [$0afb], sp
    dec de
    ld a, [bc]
    pop de
    rst $38
    ret nz

    push de
    call nz, $04f5
    ld l, $a6
    ld c, [hl]
    rst $38
    add $5e
    sub $2e
    and [hl]
    ld l, $a6
    ld c, $ff
    add [hl]
    ld e, [hl]
    sub $5e
    sub $d3
    jp nz, $f7d9

    ret z

    push de
    call nz, $01c1
    push de
    call nz, $cadb
    cp a
    db $db
    jp z, $d829

    cpl
    sbc $27
    nop
    rra
    rst $28
    ldh [rWave_d], a
    db $fc
    add hl, hl
    ld [hl+], a
    nop
    add hl, bc
    db $fc
    ld c, e
    cp $02
    add hl, bc
    ld a, [hl]
    or $76
    cp $5e
    or $0e
    cp $20
    nop
    ld l, $f6
    rrca
    rst $30
    rst $38
    nop
    rst $10
    xor e
    adc $d3
    jr nz, jr_00b_48c6

jr_00b_48c6:
    push de
    jr nz, jr_00b_48c9

jr_00b_48c9:
    pop de
    jr nz, jr_00b_48cc

jr_00b_48cc:
    rst $38
    rst $38
    nop
    cp a
    dec sp
    rst $38
    ld a, e
    rst $28
    ld l, e
    rst $38
    db $fd
    ld a, e
    inc h
    nop
    rlca
    and h
    adc e
    push hl
    jp c, $ff6e

    ld d, c
    ldh a, [$ffcf]
    ldh a, [$ffef]
    jr nc, jr_00b_4917

    ret nc

    rst $38
    rst $08
    ld a, a
    ld [hl], b
    rra
    ldh [$fff0], a
    rrca
    db $10
    ei
    rst $28
    jr nc, jr_00b_491a

    nop
    rst $38
    nop
    and c
    ld e, a
    pop bc
    db $fd
    ccf
    ld c, e
    nop
    pop de
    cpl
    xor b
    ld d, a
    call nc, $ef2b
    rst $38
    nop
    add c
    ld a, [hl]
    pop bc
    inc d
    add hl, bc
    ld b, $08
    rst $38
    rlca
    ld [$0907], sp
    ld b, $07

jr_00b_4917:
    ld [bc], a
    rlca
    ei

jr_00b_491a:
    ld [bc], a
    ld [bc], a
    ldh a, [$ff1f]
    ld c, b
    or b
    adc b
    ld [hl], b
    ld [$f0ff], sp
    ret c

    jr nz, jr_00b_4978

    and b
    ldh a, [rNR41]
    ld [hl], b
    rst $38
    jr nz, jr_00b_495f

    nop
    ld c, b
    ld c, b
    inc d
    inc d
    add c
    rst $38
    add c
    dec b
    ld b, $2b
    inc l
    ld b, [hl]
    ld c, c
    inc l
    rst $38
    inc sp
    sub c
    xor a
    sbc d
    sbc e
    cpl
    jr nc, jr_00b_49c3

    rst $38
    add e
    rst $38
    nop
    ret nz

    ccf
    add hl, bc
    rst $38
    dec d
    rst $30
    cp $4c
    di
    ld bc, $3c19
    jp Jump_00b_679a


    rst $38
    ld l, e
    sub h
    inc e
    db $e3

jr_00b_495f:
    add sp, $17
    inc d
    rst $38
    rst $38
    ld l, b
    add sp, -$0c
    inc c
    ld e, [hl]
    pop hl
    db $e3
    inc e
    rst $38
    nop
    rst $38
    ld [hl], d
    rst $38
    rra
    rst $38
    add $ff
    rst $38
    add d
    add d

jr_00b_4978:
    jr @+$1a

    and c
    and c
    and h
    ld h, h
    rst $38
    ld e, b
    cp b
    dec l
    db $dd
    sbc b
    add sp, -$14
    db $f4
    xor d
    jr nz, jr_00b_49b0

    inc b
    jr nz, jr_00b_498d

jr_00b_498d:
    ld [$0020], sp
    db $10
    jr nz, jr_00b_4993

jr_00b_4993:
    nop
    rst $38
    ld l, e
    sub a
    ld h, a
    sbc c
    ld h, d
    sbc l
    ld d, d
    xor l
    rst $38
    ld l, e
    sub l
    or a
    ret


    or c
    adc $5a
    ld h, a
    rst $38
    inc b
    db $fc
    ld [hl-], a
    db $fd
    ccf
    db $fc
    rst $18
    inc a
    rst $38

jr_00b_49b0:
    inc hl
    call c, $fce3
    scf
    db $ec
    rst $10
    inc l
    or a
    ld h, [hl]

jr_00b_49ba:
    ld a, [hl]
    db $10
    ld h, b
    inc c
    rst $38
    and l
    jr nc, @+$29

    sbc d

jr_00b_49c3:
    ld a, [hl]
    add c
    nop
    ld hl, sp+$07
    rrca
    ldh a, [rNR23]
    rst $30
    dec h
    nop
    ldh [$ff65], a
    jr z, jr_00b_49f1

    nop
    rra
    nop
    rra
    nop
    and l
    nop
    dec c
    nop
    ld a, [bc]
    ccf
    dec b
    db $10
    rrca
    inc d
    dec bc
    ld c, $20
    jr nz, @+$05

    jr nz, jr_00b_4a67

    jr z, jr_00b_49ba

    inc b
    ld hl, sp+$14
    add sp, $38
    jr nz, @+$22

jr_00b_49f1:
    rst $38
    ld [hl], h
    ld c, a
    ld a, [hl+]
    ld e, a
    ld b, h
    ccf
    jp z, $ffbd

    ld b, h
    cp e
    swap a
    db $e4
    rra
    cp e
    ld c, a
    rst $38
    ld [hl+], a
    rst $18
    adc b
    ld a, a
    dec d
    rst $38
    ld l, e
    rst $38
    rst $38
    or a
    ei
    ldh [c], a
    cp $f5
    db $ed
    sbc $ee
    rst $38
    halt
    rst $38
    push de
    db $dd
    sub $de
    sub [hl]
    sbc [hl]
    rst $38
    rla
    rra
    sub l
    sbc l
    rla
    rra
    dec d
    dec e
    rst $38
    ld [hl], c
    rst $38
    and h
    ld h, a
    sbc d
    ei
    ld e, h
    ld a, h
    rst $38
    inc d
    inc [hl]
    ld a, [hl-]
    ld a, [hl+]
    ld d, $0e
    dec e
    dec d
    rst $38
    ld [hl], l
    ld sp, hl
    halt
    ld a, [$fc32]
    sub e
    db $fd
    rst $38
    ld [bc], a
    ld a, l
    ld d, e
    ld l, h
    daa
    jr c, jr_00b_4a67

    ld [de], a
    ld l, [hl]
    pop hl
    rlca
    jr jr_00b_4a68

    inc a
    stop
    jr jr_00b_4a6d

    and c
    ld [$afff], sp
    or c
    ld d, a
    ld e, b
    xor l
    xor [hl]
    ld a, [bc]
    dec bc
    rst $38
    add l
    add l
    ld e, b
    ld e, b
    adc b
    adc b

jr_00b_4a67:
    inc hl

jr_00b_4a68:
    inc hl
    rst $38
    cp c
    ld b, [hl]
    adc a

jr_00b_4a6d:
    ld [hl], b
    jp $fa3c


    dec b
    rst $38
    cp a
    ret nz

    xor a
    or b
    ld l, [hl]
    ld l, a
    add hl, bc
    add hl, bc
    sbc [hl]
    inc bc
    cpl
    ld c, $f1
    inc e
    db $e3
    and d
    cpl
    ldh a, [rWave_7]
    add b
    cp a
    nop
    ldh [rP1], a
    ld hl, sp+$00
    cp $40
    nop
    ldh [$ffc0], a
    ret nz

    nop
    rra
    nop
    rra
    nop
    rra
    nop
    add a
    nop
    pop hl
    rra
    ld [$df07], sp
    dec b
    ld [bc], a
    inc b
    inc bc
    dec b
    jr nz, jr_00b_4ac8

    ld b, $00
    ei
    ld [$21f0], sp
    nop
    ld d, b
    and b
    sub b
    ld h, b
    ret nc

    cp $02
    jr nz, jr_00b_4a68

    ld c, a
    db $ed
    inc de
    xor $11
    cp c
    rst $38
    ld b, [hl]
    adc d
    ld [hl], a
    rst $00
    add hl, sp
    pop hl
    ld e, $76
    rst $38

jr_00b_4ac8:
    adc a
    db $ed
    db $dd
    ld a, [hl]
    sbc $1d
    db $fd
    sub d
    rst $38
    ld [hl], d

jr_00b_4ad2:
    rst $20
    rra
    cp h
    jp $fc03


    sbc h
    rst $38
    ld a, a
    dec d
    dec e
    sub b
    sbc h
    db $10
    inc e
    jr jr_00b_4ad2

    inc d
    jr z, @+$36

    set 4, c
    jr @+$01

    add l
    adc c
    rst $38
    adc [hl]
    adc d
    add d
    add [hl]
    inc b
    rlca
    rla
    jr @+$01

    dec e
    db $e3
    ldh [$ff1f], a
    add hl, de
    cp $2d
    ld [hl-], a
    rst $38

Jump_00b_4aff:
jr_00b_4aff:
    ld d, a
    ld l, b
    rst $30
    adc b
    sbc l
    ld h, d
    ld d, c
    xor $bf
    db $e3
    sbc h
    add a
    ld a, b
    ld l, [hl]
    pop af
    dec l
    ld [$ff20], sp
    ccf
    ld l, h
    sbc a
    call c, $db3f
    inc a
    call nz, $3bff
    rst $20
    sbc a
    db $ec
    scf
    db $eb
    inc [hl]
    sub $ff
    add sp, -$1a
    sbc b
    ld b, [hl]
    cp b
    ld c, d
    or h
    sub $ff
    xor b
    db $ec
    sub d
    adc [hl]
    ld [hl], d
    ld e, d
    and $ff
    ld a, a
    nop

jr_00b_4b37:
    sbc a
    sbc a
    ld l, h
    ld l, h
    jp nz, Jump_00b_44c2

    ld b, a
    rst $38
    rst $38
    ld sp, hl
    rlca
    ld a, [hl]
    halt

jr_00b_4b45:
    adc [hl]
    add [hl]
    xor $7b
    and $fe
    ld b, b
    ld [hl-], a
    cp $06
    ld c, $f6
    cpl
    dec c
    ld a, b
    rra
    nop
    rra
    nop
    rst $08
    rra
    inc c
    inc bc
    ld a, [bc]
    dec b
    and c
    jr nc, jr_00b_4aff

    push bc
    rra
    jr jr_00b_4b45

    jr z, jr_00b_4b37

    pop bc
    db $10
    inc bc
    ld a, [hl+]
    ld [hl], d
    rst $38
    adc l
    ld e, e
    and l
    ld b, a
    cp c
    ld h, c
    sbc [hl]
    halt
    rst $38
    adc a
    inc bc
    rst $38
    jr nc, @+$01

    inc c
    rst $08
    pop de
    rst $38
    inc sp
    and l
    rst $18
    ldh [rIE], a
    inc l
    rst $38
    adc h
    xor a
    ld a, h
    rst $20
    rst $38
    rst $20
    ldh [$ff50], a
    add c
    ld [hl], b
    ld d, c
    add c

jr_00b_4b92:
    rst $38
    add c
    nop
    rst $38
    ld h, [hl]
    ld a, [hl]
    ldh [rIE], a
    inc c
    rst $38
    rst $38
    jr nc, jr_00b_4b92

    xor e
    db $ec
    and h
    ei
    rlca
    rst $38
    rst $38
    inc [hl]
    rst $38
    ld de, $d61e
    add sp, -$19
    rst $38
    sbc c
    ld b, [hl]
    cp b
    ld c, [hl]
    or b
    jp c, $e2a4

    rst $18
    sbc h
    add a
    ld a, c
    ld l, [hl]
    ldh a, [$ff2d]
    ld [$629d], sp
    rst $38
    pop af
    ld c, $c3
    inc a
    ld e, a
    and b
    db $fd
    inc bc
    rst $38
    push af
    dec c
    ld [hl], a
    rst $30
    xor b
    xor b
    db $f4
    adc h
    rst $38
    ld [$b61a], a
    halt
    ld d, l
    push de
    or d
    or d
    rst $38
    ld d, l
    ld d, l
    inc l
    inc l
    add d
    add d
    ccf
    ldh [rIE], a
    rst $18
    rst $08
    ret nc

    ret nz

    rst $10
    rst $00
    reti


    ret


    ccf
    ret nc

    rst $08
    rst $18
    ret nz

    pop de
    adc $63
    ld e, b
    ld h, a
    nop
    ldh a, [$ff2f]
    dec c
    rra
    nop
    rra
    nop
    add hl, bc
    jr nz, @+$0b

    ld b, $09
    ld b, $cf
    inc b
    inc bc
    inc b
    inc bc
    ld hl, $0140
    jr nz, @+$4a

    or b
    ld a, a
    ld c, b
    or b
    sub b
    ld h, b
    sub b
    ld h, b
    ld [hl], b
    ld [bc], a
    ld b, b
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
    cp l
    cp l
    ld a, [$7ffa]
    ld a, a
    rst $10
    rst $10
    rst $38
    db $ed
    db $ed
    ld a, a
    ld a, a
    jp c, Jump_00b_7fda

    ld a, a
    rst $38
    rst $30
    rst $30
    xor l
    xor l
    rst $38
    di
    ld [hl], a
    ld l, e
    rst $38
    cp $e6
    rst $30
    rst $30
    cp [hl]
    cp [hl]
    rst $30
    rst $30
    rst $38
    nop
    nop
    rrca
    ld [$273a], sp
    cpl
    rra
    rst $38
    ld a, a
    ld e, a
    ld e, a
    ccf
    rst $38
    cp a
    cp a
    ld a, a
    rst $38
    nop
    nop
    ret nz

    ret nz

    ldh a, [rWave_0]
    cp b
    ret c

    rst $38
    sbc $e6
    rst $30
    ei
    ei
    db $fd
    ei
    db $fd
    rst $38
    inc c
    inc c
    ccf
    inc hl
    ld a, a
    ld e, h
    sub $ef
    rst $38
    cp e
    add $7f
    cp b
    ld a, [hl-]
    ld b, a
    xor a
    rst $18
    rst $38
    or b
    or b
    ld a, h
    ld b, h
    cp $ba
    call z, $ff74
    cp a
    pop bc
    rst $38
    add [hl]
    cp a
    ld a, c
    rst $28
    dec e
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
    ret nz

    or l
    ld h, b
    sbc [hl]
    ld [hl], b
    ld c, l
    jr c, jr_00b_4d20

    rst $38
    jr c, jr_00b_4d2e

    ld a, h
    ld d, e
    ld a, [hl]
    ld c, b
    ld a, [hl]
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
    jr z, jr_00b_4d2e

    jr z, jr_00b_4d30

    ld d, $19
    ld de, $ff1e
    ld [$0e0f], sp
    rrca
    ld bc, $0001
    nop
    rst $38
    db $fd
    rst $38
    ld a, b
    rst $38
    nop
    rst $38
    add b
    ld a, a
    adc $30
    ld b, $ff
    rst $38
    rst $38
    nop
    ld c, $e0
    nop
    rlca
    ld hl, sp-$01
    ld a, b
    add a
    add c
    ld a, a

jr_00b_4d20:
    ld e, $fe
    ldh [$ffe0], a
    rst $38
    nop
    nop
    ld a, [bc]

jr_00b_4d28:
    or $34
    call z, $3ccc
    ld l, a

jr_00b_4d2e:
    jr jr_00b_4d28

jr_00b_4d30:
    ldh a, [$fff0]
    inc bc
    db $10
    rst $30
    rst $30
    and c
    ld c, $ff
    rst $28
    rst $28
    ld a, l
    ld a, l
    rst $30

Jump_00b_4d3e:
    rst $30
    cp d
    cp d
    ld a, a
    ld a, a
    ld a, a
    ld b, b
    rst $38
    sub d
    rst $38
    ld [$0420], sp
    sbc a
    ld de, $8cff
    rst $38
    ld hl, $00a0
    ld bc, $0c01
    rst $18
    di
    inc e
    db $e3
    add hl, de
    rst $20
    inc bc
    ld bc, $7fef
    rst $38
    xor a
    ld a, a
    add e
    ld a, a
    ldh [$ff9f], a
    ld a, [hl]
    ld h, c
    rst $38
    rra
    ld e, $03
    inc bc
    nop
    nop
    db $ed
    cp $ff
    pop hl
    cp $c3
    db $fd
    rra
    db $e3
    inc l
    call c, $f8fb
    jr c, @+$03

    ld b, $fe
    cp c
    ld a, h
    and e
    db $e4
    rst $38
    sbc a
    add hl, sp
    ld c, [hl]
    ld a, e
    inc l
    push af
    bit 7, a
    rst $38
    ld h, l
    rra
    ld c, $ef
    ld [hl], d
    ld [hl], a
    cp c
    rst $18
    rst $38
    cp d
    db $ed
    db $db
    ld a, a
    ret z

    cp [hl]
    ld d, d
    xor $ff
    inc e
    call c, $fbc0
    ld a, e
    ld a, l
    add d
    pop hl
    ei
    ld [hl], a
    rst $38
    nop
    ld a, [bc]
    rst $38
    db $fd
    inc bc
    db $fd
    ld bc, $feff
    ld hl, $a220
    ld e, l
    ld b, c
    ld l, b
    rst $38
    rst $38
    cp $fe
    ld bc, $bfff
    ret nz

    cp a
    add b
    rst $38
    ld a, a
    halt
    ld a, c
    sub h
    sbc e
    inc a
    dec sp
    rlca
    rst $38
    inc b
    jp c, Jump_00b_44db

    ld b, h
    adc c
    adc c
    ld [hl+], a
    rst $38
    ld [hl+], a
    cp a
    ret nz

    ld a, a
    add b
    pop af
    ld c, $ce
    rst $38
    ccf
    ccf
    rst $38
    cpl
    cpl
    jp c, $2dda

    rst $38
    dec l
    inc sp
    db $f4
    sub [hl]
    ld [hl], l
    jp z, Jump_00b_723d

    rst $38
    adc l
    sbc l
    db $e3
    db $fd
    db $fd
    halt
    halt
    and e
    ei
    and e
    rra
    or b
    inc bc
    push af
    push af
    xor d
    xor d
    inc d
    ld a, a
    inc d
    adc b
    adc b
    ld [hl-], a
    ld [hl-], a
    ld [bc], a
    ld [bc], a
    ld b, c
    dec e
    rst $38
    ret nz

    ret nz

    and b
    ld h, b
    ld d, b
    or b
    xor b
    ret c

    rst $38
    call nc, $ecec
    db $f4
    ld [$f6f6], a
    ld a, [$f6ff]
    ld a, [$fafc]
    db $fd
    ei
    di
    db $fd
    ld a, a
    db $e3
    db $fd
    di
    db $fd
    ldh [c], a
    db $fc
    ldh a, [c]
    jr nz, jr_00b_4e34

jr_00b_4e34:
    rst $38
    ld a, [$eafc]
    db $fc
    ldh [c], a
    db $fc
    db $e4
    ld a, [$c6ff]
    ld a, [$221c]
    inc e
    ld a, a
    ld h, e
    ld a, $ff
    ld e, [hl]
    ccf
    ld a, b
    rlca
    ld b, d
    ccf
    ld c, [hl]
    ccf
    rst $38
    adc $bf
    xor l
    xor l
    ei
    ld a, [$797e]
    rst $38
    db $dd
    jp $d9ed


    dec a
    dec de
    rst $28
    set 7, a
    ld l, a
    ld e, e
    cp a
    and b
    rst $38
    rrca
    rst $38
    rst $28
    rst $38
    rst $30
    rst $20
    rst $30
    rst $28
    rst $18
    rst $28
    db $fd
    rst $28
    rst $38
    ld e, l
    rst $28
    db $fd
    dec b
    rst $38
    ldh a, [rIE]
    rst $30
    rst $38
    rst $28
    rst $20
    xor e
    rst $30
    ei
    rst $30
    cp a
    rst $30
    ld sp, hl
    rst $38
    nop
    ld hl, $2483
    ld bc, $0301
    ld [bc], a
    ld [bc], a
    rst $30
    dec b
    dec b
    dec bc
    ld b, c
    dec h
    dec c
    ld c, $6e
    ld [hl], c
    rst $08
    ld [hl], a
    adc a
    sbc a
    ld a, a
    db $10
    jr jr_00b_4ec2

    jr jr_00b_4ea4

jr_00b_4ea4:
    nop
    rst $08
    db $fc
    inc bc
    ei
    db $fc
    pop bc
    nop
    ld bc, $6f01
    ld l, a
    rst $38
    cp a
    and h
    ld h, h
    ld e, e
    ret z

    or a
    add sp, -$29
    rst $38
    ld a, b
    ld b, a
    call z, Call_00b_7eb3
    ld b, c
    rst $30
    scf

jr_00b_4ec2:
    rst $38
    dec l
    call Call_00b_6f9f
    ld c, a
    or a
    ld c, l
    or l
    rst $38
    rrca
    pop af
    ld de, $23ee
    db $dd
    ld c, $00
    rst $38
    inc de
    inc c
    inc d
    dec bc
    ccf
    nop
    ld c, a
    ld [hl], $ff
    ld e, a
    ld l, $3f
    rrca
    rra
    rrca
    ld [hl], b
    nop
    rst $38
    adc b
    ld [hl], b
    call nz, $3c38
    ret nz

    ld a, $d8
    cp a
    ld a, [hl]
    cp h
    cp $7c
    cp $fc
    jr nc, jr_00b_4f1f

    ld h, h
    ei
    db $e4
    db $db
    ld bc, $f804
    rst $00
    call nz, $febb
    rst $38
    pop bc
    rst $38
    ccf
    dec l
    call Call_00b_6797
    ld c, a
    rst $30
    or a
    ld c, [hl]
    or [hl]
    inc bc
    inc b
    cp a
    cp h
    ld a, h
    ld h, e
    rst $38
    ldh [c], a
    db $dd
    pop hl
    sbc $e4
    db $db
    ld [hl], d
    ld l, l

jr_00b_4f1f:
    rst $38
    reti


    sub $f7
    ldh a, [rWave_f]
    cp a
    db $ed
    ld h, c
    rst $38
    ld [hl], e
    adc l
    ld b, a
    cp e
    adc [hl]
    halt
    sub e
    ld h, e
    rst $38
    ld a, $de
    rst $38
    inc sp
    cp l
    reti


    ld a, $9a
    rst $38
    daa
    db $d3
    ld h, [hl]
    jp c, $d96d

    ccf
    db $db
    rst $38
    ld l, $da
    dec h
    sbc c
    adc $bf
    ld c, [hl]
    cp a
    cp a
    ld c, l
    cp [hl]
    ld [hl+], a
    db $dd
    inc e
    db $e3
    ld h, b
    inc hl
    rst $38
    rst $38
    db $fc
    rst $38
    or l
    sbc e
    push af
    reti


    ld l, l
    ld c, e
    rst $38
    db $ed
    db $db
    rst $20
    db $db
    ld l, $1b
    or $db
    rst $38
    halt
    ld e, e
    db $d3
    rst $20
    di
    rst $28
    ld [hl], a
    rst $28
    rst $38
    or $ef
    or d
    rst $28
    or l
    rst $28
    ld [hl], l
    rst $28
    ei
    or e
    rst $28
    and c
    rrca
    xor d
    rst $30
    adc e
    rst $30
    dec bc
    rst $38
    rst $30
    dec l
    rst $30
    xor [hl]
    rst $30
    xor l
    rst $30
    dec de
    rst $38
    rla
    dec hl
    scf
    ld sp, $332f
    cpl
    ld d, e
    ld a, a
    ld l, a
    ld h, a
    ld e, a
    daa
    ld e, a
    and a
    rst $18
    add l
    ld c, $fc
    rra
    nop
    inc hl
    db $10
    rst $20
    ret c

    ret


    or [hl]
    pop bc
    cp [hl]
    rst $38
    ld b, e
    inc a
    cp $c1
    cp [hl]
    cp c
    rst $28
    db $ec
    rst $38
    ld a, a
    ld a, [hl]
    xor $12
    di
    dec c
    ld c, c
    or [hl]
    rst $38
    ld hl, $23de
    db $dd
    ccf
    jp $af6f


    rst $38
    db $fd
    ld a, l
    ccf
    rrca
    ld l, a
    rla
    ld b, a
    dec sp
    rst $38
    ld b, a
    jr c, jr_00b_5012

    nop
    ld b, $01
    inc bc
    nop
    rst $38
    ld bc, $fe00
    db $fc
    cp $f8
    ld sp, hl
    or $ff
    pop af
    ld c, $7e
    add b
    ld a, h
    add b
    ld b, b
    add b
    rst $38
    add b
    nop
    and a
    sbc b
    ld c, c
    ld [hl], $c1
    cp [hl]
    rst $38
    jp $fcbc


    jp Jump_00b_7176


    rst $18
    call c, $f7ff
    or $cf
    inc sp
    di
    dec c
    ld b, c
    cp [hl]
    rst $38
    inc hl
    call c, $c836
    ccf
    jp $9e5e


    rst $38
    rst $30
    ld [hl], a
    cp a

jr_00b_5012:
    and h
    ld h, a
    ld e, d
    jp $ffbc


    cp c
    ld b, [hl]
    db $fc
    or e
    ld a, [hl]
    ld a, c
    rst $18
    sbc $ff
    rst $30
    or $73
    xor l
    ld hl, $45de
    cp d
    rst $38
    adc a
    ld [hl], h
    cp [hl]
    ld c, [hl]
    di
    inc de
    ld e, [hl]
    sbc [hl]
    rst $38
    ld [hl], a
    or a
    dec h
    pop de
    and [hl]
    ld e, d
    ld [hl], a
    adc e
    rst $38
    ld c, $f2
    add hl, de
    pop af
    rra
    rst $30
    ld a, [de]
    ldh a, [c]
    rst $38
    db $fd
    dec c
    ld l, d
    ld l, d
    or h
    or h
    cp d
    add $ff
    add hl, sp
    rst $38
    push bc
    ld a, a
    cp l
    ld a, a
    ld hl, sp+$06
    rst $18
    add l
    ld a, a
    cp [hl]
    sbc e
    db $f4
    nop
    db $10
    xor $db
    rst $38
    xor $db
    inc h
    dec de
    db $f4
    db $db
    ld h, h
    ld e, c
    rst $38
    ld [hl], d
    rst $20
    ldh a, [c]
    rst $28
    ld d, h
    rst $28

jr_00b_5070:
    ld d, l
    rst $28
    rst $38
    sub b
    rst $28
    sub h
    rst $28
    ld sp, $b0e7
    rst $28
    rst $38
    xor d
    rst $20
    xor c
    rst $30
    jr z, @-$07

    ld c, d
    rst $30
    rst $38
    ld c, b
    rst $30
    dec c
    rst $30
    dec c
    rst $20
    ld [$fbf7], sp
    xor a
    rst $18
    dec h
    nop
    ld h, a
    ld e, a
    ld d, a
    ld l, a
    ld d, c
    jp hl


    ld l, a
    cpl
    rrca
    and e
    rra
    ei
    jr nz, jr_00b_50a0

jr_00b_50a0:
    di
    rst $38
    ld h, c
    rst $38
    rst $38
    ld [hl], a
    ld b, h
    call c, $4693
    dec b
    ld h, e
    rst $38
    ld [hl+], a
    pop af
    jr nc, jr_00b_5070

    ld e, [hl]
    sbc $21
    ld h, b
    rst $38
    rra
    push de
    push de
    xor d
    ld a, [hl+]
    ld a, a
    add c
    ld b, c
    rst $38
    cp [hl]
    xor a
    ld d, c
    ld [hl], l
    add l
    ld a, d
    sbc d
    ld l, $f7
    jp nz, $d7f7

    nop
    ld b, a
    db $fd
    xor a
    rst $28
    db $fd
    rst $38
    rst $38
    db $fd
    or l
    cp [hl]
    cp [hl]
    rst $28
    db $fd
    ld d, a
    rst $38
    rst $38
    sub $ff
    ld a, a
    rst $38
    jp c, Jump_00b_4aff

    rst $38
    rst $38
    ld l, a
    rst $38
    cp d
    rst $38
    or [hl]
    rst $38
    ld d, h
    rst $38
    xor e
    ld d, l
    xor d
    add d
    ld a, l
    sub c
    ld l, [hl]
    ld d, h
    rst $38
    xor e
    ld b, h
    cp e
    xor c
    ld d, [hl]
    add hl, hl
    sub $c0
    push af
    ccf
    ldh [rLY], a
    ld a, a
    jr nc, jr_00b_5107

    nop
    rst $38

jr_00b_5107:
    ld h, c
    rst $18
    rst $18
    ld b, c
    pop de
    ld d, c
    inc bc
    db $fc
    ldh [rLY], a
    cp $ff
    rst $38
    cp $ff
    nop
    ld a, l
    inc b
    ld a, l
    inc b
    ld c, l
    rst $38
    ld c, h
    cp a
    or e
    ld [hl], e
    ld l, h
    ldh [$ffdf], a
    pop bc
    rst $38
    cp [hl]
    cp $c1
    ld [hl], d
    ld [hl], c
    sbc $dd
    rst $30
    rst $38
    rst $30
    rst $38
    db $e3
    and e
    sbc h
    pop bc
    cp [hl]
    pop hl
    rst $38
    sbc $fe
    pop hl
    or $f5
    cp [hl]
    cp l
    ld a, a
    rst $38
    ld a, a
    sbc l
    ld a, a
    sbc h
    ld a, [hl]
    adc l
    ld a, a
    adc l
    rst $38
    ld a, a
    adc e
    ld a, l
    ld b, l
    cp e
    dec sp
    rst $00
    ld b, $ff
    cp $10
    db $10
    add c
    add c
    jr z, @+$2a

    ld [bc], a
    rst $38
    ld [bc], a
    ld c, l
    ld c, l
    add a
    add [hl]
    inc de
    db $10
    ld c, [hl]
    rst $38
    ld c, l
    ld b, d
    ld b, d
    inc b
    inc b
    ld d, c
    ld d, c
    rst $38
    rst $38
    ret nz

    db $ec
    inc e
    and h
    ld h, a
    sbc b
    sbc b
    ld h, e
    rst $38
    ld h, e
    inc hl
    inc hl
    db $10
    db $10
    ld d, b
    ld d, b
    ld hl, sp-$01
    ld [$726e], sp
    ld c, e
    call z, $3211
    add h
    rst $38
    adc l
    jr jr_00b_51a4

    ld a, l
    ld a, l
    rra
    rla
    ld c, a
    rst $38
    ld c, e
    rst $20
    ret nz

    ld a, $29
    inc e
    inc bc
    dec sp
    rst $38
    scf
    call c, $ffdc
    cp a
    rst $38
    rst $28
    rst $38
    rst $38

jr_00b_51a4:
    ret nz

    ldh a, [rIF]
    ld b, $ff
    ld h, e
    cp a
    inc e
    cp $20
    ld c, b
    ld a, $32
    cp $e6
    db $fc
    call z, $fffe
    ld e, $3a
    jp z, Jump_00b_6296

    ld e, h
    and h
    ldh a, [rIE]
    rst $08
    jr c, jr_00b_51ca

    add $b9
    or e
    ld c, h
    db $ec
    rst $38
    and e

jr_00b_51ca:
    ld e, [hl]
    ld e, c
    xor l
    xor h
    ld e, e
    ld e, d
    inc sp
    rst $38
    call $9e61
    ld c, l
    or d
    sbc e
    ld h, b
    cp e
    rst $38
    ld c, e
    db $f4
    inc d
    ld c, d
    adc d
    ld l, e
    xor e
    add e
    rst $30
    ld a, [hl]
    jp Jump_00b_4d3e


    nop
    and c
    ld e, [hl]
    push de
    ld a, [hl+]
    rrca
    rst $38
    nop
    add c
    ld a, [hl]
    sub b
    ld c, l
    ld h, h
    ld e, e
    ld [hl], c
    dec [hl]
    ldh [rKEY1], a
    or [hl]
    db $10
    ld c, [hl]
    rst $18
    ld b, c
    ld hl, $e000
    ld e, a
    ld b, c
    ld d, l
    rst $38
    rst $30
    ld a, a
    cp a
    ld b, b
    ld h, c
    rrca
    ld a, l
    inc b
    dec b
    ld hl, sp-$04
    ld b, c
    ld d, l
    ld h, c
    ld b, l
    cp a
    cp a
    ld l, l
    dec c
    sub a
    ld h, a
    rst $38
    rrca
    rst $30
    add [hl]
    ld a, d
    ei
    inc bc
    sbc $5e
    rst $38
    rst $30
    ld [hl], a
    rst $30
    rst $30
    db $fd
    adc l
    adc a
    ld [hl], a
    rst $38
    rlca
    ei
    adc a
    ld [hl], a
    rst $30
    rlca
    cp [hl]
    ld a, $ff
    ld a, a
    ld a, a
    xor l
    xor l
    ld a, [$ff7a]
    sbc a
    rst $38
    cp $c6
    cp l
    sbc c
    cp a
    db $db
    or $d2
    rst $38
    push af
    reti


    sub a
    sub c
    inc l
    ld a, [hl+]
    sub [hl]
    sbc d
    rst $38
    dec l
    ld sp, $a1bd
    ld a, l
    ld h, c
    ld l, d
    halt
    rst $38
    jp nc, $08ee

    ld c, a
    ld d, h
    call c, $9b1a
    rst $38
    ld [hl], $b6
    daa
    or a
    ld [hl+], a
    or e
    ld e, b
    ret c

    rst $38
    sub a
    rst $18
    ld [bc], a
    and $22
    ld [hl-], a
    ld e, e
    db $db
    rst $38
    ld h, l
    ld l, l
    db $e4
    db $ed
    ld e, c
    reti


    dec bc
    dec de
    rst $38
    sub $f6
    ld [hl], b
    ld l, a
    di
    adc $b0
    xor a
    rst $38
    dec [hl]
    cpl
    ld a, b
    ld [hl], a
    ld a, [$f8d5]
    rst $20
    rst $38
    ld a, c
    halt
    ld c, h
    or e
    inc hl
    call c, $ff19
    rst $38
    add [hl]
    ei
    ld h, b
    rst $38
    jp z, $2435

    db $db
    rst $38
    rst $10
    ld a, [hl]
    sbc [hl]
    ld h, [hl]
    ld e, d
    xor d
    ld e, $ea
    rst $38
    sbc [hl]
    and $6c
    call nc, $f40c
    ld c, [hl]
    or $ff
    adc [hl]
    or $f7
    db $f4
    cp h
    and e
    ldh [c], a
    db $dd
    rst $38
    ld h, c
    ld e, [hl]
    ldh [$ffdf], a
    jp nc, $b9cd

    or [hl]
    cp a
    ld e, a
    ld e, b
    rst $30
    rst $30
    rst $28
    ld h, e
    ld bc, $8d3a
    rst $30
    ld [hl], l
    sub a
    ld h, a
    ld bc, $803a
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
    cp a
    and e
    ld h, e
    ld e, l
    pop bc

jr_00b_532c:
    cp [hl]
    ld sp, hl
    rst $28
    add $ec
    db $eb
    halt
    nop
    jr nz, jr_00b_532c

    push af
    rst $38
    rst $38
    jp $9da3


    pop af
    xor $e9
    and $fc
    rst $38
    ei
    db $f4
    di
    cp [hl]
    cp l
    ld a, [hl]
    ld a, l
    db $fd
    rst $38
    reti


    or [hl]
    sbc d
    or a
    db $d3
    or $da
    db $fd
    rst $38
    reti


    xor a
    db $db
    cp [hl]
    jp c, $d9b5

    cp c
    rst $38
    rst $08
    ldh a, [c]
    sbc l
    rst $00
    cp b
    cp a
    ret nz

    rst $08
    rst $38
    ldh a, [$ff73]
    ld a, h
    ld a, d
    ld a, l
    ld [hl], $39
    ld l, h
    rst $38
    ld l, a
    or b
    or b
    ld l, h
    rst $28
    ld a, b
    cp b
    ld d, c
    rst $38
    rst $28
    xor a
    or b
    and $f9
    adc $f1
    ld c, c
    rst $38
    call Call_000_3b32
    dec h
    and $16
    add hl, de
    sbc [hl]
    rst $38
    pop hl
    scf
    ld hl, sp+$6f
    add sp, $2f
    add sp, $3a
    rst $38
    scf
    ld a, c
    ld h, [hl]
    ld a, e
    ld b, a
    ld a, h
    ld [hl], e
    call c, $dbff
    cp a
    cp h
    and a
    and a

jr_00b_53a1:
    rrca
    ld c, $4c
    rst $38
    rst $38
    or c
    xor $4c
    ei
    inc sp
    sbc $c8
    ei
    cp a
    jr nz, jr_00b_53a1

    ld h, a
    cp e
    cp d
    xor $d2
    inc c
    rst $38
    db $f4
    sbc $f6
    ld e, $e6
    cp [hl]
    ld b, d
    ld a, [hl]
    rst $38
    cp d
    xor $6e
    add h
    add h
    rst $38
    db $e4
    and l
    db $fd
    sbc b
    ld [bc], a
    ld a, [hl-]
    inc sp
    or $f1
    cp a
    cp [hl]
    ld a, e
    rst $18
    ld a, d
    ld [hl], e
    xor l
    ld h, c
    sbc [hl]
    ld bc, $bf3a
    ld c, a
    rst $38
    rst $30
    rla
    ld a, [hl]
    cp [hl]
    ld a, l
    cp l
    sub a
    ld h, a
    cp e
    rst $38
    nop
    ldh [$ff71], a
    ld a, a
    jp nz, Jump_00b_4101

    db $10
    sub a
    adc a
    ld l, a
    ld b, c
    cp [hl]
    rst $38
    ld h, b
    ld b, b
    ld b, c
    dec l
    ld h, b
    dec l
    nop
    rst $38
    ld b, c
    ld a, $af
    sbc [hl]
    pop de
    adc $ef
    ldh [rIE], a
    ld [hl], l
    ldh a, [$ffbb]
    ld a, b
    ld e, l
    cp h
    cpl
    sbc $ff
    rst $38
    nop
    dec hl
    jp c, $d829

    add hl, hl
    ret c

    rst $38
    dec l
    call c, $da2b
    dec hl
    jp c, $dc2d

    rst $38
    dec l
    call c, $2baf
    xor a
    dec hl
    adc a
    dec bc
    rst $38
    rst $18
    ld e, e
    rst $18
    ld e, e
    sbc a
    dec de
    rst $08
    ld c, e
    rst $38
    sbc a
    dec de
    cp a
    cp a
    ld a, l
    dec c
    adc a
    ld [hl], a
    cp a
    ccf
    rst $08
    ld l, [hl]
    xor [hl]
    di
    ld [hl], e
    ld bc, $ff20
    rst $38
    add a
    sbc l
    ld l, l
    ccf

jr_00b_544b:
    rst $18
    ld l, a
    xor a
    ld a, a
    ld a, a
    cp a
    rst $30
    ld [hl], a
    cp [hl]
    ld a, $ff
    ld a, a
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

jr_00b_5473:
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

jr_00b_5484:
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
    jr nc, jr_00b_544b

    sbc d
    ld [hl+], a
    nop
    rst $38
    jr nc, jr_00b_54ab

    rst $38
    rst $38

jr_00b_54ab:
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
    jr nc, jr_00b_5473

    jr nc, jr_00b_5484

    cp a
    ccf
    ld b, b
    ccf
    ccf
    nop
    ld h, e
    ld bc, $fff5
    ld b, $0d
    ld c, $fd
    cp $02
    db $fc
    db $fc
    db $fc
    inc b
    ld bc, $0067
    ld hl, sp+$07
    jp nz, $bc43

    ld a, a
    ld l, a
    jp nz, $a23f

    ld h, e
    ld hl, $aa00
    ld l, e
    ld hl, rJOYP
    xor [hl]
    ld l, a
    cp [hl]
    ld a, a
    or h
    ld a, a
    add b
    ld a, a
    adc a
    add c
    ld a, [hl]
    cp $80
    dec l
    add hl, bc
    or b
    rlca
    ld c, d
    nop
    dec l
    rst $38
    xor h
    dec h
    and h
    daa
    and [hl]
    ld l, e
    ld [$ff5b], a
    jp c, $d051

    ld d, l
    call nc, $d455
    cp a
    ld a, a
    ret nz

    rst $38
    add b
    ld [$5595], a
    xor d
    jr nc, jr_00b_5528

    inc a
    jr nz, @+$06

    db $e3
    ld [bc], a
    ld [$d515], a
    ld a, [hl+]
    ld [hl-], a

jr_00b_5528:
    dec bc
    sub b
    dec bc
    rst $38
    db $fd
    inc bc
    rst $38
    ld bc, $29d7
    xor d
    ld d, l
    xor $30
    inc c
    cp $01
    cp $63
    inc c
    dec c
    nop
    ld [de], a
    rst $38
    dec c
    jr nz, jr_00b_5562

    ld e, $01
    inc b
    inc bc
    ld [$07fd], sp
    ld hl, $d810
    nop
    inc h
    ret c

    ld [bc], a
    db $fc
    cp a
    inc a
    ret nz

    db $10
    ldh [$ff88], a
    ld [hl], b
    inc bc
    ld b, $6f
    ld e, a
    ldh [$ff58], a
    ret nc

    ld e, a
    rst $10

jr_00b_5562:
    jr nz, jr_00b_5564

jr_00b_5564:
    ret nc

    inc bc
    rlca
    ld hl, sp+$63
    db $10
    jr nz, jr_00b_556c

jr_00b_556c:
    inc b
    ld [$0afb], sp
    dec de
    ld a, [bc]
    pop de
    rst $38
    ret nz

    push de
    call nz, $04f5
    ld l, $a6
    ld c, [hl]
    rst $38
    add $5e
    sub $2e
    and [hl]
    ld l, $a6
    ld c, $ff
    add [hl]
    ld e, [hl]
    sub $5e
    sub $d3
    jp nz, $f7d9

    ret z

    push de
    call nz, $01c1
    push de
    call nz, $cadb
    cp a
    db $db
    jp z, $d829

    cpl
    sbc $27
    nop
    rra
    rst $28
    ldh [rWave_d], a
    db $fc
    add hl, hl
    ld [hl+], a
    nop
    add hl, bc
    db $fc
    ld c, e
    cp $02
    add hl, bc
    ld a, [hl]
    or $76
    cp $5e
    or $0e
    cp $20
    nop
    ld l, $f6
    rrca
    rst $30
    rst $38
    nop
    rst $10
    xor e
    adc $d3
    jr nz, jr_00b_55c5

jr_00b_55c5:
    push de
    jr nz, jr_00b_55c8

jr_00b_55c8:
    pop de
    jr nz, jr_00b_55cb

jr_00b_55cb:
    rst $38
    rst $38
    nop
    cp a
    dec sp
    rst $38
    ld a, e
    rst $28
    ld l, e
    rst $38
    db $fd
    ld a, e
    inc h
    nop
    rlca
    and h
    adc e
    push hl
    jp c, $ff6e

    ld d, c
    ldh a, [$ffcf]
    ldh a, [$ffef]
    jr nc, jr_00b_5616

    ret nc

    rst $38
    rst $08
    ld a, a
    ld [hl], b
    rra
    ldh [$fff0], a
    rrca
    db $10
    ei
    rst $28
    jr nc, jr_00b_5619

    nop
    rst $38
    nop
    and c
    ld e, a
    pop bc
    db $fd
    ccf
    ld c, e
    nop
    pop de
    cpl
    xor b
    ld d, a
    call nc, $ef2b
    rst $38
    nop
    add c
    ld a, [hl]
    pop bc
    inc d
    add hl, bc
    ld b, $08
    rst $38
    rlca
    ld [$0907], sp
    ld b, $07

jr_00b_5616:
    ld [bc], a
    rlca
    ei

jr_00b_5619:
    ld [bc], a
    ld [bc], a
    ldh a, [$ff1f]
    ld c, b
    or b
    adc b
    ld [hl], b
    ld [$f0ff], sp
    ret c

    jr nz, jr_00b_5677

    and b
    ldh a, [rNR41]
    ld [hl], b
    rst $38
    jr nz, jr_00b_565e

    nop
    ld c, b
    ld c, b
    inc d
    inc d
    add c
    rst $38
    add c
    dec b
    ld b, $2b
    inc l
    ld b, [hl]
    ld c, c
    inc l
    rst $38
    inc sp
    sub c
    xor a
    sbc d
    sbc e
    cpl
    jr nc, jr_00b_56c2

    rst $38
    add e
    rst $38
    nop
    ret nz

    ccf
    add hl, bc
    rst $38
    dec d
    rst $30
    cp $4c
    di
    ld bc, $3c19
    jp Jump_00b_679a


    rst $38
    ld l, e
    sub h
    inc e
    db $e3

jr_00b_565e:
    add sp, $17
    inc d
    rst $38
    rst $38
    ld l, b
    add sp, -$0c
    inc c
    ld e, [hl]
    pop hl
    db $e3
    inc e
    rst $38
    nop
    rst $38
    ld [hl], d
    rst $38
    rra
    rst $38
    add $ff
    rst $38
    add d
    add d

jr_00b_5677:
    jr @+$1a

    and c
    and c
    and h
    ld h, h
    rst $38
    ld e, b
    cp b
    dec l
    db $dd
    sbc b
    add sp, -$14
    db $f4
    xor d
    jr nz, jr_00b_56af

    inc b
    jr nz, jr_00b_568c

jr_00b_568c:
    ld [$0020], sp
    db $10
    jr nz, jr_00b_5692

jr_00b_5692:
    nop
    rst $38
    ld l, e
    sub a
    ld h, a
    sbc c
    ld h, d
    sbc l
    ld d, d
    xor l
    rst $38
    ld l, e
    sub l
    or a
    ret


    or c
    adc $5a
    ld h, a
    rst $38
    inc b
    db $fc
    ld [hl-], a
    db $fd
    ccf
    db $fc
    rst $18
    inc a
    rst $38

jr_00b_56af:
    inc hl
    call c, $fce3
    scf
    db $ec
    rst $10
    inc l
    or a
    ld h, [hl]
    ld a, [hl]
    db $10
    ld h, b
    inc c
    rst $38
    and l
    jr nc, @+$29

    sbc d

jr_00b_56c2:
    ld a, [hl]
    add c
    nop
    ld hl, sp+$07
    rrca
    ldh a, [rNR23]
    rst $30
    dec h
    nop
    cp $00
    ld de, $6dbf
    ld l, l
    rst $38
    di
    di
    db $ed
    rst $38
    pop hl
    sbc $70
    ld l, a
    rst $18
    ret nc

    cp $f1
    cp $01
    ld bc, $f7f7
    rst $38
    rst $38
    xor $8e
    sub e
    rst $38
    ld h, e
    ld c, $f6
    sbc a
    ld h, e
    rst $30
    rst $30
    xor l
    rst $38
    xor l
    rst $38
    pop af
    or c
    xor [hl]
    pop af
    xor $f8
    rst $18
    rst $30
    xor a
    xor b
    ld a, [hl]
    ld [hl], c
    ld [bc], a
    ld bc, $edff
    rst $38
    db $ed
    rst $38
    sbc a
    sub a
    ld h, a
    ld c, $f2
    sub e
    db $fd
    ld l, l
    inc bc
    jr nz, jr_00b_571e

    dec b
    db $10
    rrca
    inc d
    dec bc
    ld sp, hl
    ld c, $20
    jr nz, jr_00b_5721

jr_00b_571e:
    jr nz, @+$2a

    ret nc

jr_00b_5721:
    inc b
    ld hl, sp+$14
    ei
    add sp, $38
    jr nz, jr_00b_5749

    ld [hl], h
    ld c, a
    ld a, [hl+]
    ld e, a
    ld b, h
    rst $38
    ccf
    jp z, Jump_00b_44bd

    cp e
    swap a
    db $e4
    rst $38
    rra
    cp e
    ld c, a
    ld [hl+], a
    rst $18
    adc b
    ld a, a
    dec d
    rst $38
    rst $38
    ld l, e
    rst $38
    or a
    ei
    ldh [c], a
    cp $f5

jr_00b_5749:
    rst $38
    db $ed
    sbc $ee
    halt
    rst $38
    push de
    db $dd
    sub $ff
    sbc $96
    sbc [hl]
    rla
    rra
    sub l
    sbc l
    rla
    rst $38
    rra
    dec d
    dec e
    ld [hl], c
    rst $38
    and h
    ld h, a
    sbc d
    rst $38
    ei
    ld e, h
    ld a, h
    inc d
    inc [hl]
    ld a, [hl-]
    ld a, [hl+]
    ld d, $ff
    ld c, $1d
    dec d
    ld [hl], l
    ld sp, hl
    halt
    ld a, [rWave_2]
    db $fc
    sub e
    db $fd
    ld [bc], a
    ld a, l
    ld d, e
    ld l, h
    daa
    ld [hl], a
    jr c, jr_00b_579f

    ld [de], a
    ld hl, $1836
    jr jr_00b_57c4

    stop
    ei
    jr jr_00b_57a5

    pop hl
    ld [hl], $af
    or c
    ld d, a
    ld e, b
    xor l
    rst $38
    xor [hl]
    ld a, [bc]
    dec bc
    add l
    add l
    ld e, b
    ld e, b
    adc b
    rst $38
    adc b

jr_00b_579f:
    inc hl
    inc hl
    cp c
    ld b, [hl]
    adc a
    ld [hl], b

jr_00b_57a5:
    jp $3cff


    ld a, [$bf05]
    ret nz

    xor a
    or b
    ld l, [hl]
    rst $30
    ld l, a
    add hl, bc
    add hl, bc
    inc bc
    cpl
    ld c, $f1
    inc e
    db $e3
    db $fc
    and d
    cpl
    ldh a, [rWave_7]
    add b
    nop
    ldh [rP1], a
    ld hl, sp+$00

jr_00b_57c4:
    push af
    cp $40
    nop
    ldh [$ffc0], a
    nop
    or c
    xor [hl]
    ld h, c
    ld e, [hl]
    rst $38
    pop hl
    sbc $e2
    db $dd
    cp $e1
    ld [hl], e
    ld [hl], d
    rst $38
    sbc $de
    rst $30

jr_00b_57dc:
    rst $30
    ld h, e
    sbc l
    add c
    ld a, [hl]
    rst $38
    ld b, c
    cp [hl]
    inc hl
    db $dd
    ld a, $c2
    ld [hl], e
    or e
    rst $38
    sbc $5e
    rst $30
    rst $30
    di
    db $ec
    and c
    sbc [hl]
    cp $01
    ld [bc], a
    ld a, [hl]
    ld h, c
    rst $30
    or $bf
    cp l
    ld a, a
    rst $38
    ld a, a
    ld h, c
    sbc [hl]
    add c
    ld a, [hl]
    ld b, e
    cp l
    ccf
    rst $38
    jp $de3e


    ld [hl], a
    or a
    cp $7e
    ld e, a
    db $fd
    ld e, a
    pop hl
    rra
    ld [$0507], sp
    ld [bc], a
    inc b
    inc bc
    cp l
    dec b
    jr nz, jr_00b_583d

    ld b, $00
    ld [$21f0], sp
    nop
    ld d, b
    rst $28
    and b
    sub b
    ld h, b
    ret nc

    ld [bc], a
    jr nz, jr_00b_57dc

    ld c, a
    db $ed
    rst $38
    inc de
    xor $11
    cp c
    ld b, [hl]
    adc d
    ld [hl], a
    rst $00
    rst $38
    add hl, sp
    pop hl
    ld e, $76
    adc a

jr_00b_583d:
    db $ed
    db $dd
    ld a, [hl]
    rst $38
    sbc $1d
    db $fd
    sub d
    ld [hl], d
    rst $20
    rra
    cp h
    rst $38
    jp $fc03


    sbc h
    ld a, a
    dec d
    dec e
    sub b
    rst $38
    sbc h
    db $10
    inc e
    jr jr_00b_586c

    jr z, jr_00b_588e

    set 7, [hl]
    ldh [$ff2a], a
    nop
    rst $38
    add l
    adc c
    adc [hl]
    adc d
    add d
    rst $38
    add [hl]
    inc b
    rlca
    rla
    jr jr_00b_5889

jr_00b_586c:
    db $e3
    ldh [rIE], a
    rra
    add hl, de
    cp $2d
    ld [hl-], a
    ld d, a
    ld l, b
    rst $30
    rst $38
    adc b
    sbc l
    ld h, d
    ld d, c
    xor $e3
    sbc h
    add a
    rst $30
    ld a, b
    ld l, [hl]
    pop af
    dec l
    ld b, [hl]
    jr nz, jr_00b_58c7

    ld l, h

jr_00b_5889:
    sbc a
    rst $38
    call c, $db3f

jr_00b_588e:
    inc a
    call nz, $e73b
    sbc a
    rst $38
    db $ec
    scf
    db $eb
    inc [hl]
    sub $e8
    and $98
    rst $38
    ld b, [hl]
    cp b
    ld c, d
    or h
    sub $a8
    db $ec
    sub d
    rst $38
    adc [hl]
    ld [hl], d
    ld e, d
    and $ff
    nop
    sbc a
    sbc a
    rst $28
    ld l, h
    ld l, h
    jp nz, Jump_00b_44c2

    ld b, a
    rst $38
    ld sp, hl
    rlca
    ld a, a
    ld a, [hl]
    halt
    adc [hl]
    add [hl]
    xor $e6
    cp $40
    ld [hl-], a
    rst $28
    cp $06
    ld c, $f6

jr_00b_58c7:
    dec b
    rra
    rst $38

jr_00b_58ca:
    ldh a, [$ff71]
    rst $18
    ld l, [hl]
    ret c

    rst $10
    db $f4
    add e
    ld [bc], a
    jr nz, @-$47

    cp a
    ld [hl], a
    ld e, a
    ld l, [hl]
    xor [hl]
    nop
    db $10
    ld d, d
    rst $30
    ld l, e
    dec b
    rra
    rst $38
    cp a
    and b
    ld sp, hl
    or $bc
    cp e

jr_00b_58e8:
    ld a, [hl]
    dec c
    cp $00
    ld hl, $ff8d
    sbc a
    xor a
    ld c, a
    ld a, a
    cp a
    cp a
    ld [hl], a
    or a
    cp [hl]
    ld [hl-], a
    rst $30
    ld l, e
    push bc
    rra
    inc c
    rst $20
    inc bc
    ld a, [bc]
    dec b
    and c

jr_00b_5903:
    jr nc, jr_00b_58ca

    rra
    jr jr_00b_58e8

    jr z, jr_00b_5903

    ret nc

    pop bc
    db $10
    inc bc
    ld a, [hl+]
    ld [hl], d
    adc l
    ld e, e
    and l
    ld b, a
    rst $38
    cp c
    ld h, c
    sbc [hl]
    halt
    adc a
    inc bc
    rst $38
    jr nc, @+$01

    rst $38
    inc c
    rst $08
    pop de
    inc sp
    and l
    rst $18
    ldh [rIE], a
    rst $38
    inc l
    rst $38
    adc h
    ld a, h
    rst $20
    rst $38
    rst $20
    ld a, [$50e0]
    add c
    ld [hl], b
    ld d, c

jr_00b_5935:
    add c
    add c
    nop
    rst $38
    ld h, [hl]
    rst $38
    ld a, [hl]
    ldh [rIE], a
    inc c
    rst $38
    jr nc, jr_00b_5935

    xor e
    rst $38
    db $ec
    and h
    ei
    rlca
    rst $38
    inc [hl]
    rst $38
    ld de, $1eff
    sub $e8
    rst $20
    sbc c
    ld b, [hl]
    cp b
    ld c, [hl]
    rst $38
    or b
    jp c, $e2a4

    sbc h
    add a
    ld a, c
    ld l, [hl]
    db $fd
    ldh a, [$ff2d]
    ld d, [hl]
    sbc l
    ld h, d
    pop af
    ld c, $c3
    inc a
    rst $38
    ld e, a
    and b
    db $fd
    inc bc
    push af
    dec c
    ld [hl], a
    rst $30
    rst $38
    xor b
    xor b
    db $f4
    adc h
    ld [$b61a], a
    halt
    rst $38
    ld d, l
    push de
    or d
    or d
    ld d, l
    ld d, l
    inc l
    inc l
    rst $38
    add d
    add d
    ccf
    ldh [$ffdf], a
    rst $08
    ret nc

    ret nz

jr_00b_598c:
    rst $38
    rst $10
    rst $00
    reti


    ret


    ret nc

    rst $08
    rst $18
    ret nz

    di
    pop de
    adc $63
    ld e, b
    ld h, a
    nop
    adc $b5
    ld h, [hl]
    ld e, c
    rst $38
    ldh [c], a
    db $dd
    pop af
    xor $e9
    and $76
    ld [hl], c
    rst $38
    sbc $dd
    or $f5
    and a
    dec de
    call $ff31
    adc a
    ld [hl], a
    rra
    rst $20
    ld a, $ce
    di
    inc de
    cp [hl]
    nop
    jr nz, jr_00b_5a36

    rst $08
    or h
    and [hl]
    sbc c
    ld bc, sHourOfPreviousSleep
    rst $38
    or [hl]
    or $f1
    cp [hl]
    cp l
    halt
    ld [hl], l
    rst $28
    rst $38
    ld d, a
    call $9f35
    ld l, a
    rra
    rst $28
    dec a
    ld a, a
    db $dd
    rst $30
    scf
    cp [hl]
    ld a, $f7
    ld [hl], a
    pop bc
    ccf
    ccf
    add hl, bc
    ld b, $04
    inc bc
    inc b
    inc bc
    ld hl, $0140
    jr nz, @+$01

    ld c, b
    or b
    ld c, b
    or b
    sub b
    ld h, b
    sub b
    ld h, b
    ld bc, $0270
    ld b, b
    nop
    ld [$20ff], sp
    jr nz, jr_00b_598c

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
    cp l
    cp l
    ld a, [$7ffa]
    ld a, a
    rst $10
    rst $10
    rst $38
    db $ed
    db $ed
    ld a, a
    ld a, a
    jp c, Jump_00b_7fda

    ld a, a
    rst $38
    rst $30
    rst $30
    xor l
    xor l
    rst $38
    di
    ld [hl], a
    ld l, e
    rst $38
    cp $e6
    rst $30
    rst $30
    cp [hl]
    cp [hl]
    rst $30
    rst $30
    rst $38
    nop
    nop
    rrca

jr_00b_5a36:
    ld [$273a], sp
    cpl
    rra
    rst $38
    ld a, a
    ld e, a
    ld e, a
    ccf
    rst $38
    cp a
    cp a
    ld a, a
    rst $38
    nop
    nop
    ret nz

    ret nz

    ldh a, [rWave_0]
    cp b
    ret c

    rst $38
    sbc $e6
    rst $30
    ei
    ei
    db $fd
    ei
    db $fd
    rst $38
    inc c
    inc c
    ccf
    inc hl
    ld a, a
    ld e, h
    sub $ef
    rst $38
    cp e
    add $7f
    cp b
    ld a, [hl-]
    ld b, a
    xor a
    rst $18
    rst $38
    or b
    or b
    ld a, h
    ld b, h
    cp $ba
    call z, $ff74
    cp a
    pop bc
    rst $38
    add [hl]
    cp a
    ld a, c
    rst $28
    dec e
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
    ret nz

    or l
    ld h, b
    sbc [hl]
    ld [hl], b
    ld c, l
    jr c, jr_00b_5b00

    rst $38
    jr c, jr_00b_5b0e

    ld a, h
    ld d, e
    ld a, [hl]
    ld c, b
    ld a, [hl]
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
    jr z, jr_00b_5b0e

    jr z, jr_00b_5b10

    ld d, $19
    ld de, $ff1e
    ld [$0e0f], sp
    rrca
    ld bc, $0001
    nop
    rst $38
    db $fd
    rst $38
    ld a, b
    rst $38
    nop
    rst $38
    add b
    ld a, a
    adc $30
    ld b, $ff
    rst $38
    rst $38
    nop
    ld c, $e0
    nop
    rlca
    ld hl, sp-$01
    ld a, b
    add a
    add c
    ld a, a

jr_00b_5b00:
    ld e, $fe
    ldh [$ffe0], a
    rst $38
    nop
    nop
    ld a, [bc]

jr_00b_5b08:
    or $34
    call z, $3ccc
    ld l, a

jr_00b_5b0e:
    jr jr_00b_5b08

jr_00b_5b10:
    ldh a, [$fff0]
    inc bc
    db $10
    rst $30
    rst $30
    and c
    ld c, $ff
    rst $28
    rst $28
    ld a, l
    ld a, l
    rst $30
    rst $30
    cp d
    cp d
    ld a, a
    ld a, a
    ld a, a
    ld b, b
    rst $38
    sub d
    rst $38
    ld [$0420], sp
    sbc a
    ld de, $8cff
    rst $38
    ld hl, $00a0
    ld bc, $0c01
    rst $18
    di
    inc e
    db $e3
    add hl, de
    rst $20
    inc bc
    ld bc, $7fef
    rst $38
    xor a
    ld a, a
    add e
    ld a, a
    ldh [$ff9f], a
    ld a, [hl]
    ld h, c
    rst $38
    rra
    ld e, $03
    inc bc
    nop
    nop
    db $ed
    cp $ff
    pop hl
    cp $c3
    db $fd
    rra
    db $e3
    inc l
    call c, $f8fb
    jr c, @+$03

    ld b, $fe
    cp c
    ld a, h
    and e
    db $e4
    rst $38
    sbc a
    add hl, sp
    ld c, [hl]
    ld a, e
    inc l
    push af
    bit 7, a
    rst $38
    ld h, l
    rra
    ld c, $ef
    ld [hl], d
    ld [hl], a
    cp c
    rst $18
    rst $38
    cp d
    db $ed
    db $db
    ld a, a
    ret z

    cp [hl]
    ld d, d
    xor $ff
    inc e
    call c, $fbc0
    ld a, e
    ld a, l
    add d
    pop hl
    ei
    ld [hl], a
    rst $38
    nop
    ld a, [bc]
    rst $38
    db $fd
    inc bc
    db $fd
    ld bc, $feff
    ld hl, $a220
    ld e, l
    ld b, c
    ld l, b
    rst $38
    rst $38
    cp $fe
    ld bc, $bfff
    ret nz

    cp a
    add b
    rst $38
    ld a, a
    halt
    ld a, c
    sub h
    sbc e
    inc a
    dec sp
    rlca
    rst $38
    inc b
    jp c, Jump_00b_44db

    ld b, h
    adc c
    adc c
    ld [hl+], a
    rst $38
    ld [hl+], a
    cp a
    ret nz

    ld a, a
    add b
    pop af
    ld c, $ce
    rst $38
    ccf
    ccf
    rst $38
    cpl
    cpl
    jp c, $2dda

    rst $38
    dec l
    inc sp
    db $f4
    sub [hl]
    ld [hl], l
    jp z, Jump_00b_723d

    rst $38
    adc l
    sbc l
    db $e3
    db $fd
    db $fd
    halt
    halt
    and e
    ei
    and e
    rra
    or b
    inc bc
    push af
    push af
    xor d
    xor d
    inc d
    ld a, a
    inc d
    adc b
    adc b
    ld [hl-], a
    ld [hl-], a
    ld [bc], a
    ld [bc], a
    ld b, c
    dec e
    rst $38
    ret nz

    ret nz

    and b
    ld h, b
    ld d, b
    or b
    xor b
    ret c

    rst $38
    call nc, $ecec
    db $f4
    ld [$f6f6], a
    ld a, [$f6ff]
    ld a, [$fafc]
    db $fd
    ei
    di
    db $fd
    ld a, a
    db $e3
    db $fd
    di
    db $fd
    ldh [c], a
    db $fc
    ldh a, [c]
    jr nz, jr_00b_5c14

jr_00b_5c14:
    rst $38
    ld a, [$eafc]
    db $fc
    ldh [c], a
    db $fc
    db $e4
    ld a, [$c6ff]
    ld a, [$221c]
    inc e
    ld a, a
    ld h, e
    ld a, $ff
    ld e, [hl]
    ccf
    ld a, b
    rlca
    ld b, d
    ccf
    ld c, [hl]
    ccf
    rst $38
    adc $bf
    xor l
    xor l
    ei
    ld a, [$797e]
    rst $38
    db $dd
    jp $d9ed


    dec a
    dec de
    rst $28
    set 7, a
    ld l, a
    ld e, e
    cp a
    and b
    rst $38
    rrca
    rst $38
    rst $28
    rst $38
    rst $30
    rst $20
    rst $30
    rst $28
    rst $18
    rst $28
    db $fd
    rst $28
    rst $38
    ld e, l
    rst $28
    db $fd
    dec b
    rst $38
    ldh a, [rIE]
    rst $30
    rst $38
    rst $28
    rst $20
    xor e
    rst $30
    ei
    rst $30
    cp a
    rst $30
    ld sp, hl
    rst $38
    nop
    ld hl, $2483
    ld bc, $0301
    ld [bc], a
    ld [bc], a
    rst $30
    dec b
    dec b
    dec bc
    ld b, c
    dec h
    dec c
    ld c, $6e
    ld [hl], c
    rst $08
    ld [hl], a
    adc a
    sbc a
    ld a, a
    db $10
    jr jr_00b_5ca2

    jr jr_00b_5c84

jr_00b_5c84:
    nop
    rrca
    db $fc
    inc bc
    ei
    db $fc
    pop bc
    nop
    dec b
    ld bc, $001f
    rlca
    add hl, hl
    rst $38
    dec c
    nop
    ld [de], a
    dec c
    dec h
    ld a, [de]
    ld b, a
    jr c, @+$01

    ld a, l
    ld [bc], a
    dec e
    ld [bc], a
    inc hl
    dec e

jr_00b_5ca2:
    ld b, e
    dec a
    rst $38
    ret nz

    nop
    cp h
    ld b, b
    jp nc, $e92c

    ld d, $ff
    cp $80
    db $f4
    add sp, -$06
    db $e4
    ld sp, hl
    or $f0
    cpl
    inc bc
    rra
    nop
    rra
    nop
    rlca
    cpl
    cp l
    reti


    ld a, $9a
    rst $38
    daa
    db $d3
    ld h, [hl]
    jp c, $d96d

    ccf
    db $db
    rst $38
    ld l, $da
    dec h
    sbc c
    adc $bf
    ld c, [hl]
    cp a
    cp a
    ld c, l
    cp [hl]
    ld [hl+], a
    db $dd
    inc e
    db $e3
    ld h, b
    inc hl
    rst $38
    rst $38
    db $fc
    rst $38
    or l
    sbc e
    push af
    reti


    ld l, l
    ld c, e
    rst $38
    db $ed
    db $db
    rst $20
    db $db
    ld l, $1b
    or $db
    rst $38
    halt
    ld e, e
    db $d3
    rst $20
    di
    rst $28
    ld [hl], a
    rst $28
    rst $38
    or $ef
    or d
    rst $28
    or l
    rst $28
    ld [hl], l
    rst $28
    ei
    or e
    rst $28
    and c
    rrca
    xor d
    rst $30
    adc e
    rst $30
    dec bc
    rst $38
    rst $30
    dec l
    rst $30
    xor [hl]
    rst $30
    xor l
    rst $30
    dec de
    rst $38
    rla
    dec hl
    scf
    ld sp, $332f
    cpl
    ld d, e
    ld a, a
    ld l, a
    ld h, a
    ld e, a
    daa
    ld e, a
    and a
    rst $18
    add l
    ld c, $f8
    rra
    nop
    rrca
    db $10
    rra
    nop
    nop
    nop
    ld h, a
    dec de
    ld e, a
    rst $38
    rlca
    ccf
    rrca
    ld e, a
    cpl
    sbc a
    ld l, a
    cp a
    rst $38
    ld c, a
    rst $08
    rlca
    rlca
    nop
    rst $38
    ldh a, [$fff8]
    rst $38
    ldh a, [$fffc]
    ldh a, [$fffa]
    db $f4
    ld a, [$f9f4]
    rlca
    and $f6
    ret nz

    db $10
    inc l
    rra
    nop
    rra
    nop
    rra
    nop
    ld b, $3f
    rst $38
    dec h
    pop de
    and [hl]
    ld e, d
    ld [hl], a
    adc e
    ld c, $f2
    rst $38
    add hl, de
    pop af
    rra
    rst $30
    ld a, [de]
    ldh a, [c]
    db $fd
    dec c
    rst $38
    ld l, d
    ld l, d
    or h
    or h
    cp d
    add $39
    rst $38
    rst $38
    push bc
    ld a, a
    cp l
    ld a, a
    ld hl, sp+$06
    add l
    ld a, a
    rst $30
    cp [hl]
    sbc e
    db $f4
    nop
    db $10
    xor $db
    xor $db
    rst $38
    inc h
    dec de
    db $f4
    db $db
    ld h, h
    ld e, c
    ld [hl], d
    rst $20
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
    ld sp, $b0e7
    rst $28
    xor d
    rst $20
    rst $38
    xor c
    rst $30
    jr z, @-$07

    ld c, d
    rst $30
    ld c, b
    rst $30
    rst $38
    dec c
    rst $30
    dec c
    rst $20
    ld [$aff7], sp
    rst $18
    ld a, [hl]
    dec h
    nop
    ld h, a
    ld e, a
    ld d, a
    ld l, a
    ld d, c
    ld l, a
    cpl
    rrca
    ld a, [$0fa3]
    ei
    jr nz, jr_00b_5dca

jr_00b_5dca:
    di
    rst $38
    ld h, c
    rst $38
    ld e, [hl]
    rst $38
    ld b, d
    db $e3
    sbc l
    or c
    adc [hl]
    ld e, c
    ld b, [hl]
    ld l, [hl]
    rst $38
    ld l, c
    cp l
    add d
    push bc
    cp d
    ld h, l
    ld e, d
    db $fd
    rst $38
    adc l
    adc [hl]
    ld [hl], d
    dec e
    push hl
    ld a, [$8c0a]
    rst $38
    ld [hl], h
    ld b, $fa
    rst $38
    ld bc, $ea1a
    rst $30
    db $fd
    rst $10
    nop
    ld b, a
    db $fd
    xor a
    rst $28
    db $fd
    rst $38
    db $fd
    rst $38
    or l
    cp [hl]
    cp [hl]
    rst $28
    db $fd
    ld d, a
    rst $38
    sub $ff
    rst $38
    ld a, a
    rst $38
    jp c, Jump_00b_4aff

    rst $38
    ld l, a
    rst $38
    rst $38
    cp d
    rst $38
    or [hl]
    rst $38
    ld d, h
    xor e
    ld d, l
    rst $38
    xor d
    add d
    ld a, l
    sub c
    ld l, [hl]
    ld d, h
    xor e
    ld b, h
    ld a, a
    cp e
    xor c
    ld d, [hl]
    add hl, hl
    sub $c0
    ccf
    ldh [rLY], a
    db $fd
    ld a, a
    jr nc, jr_00b_5e31

    nop
    rst $38

jr_00b_5e31:
    ld h, c
    rst $18
    ld b, c
    pop de
    rst $30
    ld d, c
    inc bc
    db $fc
    ldh [rLY], a
    cp $ff
    cp $ff
    rst $38
    nop
    ld a, l
    inc b
    ld a, l
    inc b
    ld c, l
    ld c, h
    cp a
    rst $38
    cp a
    ld a, l
    ld h, c
    db $e3
    db $dd
    pop hl
    sbc $e1
    rst $38
    sbc $7d
    ld h, d
    rst $18
    db $dd
    rst $30
    push af
    ld e, l
    rst $38
    ld b, c
    db $e3
    db $dd
    ld h, c
    ld e, [hl]
    pop hl
    sbc $59
    rst $38
    ld b, [hl]
    cp l
    cp d
    ld l, e
    ld l, c
    or [hl]
    or h
    sbc l
    rst $38
    ld a, a
    sbc h
    ld a, [hl]
    adc l
    ld a, a
    adc l
    ld a, a
    adc e
    rst $38
    ld a, l
    ld b, l
    cp e
    dec sp
    rst $00
    ld b, $fe
    db $10
    rst $38
    db $10
    add c
    add c
    jr z, jr_00b_5eac

    ld [bc], a
    ld [bc], a
    ld c, l
    rst $38
    ld c, l
    add a
    add [hl]
    inc de
    db $10
    ld c, [hl]
    ld c, l
    ld b, d
    rst $38
    ld b, d
    inc b
    inc b
    ld d, c
    ld d, c
    rst $38
    ret nz

    db $ec
    rst $38
    inc e
    and h
    ld h, a
    sbc b
    sbc b
    ld h, e
    ld h, e
    inc hl
    rst $38
    inc hl
    db $10
    db $10
    ld d, b
    ld d, b
    ld hl, sp+$08
    ld l, [hl]
    rst $38

jr_00b_5eac:
    ld [hl], d
    ld c, e
    call z, $3211
    add h
    adc l
    jr @+$01

    jr jr_00b_5f34

    ld a, l
    rra
    rla
    ld c, a
    ld c, e
    rst $20
    rst $38
    ret nz

    ld a, $29
    inc e
    inc bc
    dec sp
    scf
    call c, $dcff
    rst $38
    cp a
    rst $38
    rst $28
    rst $38
    ret nz

    ldh a, [$ffbf]
    rrca
    ld b, $ff
    ld h, e
    cp a
    inc e
    jr nz, jr_00b_5f20

    ld a, $ff
    ld [hl-], a
    cp $e6
    db $fc
    call z, Call_000_1efe
    ld a, [hl-]
    rst $38
    jp z, Jump_00b_6296

    ld e, h
    and h
    cp h
    and e
    ld h, d
    rst $38
    dec e
    add d
    ld a, l
    db $fd
    add d
    ld e, c
    ld b, [hl]
    push hl
    rst $38
    sbc d
    sbc [hl]
    ld h, b
    db $eb
    dec bc
    adc [hl]
    ld [hl], d
    jp $3dff


    ld a, [hl]
    add d
    ld e, h
    and h
    ld h, a
    sbc c
    ld e, c
    rst $38
    add [hl]
    xor a
    xor b
    ld d, l
    ld d, l
    add e
    ld a, [hl]
    jp $3efd


    ld c, l
    nop
    and c
    ld e, [hl]
    push de
    ld a, [hl+]
    rst $38
    nop
    add e
    add c
    ld a, [hl]
    sub b
    ld c, l
    ld h, h
    ld e, e

jr_00b_5f20:
    ld [hl], c
    dec [hl]
    ldh [rKEY1], a
    db $10
    ld c, [hl]
    rst $18
    db $ed
    ld b, c
    ld hl, $e000
    ld e, a
    ld b, c
    ld d, l
    rst $38
    ld a, a
    cp a
    dec a
    ld b, b

jr_00b_5f34:
    ld h, c
    rrca
    ld a, l
    inc b
    dec b
    ld hl, sp+$41
    ld d, l
    ld h, c
    ld b, l
    rst $38
    cp a
    cp a
    ld l, l
    ld l, l
    rst $30
    add a
    adc a
    ld [hl], a
    rst $38
    ld c, $f6
    ld [hl], e
    add e
    sbc $1e
    rst $30
    ld [hl], a
    rst $38
    ld a, [hl+]
    ld a, [hl+]
    rst $30
    rst $00
    call $8bb5
    ld [hl], e
    rst $38
    ld a, $ce
    ld e, l
    sbc l
    rst $38
    ld a, a
    or l
    dec [hl]
    rst $38
    xor l
    xor l
    ld a, [$ff7a]
    sbc a
    cp $c6
    rst $38
    cp l
    sbc c
    cp a
    db $db
    or $d2
    push af
    reti


    rst $38
    sub a
    sub c
    inc l
    ld a, [hl+]
    sub [hl]
    sbc d
    dec l
    ld sp, $bdff
    and c
    ld a, l
    ld h, c
    ld l, d
    halt
    jp nc, $ffee

    ld [$544f], sp
    call c, $9b1a
    ld [hl], $b6
    rst $38
    daa
    or a
    ld [hl+], a
    or e
    ld e, b
    ret c

    sub a
    rst $18
    rst $38
    ld [bc], a
    and $22
    ld [hl-], a
    ld e, e
    db $db
    ld h, l
    ld l, l
    rst $38
    db $e4
    db $ed
    ld e, c
    reti


    dec bc
    dec de
    sub $f6
    rst $38
    ld [hl], b
    ld l, a
    di
    adc $b0
    xor a
    dec [hl]
    cpl
    rst $38
    ld a, b
    ld [hl], a
    ld a, [$f8d5]
    rst $20
    ld a, c
    halt
    rst $38
    ld c, h
    or e
    inc hl
    call c, $ff19
    add [hl]
    ei
    rst $38
    ld h, b
    rst $38
    jp z, $2435

    db $db
    rst $10
    ld a, [hl]
    rst $38
    sbc [hl]
    ld h, [hl]
    ld e, d
    xor d
    ld e, $ea
    sbc [hl]
    and $7f
    ld l, h
    call nc, $f40c
    ld c, [hl]
    or $8e
    rrca
    inc a
    cp [hl]
    inc c
    ld l, c
    add b
    ld b, b
    cp a
    ld a, a
    cp a
    ld hl, $001d
    rst $38
    add d
    ld a, h
    or l
    ld a, c
    xor e
    ld [hl], e
    inc de
    ld [hl+], a
    rst $38
    xor a
    adc $5d
    sbc [hl]
    cp e
    inc a
    ld [hl], a
    ld a, b
    rst $38
    jp hl


    or $d7
    xor $af
    sbc $ab
    ld [hl], a
    ld a, a
    or l
    ld a, e
    cp $01
    add c
    ld b, d
    cp [hl]
    ld h, h
    ld [bc], a
    rst $38
    ld a, a
    add b
    ld [hl], b
    or b
    ld a, c
    cp c
    ld h, b
    and b
    cp $b0
    rrca
    cp a
    ccf
    ret nz

    jr nz, @-$1f

    db $fd
    inc bc
    rst $38
    ccf
    dec a
    rst $00
    push bc
    rlca
    dec b
    ccf
    dec a
    rst $38
    inc bc
    db $fd
    db $fd
    inc bc
    add a
    ld a, e
    cp a
    cp a
    rst $38
    ld l, a
    ld h, c
    pop af
    xor $f9
    and $f2
    db $ed
    rst $38
    ld h, h
    ld e, e
    rst $28
    call nc, $cfff
    rst $30
    rst $30
    rst $38
    xor a
    and c
    pop af
    xor $e9
    and $b2
    xor l
    rst $38
    db $e4
    db $db
    cp a
    add h
    ld a, a
    ld a, a
    db $fd
    reti


    rst $38
    or [hl]
    sbc d
    or a
    db $d3
    or $da
    db $fd
    reti


    rst $38
    xor a
    db $db
    cp [hl]
    jp c, $d9b5

    cp c
    rst $08
    rst $38
    ldh a, [c]
    sbc l
    rst $00
    cp b
    cp a
    ret nz

    rst $08
    ldh a, [rIE]
    ld [hl], e
    ld a, h
    ld a, d
    ld a, l
    ld [hl], $39
    ld l, h
    ld l, a
    rst $38
    or b
    or b
    ld l, h
    rst $28
    ld a, b
    cp b
    ld d, c
    rst $28
    rst $38
    xor a
    or b
    and $f9
    adc $f1
    ld c, c
    call $32ff
    dec sp
    dec h
    and $16
    add hl, de
    sbc [hl]
    pop hl
    rst $38
    scf
    ld hl, sp+$6f
    add sp, $2f
    add sp, $3a
    scf
    rst $38
    ld a, c
    ld h, [hl]
    ld a, e
    ld b, a
    ld a, h
    ld [hl], e
    call c, $ffdb
    cp a
    cp h
    and a
    and a

jr_00b_60b0:
    rrca
    ld c, $4c
    rst $38
    rst $38
    or c
    xor $4c
    ei
    inc sp
    sbc $c8
    cp a
    db $fd
    jr nz, jr_00b_60b0

    ld h, a
    cp e
    cp d
    xor $d2
    inc c
    db $f4
    rst $38
    sbc $f6
    ld e, $e6
    cp [hl]
    ld b, d
    ld a, [hl]
    cp d
    rst $08
    xor $6e
    add h
    add h
    cpl
    rrca
    dec bc
    ld a, c
    sub a
    ld h, a
    cp e
    rst $38
    nop
    ldh [$ff71], a
    ld a, a
    jp nz, Jump_00b_4101

    db $10
    sub a
    rra
    ld l, a
    ld b, c
    cp [hl]
    rst $38
    nop
    ldh [$ff71], a
    ld b, b
    dec l
    ld h, b
    dec l
    rst $38
    nop
    ld b, c
    ld a, $af
    sbc [hl]
    pop de
    adc $ef
    rst $38
    ldh [$ff75], a
    ldh a, [$ffbb]
    ld a, b
    ld e, l
    cp h
    cpl
    rst $38
    sbc $ff
    nop
    dec hl
    jp c, $d829

    add hl, hl
    rst $38
    ret c

    dec l
    call c, $da2b
    dec hl
    jp c, $ff2d

    call c, $dc2d
    xor a
    dec hl
    xor a
    dec hl
    adc a
    rst $38
    dec bc
    rst $18
    ld e, e
    rst $18
    ld e, e
    sbc a
    dec de
    rst $08
    rst $38
    ld c, e
    sbc a
    dec de
    rst $38
    sbc a
    sbc l
    ld l, l
    ccf
    rst $38
    jp $5da3


    ld c, [hl]
    or b
    or e
    ld b, e
    ld c, [hl]
    rst $38
    or [hl]
    rst $30
    ld b, a
    rst $30
    sub a
    sbc l
    ld h, l
    scf
    rst $38

jr_00b_6144:
    res 4, e
    ld e, l
    ld c, a
    or e
    or a
    ld b, a
    ld c, [hl]
    rlca
    or [hl]
    rst $38
    ld c, a
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

jr_00b_616c:
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

jr_00b_617d:
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
    jr nc, jr_00b_6144

    sbc d
    ld [hl+], a
    nop
    rst $38
    jr nc, jr_00b_61a4

    rst $38
    rst $38

jr_00b_61a4:
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
    jr nc, jr_00b_616c

    jr nc, jr_00b_617d

    cp a
    ccf
    ld b, b
    ccf
    ccf
    nop
    ld h, e
    ld bc, $fff5
    ld b, $0d
    ld c, $fd
    cp $02
    db $fc
    db $fc
    db $fc
    inc b
    ld bc, $0067
    ld hl, sp+$07
    jp nz, $bc43

    ld a, a
    ld l, a
    jp nz, $a23f

    ld h, e
    ld hl, $aa00
    ld l, e
    ld hl, rJOYP
    xor [hl]
    ld l, a
    cp [hl]
    ld a, a
    or h
    ld a, a
    add b
    ld a, a
    adc a
    add c
    ld a, [hl]
    cp $80
    dec l
    add hl, bc
    or b
    rlca
    ld c, d
    nop
    dec l
    rst $38
    xor h
    dec h
    and h
    daa
    and [hl]
    ld l, e
    ld [$ff5b], a
    jp c, $d051

    ld d, l
    call nc, $d455
    cp a
    ld a, a
    ret nz

    rst $38
    add b
    ld [$5595], a
    xor d
    jr nc, jr_00b_6221

    inc a
    jr nz, @+$06

    db $e3
    ld [bc], a
    ld [$d515], a
    ld a, [hl+]
    ld [hl-], a

jr_00b_6221:
    dec bc
    sub b
    dec bc
    rst $38
    db $fd
    inc bc
    rst $38
    ld bc, $29d7
    xor d
    ld d, l
    xor $30
    inc c
    cp $01
    cp $63
    inc c
    dec c
    nop
    ld [de], a
    rst $38
    dec c
    jr nz, jr_00b_625b

    ld e, $01
    inc b
    inc bc
    ld [$07fd], sp
    ld hl, $d810
    nop
    inc h
    ret c

    ld [bc], a
    db $fc
    cp a
    inc a
    ret nz

    db $10
    ldh [$ff88], a
    ld [hl], b
    inc bc
    ld b, $6f
    ld e, a
    ldh [$ff58], a
    ret nc

    ld e, a
    rst $10

jr_00b_625b:
    jr nz, jr_00b_625d

jr_00b_625d:
    ret nc

    inc bc
    rlca
    ld hl, sp+$63
    db $10
    jr nz, jr_00b_6265

jr_00b_6265:
    inc b
    ld [$0afb], sp
    dec de
    ld a, [bc]
    pop de
    rst $38
    ret nz

    push de
    call nz, $04f5
    ld l, $a6
    ld c, [hl]
    rst $38
    add $5e
    sub $2e
    and [hl]
    ld l, $a6
    ld c, $ff
    add [hl]
    ld e, [hl]
    sub $5e
    sub $d3
    jp nz, $f7d9

    ret z

    push de
    call nz, $01c1
    push de
    call nz, $cadb
    cp a
    db $db
    jp z, $d829

Jump_00b_6296:
    cpl
    sbc $27
    nop
    rra
    rst $28
    ldh [rWave_d], a
    db $fc
    add hl, hl
    ld [hl+], a
    nop
    add hl, bc
    db $fc
    ld c, e
    cp $02
    add hl, bc
    ld a, [hl]
    or $76
    cp $5e
    or $0e
    cp $20
    nop
    ld l, $f6
    rrca
    rst $30
    rst $38
    nop
    rst $10
    xor e
    adc $d3
    jr nz, jr_00b_62be

jr_00b_62be:
    push de
    jr nz, jr_00b_62c1

jr_00b_62c1:
    pop de
    jr nz, jr_00b_62c4

jr_00b_62c4:
    rst $38
    rst $38
    nop
    cp a
    dec sp
    rst $38
    ld a, e
    rst $28
    ld l, e
    rst $38
    db $fd
    ld a, e
    inc h
    nop
    rlca
    and h
    adc e
    push hl
    jp c, $ff6e

    ld d, c
    ldh a, [$ffcf]
    ldh a, [$ffef]
    jr nc, jr_00b_630f

    ret nc

    rst $38
    rst $08
    ld a, a
    ld [hl], b
    rra
    ldh [$fff0], a
    rrca
    db $10
    ei
    rst $28
    jr nc, jr_00b_6312

    nop
    rst $38
    nop
    and c
    ld e, a
    pop bc
    db $fd
    ccf
    ld c, e
    nop
    pop de
    cpl
    xor b
    ld d, a
    call nc, $ef2b
    rst $38
    nop
    add c
    ld a, [hl]
    pop bc
    inc d
    add hl, bc
    ld b, $08
    rst $38
    rlca
    ld [$0907], sp
    ld b, $07

jr_00b_630f:
    ld [bc], a
    rlca
    ei

jr_00b_6312:
    ld [bc], a
    ld [bc], a
    ldh a, [$ff1f]
    ld c, b
    or b
    adc b
    ld [hl], b
    ld [$f0ff], sp
    ret c

    jr nz, jr_00b_6370

    and b
    ldh a, [rNR41]
    ld [hl], b
    rst $38
    jr nz, jr_00b_6357

    nop
    ld c, b
    ld c, b
    inc d
    inc d
    add c
    rst $38
    add c
    dec b
    ld b, $2b
    inc l
    ld b, [hl]
    ld c, c
    inc l
    rst $38
    inc sp
    sub c
    xor a
    sbc d
    sbc e
    cpl
    jr nc, jr_00b_63bb

    rst $38
    add e
    rst $38
    nop
    ret nz

    ccf
    add hl, bc
    rst $38
    dec d
    rst $30
    cp $4c
    di
    ld bc, $3c19
    jp Jump_00b_679a


    rst $38
    ld l, e
    sub h
    inc e
    db $e3

jr_00b_6357:
    add sp, $17
    inc d
    rst $38
    rst $38
    ld l, b
    add sp, -$0c
    inc c
    ld e, [hl]
    pop hl
    db $e3
    inc e
    rst $38
    nop
    rst $38
    ld [hl], d
    rst $38
    rra
    rst $38
    add $ff
    rst $38
    add d
    add d

jr_00b_6370:
    jr @+$1a

    and c
    and c
    and h
    ld h, h
    rst $38
    ld e, b
    cp b
    dec l
    db $dd
    sbc b
    add sp, -$14
    db $f4
    xor d
    jr nz, jr_00b_63a8

    inc b
    jr nz, jr_00b_6385

jr_00b_6385:
    ld [$0020], sp
    db $10
    jr nz, jr_00b_638b

jr_00b_638b:
    nop
    rst $38
    ld l, e
    sub a
    ld h, a
    sbc c
    ld h, d
    sbc l
    ld d, d
    xor l
    rst $38
    ld l, e
    sub l
    or a
    ret


    or c
    adc $5a
    ld h, a
    rst $38
    inc b
    db $fc
    ld [hl-], a
    db $fd
    ccf
    db $fc
    rst $18
    inc a
    rst $38

jr_00b_63a8:
    inc hl
    call c, $fce3
    scf
    db $ec
    rst $10
    inc l
    or a
    ld h, [hl]

jr_00b_63b2:
    ld a, [hl]
    db $10
    ld h, b
    inc c
    rst $38
    and l
    jr nc, @+$29

    sbc d

jr_00b_63bb:
    ld a, [hl]
    add c
    nop
    ld hl, sp+$07
    rrca
    ldh a, [rNR23]
    rst $30
    dec h
    nop
    ldh [$ff65], a
    jr z, jr_00b_63e9

    nop
    rra
    nop
    rra
    nop
    and l
    nop
    dec c
    nop
    ld a, [bc]
    ccf
    dec b
    db $10
    rrca
    inc d
    dec bc
    ld c, $20
    jr nz, @+$05

    jr nz, jr_00b_645f

    jr z, jr_00b_63b2

    inc b
    ld hl, sp+$14
    add sp, $38
    jr nz, @+$22

jr_00b_63e9:
    rst $38
    ld [hl], h
    ld c, a
    ld a, [hl+]
    ld e, a
    ld b, h
    ccf
    jp z, $ffbd

    ld b, h
    cp e
    swap a
    db $e4
    rra
    cp e
    ld c, a
    rst $38
    ld [hl+], a
    rst $18
    adc b
    ld a, a
    dec d
    rst $38
    ld l, e
    rst $38
    rst $38
    or a
    ei
    ldh [c], a
    cp $f5
    db $ed
    sbc $ee
    rst $38
    halt
    rst $38
    push de
    db $dd
    sub $de
    sub [hl]
    sbc [hl]
    rst $38
    rla
    rra
    sub l
    sbc l
    rla
    rra
    dec d
    dec e
    rst $38
    ld [hl], c
    rst $38
    and h
    ld h, a
    sbc d
    ei
    ld e, h
    ld a, h
    rst $38
    inc d
    inc [hl]
    ld a, [hl-]
    ld a, [hl+]
    ld d, $0e
    dec e
    dec d
    rst $38
    ld [hl], l
    ld sp, hl
    halt
    ld a, [$fc32]
    sub e
    db $fd
    rst $38
    ld [bc], a
    ld a, l
    ld d, e
    ld l, h
    daa
    jr c, jr_00b_645f

    ld [de], a
    ld l, [hl]
    pop hl
    rlca
    jr jr_00b_6460

    inc a
    stop
    jr jr_00b_6465

    and c
    ld [$afff], sp
    or c
    ld d, a
    ld e, b
    xor l
    xor [hl]
    ld a, [bc]
    dec bc
    rst $38
    add l
    add l
    ld e, b
    ld e, b
    adc b
    adc b

jr_00b_645f:
    inc hl

jr_00b_6460:
    inc hl
    rst $38
    cp c
    ld b, [hl]
    adc a

jr_00b_6465:
    ld [hl], b
    jp $fa3c


    dec b
    rst $38
    cp a
    ret nz

    xor a
    or b
    ld l, [hl]
    ld l, a
    add hl, bc
    add hl, bc
    sbc [hl]
    inc bc
    cpl
    ld c, $f1
    inc e
    db $e3
    and d
    cpl
    ldh a, [rWave_7]
    add b
    cp a
    nop
    ldh [rP1], a
    ld hl, sp+$00
    cp $40
    nop
    ldh [$ffc0], a
    ret nz

    nop
    rra
    nop
    rra
    nop
    rra
    nop
    add a
    nop
    pop hl
    rra
    ld [$df07], sp
    dec b
    ld [bc], a
    inc b
    inc bc
    dec b
    jr nz, jr_00b_64c0

    ld b, $00
    ei
    ld [$21f0], sp
    nop
    ld d, b
    and b
    sub b
    ld h, b
    ret nc

    cp $02
    jr nz, jr_00b_6460

    ld c, a
    db $ed
    inc de
    xor $11
    cp c
    rst $38
    ld b, [hl]
    adc d
    ld [hl], a
    rst $00
    add hl, sp
    pop hl
    ld e, $76
    rst $38

jr_00b_64c0:
    adc a
    db $ed
    db $dd
    ld a, [hl]
    sbc $1d
    db $fd
    sub d
    rst $38
    ld [hl], d

jr_00b_64ca:
    rst $20
    rra
    cp h
    jp $fc03


    sbc h
    rst $38
    ld a, a
    dec d
    dec e
    sub b
    sbc h
    db $10
    inc e
    jr jr_00b_64ca

    inc d
    jr z, @+$36

    set 4, c
    jr @+$01

    add l
    adc c
    rst $38
    adc [hl]
    adc d
    add d
    add [hl]
    inc b
    rlca
    rla
    jr @+$01

    dec e
    db $e3
    ldh [$ff1f], a
    add hl, de
    cp $2d
    ld [hl-], a
    rst $38

jr_00b_64f7:
    ld d, a
    ld l, b
    rst $30
    adc b
    sbc l
    ld h, d
    ld d, c
    xor $bf
    db $e3
    sbc h
    add a
    ld a, b
    ld l, [hl]
    pop af
    dec l
    ld [$ff20], sp
    ccf
    ld l, h
    sbc a
    call c, $db3f
    inc a
    call nz, $3bff
    rst $20
    sbc a
    db $ec
    scf
    db $eb
    inc [hl]
    sub $ff
    add sp, -$1a
    sbc b
    ld b, [hl]
    cp b
    ld c, d
    or h
    sub $ff
    xor b
    db $ec
    sub d
    adc [hl]
    ld [hl], d
    ld e, d
    and $ff
    ld a, a
    nop

jr_00b_652f:
    sbc a
    sbc a
    ld l, h
    ld l, h
    jp nz, Jump_00b_44c2

    ld b, a
    rst $38
    rst $38
    ld sp, hl
    rlca
    ld a, [hl]
    halt

jr_00b_653d:
    adc [hl]
    add [hl]
    xor $7b
    and $fe
    ld b, b
    ld [hl-], a
    cp $06
    ld c, $f6
    cpl
    dec c
    ld a, b
    rra
    nop
    rra
    nop
    rst $08
    rra
    inc c
    inc bc
    ld a, [bc]
    dec b
    and c
    jr nc, jr_00b_64f7

    push bc
    rra
    jr jr_00b_653d

    jr z, jr_00b_652f

    pop bc
    db $10
    inc bc
    ld a, [hl+]
    ld [hl], d
    rst $38
    adc l
    ld e, e
    and l
    ld b, a
    cp c
    ld h, c
    sbc [hl]
    halt
    rst $38
    adc a
    inc bc
    rst $38
    jr nc, @+$01

    inc c
    rst $08
    pop de
    rst $38
    inc sp
    and l
    rst $18
    ldh [rIE], a
    inc l
    rst $38
    adc h
    xor a
    ld a, h
    rst $20
    rst $38
    rst $20
    ldh [$ff50], a
    add c
    ld [hl], b
    ld d, c
    add c

jr_00b_658a:
    rst $38
    add c
    nop
    rst $38
    ld h, [hl]
    ld a, [hl]
    ldh [rIE], a
    inc c
    rst $38
    rst $38
    jr nc, jr_00b_658a

    xor e
    db $ec
    and h
    ei
    rlca
    rst $38
    rst $38
    inc [hl]
    rst $38
    ld de, $d61e
    add sp, -$19
    rst $38
    sbc c
    ld b, [hl]
    cp b
    ld c, [hl]
    or b
    jp c, $e2a4

    rst $18
    sbc h
    add a
    ld a, c
    ld l, [hl]
    ldh a, [$ff2d]
    ld [$629d], sp
    rst $38
    pop af
    ld c, $c3
    inc a
    ld e, a
    and b
    db $fd
    inc bc
    rst $38
    push af
    dec c
    ld [hl], a
    rst $30
    xor b
    xor b
    db $f4
    adc h
    rst $38
    ld [$b61a], a
    halt
    ld d, l
    push de
    or d
    or d
    rst $38
    ld d, l
    ld d, l
    inc l
    inc l
    add d
    add d
    ccf
    ldh [rIE], a
    rst $18
    rst $08
    ret nc

    ret nz

    rst $10
    rst $00
    reti


    ret


    ccf
    ret nc

    rst $08
    rst $18
    ret nz

    pop de
    adc $63
    ld e, b
    ld h, a
    nop
    ldh a, [$ff2f]
    dec c
    rra
    nop
    rra
    nop
    add hl, bc
    jr nz, @+$0b

    ld b, $09
    ld b, $cf
    inc b
    inc bc
    inc b
    inc bc
    ld hl, $0140
    jr nz, @+$4a

    or b
    ld a, a
    ld c, b
    or b
    sub b
    ld h, b
    sub b
    ld h, b
    ld [hl], b
    ld [bc], a
    ld b, b
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
    cp l
    cp l
    ld a, [$7ffa]
    ld a, a
    rst $10
    rst $10
    rst $38
    db $ed
    db $ed
    ld a, a
    ld a, a
    jp c, Jump_00b_7fda

    ld a, a
    rst $38
    rst $30
    rst $30
    xor l
    xor l
    rst $38
    di
    ld [hl], a
    ld l, e
    rst $38
    cp $e6
    rst $30
    rst $30
    cp [hl]
    cp [hl]
    rst $30
    rst $30
    rst $38
    nop
    nop
    rrca
    ld [$273a], sp
    cpl
    rra
    rst $38
    ld a, a
    ld e, a
    ld e, a
    ccf
    rst $38
    cp a
    cp a
    ld a, a
    rst $38
    nop
    nop
    ret nz

    ret nz

    ldh a, [rWave_0]
    cp b
    ret c

    rst $38
    sbc $e6
    rst $30
    ei
    ei
    db $fd
    ei
    db $fd
    rst $38
    inc c
    inc c
    ccf
    inc hl
    ld a, a
    ld e, h
    sub $ef
    rst $38
    cp e
    add $7f
    cp b
    ld a, [hl-]
    ld b, a
    xor a
    rst $18
    rst $38
    or b
    or b
    ld a, h
    ld b, h
    cp $ba
    call z, $ff74
    cp a
    pop bc
    rst $38
    add [hl]
    cp a
    ld a, c
    rst $28
    dec e
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
    ret nz

    or l
    ld h, b
    sbc [hl]
    ld [hl], b
    ld c, l
    jr c, jr_00b_6718

    rst $38
    jr c, jr_00b_6726

    ld a, h
    ld d, e
    ld a, [hl]
    ld c, b
    ld a, [hl]
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
    jr z, jr_00b_6726

    jr z, jr_00b_6728

    ld d, $19
    ld de, $ff1e
    ld [$0e0f], sp
    rrca
    ld bc, $0001
    nop
    rst $38
    db $fd
    rst $38
    ld a, b
    rst $38
    nop
    rst $38
    add b
    ld a, a
    adc $30
    ld b, $ff
    rst $38
    rst $38
    nop
    ld c, $e0
    nop
    rlca
    ld hl, sp-$01
    ld a, b
    add a
    add c
    ld a, a

jr_00b_6718:
    ld e, $fe
    ldh [$ffe0], a
    rst $38
    nop
    nop
    ld a, [bc]

jr_00b_6720:
    or $34
    call z, $3ccc
    ld l, a

jr_00b_6726:
    jr jr_00b_6720

jr_00b_6728:
    ldh a, [$fff0]
    inc bc
    db $10
    rst $30
    rst $30
    and c
    ld c, $ff
    rst $28
    rst $28
    ld a, l
    ld a, l
    rst $30
    rst $30
    cp d
    cp d
    ld a, a
    ld a, a
    ld a, a
    ld b, b
    rst $38
    sub d
    rst $38
    ld [$0420], sp
    sbc a
    ld de, $8cff
    rst $38
    ld hl, $00a0
    ld bc, $0c01
    rst $18
    di
    inc e
    db $e3
    add hl, de
    rst $20
    inc bc
    ld bc, $7fef
    rst $38
    xor a
    ld a, a
    add e
    ld a, a
    ldh [$ff9f], a
    ld a, [hl]
    ld h, c
    rst $38
    rra
    ld e, $03
    inc bc
    nop
    nop
    db $ed
    cp $ff
    pop hl
    cp $c3
    db $fd
    rra
    db $e3
    inc l
    call c, $f8fb
    jr c, @+$03

    ld b, $fe
    cp c
    ld a, h
    and e
    db $e4
    rst $38
    sbc a
    add hl, sp
    ld c, [hl]
    ld a, e
    inc l
    push af
    bit 7, a
    rst $38
    ld h, l
    rra
    ld c, $ef
    ld [hl], d
    ld [hl], a
    cp c
    rst $18
    rst $38
    cp d
    db $ed
    db $db
    ld a, a
    ret z

    cp [hl]
    ld d, d

Call_00b_6797:
    xor $ff
    inc e

Jump_00b_679a:
    call c, $fbc0
    ld a, e
    ld a, l
    add d
    pop hl
    ei
    ld [hl], a
    rst $38
    nop
    ld a, [bc]
    rst $38
    db $fd
    inc bc
    db $fd
    ld bc, $feff
    ld hl, $a220
    ld e, l
    ld b, c
    ld l, b
    rst $38
    rst $38
    cp $fe
    ld bc, $bfff
    ret nz

    cp a
    add b
    rst $38
    ld a, a
    halt
    ld a, c
    sub h
    sbc e
    inc a
    dec sp
    rlca
    rst $38
    inc b
    jp c, Jump_00b_44db

    ld b, h
    adc c
    adc c
    ld [hl+], a
    rst $38
    ld [hl+], a
    cp a
    ret nz

    ld a, a
    add b
    pop af
    ld c, $ce
    rst $38
    ccf
    ccf
    rst $38
    cpl
    cpl
    jp c, $2dda

    rst $38
    dec l
    inc sp
    db $f4
    sub [hl]
    ld [hl], l
    jp z, Jump_00b_723d

    rst $38
    adc l
    sbc l
    db $e3
    db $fd
    db $fd
    halt
    halt
    and e
    ei
    and e
    rra
    or b
    inc bc
    push af
    push af
    xor d
    xor d
    inc d
    ld a, a
    inc d
    adc b
    adc b
    ld [hl-], a
    ld [hl-], a
    ld [bc], a
    ld [bc], a
    ld b, c
    dec e
    rst $38
    ret nz

    ret nz

    and b
    ld h, b
    ld d, b
    or b
    xor b
    ret c

    rst $38
    call nc, $ecec
    db $f4
    ld [$f6f6], a
    ld a, [$f6ff]
    ld a, [$fafc]
    db $fd
    ei
    di
    db $fd
    ld a, a
    db $e3
    db $fd
    di
    db $fd
    ldh [c], a
    db $fc
    ldh a, [c]
    jr nz, jr_00b_682c

jr_00b_682c:
    rst $38
    ld a, [$eafc]
    db $fc
    ldh [c], a
    db $fc
    db $e4
    ld a, [$c6ff]
    ld a, [$221c]
    inc e
    ld a, a
    ld h, e
    ld a, $ff
    ld e, [hl]
    ccf
    ld a, b
    rlca
    ld b, d
    ccf
    ld c, [hl]
    ccf
    rst $38
    adc $bf
    xor l
    xor l
    ei
    ld a, [$797e]
    rst $38
    db $dd
    jp $d9ed


    dec a
    dec de
    rst $28
    set 7, a
    ld l, a
    ld e, e
    cp a
    and b
    rst $38
    rrca
    rst $38
    rst $28
    rst $38
    rst $30
    rst $20
    rst $30
    rst $28
    rst $18
    rst $28
    db $fd
    rst $28
    rst $38
    ld e, l
    rst $28
    db $fd
    dec b
    rst $38
    ldh a, [rIE]
    rst $30
    rst $38
    rst $28
    rst $20
    xor e
    rst $30
    ei
    rst $30
    cp a
    rst $30
    ld sp, hl
    rst $38
    nop
    ld hl, $2483
    ld bc, $0301
    ld [bc], a
    ld [bc], a
    rst $30
    dec b
    dec b
    dec bc
    ld b, c
    dec h
    dec c
    ld c, $6e
    ld [hl], c
    rst $08

jr_00b_6893:
    ld [hl], a
    adc a
    sbc a
    ld a, a
    db $10
    jr jr_00b_68ba

    jr jr_00b_689c

jr_00b_689c:
    nop
    rrca
    db $fc
    inc bc
    ei
    db $fc
    pop bc
    nop
    dec b
    ld bc, $001f
    rlca
    add hl, hl
    rst $38
    ld [bc], a
    ld bc, $0205
    inc b
    inc bc
    ld l, b
    rlca
    rst $38
    sbc h
    ld h, e
    ret z

    scf
    ld b, h
    cp e

jr_00b_68ba:
    and d
    ld e, l
    rst $38
    ret nz

    nop
    jr nc, @-$3e

    jr z, jr_00b_6893

    ld [hl], h
    adc b
    rst $38
    inc h
    ret c

    ld d, d
    xor h
    ld [hl+], a
    call c, $b844
    ld hl, sp+$2f
    inc bc
    dec bc
    dec l
    ld [bc], a
    dec hl
    rst $38
    rst $28
    db $ec
    db $fc
    ei
    cp a
    ei
    db $f4
    or h
    xor e
    ld [hl], $49
    inc b
    ld bc, $ff2f
    ccf
    rst $18
    sbc a
    ld h, a
    ld d, [hl]
    xor d
    inc sp
    call $bdff
    reti


    ld a, $9a
    daa
    db $d3
    ld h, [hl]
    jp c, Jump_00b_6dff

    reti


    ccf
    db $db
    ld l, $da
    dec h
    sbc c
    rst $38
    adc $bf
    ld c, [hl]
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
    or l
    sbc e
    rst $38
    push af
    reti


    ld l, l
    ld c, e
    db $ed
    db $db
    rst $20
    db $db
    rst $38
    ld l, $1b
    or $db
    halt
    ld e, e
    db $d3
    rst $20
    rst $38
    di
    rst $28
    ld [hl], a
    rst $28
    or $ef
    or d
    rst $28
    cp a
    or l
    rst $28
    ld [hl], l
    rst $28
    or e
    rst $28
    and c
    rrca
    xor d
    rst $38
    rst $30
    adc e
    rst $30
    dec bc
    rst $30
    dec l
    rst $30
    xor [hl]
    rst $38
    rst $30
    xor l
    rst $30
    dec de
    rla
    dec hl
    scf
    ld sp, $2fff
    inc sp
    cpl
    ld d, e
    ld l, a
    ld h, a
    ld e, a
    daa
    add a
    ld e, a
    and a
    rst $18
    add l
    ld c, $1f
    nop
    rrca
    db $10
    rra
    nop
    nop
    cp a
    nop
    ld [hl], b
    rrca
    inc c
    inc bc
    inc b
    sub b
    dec h
    inc bc
    rst $28
    ld bc, $0307
    rlca
    db $10
    ld h, $18
    ldh [rNR41], a
    rst $38
    ret nz

    ld h, b
    add b
    ret nz

    nop
    ret nz

    add b
    ldh [$ffcf], a
    ret nz

    ldh [$ffc0], a
    ret nz

    rra
    inc bc
    inc c
    dec a
    reti


    and [hl]
    rst $38
    or b
    adc a
    add sp, -$69
    rst $00
    cp b
    ret z

    or a
    rst $38
    ld hl, sp-$39
    cp l
    cp d
    ld a, a
    ld a, l
    ld l, e
    sub l
    rst $38
    sbc l
    ld h, c
    and e
    ld e, l
    ld h, e
    sbc l
    sub a
    ld l, e
    rst $38
    sbc a
    ld h, a
    cp $1e
    ld a, a
    ld a, a
    dec h
    pop de
    rst $38
    and [hl]
    ld e, d
    ld [hl], a
    adc e
    ld c, $f2
    add hl, de
    pop af
    rst $38
    rra
    rst $30
    ld a, [de]
    ldh a, [c]
    db $fd
    dec c
    ld l, d
    ld l, d
    rst $38
    or h
    or h
    cp d
    add $39
    rst $38
    push bc
    ld a, a
    rst $38
    cp l
    ld a, a
    ld hl, sp+$06
    add l
    ld a, a
    cp [hl]
    sbc e
    db $fd
    db $f4
    nop
    db $10
    xor $db
    xor $db
    inc h
    dec de
    rst $38
    db $f4
    db $db
    ld h, h
    ld e, c
    ld [hl], d
    rst $20
    ldh a, [c]
    rst $28
    rst $38
    ld d, h
    rst $28
    ld d, l
    rst $28
    sub b
    rst $28
    sub h
    rst $28
    rst $38
    ld sp, $b0e7
    rst $28
    xor d
    rst $20
    xor c
    rst $30
    rst $38
    jr z, @-$07

    ld c, d
    rst $30
    ld c, b
    rst $30
    dec c
    rst $30
    cp a
    dec c
    rst $20
    ld [$aff7], sp
    rst $18
    dec h
    nop
    ld h, a
    sbc a
    ld e, a
    ld d, a
    ld l, a
    ld d, c
    ld l, a
    cpl
    rrca
    and e
    rrca
    ei
    cp $20
    nop
    di
    rst $38
    ld h, c
    rst $38
    and [hl]
    and [hl]
    rrca
    rst $38
    ld bc, $4e51
    rst $38
    add b
    sub c
    ld l, b
    and b
    rst $38
    ld d, a
    ldh [$ff8b], a
    ld b, c
    ld a, $45
    ld b, l
    ld [hl-], a
    rst $38
    ld [hl-], a
    db $fc
    inc c
    dec bc
    db $d3
    inc b
    xor b
    rlca
    ld a, a
    db $db
    ld [bc], a
    xor h
    add a
    ld a, c
    rst $30
    rst $10
    nop
    ld b, a
    rst $38
    db $fd
    xor a
    rst $28
    db $fd
    rst $38
    db $fd
    or l
    cp [hl]
    rst $28
    cp [hl]
    rst $28
    db $fd
    db $db
    nop
    add hl, sp
    dec a
    rst $38
    xor e
    rst $38
    rst $38
    adc d
    rst $38
    sub c
    rst $38
    dec sp
    rst $38
    or h
    rst $38
    rst $38
    ld d, h
    xor e
    ld d, l
    xor d
    add d
    ld a, l
    sub c
    rst $38
    ld l, [hl]
    ld d, h
    xor e
    ld b, h
    cp e
    xor c
    ld d, [hl]
    add hl, hl
    ld [hl], a
    sub $c0
    ccf
    ldh [rLY], a
    ld a, a
    rst $38
    ld a, a
    ld d, b
    ccf
    ld a, a
    ld h, c
    rst $18
    ld b, c
    pop de
    ld d, c
    inc bc
    db $fc
    ldh [rLY], a
    rst $38
    cp $ff
    cp $ff
    nop
    ld a, l
    inc b
    ld a, l
    rst $38
    inc b
    ld c, l
    ld c, h
    cp a
    or e
    ld [hl], e
    ld l, h
    ldh [rIE], a
    rst $18
    pop bc
    cp [hl]
    cp $c1
    ld [hl], d
    ld [hl], c
    sbc $ff
    db $dd
    rst $30
    rst $30
    rst $38
    db $e3
    and e
    sbc h
    pop bc
    rst $38
    cp [hl]
    pop hl
    sbc $fe
    pop hl
    or $f5
    cp [hl]
    rst $38
    cp l
    ld a, a
    ld a, a
    sbc l
    ld a, a
    sbc h
    ld a, [hl]
    adc l
    rst $38
    ld a, a
    adc l
    ld a, a
    adc e
    ld a, l
    ld b, l
    cp e
    dec sp
    rst $38
    rst $00
    ld b, $fe
    db $10
    db $10
    add c
    add c
    jr z, @+$01

    jr z, jr_00b_6ad1

    ld [bc], a
    ld c, l

jr_00b_6ad1:
    ld c, l
    add a
    add [hl]
    inc de
    rst $38
    db $10
    ld c, [hl]
    ld c, l
    ld b, d
    ld b, d
    inc b
    inc b
    ld d, c
    rst $38
    ld d, c
    rst $38
    ret nz

    db $ec
    inc e
    and h
    ld h, a
    sbc b
    rst $38
    sbc b
    ld h, e
    ld h, e
    inc hl
    inc hl
    db $10
    db $10
    ld d, b
    rst $38
    ld d, b
    ld hl, sp+$08
    ld l, [hl]
    ld [hl], d
    ld c, e
    call z, $ff11
    ld [hl-], a
    add h
    adc l
    jr jr_00b_6b17

    ld a, l
    ld a, l
    rra
    rst $38
    rla
    ld c, a
    ld c, e
    rst $20
    ret nz

    ld a, $29
    inc e
    rst $38
    inc bc
    dec sp
    scf
    call c, $ffdc
    cp a
    rst $38
    rst $38
    rst $28
    rst $38

jr_00b_6b17:
    ret nz

    ldh a, [rIF]
    ld b, $ff
    ld h, e
    ei
    cp a
    inc e
    jr nz, jr_00b_6b6a

    ld a, $32
    cp $e6
    db $fc
    rst $38
    call z, Call_000_1efe
    ld a, [hl-]
    jp z, Jump_00b_6296

    ld e, h
    rst $38
    and h
    pop bc
    cp [hl]
    ldh [$ff9f], a
    ld [hl], b
    rrca
    adc [hl]
    rst $38
    ld [hl], c
    adc c
    halt
    ld a, b
    rlca
    and l
    and d
    ld d, [hl]
    rst $38
    ld d, h
    ld l, $92
    rla
    ld c, c
    add hl, bc
    and [hl]
    add hl, bc
    rst $38
    sub $0f
    pop af
    sbc $22
    ld a, l
    dec c
    ld [hl], $df
    ld [hl], $83
    ld a, [hl]
    jp Jump_00b_4d3e


    nop
    and c
    ld e, [hl]
    ccf
    push de
    ld a, [hl+]
    rst $38
    nop
    add c
    ld a, [hl]
    sub b
    ld c, l
    ld h, h
    ld e, e
    ret c

jr_00b_6b6a:
    ld [hl], c
    dec [hl]
    ldh [rKEY1], a
    db $10
    ld c, [hl]
    rst $18
    ld b, c
    ld hl, $e000
    ld e, a
    sbc $41
    ld d, l
    rst $38
    ld a, a
    cp a
    ld b, b
    ld h, c
    rrca
    ld a, l
    inc b
    di
    dec b
    ld hl, sp+$41
    ld d, l
    ld h, c
    ld b, l
    cp a
    cp a
    ld l, l
    dec c
    rst $38
    sub a
    ld h, a
    rrca
    rst $30
    add [hl]
    ld a, d
    ei
    inc bc
    rst $38
    sbc $5e
    rst $30
    ld [hl], a
    rst $30
    rst $30
    db $fd
    adc l
    rst $38
    adc a
    ld [hl], a
    rlca
    ei
    adc a
    ld [hl], a
    rst $30
    rlca
    rst $38
    cp [hl]
    ld a, $7f
    ld a, a
    xor l
    xor l
    ld a, [$ff7a]
    rst $38
    sbc a
    cp $c6
    cp l
    sbc c
    cp a
    db $db
    rst $38
    or $d2
    push af
    reti


    sub a
    sub c
    inc l
    ld a, [hl+]
    rst $38
    sub [hl]
    sbc d
    dec l
    ld sp, $a1bd
    ld a, l
    ld h, c
    rst $38
    ld l, d
    halt
    jp nc, $08ee

    ld c, a
    ld d, h
    call c, $1aff
    sbc e
    ld [hl], $b6
    daa
    or a
    ld [hl+], a
    or e
    rst $38
    ld e, b
    ret c

    sub a
    rst $18
    ld [bc], a
    and $22
    ld [hl-], a
    rst $38
    ld e, e
    db $db
    ld h, l
    ld l, l
    db $e4
    db $ed
    ld e, c
    reti


    rst $38
    dec bc
    dec de
    sub $f6
    ld [hl], b
    ld l, a
    di
    adc $ff
    or b
    xor a
    dec [hl]
    cpl
    ld a, b
    ld [hl], a
    ld a, [$ffd5]
    ld hl, sp-$19
    ld a, c
    halt
    ld c, h
    or e
    inc hl
    call c, $19ff
    rst $38
    add [hl]
    ei
    ld h, b
    rst $38
    jp z, $ff35

    inc h
    db $db
    rst $10
    ld a, [hl]
    sbc [hl]
    ld h, [hl]
    ld e, d
    xor d
    rst $38
    ld e, $ea
    sbc [hl]
    and $6c
    call nc, $f40c
    xor a
    ld c, [hl]
    or $8e
    or $00
    add hl, bc

jr_00b_6c2c:
    ld l, l
    ld h, b
    jr jr_00b_6c2c

    rst $38
    db $ec
    db $eb
    ld a, e
    ld [hl], h
    call nc, $f6cb
    ret


    cp [hl]
    inc b
    ld bc, $2e3f
    adc $9b
    ld h, e
    ld bc, $803a
    rst $28
    ld b, b
    cp a
    ld a, a
    cp a
    ld hl, $001d
    add d
    ld a, h
    rst $38
    or l
    ld a, c
    xor e
    ld [hl], e
    inc de
    ld [hl+], a
    xor a
    adc $ff
    ld e, l
    sbc [hl]
    cp e
    inc a
    ld [hl], a
    ld a, b
    jp hl


    or $ff

jr_00b_6c61:
    rst $10
    xor $af
    sbc $ab
    ld [hl], a
    or l
    ld a, e
    rst $18
    cp $01
    add c
    ld b, d
    cp [hl]
    ld h, h
    ld [bc], a
    ld a, a
    add b
    cp a
    ld [hl], b
    or b
    ld a, c
    cp c
    ld h, b
    and b
    or b
    rrca
    cp a
    rst $38
    ccf
    ret nz

    jr nz, jr_00b_6c61

    db $fd
    inc bc
    ccf
    dec a
    rst $38
    rst $00
    push bc
    rlca
    dec b
    ccf
    dec a
    inc bc
    db $fd
    rst $38
    db $fd
    inc bc
    add a
    ld a, e
    cp a
    cp [hl]
    ld l, [hl]
    ld l, l
    rst $38
    db $f4
    di
    db $fc
    di
    db $eb
    db $e4
    ld a, c
    halt
    rst $38
    db $dd
    jp c, $f4f7

    rst $30
    or $ae
    xor l
    rst $38
    db $fc
    ei
    ld l, d
    ld h, l
    ld sp, hl
    or $e9
    and $fe
    nop
    ld [hl-], a
    ld a, h
    db $fd
    reti


    or [hl]
    sbc d
    or a
    db $d3
    rst $38
    or $da
    db $fd
    reti


    xor a
    db $db
    cp [hl]
    jp c, $b5ff

    reti


    cp c
    rst $08
    ldh a, [c]
    sbc l
    rst $00
    cp b
    rst $38
    cp a
    ret nz

    rst $08
    ldh a, [$ff73]
    ld a, h
    ld a, d
    ld a, l
    rst $38
    ld [hl], $39
    ld l, h
    ld l, a
    or b
    or b
    ld l, h
    rst $28
    rst $38
    ld a, b
    cp b
    ld d, c
    rst $28
    xor a
    or b
    and $f9
    rst $38
    adc $f1
    ld c, c
    call Call_000_3b32
    dec h
    and $ff
    ld d, $19
    sbc [hl]
    pop hl
    scf
    ld hl, sp+$6f
    add sp, -$01
    cpl
    add sp, $3a
    scf
    ld a, c
    ld h, [hl]
    ld a, e
    ld b, a
    rst $38
    ld a, h
    ld [hl], e
    call c, $bfdb
    cp h
    and a
    and a

jr_00b_6d0e:
    rst $38
    rrca
    ld c, $4c
    rst $38
    or c
    xor $4c
    ei
    rst $18
    inc sp
    sbc $c8
    cp a
    jr nz, jr_00b_6d0e

    ld h, a
    cp e
    cp d
    rst $38
    xor $d2
    inc c
    db $f4
    sbc $f6
    ld e, $e6
    rst $38
    cp [hl]
    ld b, d
    ld a, [hl]
    cp d
    xor $6e
    add h
    add h
    rst $38
    reti


    and [hl]
    ld a, b
    ld b, a
    ret nc

    xor a
    rst $08
    or b
    rst $28
    ret z

    or a
    ld a, b
    ld b, a
    nop
    add hl, bc
    push af
    ld c, e
    or l
    cp $03
    ld a, [hl-]
    sub [hl]
    ld l, d
    sbc e
    ld h, e
    cp $1e
    rst $30
    rst $18
    rst $30
    sub a
    ld h, a
    rst $38
    nop
    ldh [$ff71], a
    ld a, a
    jp nz, $01fd

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
    call c, $2baf
    rst $38
    xor a
    dec hl
    adc a
    dec bc
    rst $18
    ld e, e
    rst $18
    ld e, e
    rst $38
    sbc a
    dec de
    rst $08
    ld c, e
    sbc a
    dec de
    cp a
    ccf
    rst $38
    db $ed
    ld l, l
    ld [hl], a
    or a
    cp a
    ld e, a
    xor [hl]
    ld c, [hl]
    rst $38
    inc sp
    db $d3
    ld a, [hl]
    cp [hl]
    rst $30
    scf
    rst $30
    ld [hl], a
    rst $38
    xor l
    dec l
    ld a, a

jr_00b_6dbc:
    cp a
    xor a
    ld c, a
    cp e
    ld e, e
    ccf
    scf
    rst $10
    ld a, [hl]
    cp [hl]
    ei
    ld a, e
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

jr_00b_6de4:
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

jr_00b_6df5:
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    ldh [$ff1f], a

Jump_00b_6dff:
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
    jr nc, jr_00b_6dbc

    sbc d
    ld [hl+], a
    nop
    rst $38
    jr nc, jr_00b_6e1c

    rst $38
    rst $38

jr_00b_6e1c:
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
    jr nc, jr_00b_6de4

    jr nc, jr_00b_6df5

    cp a
    ccf
    ld b, b
    ccf
    ccf
    nop
    ld h, e
    ld bc, $fff5
    ld b, $0d
    ld c, $fd
    cp $02
    db $fc
    db $fc
    db $fc
    inc b
    ld bc, $0067
    ld hl, sp+$07
    jp nz, $bc43

    ld a, a
    ld l, a
    jp nz, $a23f

    ld h, e
    ld hl, $aa00
    ld l, e
    ld hl, rJOYP
    xor [hl]
    ld l, a
    cp [hl]
    ld a, a
    or h
    ld a, a
    add b
    ld a, a
    adc a
    add c
    ld a, [hl]
    cp $80
    dec l
    add hl, bc
    or b
    rlca
    ld c, d
    nop
    dec l
    rst $38
    xor h
    dec h
    and h
    daa
    and [hl]
    ld l, e
    ld [$ff5b], a
    jp c, $d051

    ld d, l
    call nc, $d455
    cp a
    ld a, a
    ret nz

    rst $38
    add b
    ld [$5595], a
    xor d
    jr nc, jr_00b_6e99

    inc a
    jr nz, @+$06

    db $e3
    ld [bc], a
    ld [$d515], a
    ld a, [hl+]
    ld [hl-], a

jr_00b_6e99:
    dec bc
    sub b
    dec bc
    rst $38
    db $fd
    inc bc
    rst $38
    ld bc, $29d7
    xor d
    ld d, l
    xor $30
    inc c
    cp $01
    cp $63
    inc c
    dec c
    nop
    ld [de], a
    rst $38
    dec c
    jr nz, jr_00b_6ed3

    ld e, $01
    inc b
    inc bc
    ld [$07fd], sp
    ld hl, $d810
    nop
    inc h
    ret c

    ld [bc], a
    db $fc
    cp a
    inc a
    ret nz

    db $10
    ldh [$ff88], a
    ld [hl], b
    inc bc
    ld b, $6f
    ld e, a
    ldh [$ff58], a
    ret nc

    ld e, a
    rst $10

jr_00b_6ed3:
    jr nz, jr_00b_6ed5

jr_00b_6ed5:
    ret nc

    inc bc
    rlca
    ld hl, sp+$63
    db $10
    jr nz, jr_00b_6edd

jr_00b_6edd:
    inc b
    ld [$0afb], sp
    dec de
    ld a, [bc]
    pop de
    rst $38
    ret nz

    push de
    call nz, $04f5
    ld l, $a6
    ld c, [hl]
    rst $38
    add $5e
    sub $2e
    and [hl]
    ld l, $a6
    ld c, $ff
    add [hl]
    ld e, [hl]
    sub $5e
    sub $d3
    jp nz, $f7d9

    ret z

    push de
    call nz, $01c1
    push de
    call nz, $cadb
    cp a
    db $db
    jp z, $d829

    cpl
    sbc $27
    nop
    rra
    rst $28
    ldh [rWave_d], a
    db $fc
    add hl, hl
    ld [hl+], a
    nop
    add hl, bc
    db $fc
    ld c, e
    cp $02
    add hl, bc
    ld a, [hl]
    or $76
    cp $5e
    or $0e
    cp $20
    nop
    ld l, $f6
    rrca
    rst $30
    rst $38
    nop
    rst $10
    xor e
    adc $d3
    jr nz, jr_00b_6f36

jr_00b_6f36:
    push de
    jr nz, jr_00b_6f39

jr_00b_6f39:
    pop de
    jr nz, jr_00b_6f3c

jr_00b_6f3c:
    rst $38
    rst $38
    nop
    cp a
    dec sp
    rst $38
    ld a, e
    rst $28
    ld l, e
    rst $38
    db $fd
    ld a, e
    inc h
    nop
    rlca
    and h
    adc e
    push hl
    jp c, $ff6e

    ld d, c
    ldh a, [$ffcf]
    ldh a, [$ffef]
    jr nc, jr_00b_6f87

    ret nc

    rst $38
    rst $08
    ld a, a
    ld [hl], b
    rra
    ldh [$fff0], a
    rrca
    db $10
    ei
    rst $28
    jr nc, jr_00b_6f8a

    nop
    rst $38
    nop
    and c
    ld e, a
    pop bc
    db $fd
    ccf
    ld c, e
    nop
    pop de
    cpl
    xor b
    ld d, a
    call nc, $ef2b
    rst $38
    nop
    add c
    ld a, [hl]
    pop bc
    inc d
    add hl, bc
    ld b, $08
    rst $38
    rlca
    ld [$0907], sp
    ld b, $07

jr_00b_6f87:
    ld [bc], a
    rlca
    ei

jr_00b_6f8a:
    ld [bc], a
    ld [bc], a
    ldh a, [$ff1f]
    ld c, b
    or b
    adc b
    ld [hl], b
    ld [$f0ff], sp
    ret c

    jr nz, jr_00b_6fe8

    and b
    ldh a, [rNR41]
    ld [hl], b
    rst $38
    jr nz, jr_00b_6fcf

Call_00b_6f9f:
    nop
    ld c, b
    ld c, b
    inc d
    inc d
    add c
    rst $38
    add c
    dec b
    ld b, $2b
    inc l
    ld b, [hl]
    ld c, c
    inc l
    rst $38
    inc sp
    sub c
    xor a
    sbc d
    sbc e
    cpl
    jr nc, jr_00b_7033

    rst $38
    add e
    rst $38
    nop
    ret nz

    ccf
    add hl, bc
    rst $38
    dec d
    rst $30
    cp $4c
    di
    ld bc, $3c19
    jp Jump_00b_679a


    rst $38
    ld l, e
    sub h
    inc e
    db $e3

jr_00b_6fcf:
    add sp, $17
    inc d
    rst $38
    rst $38
    ld l, b
    add sp, -$0c
    inc c
    ld e, [hl]
    pop hl
    db $e3
    inc e
    rst $38
    nop
    rst $38
    ld [hl], d
    rst $38
    rra
    rst $38
    add $ff
    rst $38
    add d
    add d

jr_00b_6fe8:
    jr @+$1a

    and c
    and c
    and h
    ld h, h
    rst $38
    ld e, b
    cp b
    dec l
    db $dd
    sbc b
    add sp, -$14
    db $f4
    xor d
    jr nz, jr_00b_7020

    inc b
    jr nz, jr_00b_6ffd

jr_00b_6ffd:
    ld [$0020], sp
    db $10
    jr nz, jr_00b_7003

jr_00b_7003:
    nop
    rst $38
    ld l, e
    sub a
    ld h, a
    sbc c
    ld h, d
    sbc l
    ld d, d
    xor l
    rst $38
    ld l, e
    sub l
    or a
    ret


    or c
    adc $5a
    ld h, a
    rst $38
    inc b
    db $fc
    ld [hl-], a
    db $fd
    ccf
    db $fc
    rst $18
    inc a
    rst $38

jr_00b_7020:
    inc hl
    call c, $fce3
    scf
    db $ec
    rst $10
    inc l
    or a
    ld h, [hl]

jr_00b_702a:
    ld a, [hl]
    db $10
    ld h, b
    inc c
    rst $38
    and l
    jr nc, @+$29

    sbc d

jr_00b_7033:
    ld a, [hl]
    add c
    nop
    ld hl, sp+$07
    rrca
    ldh a, [rNR23]
    rst $30
    dec h
    nop
    ldh [$ff65], a
    jr z, jr_00b_7061

    nop
    rra
    nop
    rra
    nop
    and l
    nop
    dec c
    nop
    ld a, [bc]
    ccf
    dec b
    db $10
    rrca
    inc d
    dec bc
    ld c, $20
    jr nz, @+$05

    jr nz, jr_00b_70d7

    jr z, jr_00b_702a

    inc b
    ld hl, sp+$14
    add sp, $38
    jr nz, @+$22

jr_00b_7061:
    rst $38
    ld [hl], h
    ld c, a
    ld a, [hl+]
    ld e, a
    ld b, h
    ccf
    jp z, $ffbd

    ld b, h
    cp e
    swap a
    db $e4
    rra
    cp e
    ld c, a
    rst $38
    ld [hl+], a
    rst $18
    adc b
    ld a, a
    dec d
    rst $38
    ld l, e
    rst $38
    rst $38
    or a
    ei
    ldh [c], a
    cp $f5
    db $ed
    sbc $ee
    rst $38
    halt
    rst $38
    push de
    db $dd
    sub $de
    sub [hl]
    sbc [hl]
    rst $38
    rla
    rra
    sub l
    sbc l
    rla
    rra
    dec d
    dec e
    rst $38
    ld [hl], c
    rst $38
    and h
    ld h, a
    sbc d
    ei
    ld e, h
    ld a, h
    rst $38
    inc d
    inc [hl]
    ld a, [hl-]
    ld a, [hl+]
    ld d, $0e
    dec e
    dec d
    rst $38
    ld [hl], l
    ld sp, hl
    halt
    ld a, [$fc32]
    sub e
    db $fd
    rst $38
    ld [bc], a
    ld a, l
    ld d, e
    ld l, h
    daa
    jr c, jr_00b_70d7

    ld [de], a
    ld l, [hl]
    pop hl
    rlca
    jr jr_00b_70d8

    inc a
    stop
    jr jr_00b_70dd

    and c
    ld [$afff], sp
    or c
    ld d, a
    ld e, b
    xor l
    xor [hl]
    ld a, [bc]
    dec bc
    rst $38
    add l
    add l
    ld e, b
    ld e, b
    adc b
    adc b

jr_00b_70d7:
    inc hl

jr_00b_70d8:
    inc hl
    rst $38
    cp c
    ld b, [hl]
    adc a

jr_00b_70dd:
    ld [hl], b
    jp $fa3c


    dec b
    rst $38
    cp a
    ret nz

    xor a
    or b
    ld l, [hl]
    ld l, a
    add hl, bc
    add hl, bc
    sbc [hl]
    inc bc
    cpl
    ld c, $f1
    inc e
    db $e3
    and d
    cpl
    ldh a, [rWave_7]
    add b
    cp a
    nop
    ldh [rP1], a
    ld hl, sp+$00
    cp $40
    nop
    ldh [$ffc0], a
    ret nz

    nop
    rra
    nop
    rra
    nop
    rra
    nop
    add a
    nop
    pop hl
    rra
    ld [$df07], sp
    dec b
    ld [bc], a
    inc b
    inc bc
    dec b
    jr nz, jr_00b_7138

    ld b, $00
    ei
    ld [$21f0], sp
    nop
    ld d, b
    and b
    sub b
    ld h, b
    ret nc

    cp $02
    jr nz, jr_00b_70d8

    ld c, a
    db $ed
    inc de
    xor $11
    cp c
    rst $38
    ld b, [hl]
    adc d
    ld [hl], a
    rst $00
    add hl, sp
    pop hl
    ld e, $76
    rst $38

jr_00b_7138:
    adc a
    db $ed
    db $dd
    ld a, [hl]
    sbc $1d
    db $fd
    sub d
    rst $38
    ld [hl], d

jr_00b_7142:
    rst $20
    rra
    cp h
    jp $fc03


    sbc h
    rst $38
    ld a, a
    dec d
    dec e
    sub b
    sbc h
    db $10
    inc e
    jr jr_00b_7142

    inc d
    jr z, @+$36

    set 4, c
    jr @+$01

    add l
    adc c
    rst $38
    adc [hl]
    adc d
    add d
    add [hl]
    inc b
    rlca
    rla
    jr @+$01

    dec e
    db $e3
    ldh [$ff1f], a
    add hl, de
    cp $2d
    ld [hl-], a
    rst $38
    ld d, a
    ld l, b
    rst $30
    adc b
    sbc l
    ld h, d
    ld d, c

Jump_00b_7176:
    xor $bf
    db $e3
    sbc h
    add a
    ld a, b
    ld l, [hl]
    pop af
    dec l
    ld [$ff20], sp
    ccf
    ld l, h
    sbc a
    call c, $db3f
    inc a
    call nz, $3bff
    rst $20
    sbc a
    db $ec
    scf
    db $eb
    inc [hl]
    sub $ff
    add sp, -$1a
    sbc b
    ld b, [hl]
    cp b
    ld c, d
    or h
    sub $ff
    xor b
    db $ec
    sub d
    adc [hl]
    ld [hl], d
    ld e, d
    and $ff
    ld a, a
    nop
    sbc a
    sbc a
    ld l, h
    ld l, h
    jp nz, Jump_00b_44c2

    ld b, a
    rst $38
    rst $38
    ld sp, hl
    rlca
    ld a, [hl]
    halt
    adc [hl]
    add [hl]
    xor $fb
    and $fe
    ld b, b
    ld [hl-], a
    cp $06
    ld c, $f6
    cp a
    rst $38
    cp a
    ld l, l
    ld l, l
    rst $30
    rst $30

jr_00b_71c8:
    rst $38
    rst $38
    rst $28
    ld a, a
    xor $76
    ld [hl], c
    jp c, $f0d5

    rst $28
    dec b
    ld bc, $eeff
    ld l, [hl]
    ld [hl], e
    sub e
    ld e, [hl]
    xor [hl]
    adc a
    ld [hl], a
    rst $28
    rst $30
    rst $30
    xor l
    xor l
    ldh [rSB], a
    rst $28

jr_00b_71e6:
    rst $38
    cp $bf
    or $f1
    cp d
    or l
    ld [hl], c
    ld l, [hl]
    ld b, $01
    ld a, a
    cp a
    ld [hl], a
    sub a
    sbc [hl]
    ld l, [hl]
    xor a
    ld d, a
    push bc
    rra
    inc c
    rst $20
    inc bc

jr_00b_71fe:
    ld a, [bc]
    dec b
    and c

jr_00b_7201:
    jr nc, jr_00b_71c8

    rra
    jr jr_00b_71e6

    jr z, jr_00b_7201

    ret nc

    pop bc
    db $10
    inc bc
    ld a, [hl+]
    ld [hl], d
    adc l
    ld e, e
    and l
    ld b, a
    rst $38
    cp c
    ld h, c
    sbc [hl]
    halt
    adc a
    inc bc
    rst $38
    jr nc, @+$01

    rst $38
    inc c
    rst $08
    pop de
    inc sp
    and l
    rst $18
    ldh [rIE], a
    rst $38
    inc l
    rst $38
    adc h
    ld a, h
    rst $20
    rst $38
    rst $20
    ld a, [$50e0]
    add c
    ld [hl], b
    ld d, c

jr_00b_7233:
    add c
    add c
    nop
    rst $38
    ld h, [hl]
    rst $38
    ld a, [hl]
    ldh [rIE], a
    inc c

Jump_00b_723d:
    rst $38
    jr nc, jr_00b_7233

    xor e
    rst $38
    db $ec
    and h
    ei
    rlca
    rst $38
    inc [hl]
    rst $38
    ld de, $1eff
    sub $e8
    rst $20
    sbc c
    ld b, [hl]
    cp b
    ld c, [hl]
    rst $38
    or b
    jp c, $e2a4

    sbc h
    add a
    ld a, c
    ld l, [hl]
    db $fd
    ldh a, [$ff2d]
    jr jr_00b_71fe

    ld h, d
    pop af
    ld c, $c3
    inc a
    rst $38
    ld e, a
    and b
    db $fd
    inc bc
    push af
    dec c
    ld [hl], a
    rst $30
    rst $38
    xor b
    xor b
    db $f4
    adc h
    ld [$b61a], a
    halt
    rst $38
    ld d, l
    push de
    or d
    or d
    ld d, l
    ld d, l
    inc l
    inc l
    rst $38
    add d
    add d
    ccf
    ldh [$ffdf], a
    rst $08
    ret nc

    ret nz

    rst $38
    rst $10
    rst $00
    reti


    ret


    ret nc

    rst $08
    rst $18
    ret nz

    di
    pop de
    adc $63
    ld e, b
    ld h, a
    nop
    or c
    xor [hl]
    ld l, [hl]
    ld d, c
    rst $38
    ld [$f2d5], a
    db $ed
    jp hl


    and $77
    ld [hl], c
    rst $38
    sbc $de
    rst $30
    rst $30
    ld c, a
    or a
    dec [hl]
    ret


    rst $38
    ld d, a
    xor e
    ld c, a
    or a
    sbc [hl]
    ld l, [hl]
    di
    inc de
    sbc $01
    ld bc, $edf2
    xor h
    sub e
    ld bc, $f902
    or $bf
    rst $30
    pop af
    cp [hl]
    cp [hl]
    ld a, a
    ld a, a
    dec b
    ld [bc], a
    sbc a
    rst $20
    ld l, a
    rst $30
    rla
    ld bc, $c101
    ccf
    add hl, bc
    ld b, $04
    rst $20
    inc bc
    inc b
    inc bc
    ld hl, $0140
    jr nz, jr_00b_732a

    or b
    ld c, b
    ccf
    or b
    sub b
    ld h, b
    sub b
    ld h, b
    ld [hl], b
    ld [bc], a
    ld b, b
    nop
    nop
    ld a, l
    ld [hl], e
    nop
    nop
    ld a, a
    ld [hl], e
    nop
    nop
    add c
    ld [hl], e
    nop
    nop
    add e
    ld [hl], e
    nop
    nop
    add l
    ld [hl], e
    nop
    nop
    adc c
    ld [hl], e
    nop
    nop
    adc l
    ld [hl], e
    nop
    nop
    sub c
    ld [hl], e
    nop
    nop
    sub l
    ld [hl], e
    nop
    nop
    sbc e
    ld [hl], e
    nop
    nop
    and c
    ld [hl], e
    nop
    nop
    and a
    ld [hl], e
    nop
    nop
    add c
    ld [hl], l
    nop
    nop
    add e
    ld [hl], l
    nop
    nop
    add l
    ld [hl], l
    nop

jr_00b_732a:
    nop
    add a
    ld [hl], l
    nop
    nop
    adc c
    ld [hl], l
    nop
    nop
    adc l
    ld [hl], l
    nop
    nop
    sub c
    ld [hl], l
    nop
    nop
    sub l
    ld [hl], l
    nop
    nop
    sbc c
    ld [hl], l
    nop
    nop
    sbc a
    ld [hl], l
    nop
    nop
    and l
    ld [hl], l
    nop
    nop
    xor e
    ld [hl], l
    nop
    nop
    adc l
    ld [hl], a
    nop
    nop
    adc a
    ld [hl], a
    nop
    nop
    sub c
    ld [hl], a
    nop
    nop
    sub e
    ld [hl], a
    nop
    nop
    sub l
    ld [hl], a
    nop
    nop
    sbc c
    ld [hl], a
    nop
    nop
    sbc l
    ld [hl], a
    nop
    nop
    and c
    ld [hl], a
    nop
    nop
    and l
    ld [hl], a
    nop
    nop
    xor e
    ld [hl], a
    nop
    nop
    or c
    ld [hl], a
    nop
    nop
    or a
    ld [hl], a
    xor $74
    xor l
    ld [hl], e
    ld l, $74
    jr jr_00b_73fa

    call nz, $d974
    ld [hl], h
    add $73
    rst $18
    ld [hl], e
    ld b, a
    ld [hl], h
    ld h, b
    ld [hl], h
    dec l
    ld [hl], l
    ld b, d
    ld [hl], l
    inc bc
    ld [hl], l
    xor a
    ld [hl], h
    xor $74
    ld hl, sp+$73
    dec d
    ld [hl], h
    xor l
    ld [hl], e
    ld a, c
    ld [hl], h
    sub [hl]
    ld [hl], h
    ld l, $74
    ld d, a
    ld [hl], l
    ld l, h
    ld [hl], l
    add c
    ld [hl], l
    nop
    inc b
    ld [hl+], a
    stop
    db $fc
    ld hl, $0010
    db $f4
    jr nz, @+$12

    ld hl, sp+$04
    rra
    db $10
    ld hl, sp-$04
    ld e, $10
    ld hl, sp-$0c
    dec e
    db $10
    add b
    nop

jr_00b_73c7:
    inc b
    jr z, jr_00b_73da

    nop
    db $fc
    daa
    stop
    db $f4
    ld h, $10
    ld hl, sp+$04
    dec h
    db $10
    ld hl, sp-$04
    inc h
    db $10

jr_00b_73da:
    ld hl, sp-$0c
    inc hl
    db $10
    add b
    ld hl, sp+$04
    dec h
    db $10
    ld hl, sp-$04
    ld e, $10
    ld hl, sp-$0c
    dec e
    stop
    inc b
    dec hl
    stop
    db $fc
    ld a, [hl+]
    stop
    db $f4
    add hl, hl
    db $10
    add b
    nop

jr_00b_73f9:
    inc b

jr_00b_73fa:
    ld [hl-], a
    stop
    db $fc
    ld sp, $0010
    db $f4
    jr nc, jr_00b_7414

    ld hl, sp+$04
    cpl
    db $10
    ld hl, sp-$04
    ld l, $10
    ld hl, sp-$0c
    dec l
    db $10
    ldh a, [$fff5]
    inc l
    db $10

jr_00b_7414:
    add b
    nop

jr_00b_7416:
    inc b
    jr c, jr_00b_7429

    nop
    db $fc
    scf
    stop
    db $f4
    ld [hl], $10
    ld hl, sp+$04
    dec [hl]
    db $10
    ld hl, sp-$04
    inc [hl]
    db $10

jr_00b_7429:
    ld hl, sp-$0c
    inc sp
    db $10
    add b
    nop

jr_00b_742f:
    db $f4
    ld [hl+], a
    jr nc, jr_00b_7433

jr_00b_7433:
    db $fc
    ld hl, $0030

jr_00b_7437:
    inc b
    jr nz, jr_00b_746a

    ld hl, sp-$0c
    rra
    jr nc, jr_00b_7437

    db $fc
    ld e, $30
    ld hl, sp+$04
    dec e
    jr nc, jr_00b_73c7

    nop
    db $f4
    jr z, jr_00b_747b

    nop
    db $fc
    daa
    jr nc, jr_00b_7450

jr_00b_7450:
    inc b
    ld h, $30
    ld hl, sp-$0c
    dec h
    jr nc, jr_00b_7450

    db $fc
    inc h
    jr nc, @-$06

    inc b

jr_00b_745d:
    inc hl
    jr nc, @-$7e

    ld hl, sp-$0c
    dec h
    jr nc, jr_00b_745d

    db $fc
    ld e, $30
    ld hl, sp+$04

jr_00b_746a:
    dec e
    jr nc, jr_00b_746d

jr_00b_746d:
    db $f4

jr_00b_746e:
    dec hl
    jr nc, jr_00b_7471

jr_00b_7471:
    db $fc
    ld a, [hl+]
    jr nc, jr_00b_7475

jr_00b_7475:
    inc b
    add hl, hl
    jr nc, jr_00b_73f9

    nop
    db $f4

jr_00b_747b:
    ld [hl-], a
    jr nc, jr_00b_747e

jr_00b_747e:
    db $fc
    ld sp, $0030

jr_00b_7482:
    inc b
    jr nc, @+$32

    ld hl, sp-$0c
    cpl
    jr nc, jr_00b_7482

    db $fc
    ld l, $30
    ld hl, sp+$04
    dec l
    jr nc, jr_00b_7482

    inc bc
    inc l
    jr nc, jr_00b_7416

    nop
    db $f4
    jr c, @+$32

    nop
    db $fc
    scf
    jr nc, jr_00b_749f

jr_00b_749f:
    inc b
    ld [hl], $30
    ld hl, sp-$0c
    dec [hl]
    jr nc, jr_00b_749f

    db $fc
    inc [hl]
    jr nc, @-$06

    inc b
    inc sp
    jr nc, jr_00b_742f

    nop
    nop
    inc a
    jr nc, jr_00b_74b4

jr_00b_74b4:
    ld hl, sp+$3c
    db $10
    ld hl, sp+$00
    dec sp
    db $10
    ld hl, sp-$08
    ld a, [hl-]
    db $10
    ldh a, [$fff9]
    add hl, sp
    db $10
    add b
    nop
    nop
    ccf
    stop
    ld hl, sp+$3e
    db $10
    ld hl, sp+$00
    dec a
    db $10
    ldh a, [$fff9]
    add hl, sp
    db $10
    ld hl, sp-$08

jr_00b_74d6:
    ld a, [hl-]

jr_00b_74d7:
    db $10
    add b
    nop
    ld hl, sp+$3f
    jr nc, jr_00b_74de

jr_00b_74de:
    nop
    ld a, $30
    ld hl, sp-$08
    dec a
    jr nc, jr_00b_74d6

    rst $38
    add hl, sp
    jr nc, @-$06

    nop
    ld a, [hl-]
    jr nc, jr_00b_746e

    ld bc, $4300
    jr nc, @+$03

    ld hl, sp+$43
    db $10
    ld sp, hl
    nop
    ld b, d
    db $10
    ld sp, hl
    ld hl, sp+$41
    db $10
    pop af
    ld a, [$1040]
    add b
    nop
    nop
    ld b, [hl]
    jr nc, jr_00b_7508

jr_00b_7508:
    ld hl, sp+$46
    db $10
    ld hl, sp+$00
    ld b, l
    db $10
    ld hl, sp-$08
    ld b, h
    db $10
    ldh a, [$fff9]
    add hl, sp
    db $10
    add b
    nop
    nop
    ld c, e
    stop
    ld hl, sp+$4a
    db $10
    ld hl, sp+$00
    ld c, c
    db $10
    ld hl, sp-$08
    ld c, b
    db $10
    ldh a, [$fffc]
    ld b, a
    db $10
    add b
    nop
    nop
    ld c, a
    stop
    ld hl, sp+$4e
    db $10
    ld hl, sp+$00
    ld c, l
    db $10
    ld hl, sp-$08
    ld c, h
    db $10
    ldh a, [$fffc]
    ld b, a
    db $10
    add b
    nop

jr_00b_7543:
    ld hl, sp+$4f
    jr nc, jr_00b_7547

jr_00b_7547:
    nop
    ld c, [hl]
    jr nc, jr_00b_7543

    ld hl, sp+$4d
    jr nc, jr_00b_7547

    nop
    ld c, h
    jr nc, jr_00b_7543

    db $fc
    ld b, a
    jr nc, jr_00b_74d7

    ld bc, $5500
    db $10
    ld bc, $54f8
    db $10
    pop af
    db $fc
    ld b, a
    db $10
    ld sp, hl
    nop
    ld d, e
    db $10
    ld sp, hl
    ld hl, sp+$52
    db $10
    add b
    nop
    nop
    ld d, a
    stop
    ld hl, sp+$56
    db $10
    ld hl, sp+$00
    ld c, c
    db $10
    ld hl, sp-$08
    ld c, b
    db $10
    ldh a, [$fffc]
    ld b, a
    db $10
    add b
    ld l, $76
    or c
    ld [hl], l
    db $10
    ld [hl], a
    and a
    halt
    ld b, a
    halt
    ld h, b
    halt
    db $fc
    ld [hl], l
    dec d
    halt
    ld e, e
    ld [hl], a
    ld [hl], h
    ld [hl], a
    cp h
    halt
    pop de
    halt
    adc [hl]
    halt
    ld a, c
    halt
    ld l, $76
    jp z, $e375

    ld [hl], l
    or c
    ld [hl], l
    add hl, hl
    ld [hl], a
    ld b, d
    ld [hl], a
    db $10
    ld [hl], a
    and $76
    ei
    halt
    and a
    halt
    ld bc, $2203
    nop
    ld bc, $21fb
    nop
    ld sp, hl
    inc bc
    jr nz, jr_00b_75bd

jr_00b_75bd:
    ld sp, hl
    ei
    rra
    nop
    ld sp, hl
    di
    ld e, $00
    pop af
    or $1d
    nop
    add b
    ld bc, $2800
    nop
    ld bc, $27f8
    nop
    ld sp, hl
    inc b
    ld h, $00
    ld sp, hl
    db $fc
    dec h
    nop
    ld sp, hl
    db $f4
    inc h
    nop
    pop af
    or $23
    nop
    add b
    nop
    inc bc
    dec l
    nop
    nop
    ei
    inc l
    nop
    ldh a, [$fff6]
    dec e
    nop
    ld hl, sp+$05
    dec hl
    nop
    ld hl, sp-$03
    ld a, [hl+]
    nop
    ld hl, sp-$0b
    add hl, hl
    nop
    add b
    ld [bc], a
    ld [bc], a
    inc sp
    nop
    ld [bc], a
    ld a, [$0032]
    ld a, [$3105]
    nop
    ld a, [$30fd]
    nop
    ei
    push af

jr_00b_760e:
    cpl
    nop
    di
    or $2e
    nop
    add b
    ld [bc], a
    inc bc
    scf
    nop
    ld [bc], a
    ei
    ld [hl], $00
    ld a, [$1ef3]
    nop
    ld a, [$3503]
    nop
    ld a, [$34fb]
    nop
    ldh a, [c]
    or $2e
    nop
    add b
    nop
    nop
    inc a
    jr nz, jr_00b_7633

jr_00b_7633:
    ld hl, sp+$3c
    nop
    ld hl, sp+$00
    dec sp
    nop
    ld hl, sp-$08

jr_00b_763c:
    ld a, [hl-]
    nop
    ldh a, [rP1]
    add hl, sp
    nop
    ldh a, [$fff8]
    jr c, jr_00b_7646

jr_00b_7646:
    add b
    ldh a, [$fff8]
    add hl, sp
    jr nz, jr_00b_763c

    nop
    jr c, jr_00b_766f

    nop
    nop
    ld b, b
    nop
    nop
    ld hl, sp+$3f
    nop
    ld hl, sp+$00
    ld a, $00
    ld hl, sp-$08
    dec a
    nop
    add b
    nop

jr_00b_7661:
    ld hl, sp+$40
    jr nz, jr_00b_7665

jr_00b_7665:
    nop
    ccf
    jr nz, jr_00b_7661

    nop
    dec sp
    nop
    ld hl, sp-$08
    ld a, [hl-]

jr_00b_766f:
    nop
    ldh a, [rP1]
    add hl, sp
    nop
    ldh a, [$fff8]
    jr c, jr_00b_7678

jr_00b_7678:
    add b
    nop
    nop
    ld b, h
    jr nz, jr_00b_767e

jr_00b_767e:
    ld hl, sp+$44
    nop
    ld hl, sp+$00
    ld b, e
    nop
    ld hl, sp-$08
    ld b, d
    nop
    ldh a, [$fffc]
    ld b, c
    jr nz, jr_00b_760e

    ld hl, sp+$00
    ld a, $00
    ld hl, sp-$08
    dec a
    nop
    nop
    nop
    ld b, l
    jr nz, jr_00b_769b

jr_00b_769b:
    ld hl, sp+$45
    nop
    ldh a, [$fff8]
    add hl, sp
    jr nz, @-$0e

    nop
    jr c, @+$22

    add b
    inc bc
    nop

jr_00b_76a9:
    ld c, d
    nop
    inc bc
    ld hl, sp+$49
    nop
    ei
    nop
    ld c, b
    nop
    ei
    ld hl, sp+$47
    nop
    di
    db $fc
    ld b, [hl]
    nop
    add b
    ldh a, [c]
    db $fc
    ld b, [hl]
    nop
    ld [bc], a
    nop

jr_00b_76c2:
    ld c, a
    nop
    ld [bc], a
    ld hl, sp+$4e
    nop
    ld a, [$4d00]
    nop
    ld a, [$4cf8]
    nop
    add b
    ld [bc], a
    ld hl, sp+$4f

jr_00b_76d4:
    jr nz, jr_00b_76d8

    nop
    ld c, [hl]

jr_00b_76d8:
    jr nz, jr_00b_76d4

    nop

jr_00b_76db:
    ld d, c
    nop
    ld a, [$50f8]
    nop
    ldh a, [c]
    db $fc
    ld c, e
    nop
    add b
    inc b
    nop
    ld d, l
    nop
    inc b
    ld hl, sp+$54
    nop
    db $fc
    nop
    ld d, e
    nop
    db $fc
    ld hl, sp+$52
    nop
    db $f4
    db $fc
    ld c, e
    nop
    add b
    inc bc
    nop
    ld e, c
    nop
    inc bc
    ld hl, sp+$58
    nop
    ei
    nop
    ld d, a
    nop
    ei
    ld hl, sp+$56
    nop
    di
    db $fc
    ld b, [hl]
    nop
    add b
    ld bc, $22f5
    jr nz, jr_00b_7716

    db $fd

jr_00b_7716:
    ld hl, $f920
    push af

jr_00b_771a:
    jr nz, jr_00b_773c

    ld sp, hl
    db $fd
    rra
    jr nz, jr_00b_771a

    dec b
    ld e, $20
    pop af
    ld [bc], a
    dec e
    jr nz, jr_00b_76a9

    ld bc, $28f8
    jr nz, jr_00b_772f

    nop

jr_00b_772f:
    daa
    jr nz, @-$05

    db $f4

jr_00b_7733:
    ld h, $20
    ld sp, hl
    db $fc
    dec h
    jr nz, jr_00b_7733

    inc b

jr_00b_773b:
    inc h

jr_00b_773c:
    jr nz, jr_00b_772f

    ld [bc], a
    inc hl
    jr nz, jr_00b_76c2

    nop
    push af
    dec l
    jr nz, jr_00b_7747

jr_00b_7747:
    db $fd
    inc l
    jr nz, jr_00b_773b

jr_00b_774b:
    ld [bc], a
    dec e
    jr nz, jr_00b_7747

jr_00b_774f:
    di
    dec hl
    jr nz, jr_00b_774b

    ei
    ld a, [hl+]
    jr nz, jr_00b_774f

    inc bc
    add hl, hl
    jr nz, jr_00b_76db

    ld [bc], a
    or $33

jr_00b_775e:
    jr nz, jr_00b_7762

    cp $32

jr_00b_7762:
    jr nz, jr_00b_775e

    di
    ld sp, $fa20
    ei
    jr nc, @+$22

    ei
    inc bc
    cpl
    jr nz, @-$0b

    ld [bc], a
    ld l, $20
    add b
    ld [bc], a
    push af
    scf
    jr nz, @+$04

    db $fd
    ld [hl], $20
    ld a, [$1e05]

jr_00b_777f:
    jr nz, @-$04

    push af
    dec [hl]
    jr nz, jr_00b_777f

    db $fd
    inc [hl]
    jr nz, @-$0c

    ld [bc], a
    ld l, $20
    add b
    ld a, [hl-]
    ld a, b
    cp l
    ld [hl], a
    inc e
    ld a, c
    or e
    ld a, b
    ld d, e
    ld a, b
    ld l, h
    ld a, b
    ld [$2178], sp
    ld a, b
    ld h, a
    ld a, c
    add b
    ld a, c
    ret z

    ld a, b
    db $dd
    ld a, b
    sbc d
    ld a, b
    add l
    ld a, b
    ld a, [hl-]
    ld a, b
    sub $77
    rst $28
    ld [hl], a
    cp l
    ld [hl], a
    dec [hl]
    ld a, c
    ld c, [hl]
    ld a, c
    inc e
    ld a, c
    ldh a, [c]
    ld a, b
    rlca
    ld a, c
    or e
    ld a, b
    ld bc, $2203
    nop
    ld bc, $21fb
    nop
    ld sp, hl
    inc bc
    jr nz, jr_00b_77c9

jr_00b_77c9:
    ld sp, hl
    ei
    rra
    nop
    ld sp, hl
    di
    ld e, $00
    pop af
    or $1d
    nop
    add b
    ld bc, $2800
    nop
    ld bc, $27f8
    nop
    ld sp, hl
    inc b
    ld h, $00
    ld sp, hl
    db $fc
    dec h
    nop
    ld sp, hl
    db $f4
    inc h
    nop
    pop af
    or $23
    nop
    add b
    nop
    inc bc
    dec l
    nop
    nop
    ei
    inc l
    nop
    ldh a, [$fff6]
    dec e
    nop
    ld hl, sp+$05
    dec hl
    nop
    ld hl, sp-$03
    ld a, [hl+]
    nop
    ld hl, sp-$0b
    add hl, hl
    nop
    add b
    ld [bc], a
    ld [bc], a
    inc sp
    nop
    ld [bc], a
    ld a, [$0032]
    ld a, [$3105]
    nop
    ld a, [$30fd]
    nop
    ei
    push af

jr_00b_781a:
    cpl
    nop
    di
    or $2e
    nop
    add b
    ld [bc], a
    inc bc
    scf
    nop
    ld [bc], a
    ei
    ld [hl], $00
    ld a, [$1ef3]
    nop
    ld a, [$3503]
    nop
    ld a, [$34fb]
    nop
    ldh a, [c]
    or $2e
    nop
    add b
    nop
    nop
    inc a
    jr nz, jr_00b_783f

jr_00b_783f:
    ld hl, sp+$3c
    nop
    ld hl, sp+$00
    dec sp
    nop
    ld hl, sp-$08

jr_00b_7848:
    ld a, [hl-]
    nop
    ldh a, [rP1]
    add hl, sp
    nop
    ldh a, [$fff8]
    jr c, jr_00b_7852

jr_00b_7852:
    add b
    ldh a, [$fff8]
    add hl, sp
    jr nz, jr_00b_7848

    nop
    jr c, jr_00b_787b

    nop
    nop
    ld b, b
    nop
    nop
    ld hl, sp+$3f
    nop
    ld hl, sp+$00
    ld a, $00
    ld hl, sp-$08
    dec a
    nop
    add b
    nop

jr_00b_786d:
    ld hl, sp+$40
    jr nz, jr_00b_7871

jr_00b_7871:
    nop
    ccf
    jr nz, jr_00b_786d

    nop
    dec sp
    nop
    ld hl, sp-$08
    ld a, [hl-]

jr_00b_787b:
    nop
    ldh a, [rP1]
    add hl, sp
    nop
    ldh a, [$fff8]
    jr c, jr_00b_7884

jr_00b_7884:
    add b
    nop
    nop
    ld b, h
    jr nz, jr_00b_788a

jr_00b_788a:
    ld hl, sp+$44
    nop
    ld hl, sp+$00
    ld b, e
    nop
    ld hl, sp-$08
    ld b, d
    nop
    ldh a, [$fffc]
    ld b, c
    jr nz, jr_00b_781a

    ld hl, sp+$00
    ld a, $00
    ld hl, sp-$08
    dec a
    nop
    nop
    nop
    ld b, l
    jr nz, jr_00b_78a7

jr_00b_78a7:
    ld hl, sp+$45
    nop
    ldh a, [$fff8]
    add hl, sp
    jr nz, @-$0e

    nop
    jr c, @+$22

    add b
    inc bc
    nop

jr_00b_78b5:
    ld c, d
    nop
    inc bc
    ld hl, sp+$49
    nop
    ei
    nop
    ld c, b
    nop
    ei
    ld hl, sp+$47
    nop
    di
    db $fc
    ld b, [hl]
    nop
    add b
    ldh a, [c]
    db $fc
    ld b, [hl]
    nop
    ld [bc], a
    nop

jr_00b_78ce:
    ld c, a
    nop
    ld [bc], a
    ld hl, sp+$4e
    nop
    ld a, [$4d00]
    nop
    ld a, [$4cf8]
    nop
    add b
    ld [bc], a
    ld hl, sp+$4f

jr_00b_78e0:
    jr nz, jr_00b_78e4

    nop
    ld c, [hl]

jr_00b_78e4:
    jr nz, jr_00b_78e0

    nop

jr_00b_78e7:
    ld d, c
    nop
    ld a, [$50f8]
    nop
    ldh a, [c]
    db $fc
    ld c, e
    nop
    add b
    inc b
    nop
    ld d, l
    nop
    inc b
    ld hl, sp+$54
    nop
    db $fc
    nop
    ld d, e
    nop
    db $fc
    ld hl, sp+$52
    nop
    db $f4
    db $fc
    ld c, e
    nop
    add b
    inc bc
    nop
    ld e, c
    nop
    inc bc
    ld hl, sp+$58
    nop
    ei
    nop
    ld d, a
    nop
    ei
    ld hl, sp+$56
    nop
    di
    db $fc
    ld b, [hl]
    nop
    add b
    ld bc, $22f5
    jr nz, jr_00b_7922

    db $fd

jr_00b_7922:
    ld hl, $f920
    push af

jr_00b_7926:
    jr nz, jr_00b_7948

    ld sp, hl
    db $fd
    rra
    jr nz, jr_00b_7926

    dec b
    ld e, $20
    pop af
    ld [bc], a
    dec e
    jr nz, jr_00b_78b5

    ld bc, $28f8
    jr nz, jr_00b_793b

    nop

jr_00b_793b:
    daa
    jr nz, @-$05

    db $f4

jr_00b_793f:
    ld h, $20
    ld sp, hl
    db $fc
    dec h
    jr nz, jr_00b_793f

    inc b

jr_00b_7947:
    inc h

jr_00b_7948:
    jr nz, jr_00b_793b

    ld [bc], a
    inc hl
    jr nz, jr_00b_78ce

    nop
    push af
    dec l
    jr nz, jr_00b_7953

jr_00b_7953:
    db $fd
    inc l
    jr nz, jr_00b_7947

jr_00b_7957:
    ld [bc], a
    dec e
    jr nz, jr_00b_7953

jr_00b_795b:
    di
    dec hl
    jr nz, jr_00b_7957

    ei
    ld a, [hl+]
    jr nz, jr_00b_795b

    inc bc
    add hl, hl
    jr nz, jr_00b_78e7

    ld [bc], a
    or $33

jr_00b_796a:
    jr nz, jr_00b_796e

    cp $32

jr_00b_796e:
    jr nz, jr_00b_796a

    di
    ld sp, $fa20
    ei
    jr nc, @+$22

    ei
    inc bc
    cpl
    jr nz, @-$0b

    ld [bc], a
    ld l, $20
    add b
    ld [bc], a
    push af
    scf
    jr nz, @+$04

    db $fd
    ld [hl], $20
    ld a, [$1e05]

jr_00b_798b:
    jr nz, @-$04

    push af
    dec [hl]
    jr nz, jr_00b_798b

    db $fd
    inc [hl]
    jr nz, @-$0c

    ld [bc], a
    ld l, $20
    add b
    pop hl
    ld a, c
    pop hl
    ld a, c
    pop hl
    ld a, c
    pop hl
    ld a, c
    db $e4
    ld a, c
    db $e4
    ld a, c
    db $e4
    ld a, c
    db $e4
    ld a, c
    jp hl


    ld a, c
    jp hl


    ld a, c
    jp hl


    ld a, c
    jp hl


    ld a, c
    pop hl
    ld a, c
    pop hl
    ld a, c
    pop hl
    ld a, c
    pop hl
    ld a, c
    db $e4
    ld a, c
    db $e4
    ld a, c
    db $e4
    ld a, c
    db $e4
    ld a, c
    jp hl


    ld a, c
    jp hl


    ld a, c
    jp hl


    ld a, c
    jp hl


    ld a, c
    pop hl
    ld a, c
    pop hl
    ld a, c
    pop hl
    ld a, c
    pop hl

jr_00b_79d0:
    ld a, c
    db $e4
    ld a, c
    db $e4
    ld a, c
    db $e4
    ld a, c
    db $e4
    ld a, c
    jp hl


    ld a, c
    jp hl


jr_00b_79dc:
    ld a, c
    jp hl


    ld a, c
    jp hl


    ld a, c
    ldh a, [rP1]
    rst $38
    rra
    nop
    rra
    ld bc, $0cff
    nop
    inc c
    ld bc, $020c
    rst $38
    ld b, b
    nop
    rst $30
    rrca
    rrca
    ld [$002a], sp
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    cp $01
    db $fc
    inc bc
    ld sp, hl
    inc bc
    pop hl
    rst $38
    dec e
    ret nz

    ld [hl+], a
    add b
    add c
    add c
    ld a, [hl]
    nop
    rst $38
    ld sp, hl
    ld a, [hl]
    rst $00
    rst $38
    cp c
    rst $00
    cp [hl]
    pop bc
    rst $38
    rst $18
    ldh [$fff8], a
    ld a, b
    ldh [$fff0], a
    db $10
    ld h, b
    rst $38
    sub b
    nop
    ld h, b
    add b
    ret nc

    ldh [rBCPS], a
    ldh a, [rIF]
    jr z, jr_00b_79dc

    ld d, b
    ld h, b
    add b
    nop
    ei
    ld [$2b0f], sp
    nop
    ld e, l
    nop
    ld b, d
    nop
    ld a, $ff
    add b
    ld a, [de]
    ret nz

    jr c, jr_00b_79d0

    ccf
    sbc b
    ld e, a
    rst $38
    ld a, $7d
    inc a
    ld [hl], a
    rrca
    adc a
    nop
    ldh a, [rIE]
    nop
    rst $28
    ld [hl], b
    db $fc
    ld a, a
    ld h, b
    ccf
    ld a, b
    rst $38
    ccf
    ld b, a
    rlca
    ld h, b
    add b
    and b
    nop
    ld d, b
    rst $38
    nop
    and b
    ld b, b
    db $10
    ldh [$ff08], a
    ldh a, [$ff08]
    rst $30
    ldh a, [rDIV]
    ld hl, sp+$01
    inc b
    ld [hl], b
    rlca
    ld l, b
    ld [hl-], a
    rst $38
    add hl, sp
    nop
    inc bc
    ld bc, $0c09
    ld b, $08
    rst $38
    ld a, h
    inc a
    ld e, a
    ccf
    ccf
    sbc a
    cpl
    rra
    rst $38
    sub a
    rrca
    ld c, l
    add e
    add e
    jr nc, jr_00b_7b07

    nop
    rst $38
    pop bc
    ld b, c
    add c
    add c
    db $e3
    db $e3
    rst $38
    rst $38
    rst $18
    cp $ff
    db $fc
    rst $38
    rst $38
    nop
    rlca
    add h
    ld hl, sp-$05
    add h
    ld hl, sp-$5f
    inc bc
    db $10
    ldh [$ff60], a
    add b
    sub b
    rlca
    nop
    ld [hl], b
    nop
    jr nz, jr_00b_7ab1

    ld a, a
    nop

jr_00b_7ab1:
    nop
    ld a, b
    nop
    stop
    jr nz, jr_00b_7b18

    nop
    cp a
    ld bc, $0200
    nop
    rlca
    ld bc, $0165
    ldh a, [rIE]
    nop
    ld l, h
    ld [hl], b
    ld [bc], a
    db $fc
    ld a, h
    add b
    ld c, $ff
    dec b
    ld a, [de]
    add hl, bc
    inc de
    ld [bc], a
    scf
    rla
    daa
    rst $38
    rlca
    ccf
    inc bc
    cpl
    inc c
    ld l, [hl]
    dec hl
    db $f4
    rst $38
    ld a, b
    ld a, [$fa7c]
    db $fc
    db $fd
    cp $fd
    rst $38
    cp $fe
    add a
    cp $ff
    ld sp, hl
    ld a, c
    nop
    rst $38
    nop
    ld b, b
    nop
    cp b
    ld b, b
    ld d, h
    cp b
    xor h
    rst $38
    ld [hl], b
    ld d, d
    db $ec
    ld a, [de]
    db $fc
    cp h
    ret nz

    ld c, c
    rst $38
    ld bc, $004f
    ld h, a

jr_00b_7b07:
    daa
    inc sp
    inc de
    add hl, hl
    rst $38
    add hl, de
    ld d, $0e
    dec c
    inc bc
    inc bc
    nop
    ld [hl], b
    rst $28
    or b
    rst $30
    scf

jr_00b_7b18:
    rst $38
    stop
    xor $ff
    rst $30
    rst $38
    rst $38
    push hl
    ei
    ei
    nop
    ld a, [$fefc]
    rst $38
    db $fc
    sbc h
    ld hl, sp-$1c
    ld hl, sp-$18
    ldh a, [rNR10]
    rst $28
    ldh [$ffe0], a
    add b
    add b
    adc b
    ld [$0030], sp
    ld de, $00b3
    ld [hl+], a
    adc b
    add hl, bc
    inc hl
    ld [$0137], sp
    dec hl
    ld [$b17c], sp
    add b
    dec hl
    ld [$0c21], sp
    add hl, hl
    ld [$2b6e], sp
    dec h
    ld [$7f28], sp
    jr jr_00b_7b71

    rlca
    rlca
    nop
    ld sp, hl
    ld a, c
    inc hl
    ld [$05fe], sp
    ld [$c0bc], sp
    ld a, [$befc]
    db $fc
    call z, $0cc0
    ld [$0fc3], sp
    pop bc
    ld c, $c9
    rrca
    pop bc

jr_00b_7b71:
    ld c, $cb
    ld [de], a
    ld b, b
    nop
    cp a
    inc de
    ld [bc], a
    ccf
    rla
    cpl
    rlca
    jr nz, jr_00b_7b7f

jr_00b_7b7f:
    inc b
    db $fc
    and e
    ld b, $c0
    db $10
    sbc $fd
    sbc $fe
    rst $18
    cp $79
    rst $18
    and e
    ld b, $c9
    db $10
    ld a, [$fafc]
    db $fc
    ret


    db $10
    ld l, a
    ld b, $03
    rlca
    nop
    pop bc
    db $10
    rst $28
    cp $c2
    db $10
    rst $38
    inc b
    ld e, l
    adc [hl]
    adc a
    nop
    db $e4
    sbc b
    call c, $e09f
    ld l, b
    ldh a, [$fff0]
    nop
    ret


    db $10
    push hl
    ld [$b77a], sp
    add hl, bc
    or e
    ld h, d
    db $eb
    ld [$fcfa], sp
    db $eb
    ld [$ffbc], sp
    ld b, b
    rst $38
    ld d, a
    rst $28
    ld b, a
    rst $28
    ld b, a
    xor a
    rst $38
    ld b, h
    db $ed
    add hl, hl
    rlc b
    ld c, l
    ld a, [bc]
    ld h, a
    db $fd
    dec h
    pop hl
    ld [$dffc], sp
    ld hl, sp-$28
    pop af
    ld [hl], c
    rst $38
    ld [hl], a
    or a
    rst $38
    cp a
    rst $38
    ld a, a
    ld b, d
    cp h
    rst $38
    cp d
    ld a, h
    or $f8
    jp c, $eae4

    sbc h
    rst $38
    db $f4
    ld hl, sp-$34
    ldh a, [rWave_8]
    ret nz

    inc sp
    ld [de], a
    cp [hl]
    and l
    add hl, de
    rlca
    ld [bc], a
    rlca
    ld bc, $0001
    add hl, bc
    db $fc
    cp $f1
    add hl, de
    ld hl, sp-$03
    ld [bc], a
    ld e, l
    adc d
    ld c, l
    add [hl]
    ld a, a
    add [hl]
    nop
    ret nc

    ldh [$ffe0], a
    nop
    ld b, b
    adc b
    add hl, de
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_00b_7e01:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_00b_7eb3:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_00b_7fda:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
