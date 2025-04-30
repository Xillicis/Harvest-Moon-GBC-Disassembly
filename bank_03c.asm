; Disassembly of "harvest_moon.gbc"
; This file was created with:
; mgbdis v2.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $03c", ROMX[$4000], BANK[$3c]

    inc a
    nop
    ld [$1dee], sp
    nop

Call_03c_4006:
    rst $38
    nop
    adc b
    jr nz, jr_03c_400b

jr_03c_400b:
    rst $38
    nop
    sbc a
    cp a
    rlca
    sbc a
    nop
    sbc a
    dec c
    rst $38
    ld b, $01
    rst $38
    push af
    ld [hl], a
    ret nz

jr_03c_401b:
    nop
    db $dd
    rlca
    ld bc, $6ff0
    rst $38
    nop
    ei
    db $e4
    db $db
    rlca
    ld [bc], a
    add d
    ld a, l
    rst $38
    nop
    db $10
    db $fd
    rst $28
    rlca
    inc bc
    ld [$fff7], sp
    nop
    ld b, c
    cp [hl]
    ld a, [hl]
    rlca
    inc b
    jr nz, jr_03c_401b

    rst $38
    nop
    inc b
    ei
    rlca
    dec b
    rst $38
    and a
    ld b, a
    rst $28
    nop
    cpl
    ret nz

    ldh [c], a
    ld [bc], a
    cp $06
    ld b, $e7
    rst $38
    jr nz, @+$01

    dec h
    rst $38
    ldh [$fff7], a
    rst $38
    nop
    adc c
    jr nz, jr_03c_405b

jr_03c_405b:
    rst $38
    nop
    ld sp, hl
    ld [hl], b
    ld a, a
    ld sp, hl
    nop
    ld sp, hl
    ret nc

    rst $38
    nop
    sbc [hl]
    add b
    ld [$93f5], sp
    add b
    ld [$0098], sp
    add hl, bc
    sub c
    rrca
    ldh a, [rIF]
    push de
    xor $80
    ld [$8033], sp
    ld [$0088], sp
    add hl, bc
    add hl, de
    cp a
    rst $30
    and b
    rst $38
    ret nz

    jr nz, jr_03c_4091

    ld b, b
    cp a
    rst $38
    nop
    rst $38
    db $e3
    dec a
    jp nc, Jump_03c_7f1c

    add b

jr_03c_4091:
    ret c

    xor a
    rst $30
    ld c, l
    ld c, l
    rst $38
    ld d, b
    inc c
    rst $38
    nop
    inc c
    rst $30
    ld a, a
    adc d
    di
    rst $38
    nop
    ld h, c
    cp [hl]
    rst $38
    ret nz

    nop
    rst $38
    rra
    ldh [$ffe0], a
    nop
    ld e, a
    add b
    ld h, b
    add b
    rst $28
    push bc
    ld a, [de]
    ld c, e
    sub c
    ld bc, $f001
    rrca
    cp a
    rst $38
    or b
    rst $38
    add hl, bc
    ld c, $00
    rrca
    ld hl, sp-$74
    rst $38
    ld a, e
    rst $38
    ret nz

    ei
    dec c
    rra
    ldh [$fffc], a
    rst $18
    rlca
    rra
    ldh [$ff9b], a
    db $ed
    ld bc, $fe03
    dec de
    rst $38
    ccf
    ret nz

    rst $20
    add hl, de
    rst $38
    ld b, b
    db $f4
    dec de
    ld a, a
    cpl
    ret z

    db $fc
    inc bc
    add h
    ei
    jp hl


    add b
    ld [$39f5], sp
    add b
    ld [$0089], sp
    add hl, bc
    add hl, de
    or b
    xor a
    ldh a, [$ff1f]
    sub b
    rrca
    sub c
    rrca
    sub b
    add b
    ld [$0061], sp

Jump_03c_40fe:
    ld bc, $ff09
    jr z, @+$01

    dec b
    cp a
    adc d
    ei
    ld [hl+], a
    cp a
    rst $28
    ld c, c
    rst $38
    and b
    ei
    ld bc, $5409
    and a
    ld a, a
    rst $18
    add b
    jp $62bd


    cp h
    pop bc
    ld [$a754], sp
    rst $08
    rst $38
    add b
    ld d, c
    sbc [hl]
    rst $00
    ld [$00c1], sp
    ld d, c
    add c
    rst $38
    rst $08
    inc d
    ld c, l
    sub c
    ld c, b
    sub e
    ret z

    inc de
    rst $38
    call z, Call_03c_7f97
    ld e, b
    rst $38
    nop
    db $ec
    sbc e
    rst $38
    rst $38
    ld l, b
    rst $38
    add hl, hl
    sbc $28
    xor a
    ld e, b
    rst $20
    call z, $fc3b
    jr nz, @+$0d

    dec c
    inc bc
    ld b, h
    ld a, e
    db $fc
    rra
    inc bc
    inc [hl]
    db $db
    inc l
    set 0, c
    ld [$00c1], sp
    rlca
    rlca
    cp a
    and c
    ld a, [$be19]
    and e
    db $fc
    inc bc

jr_03c_4162:
    ld [$07ff], sp
    nop
    add h
    ld a, e
    ld b, e
    ld d, $05
    ld bc, $18c1
    ld b, c
    add hl, de
    dec b
    ld [bc], a
    ld hl, sp-$3f
    jr jr_03c_41b7

    add hl, de
    dec b
    inc bc
    dec b
    ld a, [$00ff]
    ld hl, $defd
    rlca
    inc bc
    ccf
    ccf
    ld a, a
    ld bc, $017f
    rst $38
    rla
    rla
    add hl, hl
    ldh a, [$ff09]
    or b
    adc c
    ldh a, [rIE]
    adc a

jr_03c_4193:
    ld [hl], b
    adc c
    ld [hl], b
    ret


    jr nc, jr_03c_4162

    jr nc, @+$01

    rst $28
    db $10
    sub e
    inc c
    sub h
    dec bc
    sub h
    dec bc
    rst $38

jr_03c_41a4:
    db $f4
    dec bc
    sub l
    ld a, [bc]
    sub a
    ld [$0b95], sp
    cp a
    rst $30
    dec bc
    cp e
    ld b, h
    ld b, h
    cp e
    ld hl, $dd00
    rst $38

jr_03c_41b7:
    ld [hl+], a
    rst $38
    nop
    ld d, l
    cp e
    ld [hl], a
    cp e
    adc b
    rst $38
    ld a, a
    ld b, l
    cp a
    ld c, d
    cp e
    ld b, d
    cp a
    rst $08
    rst $38
    jr c, jr_03c_4193

    jr nc, jr_03c_4224

    and b
    ld e, b
    and b
    ld d, b
    rst $38
    xor a
    ld a, a
    add b
    cp [hl]
    db $dd
    ld a, $9d

jr_03c_41d9:
    cp $7f
    dec e
    ld a, $1d
    cp $1d
    cp $dc
    ld b, c
    jr nz, jr_03c_41a4

    db $db
    dec h
    db $db
    dec h
    inc bc
    db $fd
    ld h, d
    nop
    ld bc, $41fe
    jr nz, jr_03c_41d9

    rst $00
    db $e3
    jp $c0ff


    cp $df
    rst $18
    rst $38
    ret nz

    jp hl


    sub $41
    inc hl
    rrca
    rst $30
    rst $18
    adc a
    rst $30
    rst $38
    rlca
    rrca
    ld b, b
    nop
    cpl
    rst $10
    ld a, [hl]
    ld b, c
    inc hl
    or [hl]
    ld c, c
    or [hl]
    ld c, c
    add b
    ld a, a
    ld h, d
    nop
    sbc $40
    inc hl
    db $fc
    inc bc
    ld hl, sp+$77
    daa
    nop
    ld a, [hl+]
    db $fc
    rst $38
    rlca

jr_03c_4224:
    cp h
    adc d
    ld sp, hl
    inc hl
    cp h

jr_03c_4229:
    ld c, e
    db $fd
    ld a, a
    and d
    ld hl, sp+$1b
    cp h
    and d
    db $fd
    ld [bc], a
    jr nz, jr_03c_4259

    cp $01
    rra
    jr jr_03c_4229

    sub h
    rst $20
    rst $38
    nop
    jp Jump_03c_7df3


    ld l, a
    add b
    add hl, hl
    ld bc, $6220
    cp h
    ld d, e
    sbc h
    ld c, a
    cp $00
    ld a, [bc]
    db $f4
    ld bc, $e020
    ld c, $05
    ld h, b
    ld hl, $00ff
    ld a, [hl+]

jr_03c_4259:
    push de
    ld d, l
    add b
    rst $38
    cp $ff
    rst $38
    nop
    add b
    ld a, a
    rst $38
    add b
    ld hl, sp+$4f
    ld [hl], h
    ld l, a
    rlca
    ld a, a
    ret nz

    ld h, e
    jr nz, jr_03c_429c

    reti


    ld l, [hl]
    jr nz, jr_03c_427c

    db $fd
    ld a, [hl-]
    add e
    nop
    inc c
    rst $30
    jp hl


    ret nc

    jp hl


jr_03c_427c:
    db $10
    rst $38
    add hl, hl
    ret nc

    rst $28
    db $10
    xor c
    ret nc

    ld l, c
    ld d, b
    cp a
    jp hl


    db $10
    cpl
    ret nc

    sub a
    dec bc
    ld hl, $f700
    db $e4
    ld h, d
    nop

jr_03c_4293:
    add c
    nop
    ld [hl], a
    ld b, b
    rrca
    ld l, $00
    cp d
    halt

jr_03c_429c:
    cp b
    rst $38
    ld [hl], l
    cp b
    halt
    cp b
    ld [hl], h
    cp c
    ld [hl], l
    cp b
    ld e, $e1
    ld bc, $00ff
    dec bc

jr_03c_42ac:
    dec bc
    ld bc, $8107
    jr z, jr_03c_4293

    ld [bc], a
    rst $38
    ld a, a
    or b
    ei
    dec l
    ei
    xor l
    rst $38
    jr nz, jr_03c_42ac

    or $a4
    rst $38
    and b
    ld [bc], a
    ld [bc], a
    ld bc, $b66d
    ei
    ld l, l
    or [hl]
    add b
    ld de, $ff92
    nop
    ld d, a
    xor b
    rst $38
    ld d, b
    xor a
    ld d, b
    xor a
    ld e, b
    and a
    ld d, a
    and b
    rst $38
    ld c, c
    or b
    ld c, a
    cp b
    ld b, c
    cp [hl]
    cp $1d
    rst $38
    ccf
    call c, $837f
    sbc a
    dec e

jr_03c_42e9:
    ld a, a
    ld [bc], a
    rst $38
    sbc a
    inc e
    ld a, l
    add d
    ld bc, $03fe

jr_03c_42f3:
    db $fd
    rst $30
    rst $38
    ld bc, $08ff
    ld bc, $d6e9
    db $eb
    call nc, $e9ff
    call nc, $d6eb
    db $eb
    inc d
    add hl, hl
    ld d, $ff
    add hl, hl
    sub $ff
    nop
    cpl
    rst $10
    xor a
    ld d, a
    rst $38
    cpl
    ld d, a
    xor a
    rst $10
    xor a
    ld d, b
    jr z, jr_03c_42e9

    add e
    jr z, jr_03c_42f3

    jp nz, $f00d

    cpl
    ld h, c
    cpl
    inc bc
    ld [$13c2], sp
    rst $30
    sbc $20
    nop
    rlca
    ld [$0807], sp
    ld h, b
    nop
    ld a, [hl+]
    db $fd
    cp $02
    inc d
    cp l
    ld c, e
    db $fc
    and d
    ld sp, hl
    ld a, [de]
    cp l
    cpl
    rst $38
    add b
    and d
    inc a
    pop bc
    inc de
    inc d
    jp nz, $c113

    nop
    rst $10
    adc d
    db $f4
    cp $c0
    inc de
    ld d, d
    ret nz

    inc de
    ld c, $f4
    ei
    adc e
    ldh a, [c]
    ld b, b
    inc a
    add b
    ld [hl+], a
    pop bc
    ld a, a
    add b
    cp a
    sbc h
    ld l, e
    ld c, c
    or [hl]
    ld [hl], $c9
    pop bc
    inc [hl]
    ld h, d
    ld a, a
    call c, $c07f
    ld a, b
    rst $08
    db $f4
    ld b, a
    pop bc
    inc de
    and e
    ldh [c], a
    sbc h
    nop
    inc bc
    and [hl]
    dec l
    inc hl
    scf
    add hl, hl
    nop
    inc d
    xor c
    sbc e
    ret nc

    ld l, a
    ret nz

    inc de
    add hl, hl
    ret nc

    add c
    inc d
    inc c
    inc d
    ld [$ebce], sp
    inc de
    rst $38
    nop
    ld [hl], l
    and b
    inc de
    ld b, e
    nop
    ld [hl], h
    cp c
    rst $38
    ld [hl], a
    cp c
    rst $38
    nop
    rlca
    ei
    rlca
    ld hl, sp-$41
    inc b
    ld d, e
    xor h
    inc bc
    ld d, h
    xor e
    ld [hl], d
    inc c
    nop
    rst $38
    rst $38
    jr z, @+$01

    xor b
    rst $38
    xor b
    db $fd
    xor e
    cp a
    rst $38
    or e
    rst $30
    cp e
    rst $30
    dec sp
    nop
    ld c, c
    ld [bc], a
    sbc $21
    nop
    ld d, a
    cp d
    ld [hl], a
    cp c
    and e
    ld d, $49
    cp [hl]
    rst $38
    ld b, l
    cp [hl]
    ld c, e
    cp d
    ld b, d
    cp a
    ld c, c
    cp a
    rst $38
    ld b, b
    cp e
    ld c, c
    cp a
    ret nz

    ccf
    ld bc, $fffe
    add e
    ld a, h
    ld a, a
    ld [bc], a
    sbc [hl]
    dec e
    ld a, l
    add e
    cp $03
    add hl, sp
    ld b, d
    add c
    ld e, a
    add b
    push de
    adc [hl]
    ld e, e
    rst $38
    adc b
    ld d, l
    adc [hl]
    push de
    adc d
    ld e, e
    adc [hl]
    push de
    db $fd
    add [hl]
    add c
    ld c, d
    or $e9
    or $e9
    ldh a, [$ffef]
    ld a, [$0062]
    ldh [$ff81], a
    ld c, d
    rst $18
    ld l, $df
    ld l, $1f
    push af
    xor $62
    nop
    ld c, $81
    ld c, d
    jr c, jr_03c_4452

    inc e
    rra
    db $ec
    jr nz, @+$50

    ld h, b
    ld b, h
    ld a, a
    add b
    add c
    ld c, l
    ld a, l
    cp d
    ld a, l
    rst $38
    cp d
    db $fc
    dec sp
    ld a, l
    cp d
    db $fd
    ld a, [hl-]
    ld a, h
    db $fd
    cp b
    add c
    ld c, l
    or a
    ld c, e
    or a
    ld c, e
    rlca
    ei
    ld a, [$0062]
    inc bc
    ld bc, $c90f
    or b
    rst $08
    or b
    ret


    cp $22
    nop
    rst $08
    or b
    sub h
    ld [$0b97], sp
    sub e
    cp a
    inc c
    ldh a, [c]
    dec c
    sub d
    dec c
    sub e
    jr nz, jr_03c_4452

jr_03c_4452:
    di
    rst $38
    dec c
    call z, $ff88
    cp e
    ei
    inc b
    ld e, a
    sbc a
    cp a
    ld b, b
    cp a
    ld a, a
    add b
    ld h, c
    nop
    ld bc, $bb01
    rst $38
    ld b, h
    ld sp, hl
    or $0f
    or $fb
    ld [bc], a
    ei
    rst $10
    ldh a, [c]
    dec bc
    ldh a, [c]
    inc bc
    ld bc, $6001
    add hl, hl
    rst $38
    nop
    rst $28
    ld de, $11ee
    nop
    inc bc
    ld [bc], a
    cpl
    rst $18
    ldh [$ff7f], a
    rst $18
    ld a, a
    ld b, b
    ld l, a
    ld e, a
    ld h, b
    ld e, a
    ld bc, rDIV
    cp a
    ld b, b
    db $fc
    ei
    inc b
    ei
    cp $03
    rst $38
    cp $fb
    ld b, $fb
    ret z

    cp a
    push bc
    cp a
    rst $38
    adc d
    ld a, e
    add d
    ld a, a
    adc c
    ld a, a
    add b
    ld a, e
    cp $40
    nop
    ld a, a
    ld e, e
    adc h
    ld e, l
    add [hl]
    db $db
    adc d
    rst $38
    ld d, l
    adc [hl]
    ld d, a
    adc d
    reti


    adc [hl]
    ld d, a
    add h
    rst $08
    reti


    adc [hl]
    ldh a, [$ffef]
    ld b, b
    ld d, h
    ld [$1f20], sp
    xor $f3
    rst $38
    ld c, $40
    cpl
    ld h, b
    cpl
    ld bc, $0f00
    ldh a, [$ffcf]
    ei
    nop

jr_03c_44d6:
    ld a, a
    and d
    sub c
    dec [hl]
    ld b, e
    nop
    ld a, a
    add b
    rst $38
    rst $38
    nop
    ld a, h
    cp e
    ld a, a
    cp b
    ld a, a
    cp a
    ld a, [hl]
    jr nz, jr_03c_44ea

jr_03c_44ea:
    add b
    ld b, b
    add b
    ld a, b
    add a
    rst $28
    nop
    jr jr_03c_44d6

    rst $38
    inc bc
    dec b
    inc h

jr_03c_44f7:
    ld h, c
    add hl, bc
    add l
    dec c
    ret


    jr nc, @+$4b

    ld a, [hl]
    nop
    ld b, c
    ld c, a
    jr nc, jr_03c_44f7

    ld l, l
    di
    dec c
    ld b, c
    nop
    dec a
    db $d3
    add b
    nop
    sub d
    ld l, l
    pop af
    ld c, $63
    dec c
    ld h, l
    nop
    di
    and b
    ld a, a
    ld h, e
    dec c
    jp $ff0d


    ld b, $a7
    ld hl, sp-$68
    ld b, c
    dec c
    ld b, e
    nop
    pop bc
    ld h, h
    ei
    ld [hl+], a
    ld h, e
    dec c
    jp $ff0d


    rst $20
    ret nz

    ldh [rWave_f], a
    ld h, e
    dec c
    jp $fc0d


    inc bc
    and e
    rst $18
    db $fc
    adc b
    ld a, a
    add l
    ld a, a
    rlca
    ld c, $00
    rst $38
    rst $38
    daa
    call nz, $9c3a
    sbc h
    db $e3
    dec sp
    xor b
    rst $38
    ld e, c
    and $bf
    add sp, $16
    and l
    cp l
    pop hl
    rst $38
    ret z

    scf
    ld [hl], l
    ld c, a
    ld a, d
    adc e
    jp c, $ff17

    ld l, c
    ld d, a
    or b
    set 7, c
    rrca
    ret c

    ld d, a
    ld a, a
    ld e, d
    add [hl]
    ld d, a
    adc l
    ret c

    adc e
    ld e, a
    ldh [$ff0b], a
    ei
    rst $38
    add b
    add b
    ld h, b
    add b
    or c
    rst $18
    ld a, [hl+]
    db $ed
    pop af
    jp c, Jump_03c_6ac0

    and c
    ld l, h
    add c
    ld h, b
    ld e, e
    ld h, b
    cp e
    pop de
    sbc a
    xor d
    ld h, c
    ld a, [$0301]
    and b
    ld l, l
    ret nz

    inc [hl]
    nop
    rst $38
    daa
    ld b, d
    ld a, [$ac0c]
    inc sp
    sub a
    ld h, h
    rst $38
    db $fd
    add c
    ld l, $cb
    rst $30
    jr jr_03c_4600

    ld h, c
    rst $38
    xor e
    ld b, d
    db $ec
    add a
    ld l, l
    add e
    xor a
    ld b, b
    rst $38
    and b
    ld b, b
    rst $38
    ld b, b
    and b
    ld e, a
    rst $38
    ld b, b
    cp a
    ld c, l
    db $f4
    or e

jr_03c_45ba:
    sub $4d
    ld a, d
    rlca
    inc b
    ld c, a
    rst $30
    ld [hl], $4f
    jr nc, jr_03c_4606

    nop
    ld c, l
    ld [hl], $cf
    jr nc, jr_03c_45ba

    ld c, c
    or [hl]
    rst $08
    jr nc, jr_03c_45d0

jr_03c_45d0:
    ld c, b
    cp l
    adc e
    ld a, [$23f7]
    cp [hl]
    ld c, d
    nop
    inc [hl]
    add hl, de
    cp [hl]
    and d
    db $fd
    rst $38
    xor l

jr_03c_45e0:
    jp z, $8c72

    sbc h
    inc de
    sub a
    ld h, h
    rst $38
    cp $80
    ld a, [hl+]
    call $28d7
    sbc c
    ld de, $a837
    ld a, a
    push bc
    nop
    ld d, c
    and e
    inc a
    dec b
    ld bc, $0c03
    rst $28
    or a
    inc h
    ld a, [hl]

jr_03c_4600:
    nop
    inc bc
    ld [bc], a
    ret z

    scf
    push af

jr_03c_4606:
    rst $18
    adc a
    cp d
    dec hl
    sub e
    ld l, h
    dec b
    inc bc
    add hl, hl
    cp $3c
    ld bc, $0764
    inc bc
    dec l
    jp z, $0cf2

    rrca
    dec b
    rlca
    dec b
    cp h
    inc bc
    ld h, a
    rlca
    ld b, $29
    or $0f
    or b
    add hl, bc
    inc b
    dec hl
    ld [hl], a
    db $fd
    dec b
    cp [hl]
    nop
    ld a, [bc]
    cp h
    ld c, d
    db $fc
    nop
    ld h, d
    cp $00
    ld [hl], d
    ld c, [hl]
    or e
    di
    nop
    ld [hl], l
    xor $fe
    rst $38
    ld b, c
    ld c, c
    add c
    rst $30
    jr jr_03c_45e0

    ld [bc], a
    set 7, l
    ld [hl], l
    rlca
    ld bc, $38d7
    add hl, sp
    add a
    and b
    rst $18
    nop
    ld [$4eff], sp
    or e
    di
    nop
    ld [hl], l
    xor $fe
    ld b, c
    rst $38
    ld c, c
    add c
    rst $10
    jr c, jr_03c_469f

    add e
    and h
    ei
    sbc $09
    ld bc, $8679
    ld e, c
    sub [hl]
    add hl, bc
    ld [bc], a
    add hl, sp
    add a
    rst $38
    and b
    rst $38
    ldh a, [rIF]
    sub c
    ld c, $91
    ld c, $ff
    di
    inc c
    sub e
    inc c
    sub a
    ld [$0895], sp
    rst $38
    rst $30
    ld [$ff28], sp
    rst $38
    nop
    ccf
    ccf
    rst $38
    ld a, a
    ld bc, $017f
    rla
    rla
    rst $38
    nop
    ei
    reti


    ld l, [hl]
    ld bc, $a001
    ld e, a
    rst $38
    nop
    add h
    rst $08

jr_03c_469f:
    ld a, e
    rst $38
    nop
    rst $18
    add b
    nop
    ld bc, $8202
    ld a, l
    ld a, a
    rst $38
    nop
    db $10
    rst $28
    rst $38
    nop
    rst $38
    ret nz

    ld [bc], a
    ld a, [hl]
    ld bc, $0803
    rst $30
    rst $38
    nop
    ld b, c
    cp [hl]
    rlca
    ld bc, $21bf
    sbc $ff
    nop
    inc b
    ei
    nop
    ld [bc], a
    rra
    rst $38
    ld a, a
    ld h, b
    ld [hl], a
    adc b
    ld l, h
    xor b
    and $99
    rst $38
    db $db
    ld b, d
    xor l
    halt
    rst $30
    ld [$a5d6], sp
    rst $38
    sbc $12
    add sp, $3f
    push bc
    cp a
    ld c, d
    cp e
    rst $38
    ldh [c], a
    ccf

jr_03c_46e6:
    ld l, c
    ld e, a
    and b
    db $db
    reti


    ccf
    rst $38
    ldh [$ffbf], a
    dec hl
    db $fc
    ld b, $bc
    adc d
    ld sp, hl
    rst $38
    inc hl
    cp h
    ld c, h
    ei
    and [hl]
    ld a, [$bc1b]
    rst $38
    and d
    db $fd
    xor $31
    ld [hl], e
    ld c, l
    ld h, [hl]
    add l
    rst $38
    cp a
    jr nz, jr_03c_46e6

    ld l, h
    ld [hl], a
    inc d
    sbc $41
    sbc e
    db $eb
    or b
    ld bc, $9b09
    ld h, h
    ld b, a
    dec b
    ld bc, $390a
    rst $20
    add $ff
    nop
    ret nc

    rlca
    ld b, $01
    call z, $ff33
    rst $00
    nop
    ld [bc], a
    db $fd
    ld b, e
    ld bc, $0105
    ld b, c
    add hl, bc
    ld b, b
    cp a
    rst $38
    rst $38
    nop
    cpl
    ldh a, [$ff89]
    ld [hl], b
    adc c
    ld [hl], b
    rst $38
    ret


    jr nc, @+$51

    or b
    jp hl


    db $10
    add hl, hl
    ret nc

    rst $38
    jp hl


    db $10
    sub h
    dec bc
    sub a
    ld [$0b96], sp
    ei
    push af
    add hl, bc
    ldh [$ff0e], a
    ld a, [bc]
    sub l
    ld a, [bc]
    rst $30
    ld [$ffef], sp
    nop
    rst $20
    ld a, [hl-]
    add c
    ld c, $ff
    nop
    add [hl]
    rst $38
    ei
    ld b, l
    ld a, c
    rst $38
    nop
    ld bc, $fefe
    rst $38
    nop
    push bc

jr_03c_476e:
    ld a, b
    and [hl]
    jr c, jr_03c_476e

    ld bc, $ff14
    jp hl


    inc d
    jp hl


    db $fc
    ld bc, $00ff
    dec bc
    ld sp, hl
    dec bc
    ldh [rTMA], a
    nop
    rlca
    ret c

    daa
    db $e4
    ld b, e
    ld e, h
    db $fd
    sbc e
    ld bc, $f502
    sbc b
    ld [$ff0c], a
    add b
    rst $38
    rst $00
    cp d
    push bc
    cp c
    rst $38
    add b
    ldh a, [rIF]
    rst $38
    ld e, a
    nop
    ld c, a
    ld e, $21
    ld [hl+], a
    inc bc
    inc b
    ei
    ld c, $81
    ld b, c
    ld [de], a
    ld [hl], a
    adc b
    db $ec
    jr z, jr_03c_4814

    rst $38
    sbc c
    db $db
    add d
    db $ed
    ld [hl], $77
    adc b
    ld d, [hl]
    cp $02
    rrca
    rst $08
    or b
    ld c, c
    or c

jr_03c_47be:
    ei
    jr nz, jr_03c_483c

    ld a, a
    ld b, b
    cp b
    ret nz

    rst $28
    nop
    cp $83
    ld bc, $ff16
    db $fd
    ld a, [$08ff]
    db $fc
    dec bc
    cp a
    cp b
    rst $08
    cp $02
    rst $08
    ld [hl], b
    ld bc, $c117
    ld [de], a
    jr nz, jr_03c_47be

    add b
    rlca
    dec d
    pop bc
    dec d
    ld b, c
    ld d, $05
    ld d, $c1
    dec d
    ld b, c
    ld d, $01
    rla
    dec hl
    rst $38
    db $fd
    rst $38
    inc b
    inc c
    ldh a, [c]
    db $fd
    inc bc
    daa
    rst $38
    ret c

    rst $38
    ld bc, $fcfe
    rst $38
    nop
    ld a, [hl]
    rst $38
    inc b
    add $48
    ld c, d
    dec [hl]
    cp e
    ret z

    jp nc, Jump_000_2cff

    cp [hl]
    jr nz, @-$10

    adc c
    db $db
    jr nc, jr_03c_4868

    rst $30

jr_03c_4814:
    ld d, l
    xor e
    xor e
    pop bc
    ld de, $6252
    rst $10
    db $e4
    or a
    dec d
    jp hl


    db $fc
    add b
    nop
    push de
    push hl
    pop bc
    ld a, [de]
    xor d
    rst $38
    xor b
    ld e, a
    ld e, h
    add d
    ld a, h
    cp $00
    xor d
    ld a, a
    xor d
    ld d, l
    ld d, l
    rst $38
    nop
    dec b
    dec b
    ld b, c
    dec c
    rst $38

jr_03c_483c:
    ld [hl+], a
    db $dd
    rst $38
    ld [hl+], a
    xor l
    xor [hl]
    ld a, l
    ld a, [hl]
    rst $38
    add c
    ld a, [hl]
    rst $38
    add b
    db $e4
    ld e, b

jr_03c_484b:
    ld h, l
    add hl, de
    rst $38
    ld h, l
    jp c, Jump_03c_40fe

    ld d, l
    ld d, l
    xor a
    xor a
    cp $c1
    dec d
    xor d
    xor d
    ld d, a
    ld d, a
    add b
    ld a, a
    rst $38
    sbc a
    add b
    xor a
    ret nc

    xor c
    ret nc

    add c
    inc de

jr_03c_4868:
    add l
    nop
    sub h
    rrc e
    sub [hl]
    jr nz, jr_03c_4884

    push af
    ret nz

    inc de
    ld hl, $f714
    ld [$30cf], sp
    rst $18
    jr z, jr_03c_484b

    push bc
    inc de
    ld b, c
    rra

Call_03c_4880:
    call nz, $ff79
    and h

jr_03c_4884:
    add hl, sp
    db $fc
    ld bc, $e91c
    rla
    push hl
    cp $43
    ld [hl+], a
    ld hl, sp+$77
    db $fc
    ld l, e
    ld l, [hl]
    sub l
    ld b, $f9
    ld sp, hl
    pop bc
    ld [hl+], a
    ld b, c
    ld [hl+], a
    ldh a, [$ff9f]
    add sp, -$71
    rst $38
    rst $18
    add b
    add $bb
    push bc
    add hl, sp
    ld b, e
    ld [hl+], a
    rst $28
    ld de, $92ff
    ld l, h
    add a
    inc b
    ld a, h
    add e
    inc d
    rst $20
    db $fc
    ld b, e
    dec h
    nop
    inc d
    xor b
    and $19
    ld e, e
    add d
    ld l, l
    rst $30
    or [hl]
    rst $30
    ld [$1401], sp
    rst $20
    jr @+$01

    add c
    rst $38
    ld [hl], a
    sbc b
    xor $0b
    ld a, a
    ld b, b
    xor h
    rst $10
    rst $38
    ld [$ff13], a
    add b
    ld hl, sp+$07
    ccf
    ret nc

    cp a
    cp $03
    call $ff71
    nop
    and e
    rlca
    rrca
    rst $38
    ldh a, [$fff0]
    nop
    cpl
    ret nz

    inc sp
    ret nz

    rst $20
    rst $38
    dec bc
    xor e
    ld b, c
    or l
    ld b, b
    ld [$f800], a
    rst $38
    rlca
    ld e, a
    ld e, b
    rst $38
    inc b
    add a
    nop
    ld b, a
    ld a, a
    inc a
    and [hl]
    sbc l
    sub $cd
    rst $30
    ld l, h
    add c
    ld [hl+], a
    or h
    and e
    dec e
    and e
    ld a, [bc]
    inc bc
    add b
    ld [hl+], a
    ld a, [de]
    db $ec
    pop hl
    add hl, bc
    jp Jump_03c_7db7


    and d
    inc a
    add hl, bc
    inc d
    cp a
    ld hl, $1401
    ld d, h
    rst $38
    ld e, b
    or h
    cp b
    inc b
    ld hl, sp-$03
    ld bc, $f74f
    adc e
    ld d, a
    sub h
    ld bc, $d224
    ld h, b
    sub $64
    rst $38
    sub d
    ld l, h
    cp $00
    sub $58
    or [hl]
    cp b
    rst $38
    dec b
    ld a, [$00ff]
    add b
    nop
    ld d, l
    add b
    rst $38
    ld d, l
    add b
    ld h, e
    and d
    ld [hl+], a
    db $dd

jr_03c_494d:
    inc e
    db $e3
    cp $01
    jr nc, jr_03c_494d

    ld e, h
    ld a, d
    call c, $dc62
    ld a, [hl]
    rst $38
    ret nz

    ld l, d
    call nc, $d56b
    ret


    or [hl]
    rst $38
    rst $38
    nop
    ld c, d
    inc c
    ld e, e
    dec e
    ld b, d
    dec a
    ld a, a
    ld e, a

jr_03c_496c:
    nop
    jp z, $d78a

    sub a
    nop
    inc d
    nop
    dec c
    inc d
    ld a, a
    sub d
    dec c
    sub e
    inc c
    sub d
    dec c
    di
    ld b, b
    nop
    cp $21
    nop
    ldh a, [c]
    dec c
    ret nc

    ld c, a
    or $09
    ld d, $ff
    jp hl


    ldh a, [rIF]
    sub $49
    or [hl]
    add hl, hl
    ret nc

    rst $38
    ld c, a
    cp a
    jr nz, jr_03c_49ad

    push hl
    rst $18
    jr nz, jr_03c_496c

    rst $38
    cpl
    rra
    ldh [$ffd5], a
    dec h
    jp c, Jump_000_152a

    rst $18
    push hl
    ld a, [$560a]
    ld d, h
    ld b, e
    dec bc

jr_03c_49ad:
    ld d, [hl]
    ld d, l
    res 5, d
    xor c
    ld b, c
    nop
    ld [hl], b
    ld b, b
    dec b
    add c
    scf
    cp $7d
    sub a
    xor d
    ld d, l
    cp $20
    nop
    sub $e0
    inc e
    add c
    ld b, $d6
    rst $30
    ld d, l
    xor d
    add hl, hl
    ld b, c
    nop
    rst $30
    ld [$28ec], sp
    ei
    and $19
    inc b
    scf
    dec h
    sbc $12
    pop hl
    ld e, $ff
    pop af
    sbc [hl]
    ld a, a
    add b
    db $ec
    rla
    ld l, d
    ld d, e
    ccf
    cp a
    ret nz

    add sp, $17
    rst $38
    add b
    ret


    db $10
    ld b, c
    daa
    rst $38
    inc a
    ret z

    cpl
    rst $00
    rst $20
    ld [$4fe0], sp
    ei
    cp a
    cpl
    add e
    dec a
    rst $30
    inc l
    cp a
    ld d, h
    rst $18
    rst $18
    xor b
    xor $51
    cp $99
    add e
    dec a
    dec de
    db $ed
    rst $30
    rla
    db $e4
    cp $c0
    ld [de], a
    and e
    inc a
    rst $38
    ld bc, $82fb
    ld a, h
    ld bc, $c727
    ld c, b
    ld c, e
    inc [hl]
    cp c
    rst $38
    jp z, Jump_000_2ed1

    cp a
    jr nz, @-$0f

    adc b
    reti


    rst $30
    ld [hl-], a
    ld [de], a
    ld [de], a
    pop bc
    dec hl
    cp b
    ret c

    jr nz, jr_03c_4a92

    cp a
    ccf
    ld b, b
    jr nz, @+$61

    jr nc, jr_03c_4a8a

    ld b, c
    ld b, c
    inc b
    rst $38
    ei
    ld e, l
    ld e, e
    inc bc
    db $fc
    cp $01
    inc bc
    scf
    db $fd
    ld d, a
    ld d, l
    ld b, c
    ld b, d
    nop
    rst $38
    ld h, c
    ld [bc], a
    ld hl, $f700
    and h
    inc a
    jp nc, $2e02

    ret c

    add sp, -$20
    rra
    cp a
    cp a
    ld b, b
    ldh [$ff5f], a
    add sp, $48
    add c
    inc a
    ld [bc], a
    rst $38
    db $fd
    cpl
    dec l
    ld [bc], a
    db $fc
    cp $00
    ld [bc], a
    rst $38
    db $fc
    ld a, [hl+]
    jr z, jr_03c_4aa3

    ret nc

    ret


    jr nc, @+$4b

    adc a
    or b
    ld c, c
    or b
    ld c, a
    ld b, b
    nop
    add c
    nop
    add c
    ld [de], a
    sub e
    ei
    inc c
    ldh a, [c]
    ld b, b
    inc de
    sub e

jr_03c_4a8a:
    inc c
    sub c
    rrca
    ldh a, [$ffdf]
    rrca
    ldh [rLCDC], a

jr_03c_4a92:
    and b
    rra
    ldh [$ff2c], a
    call z, $feaa
    ld b, b
    ccf
    add hl, de
    cp a
    and b
    rst $38
    dec c
    dec b
    ld a, [bc]
    ld sp, hl

jr_03c_4aa3:
    ldh a, [c]
    add hl, bc
    ld bc, $1281
    cp $01
    xor d
    call $7daa
    ld sp, $0200
    cp [hl]
    and c
    cp $fe
    dec d
    ld h, b
    ld [de], a
    ld a, c
    dec d
    ret nz

    ld [de], a
    ld b, b
    ld c, e
    add hl, de
    ld hl, $da6d
    add c
    ld [de], a
    cp $e0
    jr nc, jr_03c_4afb

    xor d
    ld c, h
    rst $38
    nop
    sbc c
    ccf

jr_03c_4ace:
    di
    and b
    rst $38
    add hl, bc
    inc de
    nop
    dec sp
    sub d
    or $2a
    rst $18
    rst $38
    and b
    ld d, b
    xor a
    rst $38
    jr nz, jr_03c_4b56

    ld c, d
    or l
    rst $38
    ret


    sub $2a
    push af
    xor c
    add b
    ld a, a
    or [hl]
    and a
    ld c, c
    or [hl]
    ld c, c
    ld h, l
    nop
    add b
    inc [hl]
    ld a, [hl+]
    inc bc
    rla
    xor e
    rst $38
    jr z, jr_03c_4ace

    ld d, b

jr_03c_4afb:
    xor h
    dec hl
    ret nc

    ld d, h
    or e
    rst $28
    and e
    rst $38
    nop
    rra
    ret nz

    ld d, b
    rst $30
    dec hl
    dec [hl]
    cp a
    ld c, d
    rla
    ld a, [hl+]
    scf
    ld c, d
    add [hl]
    ld b, b
    ld [hl+], a
    db $fc
    cp $c0
    ld c, a
    or $ea
    ld d, l
    xor c
    or $aa
    push af
    rst $38
    xor c
    or l
    xor e
    db $fd
    ld [bc], a
    ld b, $f8
    rst $38
    rst $38
    ld bc, $a8b7
    ld d, l
    ld c, e
    or [hl]
    xor b
    ld d, a
    rst $30
    ld c, b
    ld a, l
    ld b, $0b
    inc d
    jr c, jr_03c_4b90

    jr nz, @+$61

    rst $38
    cp a
    ret nz

    jr nz, jr_03c_4b9e

jr_03c_4b3f:
    cp b
    ret c

    and b
    rst $18
    cp a
    ccf
    ret nz

    ldh [rWave_f], a
    ld l, $2c
    and c
    db $10
    inc bc
    rst $38
    db $fd
    ld e, a
    ld e, l
    ld [bc], a
    db $fd
    cp $01
    and c

jr_03c_4b56:
    ld a, a
    cp $88
    ld l, a
    and c
    dec a
    sub h
    ld [hl], a
    db $e3
    inc de
    rst $38
    rst $38
    nop
    dec a
    inc hl
    or l
    dec d
    and b
    rra
    rst $38
    cp a
    nop
    ldh [$ff5f], a
    ld hl, sp+$58
    and b
    ld e, a
    rst $38
    cp a
    ld b, b
    ld h, b
    ccf
    ld d, [hl]
    ld d, h
    ld [bc], a
    db $fc
    ld a, a
    rst $38
    ld bc, $fc02
    cpl
    dec l
    inc bc
    ld [bc], a
    inc bc
    db $fc
    add l
    inc de
    inc bc
    inc d
    adc c
    ld [hl], b
    add hl, hl
    cp $05
    cp [hl]

jr_03c_4b90:
    rst $38
    adc e
    ld a, [$be23]
    ld c, d
    db $fd
    and d
    ld hl, sp-$02
    ld bc, $b311
    ld d, h

jr_03c_4b9e:
    ld a, [hl]
    nop
    xor d
    call $efd7
    jr z, jr_03c_4b3f

    ld de, $a2ce
    ld h, d
    jr z, @+$01

    add l
    rst $38
    ccf
    adc d
    ld a, e
    ld [hl+], a
    cp a
    ret


    ld a, a
    and b
    rst $18
    ld a, e
    add hl, de
    cp a
    and c
    cp $08
    ld e, e
    adc b
    and $ff
    dec b
    ld a, $a2
    rst $30
    ld a, [hl+]
    push de
    xor b
    ld e, a
    ld a, a
    and b
    push af
    ld h, $75
    ld c, c
    cp a
    ret nz

    nop
    ld e, e
    ld a, l
    sbc a
    and c
    ld d, b
    rst $38
    nop
    ld d, l
    ld h, [hl]
    ld d, l
    nop
    ld [hl+], a
    sbc $01
    jr @+$6e

    add hl, hl
    ld d, a
    sub h
    add hl, bc
    ld bc, $8837
    db $fd
    rst $10
    ld h, b
    ld d, l
    ld d, l
    ld l, d
    ld d, a
    adc e
    rst $38
    nop
    rst $28
    inc [hl]
    sub b
    cp d
    push hl
    ld b, c
    db $10
    rst $30
    xor b
    ld d, l
    rst $38
    xor c
    push af
    ld [$00ff], a
    db $ed
    adc e
    cp [hl]
    rst $38
    dec h
    or l
    xor e
    ld d, l
    ld c, d
    cp $00
    ld d, a
    rst $38
    sbc c
    ld d, a
    ld h, b
    db $fd
    inc bc
    ld a, [de]
    cp h
    and e
    db $fd
    db $fc
    nop
    ld de, $4a49
    dec [hl]
    cp c
    jp z, $ffdd

    ld [hl+], a
    or d
    dec l
    rst $28
    add hl, bc
    add hl, hl
    jp nc, $fd28

    rst $38
    ld bc, $220b
    cp a
    ld c, c
    rst $38
    and b
    ei
    cp $01
    ld e, $e7
    inc b
    ld h, l
    ld e, c
    ld a, $c5
    ei
    rst $38
    inc c
    sbc [hl]
    ld [de], a
    sub [hl]
    ld h, l
    ei
    inc c
    db $dd
    rst $30
    ld d, c
    xor b
    ld a, a
    ld bc, $a20b
    ccf
    ret


    cp a
    ei
    ld h, b
    cp e
    nop
    inc e
    ld a, a
    cpl
    ldh a, [$ff09]
    or b
    rst $38
    adc c
    ldh a, [$ff29]
    or b
    ld c, a
    ldh a, [$ffa9]
    ldh a, [$ffbf]
    add hl, de
    or b
    xor c
    ldh a, [$ffbb]
    ld e, h
    dec bc
    ld c, $ab
    rst $08
    ld e, h
    cp $80
    ld a, [hl+]
    ld [bc], a
    rrca
    and e
    ld [hl], c
    cp e
    ld l, h
    ld l, d
    inc c
    ld bc, $0b68
    ld [bc], a
    db $db
    inc c
    ld [bc], a
    xor e
    ld a, h
    inc c
    inc b
    db $fd
    inc l
    dec bc
    dec b
    sbc b
    ld l, a
    push af
    rrca
    adc d
    ei
    db $db
    and e
    inc a
    ld h, l
    ld b, $a9
    halt
    dec bc
    rlca
    add sp, $3f
    ccf
    ld h, l
    ld e, a
    xor d
    db $db
    ldh [c], a
    ccf
    ld bc, $0116
    dec bc
    rst $18
    sub b
    rrca
    sub c
    rrca
    sub b
    add b
    inc l
    sbc a
    nop
    ld sp, hl
    sub c
    jr nz, jr_03c_4cb5

jr_03c_4cb5:
    ld bc, $0575
    cp a
    adc d
    ei
    ld [hl+], a
    ld a, [de]
    and b
    ld l, d
    ld de, $0020
    rst $38
    nop
    ld bc, $091b
    ld bc, $7ca3
    inc bc
    ld a, [hl-]
    add a
    dec b
    ld [bc], a
    ld [bc], a

jr_03c_4cd0:
    db $10
    ld [$0503], sp
    db $10
    dec b
    inc b
    nop
    ld b, $ff
    inc bc
    nop
    inc c
    inc bc
    inc de
    rrca
    rla
    rrca
    rst $38
    dec de
    inc c
    ld [hl], h
    dec bc
    xor a
    ld [hl], b
    jp z, $ff77

    ldh [rP1], a
    jr jr_03c_4cd0

    add h
    ld hl, sp-$1c
    ld hl, sp-$01
    or d
    ld a, h
    ld b, l
    cp d
    db $fd
    ld [bc], a
    cp d
    db $f4
    rst $38
    push de
    ld l, [hl]
    or l
    ld e, [hl]
    ld e, l
    ld b, $0b
    rlca
    rst $38
    ld d, $09
    dec hl
    dec d
    add hl, sp
    ld d, $6f
    ld [hl-], a
    rst $38
    sub $b8
    sub $bc
    sbc $b0
    rst $28
    or $ff
    ld [hl], $c8
    ld [$ced4], a
    inc [hl]
    ld a, e
    and [hl]
    rst $38
    ld a, e
    dec [hl]
    dec sp
    rlca
    dec c
    ld [bc], a
    dec de
    inc c
    rst $18
    dec a
    ld b, $3a
    inc e
    inc e
    nop
    dec b
    cpl
    sub $ff
    adc [hl]
    ldh a, [$ffd8]
    jr nz, jr_03c_4dae

jr_03c_4d3a:
    jr jr_03c_4daa

    jr nc, jr_03c_4d3a

    inc bc
    ld bc, $0405
    ld [hl], $09
    ld a, e
    dec [hl]
    ld a, c
    ld [hl], $fb
    ccf
    ld [bc], a
    dec bc
    inc b
    ld a, h
    and b
    dec bc
    dec b
    dec bc
    cp [hl]
    nop
    inc b
    rla
    ld [$0e11], sp
    ld c, $02
    add hl, bc
    jr z, @+$01

    ret nc

    sbc b
    ldh [$fffc], a
    jr @+$64

    inc a
    ld c, [hl]
    ld c, a
    jr nc, jr_03c_4da5

    nop
    jr jr_03c_4d74

    inc b
    inc bc
    ld [$081f], sp
    inc b
    rst $18
    rst $28

jr_03c_4d74:
    sub $cf
    ld [hl], $7e
    ld [bc], a
    inc b
    rra
    inc c
    ld a, a
    ld sp, $3d1e
    ld [bc], a
    ld e, $00
    inc c
    ld [bc], a
    inc b
    rst $38
    adc b
    ldh a, [$ffc8]
    jr nc, jr_03c_4e00

    ld [$3844], sp
    db $fd
    jr c, @+$48

    ld c, $0f
    nop
    db $10
    rrca
    daa
    rra
    cp a
    ld c, b
    ccf
    ld d, e
    inc a
    ld d, a
    dec sp
    ld b, c
    rrca
    rst $38
    add $30

jr_03c_4da5:
    nop
    rst $38
    rst $38
    ld b, b
    nop

jr_03c_4daa:
    ld sp, $4000
    db $10

jr_03c_4dae:
    ldh [rP1], a
    rst $38
    db $10
    ldh [$ffc8], a
    ldh a, [rNR50]
    ld hl, sp-$6c
    ld a, b
    adc a
    call nc, Call_03c_57b8
    dec sp
    dec hl
    nop
    sub b
    ld [bc], a
    ld a, [hl-]
    nop
    call nc, $b8f9
    dec hl
    nop
    ld bc, $5303
    inc a
    ld c, b
    ccf
    daa
    adc a
    rra
    db $10
    rrca
    rrca
    pop bc
    dec b
    ld de, $0603
    ld b, $00
    db $fd
    nop
    ld bc, $9403
    ld a, b
    inc h
    ld hl, sp-$38
    ldh a, [rPCM34]
    db $10
    ldh [$ffe0], a
    inc bc
    ld [bc], a
    dec bc
    rst $38
    ld a, e
    jr nz, jr_03c_4df1

jr_03c_4df1:
    rst $10
    ld a, [bc]
    rst $38
    ld a, d
    jr nz, jr_03c_4df7

jr_03c_4df7:
    ld a, e
    inc b
    ld b, $35
    rst $38
    push af
    push de
    ld [hl+], a

Call_03c_4dff:
    nop

jr_03c_4e00:
    ld a, [hl-]
    inc b
    rlca
    ld h, [hl]
    rst $38
    ld e, d
    rst $38
    rst $18
    ld b, d
    rst $38
    ld e, [hl]
    rst $38
    ldh [c], a
    sub b
    ld a, [bc]
    ld sp, hl
    rst $38
    ld a, a
    or $ff
    or a
    rst $38
    ld a, c
    rst $38
    cp $80
    nop
    push af
    ld sp, hl
    sub b
    dec bc
    cp a
    jr nz, jr_03c_4e22

jr_03c_4e22:
    xor [hl]
    rst $38
    sub l
    rst $38
    push af
    or l
    jr nz, jr_03c_4e2a

jr_03c_4e2a:
    or [hl]
    ld [bc], a
    ld a, [bc]
    db $eb
    rst $38
    ld h, l
    rst $38
    ld a, a
    xor l
    rst $38
    and l
    rst $38
    xor e
    rst $38
    ld l, a
    sub b
    dec c
    ld e, l
    rst $28
    jr nz, jr_03c_4e3f

jr_03c_4e3f:
    db $eb
    rst $38
    ld l, e
    ld [hl+], a
    nop
    sbc h
    ld [bc], a
    inc c
    push de
    rst $18
    ldh [$ff03], a
    ld d, a
    ld [hl+], a
    nop
    reti


    sub b
    rrca
    db $fc
    rst $38
    rst $38
    db $fd
    rst $38
    sbc l
    rst $38
    ld l, h
    rst $38
    dec c
    rst $38
    ld d, a
    ld a, l
    rst $38
    adc h
    sub b
    db $10
    ld a, a
    jr nz, jr_03c_4e6a

    or e
    ret nz

    nop
    db $dd
    or c

jr_03c_4e6a:
    ld b, b
    inc b
    ld [hl], c
    db $fd
    ei
    ld [hl+], a
    nop
    ld e, e
    db $fd
    scf
    dec sp
    db $fd
    ld a, e
    ld hl, $4000
    add b
    dec hl
    nop
    sub b
    inc de
    ld d, l
    sbc e
    ret nz

    dec b
    ld a, d
    nop
    add hl, bc
    ld a, e
    ld b, b
    ld b, $9b
    inc b
    ld [de], a
    xor c
    jp c, $0b00

    ld hl, $6600
    sub b
    dec d
    cp $a0
    ld a, [bc]
    or d
    xor a
    rst $38
    ld l, [hl]
    rst $38
    xor $20
    nop
    ldh a, [c]
    inc b
    dec b
    cp e
    jp nc, $0520

    db $db
    ld hl, $9000
    rla
    rra
    ld h, b
    ld a, [bc]
    ld l, h
    rst $38
    rst $10
    dec de
    rst $38
    ld l, b
    ld b, b
    ld a, [bc]
    ld l, h
    inc b
    ld d, $e2
    rst $38
    ld a, a
    ld e, a
    rst $38
    ld h, a
    rst $38
    ei
    rst $38
    rst $00
    ld [bc], a
    add hl, bc
    ld [hl], a
    ld a, a
    rst $38
    inc sp
    ret nz

    add hl, bc
    ld [hl], c
    rst $38
    ld l, l
    ld b, b
    add hl, bc
    ld c, [hl]
    inc de
    jr jr_03c_4f3f

    rst $38
    ld l, c
    ld [hl+], a
    dec c
    dec b
    rlca
    sbc b
    ld b, b
    rrca
    dec h
    adc e
    ld b, b
    ld c, $8b
    ld h, b
    ld de, $0681
    add $00
    rlca
    ld hl, $a700
    halt
    ld d, b
    ldh [$ff2b], a
    nop

jr_03c_4ef2:
    sub b
    ld e, $9f
    ld h, b
    ld de, $e27c
    ld h, b
    ld c, $7c
    ld bc, $2f11
    jr nc, jr_03c_4f22

    jr nc, jr_03c_4f17

    rrca
    ld a, [de]
    ld a, a
    rrca
    cpl
    rra
    inc [hl]
    rra
    inc hl
    dec e
    pop hl
    jr nz, @+$01

    jr jr_03c_4ef2

    inc b
    ld hl, sp-$74
    ld hl, sp+$56

jr_03c_4f17:
    db $fc
    rst $38
    xor [hl]
    call c, Call_000_2cf2
    dec h
    ld a, [de]
    dec sp
    inc b
    rst $38

jr_03c_4f22:
    dec a
    ld d, $1f
    inc b
    dec d
    dec bc
    rrca
    nop
    rst $38
    dec bc
    dec b
    dec d
    ld a, [bc]
    ld [$eef4], a
    sub b
    rst $38
    sbc $b4
    db $fc
    sub b
    call nc, $fce8
    nop
    rst $38
    xor $dc

jr_03c_4f3f:
    ld d, h
    xor b
    rra
    ld a, [bc]
    scf
    ld a, [de]
    rst $18
    ld a, $19
    inc e
    inc bc
    ld c, $60
    jr nc, jr_03c_4f6b

    ld c, $ff
    ld e, $00
    ld a, h
    xor b
    or $2c
    ld a, $cc
    ld l, a
    sbc h
    ld h, b
    add sp, $70
    ld h, b
    jr nc, jr_03c_4f98

    inc a
    db $ec
    dec b
    db $db
    dec h
    ld a, [de]
    db $eb
    dec b
    ld [$ebf4], a

jr_03c_4f6b:
    dec b
    cpl
    ld [de], a
    cp $e7
    dec b
    cp $cc
    ld e, [hl]
    xor h
    ld a, h
    and b
    rra
    cp a
    inc b
    ld b, $01
    ld c, $05
    rrca
    ret nz

    dec b
    dec e
    db $fd
    ld [bc], a
    ld hl, $f032
    jr nz, @+$32

    ret nz

    sub b
    ld h, b
    ccf
    xor b
    ld d, b
    ret nc

    jr nz, jr_03c_4fda

    jr nc, jr_03c_4fb5

    ld l, $e9
    add hl, bc
    rst $28

jr_03c_4f98:
    dec e
    ld [bc], a
    ccf
    ld a, [de]
    db $e3
    add hl, bc
    call c, $fce0
    rst $38
    ld [$d0f8], sp
    ld d, h
    xor b
    ld a, d
    and h
    ccf
    rst $38
    ld a, [de]
    ld e, $01
    inc b
    inc bc
    ld a, [bc]
    dec b
    dec b
    rst $30
    ld [bc], a

jr_03c_4fb5:
    add hl, bc
    ld b, $21
    ld [hl], $fc
    db $10
    jr c, @-$3e

    rst $38
    sbc b
    ld [hl], b
    cp h
    ld h, b
    call c, Call_03c_5c38
    jr nz, @-$02

    ld hl, $0232
    ld l, $fd
    rst $38
    call nc, Call_03c_4dff
    rst $38
    and a
    ld e, h
    rst $38
    ld e, l
    jr nz, jr_03c_4fd7

jr_03c_4fd7:
    ld de, $7f2f

jr_03c_4fda:
    nop
    ld hl, $ebad
    rst $38
    and c
    ldh [rNR50], a
    di
    ldh [c], a
    ld bc, $fffd
    ld e, b
    set 7, a
    dec l
    ldh [rNR23], a
    ld l, l
    ld h, b
    dec e
    inc de
    ld sp, $ffcd
    rst $38
    or h
    rst $38
    add l
    rst $38
    cp l
    rst $38
    call Call_03c_55f5
    xor $22
    nop
    ld l, [hl]
    add h
    nop
    xor $90
    dec [hl]
    rlca
    nop
    daa
    ld d, a
    call c, $dbff
    ld [hl+], a
    nop
    call c, $2104
    and $04
    ld [hl+], a
    ld d, l
    and $90
    scf
    and $e0
    ld [hl+], a
    sbc $20
    ld bc, $60fa
    inc hl
    ld a, h
    ld bc, $3101
    ld [hl], $b9
    rst $38
    ld d, [hl]
    rst $38
    sub $20
    nop
    ld e, l
    reti


    ldh [c], a
    inc hl
    xor [hl]
    rst $38
    sub [hl]
    and b
    dec l
    sub [hl]
    ld h, b
    ld l, $c9
    cp [hl]
    inc b
    inc e
    pop bc
    ld [hl+], a
    dec bc
    ld b, d
    dec l
    inc bc
    dec l
    ldh a, [rIE]
    cp c
    ld d, l
    inc h
    nop
    dec b
    ld b, $7a
    rst $38
    ld h, d
    ld b, b
    inc sp
    ld h, d
    xor b
    rrca
    ld b, $0f
    ld b, $0c
    ld b, $0f
    jr nz, jr_03c_508e

    ld a, e
    nop
    add hl, hl
    ld a, h
    ld [$3980], a
    dec bc
    sub b
    ld b, c
    ei
    ret nz

    dec bc
    ld [hl], c
    rst $38
    ld e, e
    xor $20
    inc c
    ld e, e
    rst $38
    ld e, l
    ld b, c
    ld d, d
    cp $00
    ld bc, $feff
    db $fc
    rst $38
    ld [bc], a
    rst $38
    ld sp, hl
    rlca
    db $fd
    call $85fb
    ld d, e
    add b
    nop
    and e
    ld sp, $3301
    ld sp, hl
    rlca

jr_03c_508e:
    sbc l
    ld [bc], a
    ld d, b
    dec [hl]
    ld bc, $fefe
    nop
    ld d, l
    dec b
    inc sp
    add b
    sbc h
    ld c, b
    ld d, [hl]
    dec b
    ld b, a
    cp $01
    rst $38
    ld sp, $c202
    inc bc
    jr nz, jr_03c_50db

    ret nz

    sub b
    inc bc
    ld a, [hl+]
    ldh [rWave_2], a
    cp $01
    rlca
    ld b, e
    inc bc
    inc l
    rst $28
    sub b
    ldh [rNR41], a
    ret nz

    ld b, a
    inc b
    ld hl, sp+$00
    inc b
    ld a, a
    ld hl, sp-$0e
    db $fc
    add hl, bc
    cp $e5
    ld e, $e3
    ld d, $ff
    push hl
    ld e, $09
    cp $f2
    db $fc
    inc b
    ld hl, sp+$01
    ld hl, sp-$21
    inc l
    rra
    nop
    rra
    nop
    ld a, [de]
    nop

jr_03c_50db:
    nop
    inc b
    ei
    ld bc, $1202
    nop
    inc bc
    inc b
    dec b
    ld b, $07
    push af
    ld [$00c3], sp
    add hl, bc
    rst $20
    ld bc, $0f0e
    ld a, [bc]
    dec bc
    ld a, [hl]
    ld [de], a
    nop
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $00c3
    cp l
    ld [de], a
    rst $20
    inc bc
    ld e, $1f
    inc de
    inc d
    ld [de], a
    nop
    dec d
    rst $38
    ld d, $17
    jr jr_03c_5126

    ld a, [de]
    dec de
    inc e
    dec e
    rst $28
    ld e, $1f
    jr nz, jr_03c_5137

    rst $20
    dec b
    ld l, $2f
    ld [hl+], a
    db $fd
    inc hl
    ld de, $2400
    dec h
    ld h, $27
    jr z, jr_03c_514e

    rst $38

jr_03c_5126:
    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_03c_515f

    cp $e7
    rlca
    ld a, $3f
    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]

jr_03c_5137:
    ld [hl], $ff
    scf
    jr c, @+$3b

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $7f
    ccf
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    rst $20
    add hl, bc
    rst $38
    ld c, [hl]
    ld c, a

jr_03c_514e:
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    rst $38
    ld c, h
    ld c, l
    ld c, l
    ld l, d
    ld l, e
    inc d
    inc d
    ld c, [hl]
    cp a
    ld c, a

jr_03c_515f:
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    rst $20
    dec bc
    ld e, [hl]
    rst $38
    ld e, a
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ei
    inc d
    inc d
    ld bc, $5c02
    ld e, l
    ld e, [hl]
    ld e, a
    ld h, b
    ei
    ld h, c
    ld h, d
    rst $20
    dec c
    ld l, [hl]
    ld l, a
    ld h, e
    ld h, h
    ld h, l
    rst $28
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    inc bc
    ld [bc], a
    ld l, h
    ld l, l
    ld l, [hl]
    rst $28
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    rst $20
    rrca
    ld a, [hl]
    ld a, a
    rst $30
    rst $18
    ld a, e
    ld a, b
    ld [hl], h
    ld [hl], l
    ld a, e
    stop
    halt
    ld [hl], a
    cp [hl]
    ld h, c
    nop
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    ld a, h
    rst $20
    ld de, $db8e
    adc a
    add d
    ld [de], a
    nop
    ld a, [hl]
    ld a, a
    add c
    nop
    add b
    add c
    db $fc
    db $e3
    nop
    rst $20
    inc de
    sbc [hl]
    sbc a
    add e
    add h
    add l
    add [hl]
    rst $28
    add a
    adc b
    adc c
    adc d
    ld [hl], c
    db $10
    adc e
    adc h
    adc l
    rst $18
    adc [hl]
    adc [hl]
    adc a
    sub b
    sub c
    rst $20
    dec d
    xor [hl]
    xor a
    rst $38
    sub d
    sub e
    sub h
    sub l
    sub [hl]
    sub a
    sbc b
    sbc c
    rst $38
    sbc d
    sbc e
    sbc h
    sbc l
    sbc [hl]
    sbc a
    and b
    and c
    rst $28
    and d
    and e
    and h
    and l
    rst $20
    rla
    cp [hl]
    cp a
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
    rst $38
    xor a
    or b
    or c
    or d
    or e
    or h
    or l
    or [hl]
    rst $30
    or a
    cp b
    cp c
    rst $20
    add hl, de
    adc $cf
    cp d
    cp e
    rst $38
    cp h
    cp l
    cp [hl]
    cp a
    ret nz

    pop bc
    jp nz, $ffc3

    call nz, $c5c2
    add $c7
    ret z

    ret


    jp z, $cbfb

    call z, $1be7
    sbc $df
    call $cfce
    rst $38
    ret nc

    pop de
    jp nc, $d4d3

    push de
    sub $d7
    rst $38
    ret c

    reti


    jp c, $dcdb

    db $dd
    sbc $df
    db $ed
    ldh [$ffe7], a
    dec e
    xor $ef
    nop
    ld a, [de]
    pop hl
    ldh [c], a
    db $e3
    rst $38
    db $e4
    push hl
    and $e7
    add sp, -$17
    ld [$bfeb], a
    inc d
    db $ec
    db $ed
    xor $14
    rst $28
    rst $20
    rra
    cp $fd
    rst $38
    ld bc, $f002
    push af
    pop af
    ldh a, [c]
    push af
    push af
    rst $38
    di
    db $f4
    push af
    or $f5
    push af
    ld hl, sp-$07
    cp $09
    ld [bc], a
    ld c, $0f
    ld a, [$fbfb]
    db $fc
    db $fd
    adc [hl]
    add hl, de
    nop
    cp $fb
    rst $38
    add hl, bc
    jr nz, jr_03c_52b0

    dec h
    jp hl


    dec h
    ld l, $99
    cpl
    ld c, a
    ld bc, $27e9
    ld a, $3f
    ld c, a
    ld bc, $29e9
    ld c, [hl]
    sbc c
    ld c, a
    ld c, a
    ld bc, $2be9
    ld e, [hl]
    ld e, a
    ld c, a
    ld bc, $2de9
    ld l, [hl]
    add hl, de
    ld l, a
    ld c, a
    ld bc, $2fe9
    ld a, [hl]
    ld a, a
    ld b, b
    dec e
    dec [hl]
    inc e
    pop af
    dec de
    dec c
    adc a
    dec c

jr_03c_52b0:
    ld bc, $9190
    dec hl
    inc e
    dec c
    ld bc, $1d23
    ld h, a
    inc e
    nop
    dec c
    ld bc, $1d67
    and e
    inc e
    dec c
    ld bc, $1da2
    sub l
    dec e
    ret nc

    inc e
    dec c
    ld bc, $ddd0
    dec e
    sbc $1e
    add sp, $1d
    ret nc

    dec e
    rst $28
    dec c
    ld bc, $f1f0
    cp l
    ldh a, [c]
    sub c
    dec e
    rst $30
    ld hl, sp-$07
    ld a, [$1c90]
    cp $01
    rst $38
    dec c
    ld bc, $0800
    cp $1d
    nop
    rst $38
    rst $38
    sbc e
    sbc e
    rst $38
    rst $38
    db $ec
    rst $38
    db $ec
    ccf
    ccf
    cp $fe
    ld a, e
    ld a, e
    rst $08
    rst $38

jr_03c_52ff:
    rst $08
    db $fd
    rst $30
    sbc [hl]
    sbc e
    cp $fc
    db $ed
    cp $06
    ld bc, $1fbf
    ld a, e
    dec hl
    sbc a
    rst $10
    ld l, h
    rst $38
    ld c, b
    add e
    ld d, l
    call Call_03c_6aae
    ld b, b
    push de
    rst $38
    ret nz

    push bc
    ld h, b
    or a
    ld [de], a
    xor c
    ld e, $d7
    rst $38
    ld a, h
    xor e
    ld h, b
    db $eb
    jr nz, jr_03c_52ff

    ld e, $8b
    rst $38
    ld e, [hl]
    cp $fb
    sbc [hl]
    sub h
    db $fc
    jp hl


    or $ff
    sbc $5b
    ld a, $83
    ld l, c
    ld e, a
    dec bc
    rst $28
    rst $38
    ld d, a
    ld e, l
    dec l
    or a
    ld d, a
    db $fd
    cp l
    rst $28
    rst $38
    ld l, a
    dec [hl]
    dec [hl]
    rst $38
    rst $38
    ld a, c
    ld a, c
    rst $18
    rst $38
    rst $18
    push af
    push af
    sbc b
    sbc b
    ldh a, [$fff0]
    xor b
    rst $38
    xor b
    ldh [$ffe0], a
    ld b, b
    ld b, b
    and b
    and b
    nop
    rst $38
    nop
    ei
    ei
    or [hl]
    or [hl]
    db $fd
    db $fd
    xor d
    rst $38
    xor d
    db $f4
    db $f4
    jp z, $fcca

    db $fc
    ld [$ea7f], a
    db $fd
    rst $30
    sbc a
    sbc d
    rst $38
    db $fd
    rlca
    rlca
    rst $38
    rra
    xor a
    dec sp
    ld e, e
    rst $38
    cp a
    db $ec
    ld l, h
    cp $05
    add hl, bc
    xor e
    xor e
    rla
    rla
    ld a, [bc]
    ld a, [bc]
    rrca
    rst $38
    rrca
    ld [bc], a
    ld [bc], a
    dec b
    dec b
    nop
    nop
    ld bc, $01ff
    rst $38
    rst $38
    rst $38
    add b
    ret nz

    add b
    adc d
    rst $38
    rst $18
    ld b, b
    nop
    add $9f
    ld b, b
    nop
    xor c
    ld a, [$00f0]
    rst $38
    ld [hl], b
    ld bc, $fc29
    ld bc, $4900
    rst $38
    db $fc
    nop
    ld bc, $fd94
    cp h
    cp h
    ld [hl], h
    rst $18
    ld [hl], h
    jp c, $74da

    ld [hl], h
    ld hl, $d407
    call nc, $b0ff
    or b
    or a
    or a
    ld e, a
    ld e, a
    inc l
    inc l
    rst $38
    ld e, e
    ld e, e
    ccf
    ccf
    add hl, hl
    add hl, hl
    sub a
    sub a
    rst $38
    dec a
    dec a
    ret nz

    add b
    pop af
    cp a
    add b
    ret nz

    db $fd
    adc c
    nop
    inc b
    jp nz, $009f

    ld b, b
    db $e4
    cp a
    ld d, a
    ld bc, $9900
    ret nz

    inc bc
    ld de, $03c0
    ld b, c
    ld b, b
    inc b
    rst $38
    nop
    ld a, l
    xor b
    xor b
    ld d, b
    ld d, b
    ret z

    ret z

    cp a
    and b
    and b
    ret nc

    ret nc

    add b
    add b
    ld hl, $150b
    rst $38
    dec d
    cpl
    cpl
    dec e
    dec e
    rla
    rla
    ld a, [hl+]
    rst $38
    ld a, [hl+]
    dec c
    dec c
    rla
    rla
    dec c
    dec c
    nop
    rst $38
    ld b, b
    ld h, l
    ccf
    ld b, b
    nop
    ld c, h
    rra
    add l
    cp $20
    ld [$80ff], sp
    jr nc, jr_03c_5460

    ld hl, $316c
    rst $38
    ld a, h
    ld [$117d], sp
    ld a, h
    ld bc, $007c
    ld a, a
    ld bc, $00ff
    jr nc, @+$32

    ld b, b
    ld b, b
    add e
    inc bc
    cp $e1
    ld c, $20
    jr nz, jr_03c_549c

    ld d, b
    ld a, [bc]
    ld a, [bc]
    dec d
    rst $38
    dec d
    rrca
    rrca
    ld b, $06
    dec de
    dec de
    rlca
    rst $18
    rlca
    ld d, $16
    dec c
    dec c
    dec bc

jr_03c_5460:
    rla
    rst $38
    ld bc, $a0ff
    and b
    ld [hl], b
    ld [hl], b
    and b
    and b
    adc b
    adc b
    rst $38
    jr nc, jr_03c_549f

    sub h
    sub h
    jr z, jr_03c_549b

    ld d, h
    ld d, h
    rst $38
    dec bc
    dec bc
    ld d, $16
    dec bc
    dec bc
    rla
    rla
    rst $38
    dec b
    dec b
    dec hl
    dec hl
    ld e, $1e
    or [hl]
    or [hl]
    rst $30
    rst $38
    cp $ff
    add b
    dec b
    ld bc, $00fe
    rst $38
    rst $18
    nop
    rst $38
    inc bc
    db $fc
    db $fc
    ld [hl], b
    nop
    ld sp, hl
    ret


jr_03c_549b:
    rst $38

jr_03c_549c:
    db $fc
    inc [hl]
    db $fd

jr_03c_549f:
    dec bc
    inc a
    bit 7, [hl]
    sub d
    rst $38
    or $69
    ld h, a
    add hl, de
    rst $38
    nop
    ld l, c
    sbc c
    rst $38
    sub [hl]
    sbc c
    jp hl


    add hl, de
    and h
    rst $20
    ld e, $31
    rst $38
    pop de
    ld sp, $263a
    reti


    ld h, $a4
    call c, $31ff
    pop af
    sub d
    xor [hl]
    ld [hl], c
    ld [hl], c
    ret


    rst $08
    rst $38
    ld b, l
    ld [hl], $38
    jr c, jr_03c_54d9

    rst $38
    ld e, c
    ld a, c
    rst $38
    ld [hl], a
    rst $30
    jr nz, jr_03c_550f

    and $e6
    rra

jr_03c_54d9:
    ld a, a
    rst $38
    ld b, b
    jp $fcc4


    ld a, l
    db $fd
    ldh [$ffe0], a
    rst $38
    call c, $70dc
    ldh a, [rWave_9]
    add hl, sp
    ld c, [hl]
    ld c, [hl]
    cp a
    cp b
    cp b
    ldh [c], a
    ldh [c], a
    ld d, $17
    ld sp, $0921
    rst $38
    add hl, bc
    nop
    nop
    ld [de], a
    ld [de], a
    nop
    nop
    ld c, $ff
    rrca
    add l
    ld a, [$7878]
    inc sp
    inc a
    ld hl, $e1ff
    jr nz, jr_03c_554a

    ldh [c], a
    db $e3
    daa

jr_03c_550f:
    cpl
    ccf
    di
    cp $03
    ld [hl], b
    rlca
    stop
    nop
    db $fc
    inc bc
    db $10
    rst $38
    rst $28
    ldh a, [c]
    rst $28
    pop af
    rst $28
    adc e
    ld [hl], h
    reti


    rst $38
    and $e9
    sub [hl]
    add l

jr_03c_552a:
    ld a, d
    add l

jr_03c_552c:
    ld a, d
    add h
    rst $38
    ld a, e
    ld b, h
    cp e
    ld b, h
    cp e
    rst $38
    nop
    pop af
    rst $38
    pop hl
    jr jr_03c_552a

    jr jr_03c_552c

    rst $38
    nop
    sbc a
    rst $18
    ld e, $81
    ld a, [hl]
    add c
    ld a, [hl]
    rlca
    ld bc, $1e1f

jr_03c_554a:
    rst $38
    add c
    cp $81
    cp $50
    xor a
    ldh [$fff0], a
    rst $38
    ld [bc], a
    rst $30
    dec e
    rst $28
    db $fd
    ld [bc], a
    add e
    add d
    rst $38
    adc e
    cp $85
    cp $8b
    rst $38
    nop
    db $10
    rst $38
    or [hl]
    or [hl]
    ld e, l
    db $dd
    and l
    ld a, a
    nop
    nop
    rst $38
    dec hl
    ld a, a
    call nc, Call_03c_74ff
    ld [hl], h
    nop
    nop
    cp $a1
    ld d, $d0
    ret nc

    nop
    nop
    ld b, b
    ld b, b
    cp d
    ld a, a
    cp d
    jr z, jr_03c_55c4

    nop
    nop
    dec b
    dec b
    ldh [c], a
    ld e, $ff
    ld bc, $0b0b
    inc b
    dec b
    dec bc
    db $f4
    ld de, $11ff
    ld e, b
    ld a, a
    xor b
    rst $38
    sub a
    add sp, $0f
    rst $18
    ld c, $21
    ld a, [hl]
    pop de
    cp $41
    ld [$f7ea], sp
    ld a, e
    db $ed
    rst $30
    ld b, l
    nop
    ld b, h
    cp e
    ld b, d
    cp l
    daa
    nop
    ei
    ld b, e
    cp h
    nop
    add hl, bc
    ld h, c
    sbc b
    ld l, a
    sbc b
    ld l, a
    ld hl, sp+$03
    add hl, bc
    ld d, b
    inc de
    ld a, [bc]
    add hl, bc
    rst $38

jr_03c_55c4:
    nop
    jp nc, $002f

    rst $38
    db $10
    or l
    push af
    ld c, d
    ld a, [$0bf5]
    nop
    di
    ld bc, $c082
    inc hl
    add e
    rlca
    or b
    or b
    ld a, d
    ld a, [$01f7]
    ld bc, $e076
    dec bc
    inc l
    cpl
    nop
    nop
    db $fd
    rla
    stop
    xor c
    cp [hl]
    nop
    ld bc, $2b2b
    rst $38
    rst $38
    nop
    scf
    ret z

Call_03c_55f5:
    ld bc, $4811
    rst $38
    rst $38
    xor b
    rst $38
    ld a, a
    add b
    rlca
    ld b, $41
    ld a, [hl]
    rst $38
    sub c
    ld a, [hl]
    db $eb
    or $ee
    push af
    ld c, a
    ldh a, [rIE]
    xor c
    rst $30
    ld e, b
    add sp, -$41
    ret nz

    ld [hl], b
    or b
    rst $38
    add h
    dec e
    cp $01
    db $db
    db $fd
    cp $03
    rst $38
    rla
    dec de
    xor e
    db $e3
    db $fd
    dec b
    ld e, d
    ld l, d
    ld a, a
    ld d, h
    call nz, $ff00
    ld d, l
    rst $38
    xor $50
    ld a, [hl+]
    rst $38
    cp e
    cp e
    ld d, l
    ld d, l
    xor d
    xor d
    ld b, h
    ld b, h
    rst $38
    ld a, a
    add b
    ld c, [hl]
    cp a
    rst $38
    ret nz

    db $e4
    call c, $b1ff
    and e

jr_03c_5645:
    ld e, a
    ld b, b
    xor [hl]
    and [hl]
    ld c, b
    ld b, a
    rst $38
    rst $38
    nop
    pop de
    add c
    ld hl, sp+$0f
    jr c, @-$0f

    rst $38
    ccf
    jr nc, @+$01

    ld [bc], a
    ld c, e
    ld a, b
    reti


    sbc $fb
    inc hl
    db $e3
    ld h, b
    inc hl
    inc sp
    jr nz, jr_03c_5645

    jr jr_03c_5686

    rst $38
    db $10
    ld [hl], b
    rst $38
    nop
    add hl, bc
    jr c, jr_03c_568f

    nop
    ld [hl], a
    ldh [rP1], a
    ret nz

    jr nz, jr_03c_56a4

    add b
    nop
    add b
    rst $18
    dec sp
    cp $e0
    dec sp
    inc b
    nop
    rlca
    nop
    ld [bc], a
    nop
    inc bc
    rst $20

jr_03c_5686:
    ld bc, $0001
    ldh [$ff2a], a
    ldh [rWave_c], a
    sub c
    pop af

jr_03c_568f:
    rst $38
    rst $38
    nop
    ld a, [de]
    dec de
    jr nz, jr_03c_5686

    inc c
    rrca
    sub b
    rst $38
    ldh a, [rIE]
    nop
    db $e4
    ld h, a
    ldh [c], a
    ldh [rDMA], a
    rst $38
    ld a, h

jr_03c_56a4:
    ld h, h
    ldh [rWave_4], a
    jr c, @-$06

    nop
    jr c, @-$0f

    jr nc, jr_03c_56be

    ret nz

    db $10
    ld c, $3f

jr_03c_56b2:
    ld c, b
    jr c, @+$50

    rst $38
    ld c, $20
    inc bc
    inc h
    inc e
    rra
    nop
    db $10

jr_03c_56be:
    rst $38
    nop

jr_03c_56c0:
    add hl, bc
    rlca
    ld [$a000], sp
    ret nz

    jr nz, jr_03c_5747

    nop
    ld b, b
    add b
    rst $38
    cp a
    add b
    ld a, a
    inc hl
    nop

jr_03c_56d1:
    ld hl, sp+$65
    ld b, c
    ld bc, $4127
    daa
    rlca
    inc bc
    ld b, $02
    ld [bc], a
    rst $18
    ld bc, $fcfe
    ld bc, $23fe
    nop
    cp a
    ld b, b
    rst $38
    ret nz

    nop
    cp a
    ccf
    or b
    ccf
    xor a
    jr nc, jr_03c_56b2

    xor b
    ld [hl+], a
    nop
    ldh [rWave_7], a
    ldh [c], a
    ld [bc], a
    add c
    nop
    pop de
    ld b, l
    db $fd
    ld [bc], a
    rst $38
    inc bc
    nop
    db $fd
    cp $0d
    cp $f5
    ld b, $f9
    dec d
    ld [hl+], a
    nop
    ld h, e
    ld [bc], a
    xor a
    jr nc, jr_03c_56c0

    jr nc, jr_03c_56d1

    rst $00
    ccf
    ret nz

    ccf
    ld h, l
    ld [bc], a
    ld h, a
    inc bc
    ld h, e
    ld [bc], a
    push af
    ld b, $3b
    dec c
    ld c, $70
    inc d
    db $fc
    rst $38
    nop
    ld h, e
    dec b
    ld h, a
    nop
    ld [hl], b
    ld h, e
    inc b
    ld h, a
    nop
    ldh [rNR43], a
    jr nz, jr_03c_5745

    ld hl, sp+$00
    cp $40
    nop
    ld bc, $40e0
    ld [de], a
    sub [hl]
    ld a, [bc]
    inc d
    dec bc
    rra
    nop
    rra
    nop
    rra

jr_03c_5745:
    nop
    rra

jr_03c_5747:
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
    dec d
    nop
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

Call_03c_57b8:
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
    cp $00
    cp $ff
    ld a, h
    ld a, h
    jr c, jr_03c_58db

    jr c, @+$3a

    db $10
    jr c, @+$01

    db $10
    stop
    stop
    ld bc, $0300
    rst $38
    nop
    rlca
    ld [bc], a
    rrca
    ld b, $1f
    ld c, $3f
    rst $38
    ld e, $7f
    ld a, $ff
    ld a, [hl]
    add b
    nop
    ret nz

    rst $38
    nop

jr_03c_5880:
    ldh [rLCDC], a
    ldh a, [$ff60]
    ld hl, sp+$70
    db $fc
    rst $38
    ld a, b
    cp $7c
    rst $38
    ld a, [hl]
    nop
    nop
    ld a, h
    db $eb
    nop
    add $26
    nop
    ld a, h
    db $10
    dec b
    jr jr_03c_589a

jr_03c_589a:
    jr c, jr_03c_5880

    ld b, b
    nop
    inc hl
    nop
    inc a
    db $10
    ld b, $03
    ld [bc], a
    inc e
    nop
    ld [hl], b
    xor d
    and b
    inc bc
    cp $08
    ld bc, $0406
    inc bc
    inc c
    ret nz

    ld bc, $af3c
    nop
    ld l, h
    nop
    call z, $07c0
    inc c
    ld [hl+], a
    ld [$42c0], sp
    ld b, b
    ld b, $fc
    ld b, $02
    ld bc, $0106
    ld bc, $0605
    cp $02
    rlca
    ld b, c
    inc c
    add b
    inc bc
    ld h, c
    ld b, $05
    ld [$0065], sp
    dec b
    add hl, bc

jr_03c_58db:
    ld a, [hl]
    ld b, $06
    ld e, a
    ld [bc], a
    nop
    ld c, $00
    ld a, $80
    dec c
    ld a, $80
    nop
    ld a, l
    ld [bc], a
    db $10
    rrca
    add b
    nop
    ldh [rP1], a
    ld hl, sp-$80
    ld c, $e5
    ld hl, sp-$80
    nop
    add b
    rra
    db $10
    inc a
    nop
    ld b, c
    ld a, $21
    rst $38
    ld e, $11
    ld c, $09
    ld b, $05
    ld [bc], a
    inc bc
    cp $c0
    stop
    nop
    add d
    ld a, h
    add h
    ld a, b
    adc b
    ccf
    ld [hl], b
    sub b
    ld h, b
    and b
    ld b, b
    ret nz

    rst $28
    inc bc
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
    ld a, [de]
    nop
    ld b, b
    ld [bc], a
    cp $13
    nop
    rrca
    nop
    ld a, [de]
    rrca
    ld sp, $201f
    rst $30
    rra
    ld d, $0b
    dec h
    ld bc, $0080
    ld b, b
    add b
    rst $38
    ld h, b
    add b
    cp b
    ld h, b
    dec c
    ld [bc], a
    ld [de], a
    dec c
    rst $38
    jr z, jr_03c_5977

    dec [hl]
    rra
    jr z, jr_03c_597b

    ld [de], a
    rrca
    rst $38
    dec c
    inc bc
    inc bc
    nop
    call nc, $a238
    ld e, h
    rst $38
    xor d
    call c, $fc56
    adc d
    db $fc
    inc h
    ld hl, sp-$09
    ld e, b
    ldh a, [$fff0]
    ld b, $04
    rra

jr_03c_5977:
    rrca
    ccf
    rra
    rst $30

jr_03c_597b:
    ccf
    rra
    rra
    ld [$c004], sp
    add b
    ldh [$ff80], a
    ccf
    ld hl, sp+$60
    rrca
    ld [bc], a
    rra
    dec c
    and c
    ld bc, $01c0
    ei
    rrca
    rrca
    nop
    inc b
    db $fc

jr_03c_5995:
    jr c, jr_03c_5995

    ld e, h
    cp $ff
    call c, $fcfe
    cp $fc
    db $fc
    ld hl, sp-$08
    cp $08
    inc b
    ld a, [de]
    rrca
    dec [hl]
    rra
    ld a, [hl+]
    rra
    dec d
    xor $0a
    ld [$80e0], sp
    ret c

    nop
    inc b
    rla
    dec c
    ld l, $be
    and b
    dec b
    ld l, $1f
    dec d
    rrca
    ld c, $00
    ld [$fbec], sp
    jr c, @-$08

    ld [bc], a
    ld [$fcaa], sp
    ld d, h
    ld hl, sp-$58
    xor [hl]
    ld [$1008], sp
    rrca
    jr nz, jr_03c_59d3

jr_03c_59d3:
    inc c
    inc d
    inc c
    inc c
    sbc b
    cp $02
    inc c
    ld l, $1f
    cpl
    rra
    daa
    rra
    db $10
    db $eb
    rrca
    inc c
    nop
    inc c
    call nz, $0c00
    ld [hl+], a
    call c, $bf02
    db $fc
    ld [bc], a
    db $fc
    inc b
    ld hl, sp+$08
    ld [$160c], sp
    ccf
    rrca
    add hl, sp
    rra
    ld h, $1f
    dec e
    ld a, [bc]
    inc c
    ld bc, $d704
    rrca
    ld [bc], a
    dec de
    inc b
    ld [$0219], sp
    ld [$38e4], sp
    rst $38
    cp d
    ld e, h
    ld h, [hl]
    call c, $fc9a
    ld h, [hl]
    db $fc
    sub a
    sbc h
    ld hl, sp+$68
    ld a, [bc]
    db $10
    jr nz, jr_03c_5a1e

jr_03c_5a1e:
    db $10
    dec bc
    ld [$aae0], sp
    ld [bc], a
    inc b
    ld [de], a
    nop
    db $10
    cpl
    jr nz, @+$0a

    db $10
    ld [bc], a
    inc d
    db $fc
    xor d
    nop
    inc d
    cp $00
    ld [$00fa], sp
    ld [$08e8], sp
    inc d
    dec d
    ld a, [hl+]
    nop
    db $10
    dec [hl]
    inc c
    db $10
    ld h, b
    nop
    db $10
    dec c
    nop

jr_03c_5a47:
    db $10
    and c
    dec d
    cp c
    scf
    nop
    db $10
    inc bc
    jr jr_03c_5a47

    ld e, h
    halt
    nop
    jr @+$58

    inc d
    nop
    db $10
    add hl, bc
    jr @+$1c

    nop
    db $10
    ld a, [hl+]
    rrca
    ld [$0802], sp
    pop hl
    rlca
    ld d, c
    ld l, $00
    db $10
    inc bc
    inc d
    ld bc, $021c
    nop
    inc d
    inc b
    ld a, [bc]
    inc d
    ld c, $01
    jr @+$37

    rra
    ld e, $0e
    jr nz, @+$03

    jr jr_03c_5a7f

    inc c

jr_03c_5a7f:
    ld bc, $1c18
    ld bc, $0120
    jr jr_03c_5afd

    call c, $02aa
    jr @+$03

    jr nz, jr_03c_5ace

    ld bc, $00ff
    nop
    rlca
    nop
    rrca
    inc bc
    inc c
    inc bc
    rst $38
    dec bc
    inc b
    rrca
    ld b, $0f
    inc b
    rrca
    ld [bc], a
    rst $38
    jr z, jr_03c_5ab4

    ld hl, sp+$10
    ld hl, sp-$60
    ld e, b
    and b
    rst $38
    add sp, $10
    jr z, jr_03c_5a7f

    add sp, $10
    ret c

    and b
    rst $28

jr_03c_5ab4:
    rrca
    dec b
    dec c
    ld b, $41
    nop
    ld b, $03
    inc bc
    ld a, e
    nop
    dec b
    ld b, b
    nop
    xor b
    ld d, b

jr_03c_5ac4:
    ld c, b
    or b
    ld b, c
    nop
    ld a, a
    sub b
    ld h, b
    ld h, b
    add b
    ret nc

jr_03c_5ace:
    ldh [$ffe0], a
    add hl, bc
    inc b
    rst $18
    rlca
    inc c
    rlca
    dec c
    ld b, $07
    inc b
    ld l, b
    sub b
    ld a, a
    xor b
    ld d, b
    ret z

    jr nc, jr_03c_5af1

    dec b
    ld c, $20
    inc b
    db $fd
    inc b
    pop hl
    inc bc
    ld [bc], a
    dec bc
    rlca
    rlca
    nop
    jr z, @+$01

jr_03c_5af1:
    ret nc

    jr z, jr_03c_5ac4

    ret z

    jr nc, jr_03c_5b07

    ldh [$ff60], a
    cp a
    add b
    ld d, b
    and b

jr_03c_5afd:
    ret z

    ldh a, [$fff0]
    inc bc
    ld [$ff07], sp

jr_03c_5b04:
    ld [$1707], sp

jr_03c_5b07:
    ld [$0f1e], sp
    rra
    inc c
    ei
    dec e
    ld a, [bc]
    dec b
    ld [$08f4], sp
    and h
    ld e, b
    ld h, h
    rst $38
    sbc b
    call nc, Call_000_1f28
    dec bc
    rra
    dec bc
    rrca
    rst $28
    dec b
    rrca
    ld b, $07
    inc b
    ld [$e814], sp
    inc d
    adc e
    add sp, -$58
    jr nz, jr_03c_5b32

    sub b
    jr nz, jr_03c_5b35

    inc bc

jr_03c_5b32:
    ld [$0c43], sp

jr_03c_5b35:
    ld [$07cf], sp
    rrca
    nop
    inc c
    jr nz, @+$0a

    ld b, e
    dec c
    ret nz

    nop
    rst $30
    jr nz, jr_03c_5b04

    ldh [rLCDC], a

jr_03c_5b46:
    nop
    and b
    ret nz

    dec c
    rlca
    ld hl, sp+$21
    nop
    and c
    ld bc, $01e1
    rlca
    nop
    and b

jr_03c_5b55:
    ret nz

    jr nz, jr_03c_5b46

    jr nz, jr_03c_5b5a

jr_03c_5b5a:
    and b
    ret nz

    ldh [$ffc0], a
    ld bc, $c020
    ret nz

    sub $22
    db $10
    inc bc
    nop
    ldh [$ff0d], a
    ld bc, $0de1
    inc bc
    ld bc, $21fe
    ld de, $00e0
    jr nc, jr_03c_5b55

    ldh [$ffc0], a
    ret nc

    rst $38
    ld h, b
    ldh [$ff80], a
    ldh [$ffc0], a
    rlca
    inc bc
    rlca
    di
    inc bc
    ld b, $22
    nop
    and c
    nop
    inc bc
    nop
    ret nc

    ldh [$ff67], a
    ret nc

    ldh [rNR10], a
    ld [hl+], a
    nop
    and c
    nop
    ldh [rP1], a
    add b
    nop
    rst $38
    ld bc, $0700
    nop
    inc c
    inc bc
    ld d, $09
    rst $38
    rra
    nop
    dec sp
    ld b, $65
    dec de
    pop de
    ld l, $ff
    ret nz

    nop
    ld h, b
    ret nz

    or b
    ld h, b
    cp b
    ld d, b
    rst $38
    ld e, h
    xor b
    ld [$f714], a
    ld [$86f9], sp
    rst $38
    jp hl


    rla
    or l
    ld c, d
    ld e, e
    inc h
    ccf
    ld a, [bc]
    rst $38
    rra
    inc b
    rra
    ld a, [bc]
    rra
    nop
    inc bc
    nop
    rst $38
    xor l
    ld e, [hl]
    rst $38
    nop
    rst $38
    xor $ff
    adc d
    ld a, a
    rst $38
    ld [$2aff], a
    rst $38
    xor $ee
    ld b, d
    inc b
    rst $38
    ld e, $00
    ld a, [de]
    inc c
    dec de
    inc c
    ld a, $01
    rst $28
    ld d, l
    ld a, [hl+]
    xor d
    ld d, l
    add l
    dec b
    ld hl, sp+$00
    or h
    rst $38
    ld c, b
    ld h, d
    sbc h
    pop bc
    ld a, $ff
    nop
    ld b, b
    ld a, a
    ccf
    ld a, a
    rla
    ld a, a
    inc a
    ld a, a
    inc d
    ld b, b
    nop
    rst $38
    inc a
    ld a, a
    nop
    rst $38
    nop
    ld b, d
    cp h
    jp nz, $bc37

    jp z, $23b4

    nop
    cp $00
    ret nz

    ld bc, $13fe
    nop
    rlca
    nop
    dec de
    rlca
    cpl
    inc d
    inc l
    rst $30
    inc de
    jr nc, jr_03c_5c37

    inc de
    ld bc, $00f0
    db $ec
    ldh a, [rIE]
    ld a, [$1a14]
    db $e4
    ld b, $f8
    inc l
    inc de

jr_03c_5c37:
    rst $38

Call_03c_5c38:
    inc hl
    inc e
    daa
    rra
    add hl, de
    rlca
    rra
    nop
    rst $38
    ld a, [de]
    dec b
    ld c, $01
    inc bc
    nop
    ld a, [de]
    db $e4
    rst $38
    ldh [c], a
    inc e
    ldh a, [c]
    db $fc
    call z, $fcf0
    nop
    rst $38
    xor h
    ld d, b
    cp b
    ld b, b
    ld h, b
    nop
    ccf
    nop
    rst $38
    ld e, [hl]
    ccf
    xor l
    ld [hl], e
    sbc $61
    xor l
    ld [hl], e
    rst $38
    ld e, [hl]
    ccf
    ld h, b
    ccf
    ld a, [hl]
    ccf
    nop
    nop
    rst $38
    add b
    nop
    ld b, b
    add b
    ret nz

    add b
    ld b, b
    add b
    db $fd
    add b
    and b
    nop
    cp b
    nop
    ld e, h
    ccf
    add hl, hl
    ld e, $ff
    ld [de], a
    inc c
    ld a, [de]
    inc c
    ld e, $00
    dec bc
    inc b
    rst $38
    ld [$0707], sp
    nop
    call nz, $9238
    ld l, h
    rst $38
    xor d
    ld b, h
    xor d
    ld b, h
    or c
    ld c, [hl]
    cp l
    ld c, [hl]
    ld sp, hl
    ld c, [hl]
    ld b, b
    ld [bc], a
    pop bc
    rlca
    ccf
    rlca
    ld b, a
    add hl, sp
    cp c
    ld a, a
    ld b, [hl]
    cp [hl]
    ld b, c
    cp [hl]
    ld b, c
    ld [hl], d
    dec c
    ld bc, rDIV
    ldh [$ff80], a
    ldh a, [$ffe0]
    adc b
    ldh a, [$ff88]
    ld [hl], b
    rst $38

jr_03c_5cba:
    adc h
    ld [hl], b
    cp [hl]
    ld c, h
    ld b, d
    dec a
    ld b, e
    inc a
    sbc a
    ld c, l
    jr nc, jr_03c_5cf7

jr_03c_5cc6:
    nop
    ld bc, $0020
    pop de
    ld a, [bc]
    rst $38
    rst $38
    ld a, $35
    ld a, [$b44b]
    ld c, l
    or d
    ld [hl], c
    cp a
    adc [hl]
    ld b, d
    cp h
    adc h
    ld [hl], b
    ld [hl], b
    ld h, $0c
    ld a, [hl]
    sbc a
    nop
    ld e, l
    ld a, $37
    ld c, $f4
    dec bc
    ld h, b
    dec c
    ccf
    cp $00
    ld bc, $3876
    ret c

    ld h, b
    inc bc
    nop
    dec c
    rst $38
    ld [bc], a

jr_03c_5cf7:
    rla
    ld c, $2e
    rra
    cpl
    rra
    rla
    rst $38
    rrca
    inc c
    inc bc
    inc bc
    nop
    jr nz, jr_03c_5cc6

    ret c

    rst $38
    and b
    ld [hl], h
    cp b
    cp d
    ld a, h
    ld a, [$f4fc]
    rst $28
    ld hl, sp+$18
    ldh [$ffe0], a
    ld [$5904], sp
    ld a, $31
    cp [hl]
    ld a, [bc]
    inc b
    ld e, c
    ld a, $66
    jr c, jr_03c_5cba

    ld [bc], a
    inc b
    ld de, $0ebf
    inc l
    rra
    inc l
    rra
    ld de, $0404
    ld e, b
    rst $38
    and b
    ld b, h
    cp b
    add d
    ld a, h
    ld [bc], a
    db $fc
    inc b
    cp $04
    inc b
    ld bc, $1b00
    ld bc, $197f
    cp l
    rst $38
    ld e, d
    ret c

    ld h, a
    rst $38
    ld a, a
    add b
    ld a, a
    ldh a, [rIE]
    nop
    ld hl, sp-$10
    db $fc
    ld [$08fc], sp
    ld a, [$f4ff]
    ldh a, [c]
    inc c
    cp $fc
    ld [bc], a
    db $fc
    ld a, a
    rst $38
    nop
    pop bc
    ld a, $bf
    ld b, b
    rst $38
    ld a, [hl]
    add c
    ld a, [$0020]
    ld a, [hl]
    ldh [rNR21], a
    db $fc
    nop
    ld b, [hl]
    cp b
    ld a, [$04ff]
    cp $bc
    ld b, d
    cp h
    jp nz, Jump_000_3c3c

    cp $e0
    rla
    jr c, jr_03c_5d7f

jr_03c_5d7f:
    ld a, h
    jr c, @+$01

    ld b, h
    rst $38
    rst $38
    ld b, h
    db $fd
    ld a, [hl-]
    cp b
    ld b, a
    ret nz

    ld a, a
    rst $38
    rst $38
    ld a, a
    nop
    nop
    ld [hl], b
    nop
    db $fc
    ld [hl], b
    cp $ff
    adc b
    cp $88
    ld a, [$7274]
    adc h
    cp $ff
    db $fc
    add b
    ld a, a
    sub l
    ld l, d
    ei
    dec d
    xor [hl]
    rst $38
    ld d, l
    sub l
    ld l, d
    rst $38
    nop
    ld c, b
    jr nc, jr_03c_5de1

    rst $38
    nop
    ld [hl-], a
    call z, $b47a
    xor $30
    or d
    rst $38
    ld c, h
    ld [bc], a
    db $fc
    cp $00
    inc h
    jr jr_03c_5ddb

    ld bc, $4000
    ld bc, $11fe
    nop
    rrca
    nop
    scf
    dec c
    ld a, c
    ld l, $eb
    rst $38
    ld e, [hl]
    push af
    ld l, [hl]
    ld a, [hl]
    ld sp, $0000
    and [hl]
    rst $38

jr_03c_5ddb:
    nop
    push af
    and d
    sbc $60
    cp d

jr_03c_5de1:
    call z, $ffe7
    ld a, [hl-]
    ld c, a
    or $3e
    call z, Call_000_063f
    ld [hl], a
    rst $38
    jr jr_03c_5e59

    inc a
    push af
    ld a, [hl]
    rst $38
    nop
    pop af
    rst $38
    ld a, [hl]
    ld b, d
    inc a
    inc a
    nop
    db $fc
    jr nc, @-$0e

    cp $40
    inc bc
    inc d
    nop
    ld a, [hl]
    inc d
    xor c
    ld a, [hl]
    ld a, [hl]
    cp $48
    inc b
    rlca
    nop
    dec de
    rlca
    cpl
    rra
    ld e, a
    db $fd
    ccf
    ld b, l
    dec b
    ldh a, [rP1]
    db $ec
    ldh a, [$fffa]
    db $fc
    rst $38
    db $fd
    cp $5f
    ccf
    ld e, a
    ccf
    ld c, a
    ccf
    rst $38
    ld b, e
    ccf
    ld b, b
    ccf
    jr nz, jr_03c_5e4b

    jr @+$09

    rst $38
    rlca
    nop
    db $fd
    cp $fd
    cp $f9
    cp $ff
    pop hl
    cp $01
    cp $02
    db $fc
    inc c
    ldh a, [$ffbc]
    pop bc
    inc b
    add a
    ld [$0003], sp
    dec b
    inc bc
    adc c
    add hl, bc

jr_03c_5e4b:
    ldh [rIE], a
    nop
    ret nc

    ldh [$ff0b], a
    rlca
    rla
    rrca
    rra
    rst $38
    inc c
    cpl
    inc e

jr_03c_5e59:
    cpl
    inc e
    daa
    inc e
    inc de
    rst $38
    inc c
    rrca
    nop
    add sp, -$10

jr_03c_5e64:
    db $f4
    ld hl, sp-$04
    rst $38
    jr jr_03c_5e64

    inc e

jr_03c_5e6b:
    ld a, [$f21c]
    inc e
    db $e4
    db $e3
    jr jr_03c_5e6b

    ld a, [hl+]
    ld [$02c1], sp
    ld h, a
    dec c
    ret nz

    nop
    or b
    rst $38
    ret nz

    add sp, -$10
    dec sp
    rlca
    ld d, h
    dec sp
    or h
    rst $38
    ld a, e
    and d
    ld a, l
    add d
    ld a, l
    adc [hl]
    ld [hl], c
    ld [hl], c
    cp $e0
    ld c, $ec

jr_03c_5e92:
    ldh a, [$ffca]
    db $f4
    ld [de], a
    db $ec
    dec d
    rst $38
    xor $2d
    sbc $45
    cp [hl]
    pop bc
    ld a, $3e
    cp [hl]
    ld l, b
    db $10
    ld bc, $0200
    ld bc, $080d
    ld [$ffc0], sp
    nop
    and b
    ret nz

    jr nc, jr_03c_5e92

    ld d, $0f
    dec a
    call c, $0d60
    ld h, c
    inc c
    cpl
    rra
    dec de
    nop
    inc c
    cp b
    ldh a, [rIE]
    call c, $faf8
    db $fc
    cp $fc
    ld a, [$07fc]
    db $f4
    ld hl, sp-$18
    nop
    inc c
    ld b, b
    ld [bc], a
    rst $38
    inc b
    nop
    ld c, $04
    ccf
    inc b
    ld a, l
    dec sp
    rst $38
    ccf
    rrca
    ccf
    rra
    ccf
    add hl, de
    ccf
    ld d, $ff
    stop
    jr c, @+$12

    cp $10
    pop bc
    cp $ff
    add $f8
    ldh [c], a
    db $fc
    ldh a, [c]
    call z, $b4fa
    rst $38
    ccf
    ld d, $7f
    ccf
    ld a, a
    ccf
    ld a, h
    ccf
    rst $38
    ld d, b
    ccf
    jr nz, jr_03c_5f23

    jr @+$09

    rlca
    nop
    rst $38
    ld a, [$ffb4]
    cp $ff
    cp $1f
    cp $ff
    dec b
    cp $02
    db $fc
    inc c
    ldh a, [$fff0]
    nop
    rst $38
    ld bc, $0200
    ld bc, $0102
    ld b, $01

jr_03c_5f23:
    rst $38
    dec bc
    ld b, $17
    dec bc
    ld a, a
    dec bc
    rst $18
    ld l, e
    rst $38
    add b
    nop
    ld b, b
    add b
    ld b, b
    add b
    ld h, b
    add b
    rst $38
    ret nc

    ld h, b
    add sp, -$30
    cp $d0
    ei
    sub $ff
    rst $28
    ld a, [hl]
    rst $38
    ld a, l
    cp l
    ld e, [hl]
    ld l, [hl]
    rra
    rst $38
    ccf
    rlca
    inc e
    dec bc
    rrca
    inc b
    inc b
    nop
    rst $38
    rst $30
    ld a, [hl]
    rst $38
    cp [hl]
    cp l
    ld a, d
    halt
    ld hl, sp+$7f
    db $fc
    ldh [rWave_8], a
    ret nc

    ldh a, [rNR41]
    ld h, b
    jr nz, jr_03c_5f6b

    rst $38
    rra
    nop
    dec [hl]
    rrca
    dec hl
    inc e
    ld d, a

jr_03c_5f6b:
    add hl, sp
    rst $38
    ld c, a
    scf
    ld e, e
    ld h, $67
    ld a, [de]
    nop
    nop
    rst $38
    db $fc
    nop
    ld d, [hl]
    ld hl, sp-$16
    sbc h
    push af
    ld c, [hl]
    rst $38
    ld sp, hl
    or $ed
    or d
    di
    xor h
    ld e, e
    ld h, $ff
    ld l, d
    rla
    ld d, h
    dec sp
    ld l, e
    inc e
    ld e, c
    daa
    rst $38
    ld b, a
    jr c, jr_03c_5fc4

    rrca
    rra
    nop
    db $ed
    or d
    rst $38
    dec hl
    db $f4
    dec d
    xor $eb
    inc e
    ld c, l
    ldh a, [c]
    rst $18
    pop af
    ld c, $06
    ld hl, sp-$04
    rlca
    inc b
    dec sp
    ld c, a
    rst $18
    ld a, [hl-]
    ld e, a
    ld h, $6f
    inc de
    inc bc
    inc b
    xor d
    ld a, h
    rst $38
    push de
    cp [hl]
    xor c
    sbc $fd
    ldh [c], a
    ei
    db $f4
    rst $38
    ld e, a
    inc hl
    ld l, l
    dec de

jr_03c_5fc4:
    ld d, a
    inc a
    ld l, d
    rra
    cp $05
    inc b
    db $fd
    ldh a, [c]
    db $db
    db $ec
    push af
    ld e, $eb
    db $fd
    cp h
    rlca
    inc b
    inc bc
    nop
    dec c
    inc bc
    rla
    rrca
    rst $38
    cpl
    inc e
    ccf
    ld de, $177f
    ld a, a
    ld [hl-], a
    rst $38
    nop
    nop
    ldh [rP1], a
    ret c

    ldh [$fff4], a
    ld hl, sp-$01
    ld a, d
    sbc h
    cp $44
    rst $38
    db $f4
    rst $38
    and [hl]
    rst $38
    ld [hl], a
    ld a, [hl-]
    ld e, e
    ld [hl], $7a
    rla
    inc h
    dec de
    rst $38
    inc sp
    inc c
    jr jr_03c_600c

    ld c, $01
    inc bc
    nop
    rst $38
    rst $38
    xor [hl]

jr_03c_600c:
    db $ed
    or [hl]
    cpl
    db $f4
    ld [de], a
    db $ec
    ld a, a
    and $18
    inc c
    ldh a, [rWave_8]
    ret nz

    ldh [$ff64], a
    inc d
    rst $18
    rlca
    nop
    inc b
    inc bc
    inc bc
    add b
    db $10
    dec b
    inc bc
    rst $38
    nop
    nop
    jr jr_03c_602b

jr_03c_602b:
    inc d
    ld [$0c1a], sp
    rst $38
    xor c
    ld e, $57
    cp b
    xor b
    ret nc

    ret nc

    ldh [rIE], a
    dec bc
    rlca
    rla
    rrca

jr_03c_603d:
    ld l, $1f
    inc l
    rra
    rst $38
    db $10
    rrca
    add hl, hl
    ld d, $36
    nop
    ld b, b
    nop
    rst $38
    jr z, jr_03c_603d

    inc d
    ld hl, sp+$34
    ret z

    ld c, h
    add b
    db $fd
    add b
    ld h, $18
    inc bc
    nop
    rlca
    inc bc
    rrca
    inc b
    rst $38
    ld e, $05
    jr nz, jr_03c_6081

    ccf
    nop
    cpl
    rra
    cp $01
    ld [$e0f0], sp
    ld hl, sp+$10
    inc l
    ret nc

    ld [bc], a
    rst $18
    db $fc
    cp $00
    ld a, [$60fc]
    add hl, de
    nop
    ccf
    rst $38
    ld e, $3f
    jr jr_03c_60bb

    dec de
    ccf

jr_03c_6081:
    jr jr_03c_60b2

    rst $28
    ld e, $1f
    nop
    cp $60
    ld bc, $bc7e
    ld a, [hl]
    rst $38
    adc h
    ld e, $ec
    ld a, [hl]
    adc h

jr_03c_6093:
    ld a, d
    cp h
    db $fc
    xor $0b
    inc e
    rra
    ccf
    ld e, $0a
    inc e
    db $fc
    ld a, [$fcbc]
    ld h, b
    dec c
    dec bc
    inc e
    call nz, $eeff
    rst $38
    sub $3f
    rst $38
    sub $5d
    cp d
    ld e, [hl]
    cp b

jr_03c_60b2:
    inc l
    ret nc

    ld hl, sp-$42
    add hl, bc
    inc e
    rrca
    ld a, a
    dec c

jr_03c_60bb:
    rst $18
    ld h, e
    ld [$f01c], sp
    rst $28
    cp $b0
    ei
    add $0e
    inc e
    ld l, [hl]
    rst $38
    sub [hl]
    rst $38
    push de
    ld a, [hl-]
    ld d, [hl]
    cp b
    db $ec
    ret nc

    jr c, jr_03c_6093

    nop
    ld bc, $f01c
    inc bc
    db $fc
    cpl
    ld bc, $001f
    nop
    nop
    inc bc
    nop
    inc c
    ld [bc], a
    rst $38
    jr nc, @+$0a

    ld b, b
    jr nz, @-$7e

    ld b, b
    nop
    nop
    cp a
    ld e, $00
    pop hl
    ld e, $00
    pop bc

jr_03c_60f3:
    ld b, h
    ld [bc], a
    ld bc, $c1fe
    ld [bc], a
    add b
    nop
    ld b, b
    add b
    ld a, $c0
    ld bc, $fee7
    nop
    rst $38
    jr nz, jr_03c_6106

jr_03c_6106:
    sub $03
    ret nz

    nop
    jr nc, jr_03c_60f3

jr_03c_610c:
    ret nz

    ld [$cff0], sp
    inc b
    ld c, e
    nop
    ld bc, $0200
    rst $38
    ld bc, $0304
    ld [$0807], sp
    rlca
    db $10
    ld e, a
    rrca
    jr nz, @+$21

    jr nz, jr_03c_6144

    ld [hl], b
    inc bc
    add b
    inc h
    nop
    rst $10
    ret nz

    nop
    db $e3
    jr nz, jr_03c_6135

    ld bc, $07d0
    rlca
    nop

jr_03c_6135:
    rst $38
    rrca
    nop
    ccf
    nop
    rst $38
    jr nc, jr_03c_610c

    ld a, b
    db $fd
    add a
    ld b, d
    ld b, $ff
    nop

jr_03c_6144:
    db $fc
    nop
    ld hl, sp+$00
    db $fd
    ldh a, [rNR41]
    nop
    ldh [rDIV], a
    ld hl, sp+$02
    db $fc

jr_03c_6151:
    ld bc, $fe5f
    ld bc, $003e
    rra
    ld b, b
    ld [bc], a
    rrca
    and b
    ld [bc], a
    ld l, h
    inc [hl]
    ld b, $53
    inc b
    ld b, b
    add b
    call Call_03c_4006
    ccf
    inc hl
    nop
    rst $08
    add b
    ld a, a
    add b
    ld a, a
    nop
    dec bc
    ld b, e
    dec bc
    db $fd
    nop
    rst $38
    ld sp, hl
    ld bc, $01f2
    ldh [c], a
    inc bc
    push bc
    rlca
    rst $38
    add hl, bc
    ld a, b
    add a
    reti


    ld h, $ef
    db $10
    cp $ef
    ld [hl], c
    add a
    add e
    inc bc
    ld [de], a
    nop
    ret nz

    jr nz, jr_03c_6151

    rst $38
    jr nz, jr_03c_61d4

    and b
    and b
    ld b, b
    ldh [$ffc0], a
    ldh [$ff5f], a
    ret nz

    ldh a, [$ffe0]
    ldh a, [$ffe0]
    ret nz

    ld [$2403], sp
    nop
    adc l
    ld bc, $0021
    ld b, b
    add b
    dec hl
    nop
    pop hl
    inc c
    ld hl, $0200
    rst $20
    ld bc, $0102
    jp nc, $2111

    db $10
    jp $fc03


    rst $38
    inc e
    ldh [rSB], a
    add d
    rlca
    ld sp, hl
    cp c
    ld b, [hl]
    rst $38
    ld c, $12
    inc a
    ld b, h
    adc $30
    ld de, $ff21
    ld a, [hl]
    add d
    ret nz

    nop

jr_03c_61d4:
    cp h
    add b
    cp $80
    cp $61
    ld b, $07
    nop
    ld [$0708], sp
    inc b
    nop
    cp $72
    ld c, $f8
    ldh a, [$fff8]

jr_03c_61e8:
    ldh a, [$fffc]

jr_03c_61ea:
    jr c, jr_03c_61e8

    rst $38
    ret nz

    cp $38
    ld a, $0c
    rst $08
    ld b, $f7
    ld a, l
    rlca
    ld h, d
    ld b, $03
    nop
    ld b, a
    nop
    ld a, a
    jr nz, jr_03c_6200

jr_03c_6200:
    rst $20
    ccf
    add b
    rra
    ld bc, $3007
    add hl, bc
    ret nz

    db $10
    ldh [$ffbf], a
    ld [$08f0], sp
    ldh a, [rDIV]
    ld hl, sp+$2d
    dec d
    add c
    rst $30
    ld a, [hl]
    add c
    ld a, [hl]
    ld b, c
    ld c, $20

jr_03c_621c:
    rra
    jr jr_03c_6226

    cp $d1
    db $10
    call c, $9880
    add b

jr_03c_6226:
    call c, $cc40
    rst $38
    ld b, b
    add $46
    ret nz

    ld b, b
    ldh [rNR41], a
    ld h, b
    cp l
    jr nz, jr_03c_61ea

    dec bc
    add b
    add b
    ld b, b
    ret nz

    pop hl
    jr jr_03c_621c

    rst $38
    rlca
    adc a
    inc bc
    rst $00
    rlca
    adc a
    rrca
    ld a, a
    rst $38
    ld a, a
    ccf
    dec a
    ccf
    inc a
    ld a, [hl]
    ld a, h
    ret nz

    rst $38
    sbc a
    ldh [$ff8f], a
    ldh a, [$ffc7]
    db $fc
    db $d3
    ei
    rst $38
    ld [hl], h
    db $fc
    inc sp
    db $fc
    ld [hl], e
    db $f4
    ld h, e
    inc b
    rst $38
    ld hl, sp+$04
    ld hl, sp+$14
    add sp, $24
    ret c

    ret z

    ld a, a
    jr nc, @+$0a

    ldh a, [rNR23]
    ldh [$ff28], a
    ret nc

    cpl
    inc e
    cp $4b
    nop
    jr nc, jr_03c_6289

    jr jr_03c_6283

    inc e
    inc b
    rla
    cp a
    add hl, bc
    add hl, bc
    ld b, $04

jr_03c_6283:
    inc bc
    inc bc
    ldh a, [rSB]
    ld hl, sp-$01

jr_03c_6289:
    nop
    ld c, b
    jr nc, jr_03c_62be

    ld bc, $0303
    rst $38
    rst $38
    ld a, h
    rst $38
    inc bc
    rst $38
    rrca
    sbc $0e
    ld a, [hl]
    rst $38
    ld a, h
    db $fd
    ld a, [$e7f8]
    ldh [$ff9f], a
    ldh [rIE], a
    ld e, a
    ldh a, [c]
    call $c6e9
    or $c1
    ld h, [hl]
    rst $18
    ld bc, $0708
    ldh a, [rIF]
    and c
    inc hl
    add hl, bc
    or $ff
    ld [de], a
    db $ec
    cp a
    ld b, b
    ld [$10f0], sp

jr_03c_62be:
    ldh [rWave_f], a
    db $10
    ldh [rNR41], a
    ret nz

    ld b, b
    add b
    or c
    dec de
    ld a, [$f81b]
    rra
    nop
    inc [hl]
    jr z, @+$45

    inc h
    dec b
    ld [bc], a
    add hl, bc
    ld b, $13
    rst $38
    dec c
    cp b
    ld [$11f1], sp
    ld h, e
    inc hl
    rst $38
    rst $38
    ld e, $be
    nop
    db $eb
    add b
    db $fc
    db $e3
    ldh [rIE], a
    rst $18
    db $fd
    jp nz, $c1ee

    rst $38

jr_03c_62ef:
    ld c, $b9
    rst $38
    add hl, de
    ldh a, [rNR10]
    ld [hl], b
    or b
    ld [hl], b
    or b
    ldh a, [rIE]
    ld [hl], b
    db $e4
    ld [de], a
    ld b, $e9
    dec bc
    inc d
    sub b
    rst $38
    ld h, b
    ldh a, [$ff89]
    ld a, b
    ld b, h
    ld a, h
    ld b, e
    ccf
    db $fd
    jr nz, jr_03c_62ef

    inc d
    ld b, b
    db $10
    jr nz, jr_03c_6324

    and b
    adc b
    ccf
    ld d, b
    inc b
    jr @+$06

    ld [$423e], sp
    ld de, $001f
    cp $87
    nop

jr_03c_6324:
    inc de
    dec c
    inc hl
    dec e
    inc hl
    db $10
    ld b, d
    ld [hl], a
    ld hl, $0040
    ld [hl+], a
    nop
    daa
    ret nz

    cp a
    add d
    inc h
    ld sp, hl
    rst $38
    jr nc, jr_03c_636c

    pop de
    ld [bc], a
    add e
    ld hl, sp+$78
    db $fc
    ld a, h
    rst $38
    rst $38
    ccf
    ccf
    rst $10
    rra
    db $eb
    rrca
    ld [hl], c
    rst $38
    rlca
    ld sp, hl
    inc bc
    db $fc
    inc [hl]
    dec hl
    ld a, [de]
    dec d
    rst $38
    add hl, de
    ld d, $8c
    adc e
    adc h
    adc e
    add $c5
    rst $38
    add $c5
    jp $f0c2


    nop
    ld e, b
    and b
    ccf
    ld c, b
    or b
    inc l
    ret nc

    inc h
    ret c

jr_03c_636c:
    and c
    dec d
    dec c
    inc e
    db $ec
    ld hl, sp+$33
    jp nc, $ff35

    nop
    ld b, c
    ld sp, $2f70
    ld [hl], b
    ld a, a
    cpl
    ld hl, sp+$77
    ei
    ld [hl], h
    rst $38
    ldh a, [$fff0]

jr_03c_6385:
    dec [hl]
    cp $60
    jr nc, jr_03c_6409

    or b
    ccf
    rst $18
    inc e
    ldh [$fff8], a
    rst $30
    jr @-$02

    ld [hl], b
    ld [hl], b
    rlca
    db $fc
    rlca
    ld hl, sp+$07

jr_03c_639a:
    rst $38
    ld hl, sp-$31
    jr nc, jr_03c_639a

    ret nz

    ld [hl], a
    ld h, c
    ld h, a
    rst $38
    ld b, e
    rst $38
    nop
    pop hl
    ldh [$ffe1], a
    ld h, c
    di
    rst $28
    inc sp
    rst $38
    ld a, a
    rst $38
    ld de, $fc00
    rst $38
    nop
    rst $38
    ld [$88f0], sp
    ld [hl], b
    sub b
    ld h, b
    ret nc

    and b
    dec a
    ret nc

    ld b, b
    inc l
    jr nz, jr_03c_6385

    rst $38
    nop
    nop
    inc b
    rst $38
    ld bc, $0201
    inc bc
    inc b
    dec b
    ld b, $01
    rst $38
    ld bc, $a007
    and c
    and d
    and e
    and h
    and l
    rst $28
    and [hl]
    dec bc
    ld bc, $0b01
    ld [bc], a
    ld bc, $0409
    rst $38
    ld a, [bc]
    ld bc, $0801
    nop
    and a
    xor b
    xor c
    cp a
    xor d
    xor e
    xor h
    xor l
    nop
    rrca
    dec bc
    ld [bc], a
    inc c
    rst $30
    dec c
    ld bc, $5004
    ld [bc], a
    ld c, $00
    xor [hl]
    xor a
    rst $18
    or b
    or c
    or d
    or e
    or h
    dec c

jr_03c_6409:
    ld [bc], a
    db $10
    ld de, $02fe
    ld [bc], a
    ld [de], a
    nop
    or l
    or [hl]
    or a
    cp b
    cp c
    ld l, a
    cp d
    cp e
    nop
    inc de
    dec bc
    ld b, $14
    dec d
    ld [bc], a
    inc b
    rst $38
    ld d, $00
    cp h
    cp l
    cp [hl]
    cp a
    ret nz

    pop bc
    sub a
    jp nz, $1700

    ld a, [bc]
    ld [$1018], sp
    ld [$0601], sp
    add hl, de
    rst $38
    nop
    jp $c5c4


    add $c7
    ret z

    ret


    cp e
    nop
    ld a, [de]
    ld a, [bc]
    ld a, [bc]
    dec de
    inc e

jr_03c_6446:
    dec e
    stop
    ld e, $ff
    rra
    jr nz, jr_03c_644e

jr_03c_644e:
    jp z, $cccb

    call $dfce
    rst $08
    ret nc

    ld hl, $1d22
    add hl, bc
    ld c, $23
    inc h
    ei
    dec h
    ld h, $10
    nop
    daa
    jr z, jr_03c_648e

    pop de
    jp nc, $d3ff

    call nc, $d6d5
    rst $10
    ld a, [hl+]
    dec hl
    ld h, $de
    add hl, bc
    db $10
    inc l
    dec l
    ld l, $2f
    ld de, $3000
    ld sp, $d8ff
    reti


    jp c, $dcdb

    db $dd
    sbc $32
    db $dd
    inc sp
    ld a, [bc]
    ld [bc], a
    inc [hl]
    dec [hl]
    ld [hl], $1c
    nop
    scf

jr_03c_648e:
    jr c, jr_03c_6446

    add hl, bc
    inc d
    add hl, sp
    ld a, [hl-]
    dec l
    dec d
    inc a
    dec a
    add hl, bc
    ld d, $3e
    ld e, d
    ccf
    rla
    ld b, b
    add hl, bc
    jr jr_03c_64e3

    ld b, d
    ld e, $00
    ld b, e
    add hl, bc
    ld a, [de]
    db $eb
    ld b, h
    ld b, l
    ld e, $00
    ld b, [hl]
    add hl, bc
    inc e
    ld c, d
    nop
    add b
    rst $38
    add c
    add d
    add e
    add h
    add l
    add [hl]
    add a
    adc b
    rst $38
    adc c
    adc d
    adc e
    adc h
    adc l
    adc [hl]
    adc a
    nop
    pop af
    ld c, e
    dec bc
    ld [bc], a
    ld a, $1f
    inc c
    ld [bc], a
    sub b
    sub c
    sub d
    sub e
    rst $38
    sub h
    sub l
    sub [hl]
    sub a
    sbc b
    sbc c
    sbc d
    sbc e
    ld l, a
    sbc h
    sbc l
    sbc [hl]
    sbc a
    dec bc
    inc b
    ld b, a
    ld c, b

jr_03c_64e3:
    ld e, $00
    ld bc, $3f49
    dec b
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
    cp $0b
    inc l
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    rst $38
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    ld l, [hl]
    db $fd
    ld l, a
    dec c
    ld bc, $7170
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    rst $38
    halt
    ld [hl], a
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    inc bc
    ld a, [hl]
    ld a, a
    dec c
    ld bc, $13ed
    db $ed
    inc d
    db $ed
    ld de, $12ed
    ld h, h
    inc sp
    ld b, $d4
    ld sp, $afae
    dec c
    ld bc, $3142
    or h
    cpl
    ld hl, $0d2e
    ld bc, $2090
    cpl
    sub h
    dec l
    inc bc
    inc l
    dec c
    ld bc, $74d0
    dec hl
    db $e4
    add hl, hl
    rst $18
    cp $0d
    ld bc, $e1e0
    ldh [c], a
    db $e3
    db $e4
    push hl
    and $ff
    rst $20
    add sp, -$17
    ld [$eceb], a
    db $ed
    xor $fd
    rst $28
    dec c
    ld bc, $f1f0
    ldh a, [c]
    di
    db $f4
    push af
    rst $38
    or $f7
    ld hl, sp-$07
    ld a, [$fcfb]
    db $fd
    inc bc
    cp $ff
    dec c
    ld bc, $03f0
    db $f4
    cpl
    ld bc, $0069
    ld bc, $0138
    rrca
    nop
    ld [hl], b
    nop
    ei
    add b
    rlca
    ld b, a
    ld [bc], a
    ldh a, [rP1]
    ld c, $f0

jr_03c_658a:
    ld bc, $fee1
    ld c, a
    inc bc
    rra
    nop

jr_03c_6591:
    rra
    nop
    add a
    nop
    ld [bc], a
    nop
    inc b
    db $eb
    nop
    ld [$0020], sp
    db $10
    jr nz, jr_03c_65a0

jr_03c_65a0:
    jr z, jr_03c_65a2

jr_03c_65a2:
    jr nc, jr_03c_6623

    nop
    nop
    rra
    nop
    ccf
    nop
    ld a, a
    jr nz, jr_03c_65ad

jr_03c_65ad:
    sbc l
    rst $38
    and b
    nop
    rlca
    nop
    inc bc
    add b
    nop
    ld a, [hl+]
    nop
    ld hl, sp-$39
    nop
    ld b, $f8
    ld h, b
    rlca
    ld h, a
    ld bc, $0532
    add b
    nop
    rst $38
    ld b, b
    add b
    jr nz, jr_03c_658a

    and b
    ld b, b
    ld d, b
    and b
    db $e4
    cpl
    ld b, $83
    inc c
    ld bc, $06a0
    ret nz

    ld b, $01
    jr nz, jr_03c_65db

jr_03c_65db:
    cp c
    ld b, b
    ldh [rSC], a
    ld d, h
    inc bc
    add b
    nop
    pop bc
    jr nz, jr_03c_65ec

    ld bc, $0cff
    ld de, $2916

jr_03c_65ec:
    ld a, [hl+]
    ld d, l
    ld [hl], l
    ld a, [bc]
    rst $38
    ld e, e
    and h
    rst $38
    ld a, $00
    rst $08
    nop
    add e
    rst $38
    ld h, b
    ld bc, $00f0
    or b
    ld b, b
    ld e, b
    and b
    rst $28
    xor b
    ld d, b
    ld hl, sp-$1c
    ld [bc], a
    ld [$00fe], sp
    ld a, b
    xor [hl]
    ld b, l
    dec b
    jr nc, jr_03c_6591

    jr jr_03c_6613

jr_03c_6613:
    dec bc
    inc b
    add b
    dec bc
    ld bc, $0227
    ld bc, $2002
    ld a, [bc]
    jp c, $8006

    jr nz, jr_03c_6629

jr_03c_6623:
    ld hl, $7300
    ld [$2503], sp

jr_03c_6629:
    nop
    jr nz, jr_03c_6632

    db $e3
    ld bc, $21fe
    nop
    rst $38

jr_03c_6632:
    inc bc
    db $fd
    inc bc
    db $fd
    rlca
    ei
    ldh [$ff60], a
    sub $20
    nop
    ldh [$ffc0], a
    stop
    add b
    ld [de], a
    nop
    inc a
    jr c, @+$01

    inc e
    ld a, [de]
    inc c
    dec bc
    ld b, $05
    ld [bc], a
    ld bc, $41d6
    ld a, [bc]
    inc bc
    inc bc
    db $f4
    inc c
    ldh a, [$ff83]
    rrca
    add b
    ld a, a
    add d
    ld b, b
    db $10
    rrca
    ld b, b
    ld de, $1101
    inc hl
    ld bc, $0ec2
    daa
    nop
    ld [$03f1], sp
    ld hl, $e007
    ld [$1a65], sp
    rst $30
    rra
    and $2f
    rst $38
    push de
    ld b, $fa
    ld b, $3a
    rst $00
    ld [bc], a
    inc sp
    rst $38
    inc c
    inc de

jr_03c_6682:
    dec c
    ld hl, sp-$78
    sbc b
    jr jr_03c_6688

jr_03c_6688:
    cp a
    nop
    ld a, h
    inc b
    db $fc
    nop
    db $fc
    ld d, b
    inc c
    jr c, jr_03c_6682

    nop
    rra
    db $10
    jr jr_03c_6698

jr_03c_6698:
    ld bc, $213f
    ccf
    rst $28
    nop
    ccf
    db $10
    rrca
    db $10
    ld d, $c0
    cp a
    ldh [rIE], a
    rra
    ld a, b
    ld b, a
    cp $f9
    rst $38
    ld a, d
    rst $38
    rst $18
    add hl, sp
    rst $38
    dec e
    cp a
    ccf
    inc bc
    rla
    ld bc, $fffe
    jp $813c


    ld a, [hl]
    add c
    ld a, [hl]
    add b
    ld a, a
    db $e3
    ld b, b
    add b
    ld [hl], c
    ld [de], a
    rlca
    ld c, $0d
    ld [hl+], a
    inc de
    dec c
    inc de
    rst $38
    dec c
    ld hl, $210e

jr_03c_66d3:
    ld c, $40
    rra
    add b
    db $eb
    ccf
    add b
    ld d, b
    dec b
    ld a, b
    ld b, b
    inc e
    ld [bc], a
    ld [bc], a
    add c
    rst $38
    add e
    ret nz

    ld b, b
    ld h, e
    and b
    add hl, sp
    ret z

    ld c, $f5
    ldh a, [c]
    ld b, c
    ld b, $00
    add b
    dec c
    inc bc
    inc bc
    rst $20
    rlca
    rst $38
    cpl
    adc $de
    ld de, $32bf
    ccf
    ld [hl], $ff
    ld a, [hl]
    ld l, l
    db $fc
    db $eb
    ld hl, sp-$39
    ret nz

    cp a
    ldh a, [$ffe0]
    dec c
    db $ec
    dec e
    ld bc, $e10e
    dec c
    jr nz, jr_03c_66d3

    db $10
    ldh [rWave_f], a
    db $10
    ldh [$ff08], a
    ldh a, [$ff08]
    ldh a, [$ff83]
    dec de
    ld b, l
    nop
    db $fc
    nop
    add hl, hl
    ret nz

    ld hl, $7c03
    inc b
    ld a, b
    ld [bc], a
    ld a, h
    rst $38
    rlca
    jr c, jr_03c_6733

    jr c, jr_03c_6735

    jr jr_03c_673e

jr_03c_6733:
    ldh a, [rIE]

jr_03c_6735:
    dec bc
    ldh a, [c]
    adc e
    ld [hl], d
    ld [hl], e
    ld [bc], a
    ld h, $04
    rst $38

jr_03c_673e:
    ld c, [hl]
    ld [$1edf], sp
    sbc a
    inc de
    cp $0d

jr_03c_6746:
    rst $38
    ld a, [hl]
    cp l
    rst $38
    inc a
    ld a, h
    jr c, jr_03c_6746

    ld [hl], b
    cp a
    ldh a, [$ff60]
    pop hl
    ret nz

jr_03c_6754:
    pop bc
    nop
    add l
    inc d
    rst $20
    ccf
    jr jr_03c_6754

    nop
    ret nz

    nop
    di
    inc b
    ld bc, $15a1
    rst $38
    ld b, b
    ccf
    ret nz

    ccf
    jr nz, jr_03c_678a

    ld [$6bf0], sp
    inc b
    ld hl, sp+$23
    nop
    inc c
    ldh [rTMA], a
    sbc b
    ld h, b
    and c
    ld [hl+], a
    cp $09
    inc h
    ld a, [bc]
    nop
    add hl, bc
    nop
    adc c
    ld [bc], a
    sub c
    rst $38
    ld [bc], a
    ld d, e
    inc b
    ld [hl+], a
    inc b
    ld b, d

jr_03c_678a:
    inc c
    ld c, h
    rst $38
    nop
    cp a
    dec a
    ccf
    ld h, $3f
    ld a, [hl-]
    ld a, $ff
    jr z, jr_03c_67d4

    jr jr_03c_6815

    ld h, b
    ld a, e
    ld [hl], b
    db $fd
    rst $38
    jp nz, $01c2

    db $e4
    inc bc
    cp c
    ld b, $91
    rst $38
    ld c, $9e
    nop
    ld d, [hl]
    inc b
    ld a, a
    inc c
    ld c, h
    rst $38
    jr nc, @-$70

    nop
    add d
    nop
    rst $00
    nop
    ld a, d
    rst $38
    inc b
    ld [de], a
    inc c
    inc hl
    inc e
    pop bc
    ld [hl], $41
    rst $18
    ld [hl+], a
    jr nz, jr_03c_67e5

    ld b, b
    ccf
    and c
    inc d
    add e
    ld a, h
    rst $38
    inc bc
    db $fc
    rlca
    ld hl, sp+$1e
    ldh [$ffb0], a

jr_03c_67d4:
    ld b, b
    rst $00
    ldh a, [rP1]
    ldh [$ffa0], a
    ld [$14ad], sp
    jp $ff00


    nop
    ld a, a
    sub h
    nop
    xor b

jr_03c_67e5:
    nop
    xor c
    ld bc, $2051
    nop
    rst $38
    inc sp
    inc bc
    rra
    rlca
    rst $38
    nop
    db $f4
    jp $e8ff


jr_03c_67f6:
    ret nc

    ldh [$ffd0], a
    ret nz

    or b
    ret nz

    cp a
    rst $38
    ret nz

    cp a
    and b
    rra
    rst $38
    nop
    and h
    jr jr_03c_67f6

    ld b, e
    inc c
    ld bc, $2006
    nop
    add [hl]
    inc bc
    db $fc
    rst $38
    inc bc
    db $fc
    rst $38
    nop

jr_03c_6815:
    add c
    ld h, d
    nop
    db $e3
    ei
    nop
    pop hl
    add b
    inc l
    rst $08
    rrca
    ldh a, [$ffa1]
    ld b, b
    dec h
    rst $38
    ld h, b
    ld e, $f8
    nop
    ld b, $43
    inc d
    and b
    nop
    ld bc, $060d
    nop
    inc b
    rst $38
    ld bc, $0201
    inc bc
    inc b
    dec b
    ld b, $01
    rst $38
    ld bc, $a007
    and c
    and d
    and e
    and h
    and l
    rst $28
    and [hl]
    dec bc
    ld bc, $0b01
    ld [bc], a
    ld bc, $0409
    rst $38
    ld a, [bc]
    ld bc, $0801
    nop
    and a
    xor b
    xor c
    cp a
    xor d
    xor e
    xor h
    xor l
    nop
    rrca
    dec bc
    ld [bc], a
    inc c
    rst $30
    dec c
    ld bc, $5004
    ld [bc], a
    ld c, $00
    xor [hl]
    xor a
    rst $18
    or b
    or c
    or d
    or e
    or h
    dec c
    ld [bc], a
    db $10
    ld de, $02fe
    ld [bc], a
    ld [de], a
    nop
    or l
    or [hl]
    or a
    cp b
    cp c
    ld l, a
    cp d
    cp e
    nop
    inc de
    dec bc
    ld b, $14
    dec d
    ld [bc], a
    inc b
    rst $38
    ld d, $00
    cp h
    cp l
    cp [hl]
    cp a
    ret nz

    pop bc
    sub a
    jp nz, $1700

    ld a, [bc]
    ld [$1018], sp
    ld [$0601], sp
    add hl, de
    rst $38
    nop
    jp $c5c4


    add $c7
    ret z

    ret


    cp e
    nop
    ld a, [de]
    ld a, [bc]
    ld a, [bc]
    dec de
    inc e

jr_03c_68b0:
    dec e
    stop
    ld e, $ff
    rra
    jr nz, jr_03c_68b8

jr_03c_68b8:
    jp z, $cccb

    call $dfce
    rst $08
    ret nc

    ld hl, $1d22
    add hl, bc
    ld c, $23
    inc h
    ei
    dec h
    ld h, $10
    nop
    daa
    jr z, jr_03c_68f8

    pop de
    jp nc, $d3ff

    call nc, $d6d5
    rst $10
    ld a, [hl+]
    dec hl
    ld h, $de
    add hl, bc
    db $10
    inc l
    dec l
    ld l, $2f
    ld de, $3000
    ld sp, $d8ff
    reti


    jp c, $dcdb

    db $dd
    sbc $32
    db $dd
    inc sp
    ld a, [bc]
    ld [bc], a
    inc [hl]
    dec [hl]
    ld [hl], $1c
    nop
    scf

jr_03c_68f8:
    jr c, jr_03c_68b0

    add hl, bc
    inc d
    add hl, sp
    ld a, [hl-]
    dec l
    dec d
    inc a
    dec a
    add hl, bc
    ld d, $3e
    ld e, d
    ccf
    rla
    ld b, b
    add hl, bc
    jr jr_03c_694d

    ld b, d
    ld e, $00
    ld b, e
    add hl, bc
    ld a, [de]
    db $eb
    ld b, h
    ld b, l
    ld e, $00
    ld b, [hl]
    add hl, bc
    inc e
    ld c, d
    nop
    add b
    rst $38
    add c
    add d
    add e
    add h
    add l
    add [hl]
    add a
    adc b
    rst $38
    adc c
    adc d
    adc e
    adc h
    adc l
    adc [hl]
    adc a
    nop
    pop af
    ld c, e
    dec bc
    ld [bc], a
    ld a, $1f
    inc c
    ld [bc], a
    sub b
    sub c
    sub d
    sub e
    rst $38
    sub h
    sub l
    sub [hl]
    sub a
    sbc b
    sbc c
    sbc d
    sbc e
    ld l, a
    sbc h
    sbc l
    sbc [hl]
    sbc a
    dec bc
    inc b
    ld b, a
    ld c, b

jr_03c_694d:
    ld e, $00
    ld bc, $3f49
    dec b
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
    cp $0b
    inc l
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    rst $38
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    ld l, [hl]
    db $fd
    ld l, a
    dec c
    ld bc, $7170
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    rst $38
    halt
    ld [hl], a
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    inc bc
    ld a, [hl]
    ld a, a
    dec c
    ld bc, $13ed
    db $ed
    inc d
    db $ed
    ld de, $12ed
    ld h, h
    inc sp
    ld b, $d4
    ld sp, $afae
    dec c
    ld bc, $3142
    or h
    cpl
    ld hl, $0d2e
    ld bc, $2090
    cpl
    sub h
    dec l
    inc bc
    inc l
    dec c
    ld bc, $74d0
    dec hl
    db $e4
    add hl, hl
    rst $18
    cp $0d
    ld bc, $e1e0
    ldh [c], a
    db $e3
    db $e4
    push hl
    and $ff
    rst $20
    add sp, -$17
    ld [$eceb], a
    db $ed
    xor $fd
    rst $28
    dec c

jr_03c_69c8:
    ld bc, $f1f0
    ldh a, [c]
    di
    db $f4
    push af
    rst $38
    or $f7
    ld hl, sp-$07
    ld a, [$fcfb]
    db $fd
    inc bc
    cp $ff
    dec c

jr_03c_69dc:
    ld bc, $03f0
    call c, $012f
    add a
    nop
    inc bc
    nop
    inc b
    and [hl]
    nop
    inc a
    ld bc, $c0bf
    inc bc
    nop
    rlca
    nop
    rrca
    add e
    ld bc, $7ff9
    nop
    rlca
    ld hl, sp+$01
    cp $00
    rst $38
    jr nz, jr_03c_69ff

jr_03c_69ff:
    cp $72
    inc bc
    add b
    nop
    ld b, b
    add b
    and b
    ld b, b
    xor a
    sub a
    ld b, b
    jr nc, jr_03c_69dc

    ld l, e
    inc b
    ret nz

    ld e, a
    dec b
    ld a, b
    nop
    ld bc, $20fe
    nop
    ld [$1000], sp
    nop
    jr nz, jr_03c_6a1e

jr_03c_6a1e:
    ld b, b
    ld d, [hl]
    jr nz, jr_03c_6a26

    add b
    nop
    sub b
    nop

jr_03c_6a26:
    ld [hl], b
    jr nz, @+$08

    rrca
    add b
    ld b, $d1
    inc bc
    and $02
    ld b, c
    ld b, $43
    nop
    ccf
    nop
    ld [$0300], sp
    db $fd
    db $fc
    ld h, $01
    db $fc
    nop
    ldh [rP1], a
    nop
    ld h, b
    ld l, $c2
    rlca
    jr nz, jr_03c_69c8

    jr nz, @-$7e

    inc b
    db $10
    ldh [rDIV], a

jr_03c_6a4e:
    ld l, l
    ld b, $dd
    ld [bc], a
    ld hl, $0100

jr_03c_6a55:
    inc b
    inc bc
    ld hl, $0500
    ld [bc], a
    rst $38
    ld b, $00
    ld bc, $22fc
    call c, $bd42
    cp a
    ld b, h
    cp e
    call nz, $843b
    ld a, e
    ld hl, $0200
    cp $40
    ld c, $0c
    add b
    jr jr_03c_6a55

    jr z, jr_03c_6a4e

    jr nc, @-$1f

    rst $08
    ld [hl], b
    xor a
    ld [hl], c
    xor [hl]
    ld h, c
    ld a, [bc]
    inc e
    nop
    rst $38
    ld a, $00
    halt
    adc b
    db $db
    inc h
    cp $7d
    ei
    pop bc
    pop bc
    ld h, e
    dec bc
    ld h, b
    nop
    or b
    ld b, b

jr_03c_6a94:
    ld [hl], b
    cp a
    adc a
    ret nc

    cpl
    or b
    rst $08
    ld [$0b20], sp
    inc b
    ld a, a
    ld [$1804], sp
    inc b
    ld a, b
    inc b
    ld hl, sp+$21
    nop
    ldh [c], a
    ld l, l
    dec c
    ld b, $40

Call_03c_6aae:
    inc de
    ld h, l
    inc de
    ld hl, $8c0f
    ld [hl], e
    adc h
    rst $38
    ld [hl], e
    ld c, [hl]
    dec [hl]
    ld c, [hl]
    dec [hl]
    ld c, a
    ld [hl], $2f
    rst $38

Jump_03c_6ac0:
    ld d, $3f
    ld b, $3f
    inc d
    pop af
    ld l, [hl]
    di
    rst $38
    dec c
    db $d3
    ld c, l
    bit 0, l
    call $e541
    rst $38
    ld bc, $01f5
    ld a, b
    nop
    ret nz

    ret nz

    cp [hl]
    rst $28
    and b
    or c
    or b
    add b
    ret nc

    rrca
    rrca
    nop
    rra
    rst $38
    nop
    cpl
    nop
    ld h, d
    ld e, l
    ld [hl+], a
    dec e
    and h
    rst $38
    dec de
    ld c, h
    inc sp
    ld e, h
    dec hl
    cp h
    ld e, e
    ld sp, hl
    rst $30
    ld [hl], $7b
    dec d
    ld h, c
    ld b, $48
    or b
    ld c, b
    or b
    rst $38
    ret z

    jr nc, jr_03c_6a94

    ld h, b
    sub b
    ld h, b
    and b
    ld b, b
    db $fc
    ld l, a
    inc d
    ld c, e
    nop
    ld a, $18
    ld a, $18
    ld e, $0c
    ld e, a
    rra
    dec c
    rrca
    ld b, $07
    nop
    ld d, $00
    db $10
    dec d
    db $fd
    ld h, b
    ld d, b
    dec d
    jr nc, jr_03c_6b25

jr_03c_6b25:
    ld [hl-], a
    ld [hl-], a
    ld bc, $7f03
    add b
    add b
    pop bc
    ld b, b
    rrca
    nop
    ld c, $50
    inc e
    rst $38
    ld b, $00
    rlca

jr_03c_6b37:
    rlca
    ld bc, $2101
    ld bc, $c1ff
    ld bc, $0836
    ld a, $04
    ld a, $36
    rst $38
    ld a, l
    ld [hl], c
    ei
    ldh a, [c]
    cp $ec
    db $fc
    ldh [$ff1f], a
    ldh [$ffc0], a
    and b
    ld b, b
    ret nz

    jp Jump_000_1f18


    nop
    rra
    nop
    cp $1f
    nop
    nop
    ld h, b
    jr nz, @+$3a

    ld [$020e], sp
    cp $f1
    dec de
    rlca
    nop
    add hl, de
    ld b, $eb
    inc d
    inc bc
    rst $38
    inc bc
    rrca
    ld c, $3e

jr_03c_6b73:
    jr nc, jr_03c_6b73

    inc c
    rst $38
    rst $38
    ld a, h
    sbc [hl]
    dec e
    sbc a
    sbc [hl]
    rst $38
    ccf
    ret nz

    inc a
    or c
    ld c, $c4
    ld hl, $c038
    add a
    ld a, b
    cpl
    inc b
    rra
    nop
    cp [hl]
    ld c, e
    inc hl
    ld [bc], a
    ld bc, $0102
    dec b
    and b
    add hl, hl
    ld [$00ff], sp
    jr c, jr_03c_6b9c

jr_03c_6b9c:
    ld c, h
    nop
    ld b, d
    xor l
    ld b, $ff
    ld a, b
    ld l, $50
    ld [de], a
    xor l
    and [hl]
    ld e, c
    ld c, a
    rst $38
    jr nc, jr_03c_6b37

    ld d, h
    sbc d
    inc h
    ld a, a
    adc [hl]
    ld c, [hl]
    rst $38
    or c
    ld c, b
    ld d, $1c
    jp $6897


    cp b
    rst $38
    ld b, [hl]
    ld l, a
    db $10
    inc l
    inc de
    ld [$03d7], sp
    rst $38
    inc a
    inc b
    ld l, b
    adc b
    ld d, b
    db $10
    and b
    ld h, b
    cpl
    nop
    add c
    nop
    and d
    and d
    ld a, [hl+]
    ret nz

    nop
    daa
    or c
    ld h, $87
    adc b
    nop
    inc a
    rra
    ld b, $84
    add hl, hl
    pop bc
    inc de
    ld hl, $e32a
    db $fc
    ld h, b
    inc bc
    pop af
    jr z, jr_03c_6c4f

    ld bc, $60f9
    db $fd
    ld a, b
    rst $38
    cp $ec
    inc d
    xor b
    inc h
    ld [$1008], sp
    rst $30
    db $10
    ldh [$ff60], a
    ld h, d
    inc b
    ldh [rP1], a
    ld h, $19
    rst $38
    ld [hl+], a
    dec e
    ld de, $1006
    add hl, bc
    ld [$fb04], sp
    ld b, $01
    ld bc, $9417
    nop
    ld e, c
    add b
    ld e, d
    rst $38
    nop

jr_03c_6c1a:
    ld l, $40
    inc [hl]
    ld b, b
    inc d
    ldh [$fff3], a
    ei
    nop
    ld b, c
    nop
    jr z, jr_03c_6c28

    nop

jr_03c_6c28:
    dec c
    nop
    ccf
    rst $38
    inc c
    ld a, [hl]
    inc a
    rst $38
    ld a, [hl]
    rst $38
    ld c, [hl]
    rst $20
    dec [hl]
    daa
    db $eb
    ld b, $80
    ld b, b
    jr nc, jr_03c_6c3f

    ld bc, $0021

jr_03c_6c3f:
    inc bc
    rlca
    cp $50
    ld l, $30
    rra
    dec de
    rrca
    dec bc
    sbc a
    sub l
    rst $38
    rst $38
    or $ff

jr_03c_6c4f:
    ld [hl], $3e
    add hl, bc
    rst $38
    nop
    rst $38
    sbc b
    ld h, b
    rst $00
    jr c, jr_03c_6c1a

    cp a
    rst $08
    or b
    ld a, a
    add d
    ld a, l
    inc b
    ei
    add hl, bc
    or $ff
    ld b, b
    inc sp
    rst $38
    ld c, $01
    push af
    ld a, [bc]
    sub l
    ld l, d
    ld [hl], b
    adc a
    rst $38
    call nc, $142b
    db $eb
    rst $38
    nop
    pop af
    nop
    rst $38
    ei
    ld [hl], c
    cp $f2
    cp $06
    rst $38
    ld a, e
    rst $38
    rst $38
    ld h, e
    rst $38
    dec e
    rst $38
    nop
    add a
    add a
    rst $38
    rlca
    rlca
    rra
    ld e, $7e
    ld a, h
    db $fc
    ldh a, [$ff67]
    ldh a, [$ffc0]
    ret nz

    db $10
    ld a, [hl-]
    rr h
    rst $38
    nop
    nop
    inc b
    rst $38
    ld bc, $0201
    inc bc
    inc b
    dec b
    ld b, $01
    rst $38
    ld bc, $a007
    and c
    and d
    and e
    and h
    and l
    rst $28
    and [hl]
    dec bc
    ld bc, $0b01
    ld [bc], a
    ld bc, $0409
    rst $38
    ld a, [bc]
    ld bc, $0801
    nop
    and a
    xor b
    xor c
    cp a
    xor d
    xor e
    xor h
    xor l
    nop
    rrca
    dec bc
    ld [bc], a
    inc c
    rst $30
    dec c
    ld bc, $5004
    ld [bc], a
    ld c, $00
    xor [hl]
    xor a
    rst $18
    or b
    or c
    or d
    or e
    or h
    dec c
    ld [bc], a
    db $10
    ld de, $02fe
    ld [bc], a
    ld [de], a
    nop
    or l
    or [hl]
    or a
    cp b
    cp c
    ld l, a
    cp d
    cp e
    nop
    inc de
    dec bc
    ld b, $14
    dec d
    ld [bc], a
    inc b
    rst $38
    ld d, $00
    cp h
    cp l
    cp [hl]
    cp a
    ret nz

    pop bc
    sub a
    jp nz, $1700

    ld a, [bc]
    ld [$1018], sp
    ld [$0601], sp
    add hl, de
    rst $38
    nop
    jp $c5c4


    add $c7
    ret z

    ret


    cp e
    nop
    ld a, [de]
    ld a, [bc]
    ld a, [bc]
    dec de
    inc e

jr_03c_6d1d:
    dec e
    stop
    ld e, $ff
    rra
    jr nz, jr_03c_6d25

jr_03c_6d25:
    jp z, $cccb

    call $dfce
    rst $08
    ret nc

    ld hl, $1d22
    add hl, bc
    ld c, $23
    inc h
    ei
    dec h
    ld h, $10
    nop
    daa
    jr z, jr_03c_6d65

    pop de
    jp nc, $d3ff

    call nc, $d6d5
    rst $10
    ld a, [hl+]
    dec hl
    ld h, $de
    add hl, bc
    db $10
    inc l
    dec l
    ld l, $2f
    ld de, $3000
    ld sp, $d8ff
    reti


    jp c, $dcdb

    db $dd
    sbc $32
    db $dd
    inc sp
    ld a, [bc]
    ld [bc], a
    inc [hl]
    dec [hl]
    ld [hl], $1c
    nop
    scf

jr_03c_6d65:
    jr c, jr_03c_6d1d

    add hl, bc
    inc d
    add hl, sp
    ld a, [hl-]
    dec l
    dec d
    inc a
    dec a
    add hl, bc
    ld d, $3e
    ld e, d
    ccf
    rla
    ld b, b
    add hl, bc
    jr jr_03c_6dba

    ld b, d
    ld e, $00
    ld b, e
    add hl, bc
    ld a, [de]
    db $eb
    ld b, h
    ld b, l
    ld e, $00
    ld b, [hl]
    add hl, bc
    inc e
    ld c, d
    nop
    add b
    rst $38
    add c
    add d
    add e
    add h
    add l
    add [hl]
    add a
    adc b
    rst $38
    adc c
    adc d
    adc e
    adc h
    adc l
    adc [hl]
    adc a
    nop
    pop af
    ld c, e
    dec bc
    ld [bc], a
    ld a, $1f
    inc c
    ld [bc], a
    sub b
    sub c
    sub d
    sub e
    rst $38
    sub h
    sub l
    sub [hl]
    sub a
    sbc b
    sbc c
    sbc d
    sbc e
    ld l, a
    sbc h
    sbc l
    sbc [hl]
    sbc a
    dec bc
    inc b
    ld b, a
    ld c, b

jr_03c_6dba:
    ld e, $00
    ld bc, $3f49
    dec b
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
    cp $0b
    inc l
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    rst $38
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    ld l, [hl]
    db $fd
    ld l, a
    dec c
    ld bc, $7170
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    rst $38
    halt
    ld [hl], a
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    inc bc
    ld a, [hl]
    ld a, a
    dec c
    ld bc, $13ed
    db $ed
    inc d
    db $ed
    ld de, $12ed
    ld h, h
    inc sp
    ld b, $d4
    ld sp, $afae
    dec c
    ld bc, $3142
    or h
    cpl
    ld hl, $0d2e
    ld bc, $2090
    cpl
    sub h
    dec l
    inc bc
    inc l
    dec c
    ld bc, $74d0
    dec hl
    db $e4
    add hl, hl
    rst $18
    cp $0d
    ld bc, $e1e0
    ldh [c], a
    db $e3
    db $e4
    push hl
    and $ff
    rst $20
    add sp, -$17
    ld [$eceb], a
    db $ed
    xor $fd
    rst $28
    dec c
    ld bc, $f1f0
    ldh a, [c]
    di
    db $f4
    push af
    rst $38
    or $f7
    ld hl, sp-$07
    ld a, [$fcfb]
    db $fd
    inc bc
    cp $ff
    dec c
    ld bc, $03f0
    ld a, b
    cpl
    ld bc, $001f
    and l
    nop
    inc bc
    nop
    inc e
    ld bc, $0161
    rst $38
    ld bc, $0600
    ld bc, $0708
    db $10
    rrca

jr_03c_6e62:
    rst $30
    rst $38
    nop
    nop
    jr nc, jr_03c_6e68

jr_03c_6e68:
    ccf
    nop
    ret nz

    ccf
    cp $80
    nop
    rst $38
    ld a, b
    add a
    and $61
    di
    ld [bc], a
    rst $38
    nop
    nop
    add b
    nop
    ld [hl], b
    add b
    inc c
    ldh a, [$ffcf]
    ld [bc], a
    db $fc
    ld bc, $61fe
    ld bc, $0469
    add b
    nop
    ei
    ld b, b
    add b
    ld l, a

jr_03c_6e8e:
    dec b
    ld bc, $0200
    nop
    inc b
    rst $38
    nop
    ld [$1000], sp
    nop
    jr nz, jr_03c_6e9c

jr_03c_6e9c:
    ld b, b
    ld a, a
    ld [$0760], sp
    add b
    rrca
    nop
    rra
    ld [hl+], a
    nop
    pop af
    rrca
    db $10
    rlca
    ld hl, $2906
    nop
    ld a, a
    dec c
    pop af
    inc bc
    db $fd
    db $fc
    ld c, b
    ld bc, $80fe
    ld a, a
    ret nz

    cp a
    ret nz

    rst $38
    ccf
    ld b, b
    cp a
    jr nz, jr_03c_6e62

    db $10
    adc a
    db $10
    ld a, a
    rrca
    ld [$4007], sp
    add b
    jr nz, jr_03c_6e8e

    dec h
    nop
    rst $08
    db $10
    ldh [rNR10], a
    ldh [rLYC], a
    ld b, $21
    nop
    ld [bc], a
    ld bc, $02ff
    ld bc, $1c40
    add b
    ld a, $80
    ld a, a
    rst $38
    nop
    ld a, a
    nop
    rst $38
    jr nz, @-$1f

    ld b, d
    cp l
    db $db
    ld b, h
    cp e
    ld bc, $0809
    add b
    and b
    ld [bc], a
    db $ec
    jr nc, @+$01

    rst $08
    jr nz, @-$1f

    ld h, b
    sbc a
    nop
    rlca
    nop
    ei
    nop
    jr jr_03c_6f45

    dec c
    ld a, a
    ccf
    ld [hl], b
    or b
    ldh [$ffdf], a
    ld h, b
    ret nz

    ld b, b
    nop
    ldh a, [$ffa3]
    dec bc
    ldh [$ff80], a
    rst $38
    ldh a, [$ffe0]
    ld hl, sp-$0d
    ld a, b
    ld [hl], a
    ld [$ff07], sp
    ld [$0407], sp
    inc bc
    inc b
    dec bc
    inc b
    dec de
    ccf
    inc b
    ld a, e
    inc b
    ei
    inc b
    ei
    ld b, c
    ld b, $43
    nop
    cp $83
    rlca
    ld [bc], a
    ld bc, $0304
    dec b
    ld [bc], a
    dec b
    rst $30
    ld [bc], a
    ld b, $00
    ld hl, $0400
    nop
    add h

jr_03c_6f45:
    ld a, e
    rst $38
    adc h
    ld [hl], e
    adc [hl]
    ld [hl], c
    sub [hl]
    ld h, c
    sub a
    ld h, d
    rst $38
    and a
    ld b, e
    and e
    ld b, c
    and e
    ld b, c
    ld h, b
    sbc a
    rst $38
    ld h, c
    sbc [hl]
    ld [hl], c
    xor [hl]
    ld [hl], c
    adc [hl]
    ld a, c
    or [hl]
    rst $38
    cp l
    ld e, d
    rst $38
    add h
    rst $38
    ld [bc], a
    ret nz

    ld b, b
    db $fd
    ret nz

    stop
    add c
    add b
    add a
    add c
    adc a
    add a
    cp a
    sbc a
    sbc [hl]
    rra
    jr jr_03c_6ff2

    ld [hl], a
    ld hl, $fc00
    rst $38
    dec de
    db $fc
    ei
    cp $fd
    cp $1d
    rst $38
    ld sp, hl
    inc c
    ld b, c
    ld b, $81
    ld b, $08
    rst $30
    ld [$c8f7], sp
    or a
    scf
    ldh a, [$ffcf]
    db $e3
    dec c
    ld b, b
    add b
    dec h
    nop
    inc b
    ld a, $1c
    dec d
    jp $4301


    nop
    ld b, e
    and b
    ld a, [de]
    pop bc
    ld c, $fe
    ld bc, $de0f
    nop
    call c, $9c80
    add b
    sbc b
    rst $38
    add b
    adc h
    nop
    add [hl]
    ld b, $c0
    ld b, b
    ld h, b
    ld sp, hl
    and b
    ld d, c
    dec d
    ld hl, $8100

Jump_03c_6fc3:
    add b
    ld b, b
    ret nz

    nop
    rst $38
    nop
    ld hl, sp+$00
    rst $38
    inc b
    rst $08
    inc b
    adc a
    rst $38
    inc c
    rst $08
    inc c
    sbc [hl]
    dec e
    cp $fd
    ld a, [hl]
    rst $38
    ld a, l
    ld a, h
    ld a, e
    or b
    cpl
    ret nc

    rst $08
    ret nc

    rst $38
    adc a
    ret nc

    ld c, a
    or b
    rrca
    ldh a, [rVBK]
    ldh a, [$fff7]
    rrca
    ld [hl], b
    adc a
    and a
    inc d
    db $10

jr_03c_6ff2:
    ldh [$ff08], a
    ldh a, [$ffe1]
    ld [$10e2], sp
    ld c, c
    inc e
    add l
    ld b, $23
    ld d, $00
    nop
    ld [hl], b
    cp a
    sub b
    ld e, b
    adc b
    adc [hl]
    ld [bc], a
    add e
    ld h, $23
    ld c, b
    rst $38
    jr nc, jr_03c_7057

    jr nc, jr_03c_7042

    ld bc, $888f
    rst $38
    rst $38
    rlca
    ccf
    rra
    rst $38
    rra
    ld h, e
    inc hl
    db $fc
    rst $18
    di
    db $fc
    jp $03fc


    ld hl, $bd00
    ld [bc], a
    rst $38
    call $8f02
    nop
    ld h, b
    sbc a
    ld h, h
    sbc e
    rst $38
    db $e4
    dec de
    db $e4
    dec de
    db $ec
    inc de
    call $ef32
    reti


    ld h, $fb
    inc b
    ld b, c
    ld b, $08

jr_03c_7042:
    ldh a, [$ff88]
    pop de
    ld [hl], b
    dec h
    nop
    rrca
    inc hl
    add a
    inc hl
    ld bc, $2920
    ld c, $00
    rst $38
    inc [hl]
    ld [$3049], sp
    sub c

jr_03c_7057:
    ld h, b
    xor [hl]
    ld b, b
    rst $38
    ld a, [hl-]
    ret nz

    inc d
    ldh [rNR50], a
    ret nz

    jp $ff42


    add a
    ld b, $86
    add h
    cp $f0
    ldh a, [c]
    nop
    call $6205
    dec h
    dec bc
    inc b
    ldh [rNR30], a
    ld [hl+], a
    nop
    call nz, $ef03
    cp [hl]
    ld b, c
    ld b, h
    dec sp
    ld sp, $3f29
    ret nz

    ld e, a
    rst $38
    and b
    sbc a
    ld h, b
    rra
    ldh [rNR34], a
    ldh [$ff0d], a
    ld [hl], a
    ldh a, [$ff90]
    ld h, b
    ld hl, $a000
    ld b, b
    and b
    ldh a, [rNR10]
    pop hl
    ret nz

    ret nz

    dec hl
    rrca
    ld c, $61
    inc hl
    ld b, e
    inc b
    dec b
    ld [bc], a
    dec c
    rst $38
    ld [bc], a
    ld b, h
    add b
    adc b
    nop
    adc b
    nop
    rst $08
    rst $38
    rlca
    rst $08
    rlca
    rst $18
    rrca
    ld e, a
    adc a
    ld e, a
    ei
    adc a
    ld [$2ba2], sp
    stop
    ldh a, [$ffe0]
    pop hl
    rst $38
    ret nz

    ldh [c], a

jr_03c_70c2:
    pop bc
    db $e4
    jp Jump_000_1f20


    db $10
    rst $38
    rrca
    inc d
    dec bc
    inc h
    dec de
    ld b, h
    dec sp
    add e
    rst $38
    ld a, h
    ld b, $f9
    inc b
    ei
    dec c
    ldh a, [$ff0b]
    ei
    ldh a, [$ff0a]
    jr nz, jr_03c_70df

jr_03c_70df:
    add h
    ld a, b
    inc b
    ld hl, sp+$04
    rst $20
    ld hl, sp+$72
    adc h
    cpl
    ld b, $69
    nop
    rst $38
    nop
    add hl, bc
    rst $38
    ld b, $19
    ld b, $13
    inc c
    rla
    ld a, [bc]
    rrca

jr_03c_70f8:
    ld l, a
    inc bc
    rlca
    ld bc, $c203
    ld a, [bc]
    jr nc, jr_03c_70c2

    jr nz, jr_03c_7103

jr_03c_7103:
    rst $38
    rst $08
    xor a
    ld d, b
    and b
    ld e, a
    and b
    ld e, a
    rst $38
    rst $38
    nop
    add sp, $07
    or b
    ld c, a
    and b
    ld e, a
    ldh [rIE], a
    rra
    jr nz, jr_03c_70f8

    db $10
    rst $28
    db $10
    rst $28
    rst $38
    db $fd
    nop
    ld b, c
    jr z, jr_03c_7136

    db $ec
    inc hl
    call c, $dd23
    cp $01
    scf
    rst $38
    nop
    ld a, d
    or h
    db $fd
    ld a, d
    db $fd
    rst $38
    ld a, [$f8fe]

jr_03c_7136:
    db $fc
    ldh a, [$fff0]
    ldh [$ffe0], a
    ld bc, $fa40
    scf
    jp nc, $0034

    inc b
    rst $38
    ld bc, $0201
    inc bc
    inc b
    dec b
    ld b, $01
    rst $38
    ld bc, $a007
    and c
    and d
    and e
    and h
    and l
    rst $28
    and [hl]
    dec bc
    ld bc, $0b01
    ld [bc], a
    ld bc, $0409
    rst $38
    ld a, [bc]
    ld bc, $0801
    nop
    and a
    xor b
    xor c
    cp a
    xor d
    xor e
    xor h
    xor l
    nop
    rrca
    dec bc
    ld [bc], a
    inc c
    rst $30
    dec c
    ld bc, $5004
    ld [bc], a
    ld c, $00
    xor [hl]
    xor a
    rst $18
    or b
    or c
    or d
    or e
    or h
    dec c
    ld [bc], a
    db $10
    ld de, $02fe
    ld [bc], a
    ld [de], a
    nop
    or l
    or [hl]
    or a
    cp b
    cp c
    ld l, a
    cp d
    cp e
    nop
    inc de
    dec bc
    ld b, $14
    dec d
    ld [bc], a
    inc b
    rst $38
    ld d, $00
    cp h
    cp l
    cp [hl]
    cp a
    ret nz

    pop bc
    sub a
    jp nz, $1700

    ld a, [bc]
    ld [$1018], sp
    ld [$0601], sp
    add hl, de
    rst $38
    nop
    jp $c5c4


    add $c7
    ret z

    ret


    cp e
    nop
    ld a, [de]
    ld a, [bc]
    ld a, [bc]
    dec de
    inc e

jr_03c_71c0:
    dec e
    stop
    ld e, $ff
    rra
    jr nz, jr_03c_71c8

jr_03c_71c8:
    jp z, $cccb

    call $dfce
    rst $08
    ret nc

    ld hl, $1d22
    add hl, bc
    ld c, $23
    inc h
    ei
    dec h
    ld h, $10
    nop
    daa
    jr z, jr_03c_7208

    pop de
    jp nc, $d3ff

    call nc, $d6d5
    rst $10
    ld a, [hl+]
    dec hl
    ld h, $de
    add hl, bc
    db $10
    inc l
    dec l
    ld l, $2f
    ld de, $3000
    ld sp, $d8ff
    reti


    jp c, $dcdb

    db $dd
    sbc $32
    db $dd
    inc sp
    ld a, [bc]
    ld [bc], a
    inc [hl]
    dec [hl]
    ld [hl], $1c
    nop
    scf

jr_03c_7208:
    jr c, jr_03c_71c0

    add hl, bc
    inc d
    add hl, sp
    ld a, [hl-]
    dec l
    dec d
    inc a
    dec a
    add hl, bc
    ld d, $3e
    ld e, d
    ccf
    rla
    ld b, b
    add hl, bc
    jr jr_03c_725d

    ld b, d
    ld e, $00
    ld b, e
    add hl, bc
    ld a, [de]
    db $eb
    ld b, h
    ld b, l
    ld e, $00
    ld b, [hl]
    add hl, bc
    inc e
    ld c, d
    nop
    add b
    rst $38
    add c
    add d
    add e
    add h
    add l
    add [hl]
    add a
    adc b
    rst $38
    adc c
    adc d
    adc e
    adc h
    adc l
    adc [hl]
    adc a
    nop
    pop af
    ld c, e
    dec bc
    ld [bc], a
    ld a, $1f
    inc c
    ld [bc], a
    sub b
    sub c
    sub d
    sub e
    rst $38
    sub h
    sub l
    sub [hl]
    sub a
    sbc b
    sbc c
    sbc d
    sbc e
    ld l, a
    sbc h
    sbc l
    sbc [hl]
    sbc a
    dec bc
    inc b
    ld b, a
    ld c, b

jr_03c_725d:
    ld e, $00
    ld bc, $3f49
    dec b
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
    cp $0b
    inc l
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    rst $38
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    ld l, [hl]
    db $fd
    ld l, a
    dec c
    ld bc, $7170
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    rst $38
    halt
    ld [hl], a
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    inc bc
    ld a, [hl]
    ld a, a
    dec c
    ld bc, $13ed
    db $ed
    inc d
    db $ed
    ld de, $12ed
    ld h, h
    inc sp
    ld b, $d4
    ld sp, $afae
    dec c
    ld bc, $3142
    or h
    cpl
    ld hl, $0d2e
    ld bc, $2090
    cpl
    sub h
    dec l
    inc bc
    inc l
    dec c
    ld bc, $74d0
    dec hl
    db $e4
    add hl, hl
    rst $18
    cp $0d
    ld bc, $e1e0
    ldh [c], a
    db $e3
    db $e4
    push hl
    and $ff
    rst $20
    add sp, -$17
    ld [$eceb], a
    db $ed
    xor $fd
    rst $28
    dec c
    ld bc, $f1f0
    ldh a, [c]
    di
    db $f4
    push af
    rst $38
    or $f7
    ld hl, sp-$07
    ld a, [$fcfb]
    db $fd
    inc bc
    cp $ff
    dec c
    ld bc, $03f0
    ld hl, sp+$2f
    ld bc, $001f
    pop hl
    nop
    ld bc, $0200
    ld bc, $f71c
    inc bc
    ld h, c
    rra
    and c
    ld bc, $003c
    ld b, [hl]
    jr c, @+$01

    adc e
    ld [hl], h
    add hl, hl
    or $fa
    ld h, l
    ld a, [$fe65]
    and l
    ld [bc], a
    add b
    nop
    ret nz

    nop
    ld hl, sp+$00
    cp $f8
    sbc a
    inc bc
    rra
    nop
    xor a
    dec b
    ld bc, $0103
    inc b
    inc bc
    rst $38
    rlca
    ld [bc], a
    dec b
    inc bc
    ld a, [bc]
    dec b
    sub l
    ld a, e
    rst $38
    xor [hl]
    pop de
    pop de
    ldh [rNR41], a
    ret nz

    ret nz

    add b
    rst $30
    ld b, b
    add b
    ret nz

    ld h, b
    dec b
    cp e
    ld h, h
    ld a, a
    and b
    rst $28
    rst $08
    jr nc, jr_03c_73c3

    rlca
    add l
    inc bc
    ld h, c
    sbc [hl]
    rst $30
    rst $38
    ld [$f3fc], sp
    db $fc
    ei
    rst $38
    ld hl, sp+$7f
    cp a
    ld a, b
    ld a, h
    ld a, e
    ld a, a
    ld a, b
    add b
    and b
    rlca
    ld b, b
    rst $38
    add b
    ldh [rP1], a
    and b
    ld b, b
    db $10
    ldh [rWave_0], a
    di
    ret nz

    ld hl, sp-$01
    dec b
    inc a
    nop
    inc de
    inc c
    dec h
    ld e, $ff
    ld a, [hl+]
    inc d
    ld h, $18
    ld [hl-], a
    inc c
    ld [de], a
    inc c
    xor a
    ld a, [bc]
    inc b
    dec bc
    inc b
    jr nz, jr_03c_7383

    inc bc
    ld h, h

jr_03c_7383:
    ld [bc], a
    ld b, $6f
    ldh a, [rSB]
    inc c
    ldh a, [rNR41]
    inc bc
    ld c, $00
    ld h, c
    nop
    rst $30
    nop
    nop
    rlca
    db $10
    dec c
    nop
    rra
    ld e, $0f
    cp $16
    nop
    rra
    inc bc
    db $e3
    inc e
    inc d
    add sp, -$72
    rst $38
    ld [hl], b
    di
    inc c
    rst $00
    cp b
    rst $38
    add b
    db $ed
    rra

jr_03c_73ae:
    sub d
    pop bc
    cp [hl]
    di
    adc h
    push hl
    rrca
    add c
    ld [$001f], sp
    rst $38
    nop
    nop
    ld e, $01
    ld e, $0d
    ccf
    ld [de], a
    rst $38

jr_03c_73c3:
    ld a, $14
    inc a
    jr jr_03c_7404

    jr jr_03c_73e6

    ld [$1cff], sp
    ld [$fc02], sp
    ld a, c
    add [hl]
    add [hl]
    ld bc, $017d
    sub b
    ld [bc], a
    ld h, [hl]
    nop
    ld b, $00
    jr nz, jr_03c_73ae

    rlca
    rst $18
    inc b
    inc bc
    adc c
    ld b, $8e
    ld [hl], d

jr_03c_73e6:
    ld [$0003], sp
    rst $38
    inc c
    inc c
    nop
    rst $38
    ld a, b
    add a
    db $fc
    ld a, e
    cp a
    rlca
    inc b
    rlca
    rlca
    ccf
    daa
    jr nz, jr_03c_7402

    rrca
    rst $38
    sbc a
    ld h, b
    ld a, a
    add b
    ld a, a

jr_03c_7402:
    adc [hl]
    db $fd

jr_03c_7404:
    ld d, c
    rst $38
    rst $38
    adc l
    rst $38
    rst $10
    db $fd
    db $dd
    db $fd
    ret


    db $fc
    add hl, bc
    rlca
    ld c, a
    rlca
    nop
    nop
    inc c
    nop
    inc d
    ld [$1eff], sp
    ld [$1a2d], sp
    ld e, b
    ccf
    sub c
    ld a, a
    rst $38
    ld e, e
    scf
    ld l, $17
    ld b, c
    nop
    ld [bc], a
    nop

jr_03c_742b:
    rst $38
    rrca
    nop
    ld d, $0f
    rst $20
    jr jr_03c_742b

    nop
    rst $38
    ret nc

    jr nz, @-$6d

    ld h, b
    ld c, $0a
    rrca
    dec c
    rst $38
    rra
    db $10
    ldh a, [c]
    dec c
    ld c, a
    ldh a, [rIE]
    rrca
    cp a
    rlca
    dec b
    rst $38
    inc bc
    rrca
    rlca
    ld de, rJOYP
    rst $38
    ld e, $ff
    nop
    rst $38
    nop
    cp $81
    rst $30
    rst $38
    adc b
    db $fd
    ret z

    ei
    add d
    cp $0c
    db $fc
    rst $38
    nop
    sbc $20
    rst $28
    db $10
    ld h, [hl]
    sbc b
    inc [hl]
    pop af
    ret z

    cpl
    dec c
    daa
    ld hl, $20c2
    rrca
    jr z, jr_03c_7495

    ld [hl], h
    rst $38
    dec de
    ld l, b
    scf
    sbc e
    ld h, l
    db $fd
    inc bc
    inc a
    rst $38
    inc bc
    rlca
    nop
    ret c

    ld h, b
    ld e, h
    ldh [$ff97], a
    rst $38
    add sp, -$47
    adc $2d
    jp c, $9a6d

    ld h, l
    rst $30
    sbc d
    push hl

jr_03c_7495:
    ld a, [de]
    ret nz

    dec b
    ld b, $07
    ld hl, sp+$26
    rst $38
    ld sp, hl
    ld h, [hl]
    ld sp, hl
    and $79
    db $ec
    ld [hl], e
    db $ec
    rst $38
    ld [hl], e
    di
    inc c
    reti


    ld h, $c8
    scf
    call z, $33ff
    and $19
    ld h, [hl]
    sbc c
    ld h, a
    sbc b
    ld l, a
    rst $38
    sub b
    inc a
    ret nz

    sbc h
    ld h, b
    adc $30
    or $0d
    ld [$0e60], sp
    add b
    ld hl, sp+$40
    inc h
    add a
    ld b, $cf
    dec c
    pop hl
    nop
    rst $38
    ld [bc], a
    ld bc, $0307
    dec bc
    rlca
    rla
    rrca
    rst $38
    ld de, $2e0e
    rra
    cpl
    rra
    ld l, $1f
    rst $38
    ld a, a
    add b
    and a
    ret nz

    pop de
    ldh [$ffd1], a
    ldh [rIE], a
    adc b
    ld [hl], b
    ld c, b
    or b
    xor b
    ret nc

    ccf
    ret nz

    rst $38
    cp $61
    cp a
    ld h, b
    sbc a
    ld h, e
    rst $18
    daa
    rst $38
    rst $18
    ld l, $ff

Call_03c_74ff:
    ld e, [hl]
    rst $38
    inc a
    cp l
    nop
    rst $38
    cp $01
    call nz, $8b03
    rlca
    adc e
    rlca
    rst $38
    ld de, $1f0f
    nop
    ld [hl-], a
    ld bc, $0049
    rst $38
    jr nz, @-$3e

    db $10
    ldh [$ff08], a
    ldh a, [$ffc4]
    ld hl, sp-$01
    db $e4
    ld hl, sp-$7e
    ld a, h
    ld a, d
    db $f4
    sub $38
    db $f4
    cpl
    ld b, $4b
    nop
    cpl
    ld h, b
    ld b, $27
    ld e, $25
    ld e, $77
    dec d
    ld c, $13
    jr nz, jr_03c_755d

    inc d
    ld [$a0c1], sp
    ld l, $ff
    ld bc, $0300
    ld bc, $03a7
    ld h, a
    inc bc
    rst $38
    ccf
    ld [bc], a
    ld a, a
    jr nc, @-$3d

    nop
    ld hl, rJOYP
    rst $20
    nop
    db $fc
    ret nz

    db $fc
    ldh a, [$fffc]
    ld a, b
    rst $38
    rst $38
    db $fc

jr_03c_755d:
    cp $bc
    push bc
    nop
    ld [hl+], a
    ld bc, $12ff
    ld bc, $038c
    adc b
    rlca
    pop af
    rrca
    ld a, a
    and c
    rra
    rla
    rrca
    ld [de], a
    db $fc
    ld a, [$0020]
    rst $38
    ld a, d
    db $fc
    inc [hl]
    ld hl, sp+$34
    ld hl, sp-$18
    ldh a, [$ffd1]
    ret z

    and e
    dec h
    rra
    nop
    or h
    nop
    rst $38
    ldh [rNR31], a
    jr jr_03c_758c

jr_03c_758c:
    db $fd
    jr c, jr_03c_75af

    nop
    jr z, jr_03c_75a2

    jr z, @+$12

    inc h
    jr @+$01

    rst $38
    nop
    ld a, a
    inc a
    ld a, a
    dec sp
    ld a, a
    dec hl
    ld a, a
    ld a, a
    dec l

jr_03c_75a2:
    ld a, a

jr_03c_75a3:
    ld [hl], $3f
    jr jr_03c_75e0

    ld b, c
    ld a, [de]
    rst $38
    ld l, h
    cp $5c
    rst $38
    sub [hl]

jr_03c_75af:
    rst $38
    ld d, $5f
    rst $38
    and [hl]
    ld d, a
    xor b
    ld d, l
    xor b
    rst $38
    nop
    inc de
    rst $38
    rrca
    dec bc
    rlca
    add hl, bc
    rlca
    inc b
    inc bc
    inc b
    rst $38
    inc bc
    dec b
    ld [bc], a
    ld b, $01
    rst $38
    nop
    ret c

    rst $38
    ldh [$ff28], a
    ret nc

    jr z, jr_03c_75a3

    ld c, b
    or b
    add h
    ccf
    ld a, b
    inc b
    ld hl, sp+$04
    ld hl, sp-$01
    ld c, $06
    nop

jr_03c_75e0:
    inc b
    rst $38
    ld bc, $0201
    inc bc
    inc b
    dec b
    ld b, $01
    rst $38
    ld bc, $a007
    and c
    and d
    and e
    and h
    and l
    rst $28
    and [hl]
    dec bc
    ld bc, $0b01
    ld [bc], a
    ld bc, $0409
    rst $38
    ld a, [bc]
    ld bc, $0801
    nop
    and a
    xor b
    xor c
    cp a
    xor d
    xor e
    xor h
    xor l
    nop
    rrca
    dec bc
    ld [bc], a
    inc c
    rst $30
    dec c
    ld bc, $5004
    ld [bc], a
    ld c, $00
    xor [hl]
    xor a
    rst $18
    or b
    or c
    or d
    or e
    or h
    dec c
    ld [bc], a
    db $10
    ld de, $02fe
    ld [bc], a
    ld [de], a
    nop
    or l
    or [hl]
    or a
    cp b
    cp c
    ld l, a
    cp d
    cp e
    nop
    inc de
    dec bc
    ld b, $14
    dec d
    ld [bc], a
    inc b
    rst $38
    ld d, $00
    cp h
    cp l
    cp [hl]
    cp a
    ret nz

    pop bc
    sub a
    jp nz, $1700

    ld a, [bc]
    ld [$1018], sp
    ld [$0601], sp
    add hl, de
    rst $38
    nop
    jp $c5c4


    add $c7
    ret z

    ret


    cp e
    nop
    ld a, [de]
    ld a, [bc]
    ld a, [bc]
    dec de
    inc e

jr_03c_765e:
    dec e
    stop
    ld e, $ff
    rra
    jr nz, jr_03c_7666

jr_03c_7666:
    jp z, $cccb

    call $dfce
    rst $08
    ret nc

    ld hl, $1d22
    add hl, bc
    ld c, $23
    inc h
    ei
    dec h
    ld h, $10
    nop
    daa
    jr z, jr_03c_76a6

    pop de
    jp nc, $d3ff

    call nc, $d6d5
    rst $10
    ld a, [hl+]
    dec hl
    ld h, $de
    add hl, bc
    db $10
    inc l
    dec l
    ld l, $2f
    ld de, $3000
    ld sp, $d8ff
    reti


    jp c, $dcdb

    db $dd
    sbc $32
    db $dd
    inc sp
    ld a, [bc]
    ld [bc], a
    inc [hl]
    dec [hl]
    ld [hl], $1c
    nop
    scf

jr_03c_76a6:
    jr c, jr_03c_765e

    add hl, bc
    inc d
    add hl, sp
    ld a, [hl-]
    dec l
    dec d
    inc a
    dec a
    add hl, bc
    ld d, $3e
    ld e, d
    ccf
    rla
    ld b, b
    add hl, bc
    jr jr_03c_76fb

    ld b, d
    ld e, $00
    ld b, e
    add hl, bc
    ld a, [de]
    db $eb
    ld b, h
    ld b, l
    ld e, $00
    ld b, [hl]
    add hl, bc
    inc e
    ld c, d
    nop
    add b
    rst $38
    add c
    add d
    add e
    add h
    add l
    add [hl]
    add a
    adc b
    rst $38
    adc c
    adc d
    adc e
    adc h
    adc l
    adc [hl]
    adc a
    nop
    pop af
    ld c, e
    dec bc
    ld [bc], a
    ld a, $1f
    inc c
    ld [bc], a
    sub b
    sub c
    sub d
    sub e
    rst $38
    sub h
    sub l
    sub [hl]
    sub a
    sbc b
    sbc c
    sbc d
    sbc e
    ld l, a
    sbc h
    sbc l
    sbc [hl]
    sbc a
    dec bc
    inc b
    ld b, a
    ld c, b

jr_03c_76fb:
    ld e, $00
    ld bc, $3f49
    dec b
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
    cp $0b
    inc l
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    rst $38
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    ld l, [hl]
    db $fd

jr_03c_7721:
    ld l, a
    dec c
    ld bc, $7170
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    rst $38
    halt
    ld [hl], a
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    inc bc
    ld a, [hl]
    ld a, a
    dec c
    ld bc, $13ed
    db $ed
    inc d
    db $ed
    ld de, $12ed
    ld h, h
    inc sp
    ld b, $d4
    ld sp, $afae
    dec c
    ld bc, $3142
    or h
    cpl
    ld hl, $0d2e
    ld bc, $2090
    cpl
    sub h
    dec l
    inc bc
    inc l
    dec c
    ld bc, $74d0
    dec hl
    db $e4
    add hl, hl
    rst $18
    cp $0d
    ld bc, $e1e0
    ldh [c], a
    db $e3
    db $e4
    push hl
    and $ff
    rst $20
    add sp, -$17
    ld [$eceb], a
    db $ed
    xor $fd
    rst $28
    dec c
    ld bc, $f1f0
    ldh a, [c]
    di
    db $f4
    push af
    rst $38
    or $f7
    ld hl, sp-$07
    ld a, [$fcfb]
    db $fd
    inc bc
    cp $ff
    dec c
    ld bc, $03f0
    add sp, $2f
    ld bc, $001f
    pop hl
    nop
    ld bc, $0020
    ld [bc], a
    ld bc, rSC
    ld bc, $003f
    ld b, b
    jr nz, jr_03c_7721

    ld h, c
    add b
    rst $18
    ld b, c
    nop
    jp $8200


    jr nz, jr_03c_77ab

jr_03c_77ab:
    inc b
    ldh [rIE], a
    nop
    ld e, $a0
    ld bc, $00be
    ccf
    nop
    push af
    ld a, a
    ld [hl+], a
    nop
    rst $38
    and c
    inc bc
    ret nz

    nop
    jr nc, @-$3e

    rst $38
    ld [$04f0], sp
    ld hl, sp+$02
    db $fc
    ld [bc], a
    db $fc
    db $fc
    xor a
    inc b
    rra
    nop
    nop
    nop
    rrca
    nop
    rra
    rrca
    rst $38
    jr nc, @+$12

    jr nz, jr_03c_77da

jr_03c_77da:
    ld b, b
    nop
    inc b
    inc bc
    rst $38
    inc b
    ld [bc], a
    dec bc
    inc b
    rst $08
    inc bc
    db $fc
    call z, $f0df
    ldh a, [$ff60]
    ld h, b
    ld b, b
    db $10
    ld bc, $007e
    cpl
    rst $38
    ld a, [hl]
    add e
    add e
    ld b, c
    inc bc
    inc bc
    add b
    ld [bc], a
    jr nz, jr_03c_7803

    rst $38
    rst $38
    add b
    ld a, a
    ret nz

    cp a

jr_03c_7803:
    di
    call z, $9f7c
    ld [hl], b
    jr nc, @+$22

    add b
    nop
    ld b, c
    ld b, $81
    ld b, $c1
    ld a, a
    ld a, $61
    ld e, [hl]
    ld sp, $192e
    ld d, $cf
    dec b
    ldh a, [c]
    ld c, c
    inc c
    ld [bc], a
    jr nz, @+$08

    ld hl, $2000
    nop
    ld hl, $bf00
    ld b, e
    ld bc, $0183
    inc bc
    ld bc, $0261
    rlca
    rst $38
    nop
    rst $38
    rlca
    ldh [$ffe0], a
    ret nz

    ret nz

    add b
    ld a, [hl]
    stop
    ccf
    nop
    rst $38
    ld e, $e0
    ld h, b
    rst $00
    inc bc
    rst $38
    adc $00
    rst $18
    nop
    rst $38
    ret nz

    ccf
    ld a, $df
    rlca
    rlca
    inc bc
    inc bc
    ld bc, $0010
    add hl, de
    ld d, $ff
    dec e
    ld [de], a
    sbc a
    inc d
    sbc a
    ld a, [de]
    adc a
    dec bc
    ld e, a
    add a
    rlca
    add e
    inc bc
    add c
    ld d, [hl]
    ld b, $80
    inc h
    nop
    ld [hl], c
    ld [bc], a
    ld [hl+], a
    nop
    pop hl
    ld [de], a
    or d
    dec b
    nop
    rlca
    inc bc
    daa
    nop
    rst $08
    rst $00
    inc bc
    ld b, a
    inc bc
    ld b, c
    ld b, $81
    ld b, $c0
    ret nz

    rst $18
    db $fc
    ret nz

    jp $8080


    ld e, h
    ld a, [bc]
    add c
    nop
    db $fc
    ld b, c
    ld b, $81
    ld b, $03
    inc bc
    ccf
    inc bc
    jp $fd01


    ld bc, $0582
    ret nz

    add b
    ret nz

    add b
    ldh a, [$ffc0]
    ld d, a
    ldh [$ffc0], a
    add sp, $20
    nop
    ret nz

    ldh [c], a
    dec bc
    db $10
    inc h
    nop
    push hl
    jr nz, @-$5c

    add hl, de
    inc bc
    add b
    inc c
    ld b, e
    nop
    ld bc, $e300
    ld a, a
    nop
    di
    ret nz

    ld [hl], e
    ld hl, $4173
    ld b, b
    nop
    db $fd
    ld h, c
    add c
    nop
    inc e
    nop
    rst $38
    inc e
    rst $38
    rst $38
    rst $18
    rst $38
    ldh [rNR44], a
    nop
    inc hl
    ld h, b
    inc bc
    rrca
    nop
    rst $38
    ld b, d
    nop
    inc h
    nop
    rst $20
    nop
    rst $20
    inc h
    db $fd
    ld h, [hl]
    jr nz, jr_03c_78e6

jr_03c_78e6:
    rst $20
    ld h, [hl]
    rst $20
    rst $20
    jr c, jr_03c_78ec

jr_03c_78ec:
    ei
    rst $38
    jr c, jr_03c_78f0

jr_03c_78f0:
    ld [bc], a
    rlca
    call nz, $c400
    nop
    rst $38
    ld [$f000], sp
    nop
    rlc b
    rst $08
    inc bc
    xor a
    adc $84
    adc $82
    ld b, b
    nop
    add [hl]
    add c
    nop
    ld b, b
    db $e4
    inc b
    ld [$0043], sp
    add b
    ld h, h
    dec c
    rst $00
    dec d
    or e
    and c
    ei
    rst $38
    ld h, c
    ld b, a
    inc bc
    ld l, $02
    ld [hl], $02
    ld l, [hl]
    ld a, a
    ld [bc], a
    rla
    inc bc
    dec bc
    ld bc, $1f1f
    rst $00
    ld d, $ff
    inc b
    nop
    adc a
    adc b
    db $e3
    db $e3
    jp $fd81


    add c
    ret nc

    ld [hl+], a
    inc a

jr_03c_7938:
    nop
    jr jr_03c_793b

jr_03c_793b:
    ld a, [hl]
    jr @-$2f

    rst $38
    ld a, [hl]
    ld hl, sp-$08
    dec b
    inc de
    ld h, c
    jr jr_03c_7938

    ld de, $ddff
    add l
    rst $00
    add d
    or $c0
    ld l, b
    ld b, b
    rra
    ld [hl], h
    ld b, b
    ld l, [hl]
    ld b, b
    ld hl, sp+$31
    jr @+$81

    dec de
    adc h

jr_03c_795c:
    jr z, jr_03c_795c

    add c

jr_03c_795f:
    jr nz, jr_03c_7965

    inc bc
    dec bc
    rlca
    inc d

jr_03c_7965:
    inc c
    jr nz, jr_03c_795f

    inc e
    dec h
    dec de
    ret nz

    dec c
    ccf
    ccf
    rst $08
    xor a
    ccf
    ret nz

    and l
    ret nz

    call nz, Call_03c_4880
    jr nz, jr_03c_797a

jr_03c_797a:
    ret nz

    ld c, $fe
    inc sp
    nop
    nop
    cp $7c
    cp $7c
    ld a, [hl]
    inc a
    cp $c0
    rrca
    db $fc
    db $fc
    di
    db $f4
    inc bc
    and h
    inc bc
    rst $20
    ld [hl+], a
    ld bc, $2032
    nop
    ld hl, $c017
    nop
    jr nz, @+$39

    ret nz

    db $10
    ldh [rNR42], a
    ld a, [hl+]
    inc h
    ret c

    cpl
    ld b, $2b
    cpl
    rst $38
    ld [hl+], a
    dec e
    ld b, e
    dec a
    ld b, e
    dec a
    add h
    ld a, d
    rst $38
    add [hl]
    ld a, d
    ld b, l
    ld sp, hl
    inc b
    cp c
    adc d
    or a
    rst $38
    ld c, h
    add b
    ld c, h
    add b
    adc [hl]
    inc b
    sbc d
    inc c
    rst $38
    sub l
    ld c, $9b
    ld c, $95
    rrca
    sbc [hl]
    inc bc
    rst $38
    ld a, h
    jr c, @+$7e

    jr c, jr_03c_7a09

    db $10
    jr nc, jr_03c_79d4

jr_03c_79d4:
    rst $38
    ld de, $0a00
    ld bc, $0385
    jp nz, $ff81

    ld d, d
    ld hl, $2172
    pop de
    ld h, b
    xor c
    ld [hl], b
    rst $38
    ld e, c
    ldh a, [$ffa9]
    ldh a, [$ff59]
    ldh a, [$ffb8]
    ldh [rIE], a
    ld b, h
    cp b
    ld b, d
    cp h
    ld b, d
    cp h
    ld hl, $ffde
    ld hl, $20de
    rst $18
    jr nc, @-$2f

    sbc h
    ld h, e
    db $ec
    add a
    ld b, $21
    inc hl
    ld b, b
    add b
    pop bc

jr_03c_7a09:
    dec de
    rlca
    inc bc
    dec b
    rst $28
    inc bc
    inc b
    inc bc
    ld [bc], a
    ldh [rNR34], a
    rst $38
    nop
    adc c
    rst $38
    or $29
    ld [hl], $4d
    halt
    dec c
    halt
    or l
    ei
    xor $51
    jr nz, jr_03c_7a25

jr_03c_7a25:
    rst $38

jr_03c_7a26:
    nop
    inc de
    inc c
    jr nc, @+$01

    rrca
    inc a
    inc bc
    jr nz, jr_03c_7a4f

    inc hl
    inc e
    jr nz, @-$17

    rra
    jr nc, @+$11

    ret nc

    cpl
    ld [hl+], a
    jr nc, @+$05

    db $fc
    ret nz

    ld a, [$2a90]
    nop
    ld h, b
    ld c, $e4
    jr @+$06

    ld hl, sp+$1c
    ld sp, hl
    ldh [$ff61], a
    nop
    add c
    nop

jr_03c_7a4f:
    rst $38
    nop
    sbc b
    ld h, a
    sbc [hl]
    ld a, a
    ld h, c
    sbc b
    ld h, a
    sub b
    ld l, a
    adc b
    ld [hl], a
    ld hl, $bd00
    rst $38
    jr nz, @+$08

    ld b, b
    add b
    jr nz, jr_03c_7a26

    ld hl, $4000
    ld b, $e0
    ld h, $ff
    nop
    nop
    inc b
    rst $38
    ld bc, $0201
    inc bc
    inc b
    dec b
    ld b, $01
    rst $38
    ld bc, $a007
    and c
    and d
    and e
    and h
    and l
    rst $28
    and [hl]
    dec bc
    ld bc, $0b01
    ld [bc], a
    ld bc, $0409
    rst $38
    ld a, [bc]
    ld bc, $0801
    nop
    and a
    xor b
    xor c
    cp a
    xor d
    xor e
    xor h
    xor l
    nop
    rrca
    dec bc
    ld [bc], a
    inc c
    rst $30
    dec c
    ld bc, $5004
    ld [bc], a
    ld c, $00
    xor [hl]
    xor a
    rst $18
    or b
    or c
    or d
    or e
    or h
    dec c
    ld [bc], a
    db $10
    ld de, $02fe
    ld [bc], a
    ld [de], a
    nop
    or l
    or [hl]
    or a
    cp b
    cp c
    ld l, a
    cp d
    cp e
    nop
    inc de
    dec bc
    ld b, $14
    dec d
    ld [bc], a
    inc b
    rst $38
    ld d, $00
    cp h
    cp l
    cp [hl]
    cp a
    ret nz

    pop bc
    sub a
    jp nz, $1700

    ld a, [bc]
    ld [$1018], sp
    ld [$0601], sp
    add hl, de
    rst $38
    nop
    jp $c5c4


    add $c7
    ret z

    ret


    cp e
    nop
    ld a, [de]
    ld a, [bc]
    ld a, [bc]
    dec de
    inc e

jr_03c_7aed:
    dec e
    stop
    ld e, $ff
    rra
    jr nz, jr_03c_7af5

jr_03c_7af5:
    jp z, $cccb

    call $dfce
    rst $08
    ret nc

    ld hl, $1d22
    add hl, bc
    ld c, $23
    inc h
    ei
    dec h
    ld h, $10
    nop
    daa
    jr z, jr_03c_7b35

    pop de
    jp nc, $d3ff

    call nc, $d6d5
    rst $10
    ld a, [hl+]
    dec hl
    ld h, $de
    add hl, bc
    db $10
    inc l
    dec l
    ld l, $2f
    ld de, $3000
    ld sp, $d8ff
    reti


    jp c, $dcdb

    db $dd
    sbc $32
    db $dd
    inc sp
    ld a, [bc]
    ld [bc], a
    inc [hl]
    dec [hl]
    ld [hl], $1c
    nop
    scf

jr_03c_7b35:
    jr c, jr_03c_7aed

    add hl, bc
    inc d
    add hl, sp
    ld a, [hl-]
    dec l
    dec d
    inc a
    dec a
    add hl, bc
    ld d, $3e
    ld e, d
    ccf
    rla
    ld b, b
    add hl, bc
    jr jr_03c_7b8a

    ld b, d
    ld e, $00
    ld b, e
    add hl, bc
    ld a, [de]
    db $eb
    ld b, h
    ld b, l
    ld e, $00
    ld b, [hl]
    add hl, bc
    inc e
    ld c, d
    nop
    add b
    rst $38
    add c
    add d
    add e
    add h
    add l
    add [hl]
    add a
    adc b
    rst $38
    adc c
    adc d
    adc e
    adc h
    adc l
    adc [hl]
    adc a
    nop
    pop af
    ld c, e
    dec bc
    ld [bc], a
    ld a, $1f
    inc c
    ld [bc], a
    sub b
    sub c
    sub d
    sub e
    rst $38
    sub h
    sub l
    sub [hl]
    sub a
    sbc b
    sbc c
    sbc d
    sbc e
    ld l, a
    sbc h
    sbc l
    sbc [hl]
    sbc a
    dec bc
    inc b
    ld b, a
    ld c, b

jr_03c_7b8a:
    ld e, $00
    ld bc, $3f49
    dec b
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
    cp $0b
    inc l
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    rst $38
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    ld l, [hl]
    db $fd
    ld l, a
    dec c
    ld bc, $7170
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    rst $38
    halt
    ld [hl], a
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    inc bc
    ld a, [hl]
    ld a, a
    dec c
    ld bc, $13ed
    db $ed
    inc d
    db $ed
    ld de, $12ed
    ld h, h
    inc sp
    ld b, $d4
    ld sp, $afae
    dec c
    ld bc, $3142
    or h
    cpl
    ld hl, $0d2e
    ld bc, $2090
    cpl
    sub h
    dec l
    inc bc
    inc l
    dec c
    ld bc, $74d0
    dec hl
    db $e4
    add hl, hl
    rst $18
    cp $0d
    ld bc, $e1e0
    ldh [c], a
    db $e3
    db $e4
    push hl
    and $ff
    rst $20
    add sp, -$17
    ld [$eceb], a
    db $ed
    xor $fd
    rst $28
    dec c
    ld bc, $f1f0
    ldh a, [c]
    di
    db $f4
    push af
    rst $38
    or $f7
    ld hl, sp-$07
    ld a, [$fcfb]
    db $fd
    inc bc
    cp $ff
    dec c
    ld bc, $0400
    rst $28
    nop
    ld bc, $0302
    stop
    and b
    and c
    and d
    or a
    and e
    and h
    and l
    and c
    nop
    inc b
    dec b
    inc c
    ld [bc], a
    ld b, $7e
    ld bc, $a602
    and a
    xor b
    xor c
    xor d
    xor e
    and c
    ld [bc], a
    db $fd
    rlca
    dec bc
    ld [bc], a
    ld [$0a09], sp
    inc bc
    dec bc
    inc c
    ld a, a
    dec c
    xor h
    xor l
    xor [hl]
    xor a
    or b
    or c
    sub b
    nop
    rst $28
    inc bc
    ld c, $0f
    ld [$05f9], sp
    db $10
    db $10
    ld de, $03ff
    ld [de], a
    inc de
    inc d
    or d
    or e
    or h
    or l
    ld a, e
    or [hl]
    or a
    sub b
    nop
    inc bc
    dec d
    db $10
    db $10
    ld sp, hl
    rlca
    rst $38
    ld d, $17
    jr jr_03c_7c8c

    ld a, [de]
    dec de
    inc e
    cp b
    rst $38
    cp c
    cp d
    cp e
    cp h
    cp l
    ld l, a
    dec de

jr_03c_7c7f:
    inc e
    rst $28
    dec e
    ld e, $1f
    jr nz, jr_03c_7c7f

    add hl, bc
    ld hl, $2322
    rst $38
    inc h

jr_03c_7c8c:
    dec h
    dec de
    inc e
    cp [hl]
    cp a
    ret nz

    pop bc
    rst $38
    jp nz, Jump_03c_6fc3

    dec de
    ld h, $27
    jr z, @+$2b

    db $fd
    ld a, [hl+]
    ld sp, hl
    dec bc
    dec hl
    inc l
    dec l
    ld l, $2f
    dec de
    rst $38
    inc e
    call nz, $c6c5
    rst $00
    ret z

    ret


    ld l, a
    cp a
    dec de
    jr nc, jr_03c_7ce4

    ld [hl-], a
    inc sp
    inc [hl]
    ld sp, hl
    dec c
    inc bc
    rst $38
    dec [hl]
    ld [hl], $37
    jr c, jr_03c_7cf8

    ld a, [hl-]
    jp z, $efcb

    call z, $cecd
    rst $08
    sub b
    nop
    dec sp
    inc a
    dec a
    db $fd
    inc bc
    ld a, [bc]
    ld [bc], a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    rst $38
    ret nc

    pop de
    jp nc, $d4d3

    push de
    ld b, h
    ld b, d
    rst $28
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b

jr_03c_7ce4:
    ld a, [bc]
    ld [bc], a
    ld c, a
    ld c, h
    ld c, e
    db $fd
    ld c, d
    stop
    sub $d7
    ret c

    reti


    jp c, $dddb

    ld c, c
    stop
    ld c, l

jr_03c_7cf8:
    ld c, [hl]
    ld [hl], b
    ld sp, hl
    inc de
    ld d, b
    ld d, c
    rst $30
    ld d, d
    ld d, e
    ld d, h
    jr jr_03c_7d04

jr_03c_7d04:
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    cp [hl]
    ld sp, hl
    dec d
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    jr jr_03c_7d12

jr_03c_7d12:
    ld e, [hl]
    or a
    ld e, a
    ld h, b
    ld h, c
    ld sp, hl
    rla
    ld h, d
    ld h, e
    ld e, $00
    ld h, h
    sub $f9
    add hl, de
    ld h, l
    ld h, [hl]
    ld e, $00
    ld h, a
    ld sp, hl
    dec de
    ld l, e
    nop
    rst $38
    add b
    add c
    add d
    add e
    add h
    add l
    add [hl]
    add a
    rst $38
    adc b

jr_03c_7d35:
    adc c
    adc d
    adc e
    adc h
    adc l
    adc [hl]
    adc a
    db $e3
    nop
    ld l, h
    dec bc
    ld [bc], a
    ld l, $1f
    inc c
    ld [bc], a
    sub b
    sub c
    sub d
    rst $38
    sub e
    sub h
    sub l
    sub [hl]
    sub a
    sbc b
    sbc c
    sbc d
    rst $18
    sbc e
    sbc h
    sbc l
    sbc [hl]
    sbc a
    dec bc
    inc b
    ld l, b
    ld l, c
    ld [bc], a
    ld e, $00
    ld l, d
    ccf
    dec b
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
    db $fc
    rra
    nop
    ei
    dec hl
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    rst $38
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    ei
    ld l, [hl]
    ld l, a
    dec c
    ld bc, $7170
    ld [hl], d
    ld [hl], e
    ld [hl], h
    rst $38
    ld [hl], l
    halt
    ld [hl], a
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    ld a, h
    rlca
    ld a, l
    ld a, [hl]
    ld a, a
    dec c
    ld bc, $13ed
    db $ed
    inc d
    db $ed
    ld de, $12ed
    jr nc, jr_03c_7d35

    inc sp
    di
    ld sp, $3051
    dec c
    ld bc, $b1b0
    or e
    cpl
    inc de
    ld l, $03
    cp [hl]
    cp a
    dec c
    ld bc, $2d71
    db $d3

Jump_03c_7db7:
    dec hl
    inc sp
    ld a, [hl+]
    dec c
    ld bc, $2993
    sbc $f3
    daa
    call c, $dedd
    rst $18
    dec c
    ld bc, $e1e0
    rst $38
    ldh [c], a
    db $e3
    db $e4
    push hl
    and $e7
    add sp, -$17
    cp a
    ld [$eceb], a
    db $ed
    xor $ef
    dec c
    ld bc, $fff0
    pop af
    ldh a, [c]
    di
    db $f4
    push af
    or $f7
    ld hl, sp+$7f
    ld sp, hl
    ld a, [$fcfb]
    db $fd
    cp $ff
    dec c
    ld bc, $0880
    inc bc
    rst $38

Jump_03c_7df3:
    jr jr_03c_7e24

    nop
    cpl
    nop
    cpl
    nop
    cpl
    nop
    cpl
    nop
    cpl
    nop
    nop
    cpl
    nop
    cpl
    nop
    cpl
    nop
    cpl
    nop
    cpl
    nop
    cpl
    nop
    cpl
    nop
    cpl
    nop
    nop
    cpl
    nop
    cpl
    nop
    cpl
    nop
    cpl
    nop
    jp $ef00


    dec d
    rra
    nop
    ld c, a
    rla
    nop
    rrca

jr_03c_7e24:
    inc b
    rra
    nop
    rrca
    inc b
    cpl
    nop
    rrca
    inc b
    rra
    nop
    rrca
    inc b
    rrca
    inc b
    nop
    rra
    nop
    rrca
    inc b
    cpl
    nop
    rrca
    inc b
    rra
    nop
    rrca
    inc b
    rrca
    inc b
    rra
    nop
    nop
    rra
    nop
    xor a
    inc bc
    rrca
    inc b
    rra
    nop
    rrca
    inc b
    rrca
    inc b
    rra
    nop
    rra
    nop
    nop
    rrca
    inc b
    rrca
    inc b
    rra
    nop
    rrca
    inc b
    cpl
    nop
    xor a
    ld [bc], a
    rra
    nop
    rrca
    inc b
    nop
    rrca
    inc b
    rra
    nop
    rrca
    inc b
    cpl
    nop
    rrca
    inc b
    rra
    nop
    rrca
    inc b
    rrca
    inc b
    nop
    rra
    nop
    rrca
    inc b
    cpl
    nop
    rrca
    inc b
    rra
    nop
    rrca
    inc b
    rrca
    inc b
    rra
    nop
    nop
    rra
    nop
    xor a
    inc bc
    rrca
    inc b
    rra
    nop
    rrca
    inc b
    rrca
    inc b
    rra
    nop
    rra
    nop
    nop
    rrca
    inc b
    rrca
    inc b
    rra
    nop
    rrca
    inc b
    cpl
    nop
    cpl
    nop
    cpl
    nop
    cpl
    nop
    nop
    cpl
    nop
    cpl
    nop
    cpl
    nop
    cpl
    nop
    cpl
    nop
    cpl
    nop
    cpl
    nop
    cpl
    nop
    nop
    cpl
    nop
    cpl
    nop
    cpl
    nop
    cpl
    nop
    cpl
    nop
    cpl
    nop
    cpl
    nop
    cpl
    nop
    nop
    cpl
    nop
    cpl
    nop
    cpl
    nop
    cpl
    nop
    cpl
    nop
    cpl
    nop
    cpl
    nop
    cpl
    nop
    ldh [$ff2f], a
    nop
    cpl
    nop
    cpl
    nop
    cpl
    nop
    ld b, l
    daa
    rst $30
    ld a, [hl]
    pop af
    rst $38
    ld d, l
    add sp, $24
    ccf
    ld b, a
    or l
    dec e
    adc $ff
    ld [$0089], sp
    add hl, de
    ld de, $3e5f
    sub [hl]
    rst $38
    ld [bc], a
    ld [hl], c
    ld b, a
    xor h
    ld [hl], $66
    dec e
    rst $38
    rst $38
    ld a, a
    ld a, e
    ld a, a
    nop
    nop
    or b
    ld e, [hl]
    daa
    rst $30
    ld c, d
    rst $30
    ld a, [hl]
    dec b
    ld [bc], a
    ld e, d
    ld l, e
    ld d, d
    ld c, d
    ei
    xor l
    dec [hl]

Jump_03c_7f1c:
    add hl, bc
    ld [bc], a
    nop
    nop
    dec sp
    dec hl
    rst $38
    rst $38
    rra
    sbc a
    ld b, a
    ld d, l
    ld [de], a
    ld c, l
    add hl, bc
    and a
    nop
    rrca
    inc b
    rra
    nop
    ld a, [de]
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

Call_03c_7f97:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
