; Disassembly of "harvest_moon.gbc"
; This file was created with:
; mgbdis v2.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $027", ROMX[$4000], BANK[$27]

    daa
    ld a, $ff
    ld [$cb52], a
    xor a
    ld [$cb53], a
    ld [$cb54], a
    ld [$cb55], a
    xor a
    ldh [$ff91], a
    call ClearBGMap0
    call ZeroOutVRAM
    call Call_000_323d
    xor a
    ldh [$ff93], a
    ldh [$ff91], a
    ld [$c909], a
    ld [$c90a], a
    ld [$cb80], a
    ld [$c800], a
    ld [$c880], a
    ld a, $1d
    ld [$cb4e], a
    ld hl, $478a
    ld c, $2b
    ld de, $8800
    call Call_000_31a0
    ld hl, $4001
    ld c, $2b
    ld de, $9000
    call Call_000_31a0
    call Call_027_4268
    ld a, [$c90b]
    cp $00
    call z, Call_027_428b
    cp $01
    call z, Call_027_42e1
    cp $02
    call z, Call_027_432c
    ld a, $08
    call Call_000_25c8
    ret


    call Call_000_2d67
    ld a, [$cb4f]
    or a
    ret nz

    ld a, [$ccc1]
    or a
    jr nz, jr_027_407b

    ldh a, [$ff8b]
    or a
    jr nz, jr_027_4094

    jr jr_027_4081

jr_027_407b:
    ldh a, [$ff8b]
    cp $02
    jr z, jr_027_4094

jr_027_4081:
    ld a, [$c90b]
    cp $00
    call z, Call_027_40db
    cp $01
    call z, Call_027_40eb
    cp $02
    call z, Call_027_40f3
    ret


Jump_027_4094:
jr_027_4094:
    ld a, $1d
    ld [$cb4f], a
    ld a, [$ccc1]
    or a
    jr z, jr_027_40c6

    ld a, [$c90b]
    cp $00
    jr z, jr_027_40b5

    cp $01
    jr z, jr_027_40c0

    ld a, $01
    ld [$c910], a
    ld a, $02
    ld [$cb50], a
    ret


jr_027_40b5:
    ld a, $26
    ld [$cb50], a
    ld a, $01
    ld [$c90b], a
    ret


jr_027_40c0:
    ld a, $27
    ld [$cb50], a
    ret


jr_027_40c6:
    ld a, $11
    ld [$cb50], a
    ld a, $ff
    ld [$cb52], a
    xor a
    ld [$cb53], a
    ld [$cb54], a
    ld [$cb55], a
    ret


Call_027_40db:
    ld hl, $4fca
    ld a, $25
    call BankSwitchCallHL
    call Call_027_40fb
    call Call_000_36f4
    pop hl
    ret


Call_027_40eb:
    call Call_027_4398
    call Call_000_36f4
    pop hl
    ret


Call_027_40f3:
    call Call_027_43e0
    call Call_000_36f4
    pop hl
    ret


Call_027_40fb:
    ld a, [$cb4e]
    or a
    ret nz

    ld a, [$c613]
    cp $00
    jp z, Jump_027_412c

    cp $01
    jp z, Jump_027_4142

    cp $02
    jp z, Jump_027_4161

    cp $03
    jp z, Jump_027_4177

    cp $04
    jp z, Jump_027_4184

    cp $05
    jp z, Jump_027_419a

    cp $06
    jp z, Jump_027_41ae

    cp $07
    jp z, Jump_027_41be

    ret


Jump_027_412c:
    ld a, [$c611]
    cp $6c
    jp z, Jump_027_41ce

    inc a
    ld [$c611], a
    ld hl, $c60a
    ld bc, $ffff
    call Call_000_0cce
    ret


Jump_027_4142:
    ld a, [$c611]
    cp $24
    jp z, Jump_027_41e7

    inc a
    ld [$c611], a
    ld hl, $c60a
    ld bc, $ffff
    call Call_000_0cce
    ld a, [$c90d]
    or a
    ret z

    dec a
    ld [$c90d], a
    ret


Jump_027_4161:
    ld a, [$c611]
    cp $08
    jp z, Jump_027_41f6

    inc a
    ld [$c611], a
    ld hl, $c60a
    ld bc, $ffff
    call Call_000_0cce
    ret


Jump_027_4177:
    ld a, [$c611]
    cp $08
    jp z, Jump_027_420a

    inc a
    ld [$c611], a
    ret


Jump_027_4184:
    ld a, [$c611]
    cp $18
    jp z, Jump_027_421e

    inc a
    ld [$c611], a
    ld hl, $c60b
    ld bc, $0001
    call Call_000_0cce
    ret


Jump_027_419a:
    ld a, [$c611]
    cp $08
    jp nc, Jump_027_4237

    inc a
    ld [$c611], a
    ld a, [$c912]
    dec a
    ld [$c912], a
    ret


Jump_027_41ae:
    ld a, [$c611]
    cp $f0
    jp z, Jump_027_4259

    ld a, [$c611]
    inc a
    ld [$c611], a
    ret


Jump_027_41be:
    ld a, [$c611]
    cp $f0
    jp z, Jump_027_4094

    ld a, [$c611]
    inc a
    ld [$c611], a
    ret


Jump_027_41ce:
    ld a, $01
    ld [$c613], a
    xor a
    ld [$c611], a
    ld a, $11
    call Call_000_151d
    ld a, $24
    ld [$c90d], a
    ld a, $33
    call Call_000_25ce
    ret


Jump_027_41e7:
    ld a, $02
    ld [$c613], a
    xor a
    ld [$c611], a
    ld a, $15
    call Call_000_151d
    ret


Jump_027_41f6:
    ld a, $03
    ld [$c613], a
    xor a
    ld [$c611], a
    ld a, $00
    ld [$c60d], a
    ld a, $4c
    call Call_000_151d
    ret


Jump_027_420a:
    ld a, $04
    ld [$c613], a
    xor a
    ld [$c611], a
    ld a, $00
    ld [$c60d], a
    ld a, $14
    call Call_000_151d
    ret


Jump_027_421e:
    ld a, $05
    ld [$c613], a
    xor a
    ld [$c611], a
    ld a, $15
    call RST_TableJumpBankSwitch
    ld a, $01
    ld [$cb80], a
    ld a, $08
    ld [$c912], a
    ret


Jump_027_4237:
    ld a, $06
    ld [$c613], a
    xor a
    ld [$c611], a
    ld [$c620], a
    ld [$cb4a], a
    ld hl, $5df1
    ld a, $21
    call BankSwitchCallHL
    ld a, $00
    call RST_TableJumpBankSwitch
    ld a, $3e
    call Call_000_3f52
    ret


Jump_027_4259:
    ld a, $07
    ld [$c613], a
    xor a
    ld [$c611], a
    ld a, $48
    call Call_000_3f52
    ret


Call_027_4268:
    ld hl, $427b
    ld de, $c600
    ld b, $10
    call CopyHLtoDE
    xor a
    ld [$c613], a
    ld [$c611], a
    ret


    ld bc, rJOYP
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    and b
    jr z, jr_027_4288

jr_027_4288:
    ld bc, $0001

Call_027_428b:
    ld hl, $756f
    ld c, $27
    ld de, $9800
    call Call_000_31a0
    ld a, $a8
    ld [$cb5c], a
    ld a, $d9
    ld [$cb5d], a
    ld [$cb5e], a
    ld hl, $6d1e
    ld a, $21
    call BankSwitchCallHL
    ld a, $15
    call Call_000_151d
    ld a, $01
    ld [$c60d], a
    ld a, $e0
    ld [$c60a], a
    ld a, $28
    ld [$c60b], a
    ld a, $1f
    call $16d1
    ld a, $01
    ld [$c620], a
    ld a, $80
    ld [$c62f], a
    ld a, $83
    ld [$c0a2], a
    xor a
    ldh [rIF], a
    ld a, $01
    ldh [rIE], a
    ld a, $3d
    call Call_000_3f52
    pop hl
    ret


Call_027_42e1:
    ld hl, $7648
    ld c, $27
    ld de, $9800
    call Call_000_31a0
    ld a, $a8
    ld [$cb5c], a
    ld a, $d9
    ld [$cb5d], a
    ld [$cb5e], a
    ld hl, $6d1e
    ld a, $21
    call BankSwitchCallHL
    ld a, $4a
    call Call_000_151d
    ld a, $03
    ld [$c60d], a
    ld a, $50
    ld [$c60a], a
    ld a, $58
    ld [$c60b], a
    xor a
    ld [$c620], a
    ld a, $83
    ld [$c0a2], a
    xor a
    ldh [rIF], a
    ld a, $01
    ldh [rIE], a
    ld a, $3f
    call Call_000_3f52
    pop hl
    ret


Call_027_432c:
    ld hl, $71b9
    ld c, $25
    ld de, $8800
    call Call_000_31a0
    ld hl, $6a35
    ld c, $25
    ld de, $9000
    call Call_000_31a0
    ld hl, $6956
    ld c, $25
    ld de, $9800
    call Call_000_31a0
    call Call_027_4434
    ld a, $cd
    ld [$cb5c], a
    ld a, $c8
    ld [$cb5d], a
    ld [$cb5e], a
    ld a, $07
    ldh [$ff96], a
    ld a, $00
    ldh [$ff95], a
    ld hl, $4486
    ld a, $25
    call BankSwitchCallHL
    ld a, $4a
    call Call_000_151d
    ld a, $03
    ld [$c60d], a
    ld a, $50
    ld [$c60a], a
    ld a, $58
    ld [$c60b], a
    xor a
    ld [$c620], a
    ld a, $83
    ld [$c0a2], a
    xor a
    ldh [rIF], a
    ld a, $01
    ldh [rIE], a
    ld a, $41
    call Call_000_3f52
    pop hl
    ret


Call_027_4398:
    ld a, [$c0a8]
    and $01
    ret z

    ld a, [$c611]
    inc a
    ld [$c611], a
    cp $80
    ret c

    xor a
    ld [$c611], a
    ld a, [$c613]
    and a
    jr z, jr_027_43bf

    cp $01
    jr z, jr_027_43c9

    cp $02
    jr z, jr_027_43d3

    cp $03
    jr z, jr_027_43dd

    ret


jr_027_43bf:
    inc a
    ld [$c613], a
    ld a, $40
    call Call_000_3f52
    ret


jr_027_43c9:
    inc a
    ld [$c613], a
    ld a, $49
    call Call_000_3f52
    ret


jr_027_43d3:
    inc a
    ld [$c613], a
    ld a, $4a
    call Call_000_3f52
    ret


jr_027_43dd:
    jp Jump_027_4094


Call_027_43e0:
    ld a, [$c0a8]
    and $03
    cp $03
    ret nz

    ld a, [$c611]
    inc a
    ld [$c611], a
    cp $40
    ret c

    xor a
    ld [$c611], a
    ld a, [$c613]
    and a
    jr z, jr_027_4404

    cp $01
    jr z, jr_027_440e

    cp $02
    jr z, jr_027_4431

jr_027_4404:
    inc a
    ld [$c613], a
    ld a, $42
    call Call_000_3f52
    ret


jr_027_440e:
    inc a
    ld [$c613], a
    ld a, $4c
    call Call_000_3f52
    ret


    inc a
    ld [$c613], a
    ld a, $4b
    call Call_000_3f52
    ret


    inc a
    ld [$c613], a
    ld a, $4c
    call Call_000_3f52
    ret


    inc a
    ld [$c613], a
    ret


jr_027_4431:
    jp Jump_027_4094


Call_027_4434:
    ld a, $18
    ldh [$ff91], a
    ld hl, $99ab
    ld a, $48
    ld b, $08

jr_027_443f:
    ld [hl+], a
    inc a
    dec b
    jr nz, jr_027_443f

    ld hl, $99cb
    ld a, $58
    ld b, $08

jr_027_444b:
    ld [hl+], a
    inc a
    dec b
    jr nz, jr_027_444b

    ld a, [$b8ec]
    or a
    ret z

    ld hl, $9927
    ld a, $2e
    ld b, $02

jr_027_445c:
    ld [hl+], a
    inc a
    dec b
    jr nz, jr_027_445c

    ld hl, $9947
    ld a, $3e
    ld b, $02

jr_027_4468:
    ld [hl+], a
    inc a
    dec b
    jr nz, jr_027_4468

    ld hl, $992b
    ld a, $08
    ld b, $04

jr_027_4474:
    ld [hl+], a
    inc a
    dec b
    jr nz, jr_027_4474

    ld hl, $994b
    ld a, $18
    ld b, $04

jr_027_4480:
    ld [hl+], a
    inc a
    dec b
    jr nz, jr_027_4480

    ld hl, $99a7
    ld a, $66
    ld b, $02

jr_027_448c:
    ld [hl+], a
    inc a
    dec b
    jr nz, jr_027_448c

    ld hl, $99c7
    ld a, $76
    ld b, $02

jr_027_4498:
    ld [hl+], a
    inc a
    dec b
    jr nz, jr_027_4498

    ret


    nop
    nop
    nop
    nop
    nop
    nop
    dec d
    ld [hl], b
    nop
    nop
    or c
    db $ec
    and h
    and l
    and [hl]
    and a
    xor b
    xor c
    ret z

    ret


    xor $f0
    db $ed
    xor e
    xor d
    inc c
    rst $28
    xor h
    xor l
    xor [hl]
    xor a
    or b
    or $ef
    rst $28
    rst $28
    or d
    or e
    or h
    or l
    or [hl]
    ld b, $ff
    nop
    nop
    nop
    nop
    nop
    nop
    dec d
    ld [hl], b
    nop
    nop
    rst $28
    rrca
    ld e, $2d
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    inc de
    ld [hl+], a
    ld h, $1e

jr_027_44e2:
    dec hl
    rst $28
    rlca
    jr z, jr_027_4512

    inc l
    ld e, $ef
    rst $28
    rst $28
    rst $28
    rst $28
    inc c
    ld e, $26
    jr z, jr_027_44e2

    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    dec d
    ld [hl], b
    nop
    nop
    ld [de], a
    ld hl, $3028
    rst $28
    dec l
    ld hl, $ef1e
    ld [hl+], a
    dec l
    ld e, $26
    inc l

jr_027_450c:
    rst $28
    rst $28
    dec l
    ld hl, $2d1a

jr_027_4512:
    rst $28
    dec hl
    ld e, $25
    ld a, [de]
    dec l
    ld e, $ef
    dec l
    jr z, jr_027_450c

    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    dec d
    ld [hl], b
    nop
    nop
    dec l
    ld hl, $ef1e
    nop
    rst $28
    dec de
    ld l, $2d
    dec l
    jr z, jr_027_455c

    ld b, c
    rst $28
    rst $28
    rst $28
    rst $28
    jr jr_027_4540

    ld [de], a
    rst $28
    rst $28
    rst $28

jr_027_4540:
    rst $28
    rst $28
    rst $28
    rst $28

Call_027_4544:
    rst $28
    dec c
    ld c, $ef
    rst $28
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    dec d
    ld [hl], b
    nop
    nop
    ret z

    ret


    xor $f0
    db $ed
    xor e
    xor d
    inc c

jr_027_455c:
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    ret nc

    pop de
    jp nc, $d4d3

    push de
    sub $d7
    ret c

    pop af
    ldh a, [c]
    di
    db $f4
    push af
    rst $28
    rst $28

jr_027_4574:
    rst $38
    ld bc, $0000
    ld b, b
    ld c, h
    nop
    ld b, h
    ld [hl], b
    nop
    nop
    ld b, $28
    rst $28
    dec l
    jr z, jr_027_4574

    inc l
    dec h
    ld e, $1e
    add hl, hl
    ld b, c
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    jr jr_027_4596

    ld [de], a
    rst $28
    rst $28
    rst $28

jr_027_4596:
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    dec c
    ld c, $ef
    cp $01
    nop
    nop
    ld b, b
    ld c, h
    nop
    bit 6, b
    nop
    nop
    inc b
    ld sp, $211c
    ld a, [de]
    daa
    jr nz, jr_027_45d0

    ld b, c
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    jr jr_027_45c1

    ld [de], a
    rst $28
    rst $28
    rst $28

jr_027_45c1:
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    dec c
    ld c, $ef
    cp $00
    nop
    nop
    nop
    inc c

jr_027_45d0:
    nop
    dec d
    ld [hl], b
    nop
    nop
    ld [bc], a
    jr z, jr_027_45ff

    rra
    ld [hl+], a
    dec hl
    ld h, $ef
    dec l
    ld hl, $ef1e
    rst $28
    rst $28
    rst $28
    rst $28
    jr z, jr_027_4612

    ld [hl+], a
    jr nz, jr_027_460c

    daa
    rst $28
    jr z, jr_027_460d

    rst $28
    rra
    ld [hl+], a
    dec hl
    ld e, $40
    jp hl


    cp $00
    nop
    nop
    nop

jr_027_45fa:
    inc c
    nop
    dec d
    ld [hl], b
    nop

jr_027_45ff:
    nop
    inc b
    cpl
    ld e, $2b
    ld [hl-], a
    dec l
    ld hl, $2722
    jr nz, jr_027_45fa

    ld [hl+], a

jr_027_460c:
    inc l

jr_027_460d:
    rst $28
    rst $28
    rst $28
    ld a, [de]
    dec h

jr_027_4612:
    dec hl
    ld [hl+], a
    jr nz, jr_027_4637

    dec l
    ld b, b
    ld b, b
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    dec d
    ld [hl], b
    nop
    nop
    ld d, $21
    ld a, [de]
    dec l
    ld b, b
    rst $28
    inc de
    ld hl, $2b1e
    ld e, $ef

jr_027_4637:
    ld [hl+], a
    inc l
    rst $28
    rst $28
    ld h, $28
    daa
    ld e, $32
    rst $28
    ld [hl+], a
    daa
    rst $28
    dec l
    ld hl, $ef1e
    rst $28
    rst $28
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    dec d
    ld [hl], b
    nop
    nop
    dec e
    dec hl
    ld a, [de]
    jr nc, jr_027_4679

    dec hl
    ld c, h
    rst $28
    ld d, $1a
    inc l
    rst $28
    dec l
    ld hl, $2c22
    ld b, $2b
    ld a, [de]
    daa
    dec e
    add hl, hl
    ld a, [de]
    ld d, e
    rst $28
    dec hl
    ld a, [de]
    ld [hl+], a
    daa
    ld [hl-], a
    rst $28
    jp hl


    cp $00
    nop

jr_027_4679:
    nop
    nop
    nop
    nop
    dec d
    ld [hl], b
    nop
    nop
    dec e
    ld a, [de]
    ld [hl-], a
    rst $28
    ld h, $28
    daa
    ld e, $32
    ld b, c
    rst $28
    ld [$532d], sp
    rst $28
    rst $28
    ld h, $22
    daa
    ld e, $ef
    daa
    jr z, jr_027_46c9

    ld b, b
    ld b, b
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    dec d
    ld [hl], b
    nop
    nop
    ld de, $1c1e
    ld e, $22
    cpl
    ld e, $1d
    rst $28
    dec [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    ld b, $40
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

jr_027_46c9:
    rst $28
    rst $28
    rst $28
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    dec d
    ld [hl], b
    nop
    nop
    dec bc
    ld e, $2d
    rst $28
    ld h, $1e
    rst $28
    inc l
    ld e, $1e
    ld c, h
    ld c, h
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
    jp hl


    cp $00
    nop
    nop
    nop

jr_027_46fc:
    nop
    nop
    dec d
    ld [hl], b
    nop
    nop
    inc b
    cpl
    ld e, $2b
    ld [hl-], a
    dec l
    ld hl, $2722
    jr nz, jr_027_46fc

    ld [hl+], a
    inc l
    rst $28
    rst $28
    rst $28
    ld a, [de]
    dec h
    dec hl
    ld [hl+], a
    jr nz, jr_027_4739

    dec l
    ld b, b
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    dec d
    ld [hl], b
    nop
    nop
    cp d
    nop
    ld bc, $1200
    nop
    ld b, h
    nop
    inc [hl]
    nop
    ld [bc], a
    nop

jr_027_4739:
    add c
    nop
    sub d
    nop
    ld [bc], a
    nop
    and b
    nop
    ld [de], a
    nop
    add e
    nop
    jr nc, jr_027_4747

jr_027_4747:
    inc bc
    nop
    cp d
    nop
    jp c, $c800

    nop
    ld [de], a
    nop
    or c
    nop
    sub d
    nop
    ld [bc], a
    nop
    ld b, h
    nop
    ld d, d
    nop
    ld [bc], a
    nop
    inc de
    nop
    ld bc, $ac00
    nop
    stop
    ld b, b
    nop
    ld l, e
    nop
    db $fd
    nop
    db $fd
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    dec d
    ld [hl], b
    nop
    nop
    ld [$ef2d], sp
    ld hl, $2c1a
    rst $28
    dec de
    ld e, $1e
    daa
    rst $28
    jr nc, jr_027_47a1

    dec hl
    ld h, $1e
    cpl
    ld e, $2b
    ld [hl-], a
    dec e
    ld a, [de]
    ld [hl-], a
    ld c, h
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    dec d

jr_027_47a1:
    ld [hl], b
    nop
    nop
    inc de
    jr z, jr_027_47cd

    jr z, jr_027_47d4

    dec hl
    jr z, jr_027_47dc

    rst $28
    jr nc, @+$24

    dec h
    dec h
    rst $28
    dec de
    ld e, $1a
    rst $28
    rra
    ld [hl+], a
    daa
    ld e, $ef
    dec e
    ld a, [de]
    ld [hl-], a
    ld c, h
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    dec d
    ld [hl], b

jr_027_47cd:
    nop
    nop
    ld [$ef2d], sp
    jr nc, jr_027_47f6

jr_027_47d4:
    dec h
    dec h
    rst $28
    dec de
    ld e, $ef
    ld a, [de]
    rst $28

jr_027_47dc:
    rst $28
    rst $28
    rst $28
    dec hl
    ld a, [de]
    ld [hl+], a
    daa
    ld [hl-], a
    rst $28
    dec e
    ld a, [de]
    ld [hl-], a
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop

jr_027_47f6:
    dec d
    ld [hl], b
    nop
    nop
    dec l
    jr z, jr_027_4823

    jr z, @+$2d

    dec hl
    jr z, jr_027_4832

    adc [hl]
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    inc e
    ld a, [de]
    ld l, $2c
    ld [hl+], a
    daa
    jr nz, @-$0f

    dec l
    ld hl, $ef1e
    rst $28
    rst $28
    rst $28
    jp hl


    cp $00
    nop
    nop
    nop

jr_027_481f:
    nop
    nop
    dec d
    ld [hl], b

jr_027_4823:
    nop
    nop
    rra
    dec h
    jr z, @+$32

    ld e, $2b
    inc l
    rst $28
    dec l
    jr z, jr_027_481f

    rra
    ld a, [de]

jr_027_4832:
    dec h
    dec h
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
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    dec d
    ld [hl], b
    nop
    nop
    ld [$ef2d], sp
    ld hl, $2c1a
    rst $28
    dec de
    ld e, $1e
    daa
    rst $28
    ld hl, $2d28
    rst $28
    ld e, $2f
    ld e, $2b
    ld [hl-], a
    dec e
    ld a, [de]
    ld [hl-], a
    ld c, h
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    dec d
    ld [hl], b
    nop
    nop
    inc de
    jr z, jr_027_48a4

    jr z, jr_027_48ab

    dec hl
    jr z, jr_027_48b3

    rst $28
    jr nc, @+$24

    dec h
    dec h
    rst $28
    dec de
    ld e, $1a
    rst $28
    inc l
    ld l, $27
    daa
    ld [hl-], a
    rst $28
    dec e
    ld a, [de]
    ld [hl-], a
    ld c, h
    rst $28
    rst $28
    rst $28
    rst $28
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    dec d
    ld [hl], b

jr_027_48a4:
    nop
    nop
    ld [$ef2d], sp
    jr nc, jr_027_48cd

jr_027_48ab:
    dec h
    dec h
    rst $28
    dec hl
    ld a, [de]
    ld [hl+], a
    daa
    rst $28

jr_027_48b3:
    rst $28
    rst $28
    rst $28
    ld hl, $1a1e
    cpl
    ld [hl+], a
    dec h
    ld [hl-], a
    rst $28
    ld a, [de]
    dec h
    dec h
    rst $28
    dec e
    ld a, [de]
    ld [hl-], a
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop

jr_027_48cd:
    dec d
    ld [hl], b
    nop
    nop
    dec l
    jr z, jr_027_48fa

    jr z, @+$2d

    dec hl
    jr z, jr_027_4909

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
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    dec d
    ld [hl], b

jr_027_48fa:
    nop
    nop
    inc de
    ld hl, $ef1e
    ld h, $28
    ld l, $27
    dec l
    ld a, [de]
    ld [hl+], a
    daa
    inc l

jr_027_4909:
    rst $28
    rst $28
    rst $28
    ld a, [de]
    dec hl
    ld e, $ef
    dec de
    ld e, $1a
    ld l, $2d
    ld [hl+], a
    rra
    ld l, $25
    dec h
    ld [hl-], a
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    dec d
    ld [hl], b
    nop
    nop
    inc e
    jr z, jr_027_494f

    jr z, jr_027_4957

    ld e, $1d
    ld c, h
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    inc de
    ld hl, $ef1e
    inc l
    inc h
    ld [hl-], a
    rst $28
    jr nc, jr_027_4963

    dec h
    dec h
    rst $28
    dec de
    ld e, $e9
    cp $00
    nop
    nop
    nop
    nop
    nop
    dec d

jr_027_494f:
    ld [hl], b
    nop
    nop
    inc e
    dec h
    ld e, $1a
    dec hl

jr_027_4957:
    rst $28
    dec l
    jr z, jr_027_4981

    jr z, @+$2d

    dec hl
    jr z, jr_027_4990

    rst $28
    rst $28
    rst $28

jr_027_4963:
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
    rst $38
    nop
    nop
    nop
    nop
    nop

jr_027_4978:
    nop
    dec d
    ld [hl], b
    nop
    nop
    ld [$532d], sp
    rst $28

jr_027_4981:
    jr nz, jr_027_49a1

    dec l
    dec l
    ld [hl+], a
    daa
    jr nz, jr_027_4978

    inc e
    jr z, jr_027_49b1

    ld b, h
    dec e
    ld e, $2b

jr_027_4990:
    rst $28
    dec e
    ld a, [de]
    ld [hl-], a
    rst $28
    dec de
    ld [hl-], a
    rst $28
    dec e
    ld a, [de]
    ld [hl-], a
    ld c, h
    jp hl


    cp $00
    nop
    nop

jr_027_49a1:
    nop
    nop
    nop
    dec d
    ld [hl], b
    nop
    nop
    ld [$ef2d], sp
    jr nc, jr_027_49cf

    dec h
    dec h
    rst $28
    dec hl

jr_027_49b1:
    ld a, [de]
    ld [hl+], a
    daa
    rst $28
    ld a, [de]
    dec h
    dec h
    dec e
    ld a, [de]
    ld [hl-], a
    rst $28
    dec l
    jr z, @+$28

    jr z, jr_027_49ec

    dec hl
    jr z, @+$32

    ld c, h
    rst $28
    rst $28
    rst $28
    rst $38
    nop
    nop
    nop
    nop
    nop

jr_027_49ce:
    nop

jr_027_49cf:
    dec d
    ld [hl], b
    nop
    nop
    ld [$532d], sp
    rst $28
    jr nz, jr_027_49f7

    dec l
    dec l
    ld [hl+], a
    daa
    jr nz, jr_027_49ce

    inc e
    jr z, jr_027_4a07

    ld b, h
    dec e
    ld e, $2b
    rst $28
    dec e
    ld a, [de]
    ld [hl-], a
    rst $28
    dec de

jr_027_49ec:
    ld [hl-], a
    rst $28
    dec e
    ld a, [de]
    ld [hl-], a
    ld c, h
    jp hl


    cp $00
    nop
    nop

jr_027_49f7:
    nop
    nop
    nop
    dec d
    ld [hl], b
    nop
    nop
    ld [$ef2d], sp
    jr nc, jr_027_4a25

    dec h
    dec h
    rst $28
    dec de

jr_027_4a07:
    ld e, $ef
    inc l
    ld l, $27
    daa
    ld [hl-], a
    dec l
    jr z, jr_027_4a37

    jr z, jr_027_4a3e

    dec hl
    jr z, jr_027_4a46

    ld c, h
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop

jr_027_4a25:
    dec d
    ld [hl], b
    nop
    nop
    ld [$532d], sp
    rst $28
    inc e
    jr z, jr_027_4a55

    dec e
    rst $28
    ld e, $2f
    ld e, $2b
    ld [hl-], a

jr_027_4a37:
    ld b, h
    rst $28
    dec e
    ld a, [de]
    ld [hl-], a
    ld c, h
    rst $28

jr_027_4a3e:
    ld [$ef2d], sp
    jr nc, jr_027_4a65

    dec h
    dec h
    rst $28

jr_027_4a46:
    rst $28
    rst $28
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    dec d
    ld [hl], b
    nop
    nop
    inc l

jr_027_4a55:
    daa
    jr z, @+$32

    rst $28
    dec l
    jr z, jr_027_4a82

    jr z, jr_027_4a89

    dec hl
    jr z, @+$32

    ld c, h
    rst $28
    rst $28
    rst $28

jr_027_4a65:
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
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    dec d
    ld [hl], b
    nop
    nop
    rlca
    ld l, $2b

jr_027_4a82:
    dec hl
    ld [hl+], a
    inc e
    ld a, [de]
    daa
    ld e, $ef

jr_027_4a89:
    ld bc, $1b28
    rst $28
    rst $28
    rst $28
    ld hl, $2c1a
    rst $28
    inc hl
    ld l, $2c
    dec l
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    dec d
    ld [hl], b
    nop
    nop
    dec hl
    ld e, $1a
    inc e
    ld hl, $1d1e
    rst $28
    dec l
    ld hl, $ef1e
    rst $28
    rst $28
    rst $28
    rst $28
    inc e
    jr z, @+$1c

    inc l
    dec l
    ld c, h
    rst $28
    ld [$ef2d], sp
    jr nc, jr_027_4ae8

    dec h
    dec h
    rst $28
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    dec d
    ld [hl], b
    nop
    nop
    dec de
    ld e, $ef
    inc l
    dec l
    jr z, @+$2d

    ld h, $32
    rst $28
    ld a, [de]
    dec h
    dec h
    rst $28
    rst $28
    rst $28
    dec e
    ld a, [de]
    ld [hl-], a

jr_027_4ae8:
    rst $28
    dec l
    jr z, jr_027_4b12

    jr z, jr_027_4b19

    dec hl
    jr z, @+$32

    ld c, h
    rst $28
    rst $28
    rst $28
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    dec d
    ld [hl], b
    nop
    nop
    ld d, $21
    jr z, jr_027_4b1e

    ld b, b
    rst $28

jr_027_4b06:
    ld d, $21
    ld a, [de]
    dec l
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    inc l
    dec l

jr_027_4b12:
    dec hl
    jr z, jr_027_4b3c

    jr nz, jr_027_4b06

    jr nc, jr_027_4b3b

jr_027_4b19:
    daa
    dec e
    inc l
    ld c, h
    rst $28

jr_027_4b1e:
    rst $28
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    dec d
    ld [hl], b
    nop
    nop
    ld bc, $2d1e
    dec l
    ld e, $2b
    rst $28
    inc l
    dec l
    ld a, [de]
    ld [hl-], a
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28

jr_027_4b3b:
    ld [hl+], a

jr_027_4b3c:
    daa
    inc l
    ld [hl+], a
    dec e
    ld e, $ef
    dec l
    jr z, jr_027_4b62

    ld a, [de]
    ld [hl-], a
    ld c, h
    rst $28
    rst $28
    rst $28
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    dec d
    ld [hl], b
    nop
    nop
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e

jr_027_4b62:
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld c, h
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    dec d
    ld [hl], b
    nop
    nop
    ld c, $29
    add hl, hl
    inc l
    ld b, b
    rst $28
    ld [$532d], sp
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    ld a, [de]
    dec h
    dec hl
    ld e, $1a
    dec e
    ld [hl-], a
    rst $28
    ld a, [hl-]
    nop
    inc c
    ld c, h
    rst $28
    rst $28
    rst $28
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    dec d
    ld [hl], b
    nop
    nop
    ld [$1bef], sp
    ld e, $2d
    dec l
    ld e, $2b
    rst $28
    jr nz, jr_027_4bdf

    rst $28
    ld hl, $2628
    ld e, $1a
    daa
    dec e
    rst $28
    ld hl, $2f1a
    ld e, $ef
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    jp hl


    cp $00
    nop
    nop

jr_027_4bd0:
    nop
    nop
    nop

jr_027_4bd3:
    dec d
    ld [hl], b
    nop
    nop
    inc l
    jr z, jr_027_4c00

    ld e, $2d
    ld hl, $2722

jr_027_4bdf:
    jr nz, jr_027_4bd0

    dec l
    jr z, jr_027_4bd3

    rst $28
    rst $28
    rst $28
    ld e, $1a
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
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    dec d
    ld [hl], b

jr_027_4c00:
    nop
    nop
    ld c, $21
    rst $28
    inc c
    ld [hl-], a
    ld b, b
    rst $28
    ld [$532d], sp
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    ld a, [de]
    dec h
    dec hl
    ld e, $1a
    dec e
    ld [hl-], a
    rst $28
    ld a, [hl-]
    nop
    inc c
    ld c, h
    rst $28
    rst $28
    rst $28
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    dec d
    ld [hl], b
    nop
    nop
    ld [$1bef], sp
    ld e, $2d

jr_027_4c32:
    dec l
    ld e, $2b
    rst $28
    jr nz, jr_027_4c56

    dec l
    rst $28
    rst $28
    rst $28
    rst $28
    jr nz, jr_027_4c67

    ld [hl+], a
    daa
    jr nz, jr_027_4c32

    ld hl, $2628
    ld e, $40
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $38
    nop
    nop
    nop
    nop

jr_027_4c52:
    nop
    nop
    dec d
    ld [hl], b

jr_027_4c56:
    nop
    nop
    rst $28
    ld a, $12
    ld hl, $2922
    add hl, hl
    ld [hl+], a
    daa
    jr nz, jr_027_4c52

    ld bc, $3128
    ccf

jr_027_4c67:
    rst $28
    rrca
    ld [hl+], a
    inc e
    inc h
    rst $28
    ld l, $29
    rst $28
    ld [hl+], a
    inc l
    rst $28
    ld a, [de]
    dec l
    rst $28
    rst $28
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    dec d
    ld [hl], b
    nop
    nop
    add hl, sp
    rrca
    inc c
    rst $28
    ld e, $2f
    ld e, $2b
    ld [hl-], a
    dec e
    ld a, [de]
    ld [hl-], a
    ld c, h
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    dec b
    dec hl
    jr z, jr_027_4cc2

    rst $28
    inc de
    dec hl
    ld a, [de]
    dec e
    ld e, $2b
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    dec d
    ld [hl], b
    nop
    nop
    ld [bc], a
    ld l, $2b
    dec hl
    ld e, $27
    dec l
    rst $28
    inc c
    ld a, [de]
    dec l
    ld e, $2b
    ld [hl+], a
    ld a, [de]
    dec h
    rst $28
    rst $28
    rst $28
    rst $28

jr_027_4cc2:
    rst $28
    rst $28
    cp h
    cp l
    cp [hl]
    rst $28
    rrca
    ld [hl+], a
    ld e, $1c
    ld e, $2c
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    dec d
    ld [hl], b
    nop
    nop
    rst $28
    rst $28
    rst $28
    rst $28
    ld a, $12
    dec l
    ld a, [de]
    dec de
    dec h
    ld e, $3f
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
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    dec d
    ld [hl], b
    nop
    nop
    ld [bc], a
    ld l, $2b
    dec hl
    ld e, $27
    dec l
    rst $28
    dec b
    jr z, jr_027_4d2c

    dec e
    ld e, $2b
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    cp a
    ret nz

    pop bc
    rrca
    ld [hl+], a
    ld e, $1c
    ld e, $2c
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    dec d

jr_027_4d2c:
    ld [hl], b
    nop
    nop
    or c
    db $ec
    and h
    and l
    and [hl]
    and a
    xor b
    xor c
    ret z

    ret


    xor $f0
    db $ed
    xor e
    xor d
    inc c
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
    jp z, $18cb

    inc b
    nop
    ld de, $00ff
    nop
    nop
    nop
    nop
    nop

jr_027_4d56:
    dec d
    ld [hl], b
    nop
    nop
    ld b, $28
    jr z, @+$1f

    rst $28
    inc c
    jr z, jr_027_4d8d

    daa
    ld [hl+], a
    daa
    jr nz, jr_027_4d56

    rst $28
    rst $28
    rst $28
    and b
    and c
    and d
    and e
    ld c, h
    rst $28
    ld [$532d], sp
    rst $28
    ld h, $1e
    ld c, h
    rst $28
    rst $28
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    dec d
    ld [hl], b
    nop
    nop
    rlca
    jr z, jr_027_4db8

    rst $28
    ld a, [de]
    dec hl
    ld e, $ef

jr_027_4d8d:
    ld [hl-], a
    jr z, jr_027_4dbe

    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    dec e
    jr z, jr_027_4dba

    daa
    jr nz, jr_027_4ddc

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


    cp $00
    nop
    nop
    nop
    nop
    nop
    dec d
    ld [hl], b
    nop
    nop
    ld [$ef2d], sp
    inc l
    ld e, $1e
    ld h, $2c

jr_027_4db8:
    rst $28
    dec l

jr_027_4dba:
    ld hl, $2d1a
    rst $28

jr_027_4dbe:
    rst $28
    rst $28
    dec l
    ld hl, $2c22
    rst $28
    ld hl, $2b28
    inc l
    ld e, $ef
    ld [hl+], a
    inc l
    rst $28
    rst $28
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    dec d
    ld [hl], b
    nop
    nop
    dec h

jr_027_4ddc:
    jr z, @+$2e

    dec l
    ld c, h
    rst $28
    ld d, $28
    ld l, $25
    dec e
    rst $28
    ld [hl-], a
    jr z, @+$30

    rst $28
    add hl, hl
    dec h
    ld e, $1a
    inc l
    ld e, $ef
    dec l
    ld a, [de]
    inc h
    ld e, $ef
    rst $28
    rst $28
    rst $28
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    dec d
    ld [hl], b
    nop
    nop
    inc e
    ld a, [de]
    dec hl
    ld e, $ef
    jr z, jr_027_4e2c

    rst $28
    dec l
    ld hl, $2c22
    rst $28
    rst $28
    rst $28
    rst $28
    ld hl, $2b28
    inc l
    ld e, $ef
    jr z, jr_027_4e45

    rst $28
    ld [hl-], a
    jr z, jr_027_4e50

    dec hl
    rst $28
    rst $28
    jp hl


    cp $00
    nop
    nop
    nop
    nop

jr_027_4e2c:
    nop
    dec d
    ld [hl], b
    nop
    nop
    dec hl
    ld a, [de]
    daa
    inc e
    ld hl, $ef41
    rrca
    dec h
    ld e, $1a
    inc l
    ld e, $ef
    rst $28
    rst $28
    daa
    ld a, [de]
    ld h, $1e

jr_027_4e45:
    rst $28
    ld hl, $2622
    ld c, h
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28

jr_027_4e50:
    rst $28
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    dec d
    ld [hl], b
    nop
    nop
    ld [$ef2c], sp
    dec l
    ld hl, $2c22
    rst $28
    ld a, [de]
    dec h
    dec h
    rst $28
    rra
    jr z, jr_027_4e96

    rst $28
    dec l
    jr z, @+$1f

    ld a, [de]
    ld [hl-], a
    ld d, e
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


    cp $00
    nop
    nop
    nop
    nop
    nop
    dec d
    ld [hl], b
    nop
    nop
    inc l
    ld hl, $2922
    ld h, $1e
    daa
    dec l
    ld b, c
    rst $28
    ld [$ef2d], sp
    rst $28
    rst $28

jr_027_4e96:
    rst $28
    jr nc, jr_027_4ebb

    dec h
    dec h
    rst $28
    dec de
    ld e, $ef
    rst $28
    or a
    cp b
    cp c
    cp d
    cp e
    ld b, $e9
    cp $00
    nop
    nop
    nop
    nop
    nop
    dec d
    ld [hl], b
    nop
    nop
    inc de
    ld hl, $ef1e
    ld h, $28
    daa
    ld e, $32

jr_027_4ebb:
    rst $28
    jr nc, jr_027_4ee0

    dec h
    dec h
    rst $28
    rst $28
    dec de
    ld e, $ef
    dec l
    dec hl
    ld a, [de]
    daa
    inc l
    rra
    ld e, $2b
    dec hl
    ld e, $1d
    rst $28
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    dec d
    ld [hl], b
    nop
    nop
    dec l
    jr z, jr_027_4f06

jr_027_4ee0:
    jr z, @+$2d

    dec hl
    jr z, jr_027_4f15

    ld b, b
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    ld d, $1e
    dec h
    dec h
    adc [hl]
    rst $28
    inc l
    ld e, $1e
    rst $28
    ld [hl-], a
    jr z, jr_027_4f28

    ld b, b
    ld b, b
    rst $28
    rst $38
    nop
    nop
    nop
    nop
    nop

jr_027_4f03:
    nop
    dec d
    ld [hl], b

jr_027_4f06:
    nop
    nop
    inc de
    ld hl, $2b1e
    ld e, $ef
    ld [hl+], a
    inc l
    rst $28
    daa
    jr z, jr_027_4f03

    rst $28

jr_027_4f15:
    rst $28
    rst $28
    rst $28
    inc l
    ld hl, $2922
    ld h, $1e
    daa
    dec l
    rst $28
    dec l
    jr z, jr_027_4f41

    ld a, [de]
    ld [hl-], a
    ld b, c
    jp hl


jr_027_4f28:
    cp $00
    nop
    nop
    nop
    nop
    nop
    dec d
    ld [hl], b
    nop
    nop
    ld d, $1e
    dec h
    dec h
    adc [hl]
    rst $28
    inc l
    ld e, $1e
    rst $28
    ld [hl-], a
    jr z, jr_027_4f6e

    rst $28

jr_027_4f41:
    rst $28
    rst $28
    dec l
    jr z, jr_027_4f6c

    jr z, @+$2d

    dec hl
    jr z, jr_027_4f7b

    ld c, h
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    dec d
    ld [hl], b
    nop
    nop
    and b
    and c
    and d
    and e
    rst $28
    ld a, [de]
    dec hl
    ld e, $ef
    ld [hl-], a
    jr z, @+$30

    rst $28
    rst $28

jr_027_4f6c:
    rst $28
    rst $28

jr_027_4f6e:
    ld a, [de]
    dec h
    dec hl
    ld [hl+], a
    jr nz, jr_027_4f95

    dec l
    ld b, c
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28

jr_027_4f7b:
    rst $28
    rst $28
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    dec d
    ld [hl], b
    nop
    nop
    inc de
    ld hl, $2d1a
    rst $28
    ld e, $1a
    dec hl
    dec l
    ld hl, $2e2a

jr_027_4f95:
    ld a, [de]
    inc h
    ld e, $ef
    ld a, [de]
    rst $28
    dec h
    ld [hl+], a
    dec l
    dec l
    dec h
    ld e, $ef
    jr nc, jr_027_4fc5

    ld [hl+], a
    dec h
    ld e, $ef
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    dec d
    ld [hl], b
    nop
    nop
    ld a, [de]
    jr nz, jr_027_4fdf

    rst $28
    jr nc, jr_027_4fd4

    inc l
    rst $28
    ld hl, $202e
    ld e, $40
    rst $28
    rst $28
    rst $28
    rst $28

jr_027_4fc5:
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


jr_027_4fd4:
    cp $00
    nop
    nop
    nop
    nop
    nop

jr_027_4fdb:
    dec d
    ld [hl], b
    nop
    nop

jr_027_4fdf:
    ld d, $1a
    inc l
    rst $28
    ld a, [de]
    daa
    ld [hl-], a
    dec l
    ld hl, $2722
    jr nz, jr_027_4fdb

    rst $28
    rst $28
    rst $28
    dec e
    ld a, [de]
    ld h, $1a
    jr nz, jr_027_5013

    dec e
    rst $28
    dec de
    ld [hl-], a
    rst $28
    dec l
    ld hl, $ef1e
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    dec d
    ld [hl], b
    nop
    nop
    ld e, $1a
    dec hl
    dec l
    ld hl, $2e2a
    ld a, [de]
    inc h

jr_027_5013:
    ld e, $41
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    ld bc, $ef1e
    inc l
    ld l, $2b
    ld e, $ef
    dec l
    jr z, @-$0f

    rst $28
    rst $28
    rst $28
    rst $28
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    dec d
    ld [hl], b
    nop
    nop
    ld e, $31
    ld a, [de]
    ld h, $22
    daa
    ld e, $ef
    ld e, $2f
    ld e, $2b
    ld [hl-], a
    dec l
    ld hl, $2244
    daa
    jr nz, jr_027_5095

    rst $28
    ld b, $28
    jr z, @+$1f

    rst $28
    ld bc, $1e32
    ld c, h
    rst $28
    rst $28
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    dec d
    ld [hl], b
    nop
    nop
    rlca
    ld e, $25
    dec h
    jr z, jr_027_50b2

    rst $28

jr_027_5067:
    inc de
    jr z, @+$28

    jr z, jr_027_5097

    dec hl
    jr z, jr_027_509f

    rst $28
    ld h, $28
    dec hl
    daa
    ld [hl+], a
    daa
    jr nz, jr_027_5067

    jr nc, jr_027_5098

    rst $28
    ld a, [de]
    dec hl
    ld e, $ef
    jp hl


jr_027_5080:
    cp $00
    nop
    nop
    nop
    nop
    nop
    dec d
    ld [hl], b
    nop
    nop
    jr nz, jr_027_50b5

    ld [hl+], a
    daa
    jr nz, jr_027_5080

    jr z, jr_027_50ba

    rst $28
    ld a, [de]

jr_027_5095:
    rst $28
    rst $28

jr_027_5097:
    rst $28

jr_027_5098:
    rst $28
    rst $28
    rst $28
    add hl, hl
    ld [hl+], a
    inc e
    daa

jr_027_509f:
    ld [hl+], a
    inc e
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


    cp $00
    nop
    nop
    nop
    nop
    nop

jr_027_50b2:
    dec d
    ld [hl], b
    nop

jr_027_50b5:
    nop
    ld [bc], a
    jr z, jr_027_50e7

    dec h

jr_027_50ba:
    dec e
    rst $28
    jr nc, jr_027_50dc

    rst $28
    ld hl, $2f1a
    ld e, $ef
    ld [hl+], a
    dec l
    ld hl, $2b1e
    ld e, $41
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


    cp $01
    inc b
    ld b, $40
    ld c, h

jr_027_50dc:
    nop
    dec b
    ld [hl], c
    nop
    nop
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28

jr_027_50e7:
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
    jr jr_027_50f8

    ld [de], a
    rst $28
    rst $28
    rst $28

jr_027_50f8:
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    dec c
    ld c, $ef
    cp $00
    nop
    nop
    nop
    nop
    nop
    dec d
    ld [hl], b
    nop
    nop
    jr jr_027_5112

    nop
    rlca
    ld b, b
    rst $28

jr_027_5112:
    inc de
    ld hl, $2d1a
    rst $28
    ld [hl+], a
    inc l
    rst $28
    rst $28
    rst $28
    jr nz, @+$2d

    ld e, $1a
    dec l
    ld b, b
    rst $28
    ld d, $1e
    rst $28
    jr nc, jr_027_514a

    dec h
    dec h
    rst $28
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    dec d
    ld [hl], b
    nop
    nop
    ld hl, $2f1a
    ld e, $ef
    dec h
    jr z, jr_027_516c

    inc l
    rst $28
    jr z, jr_027_5162

    rst $28
    rst $28
    rst $28
    rst $28
    rra
    ld l, $27

jr_027_514a:
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
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    dec d
    ld [hl], b
    nop
    nop

jr_027_5162:
    ld de, $1a1e
    dec h
    dec h
    ld [hl-], a
    ld b, c
    rst $28

jr_027_516a:
    ld d, $21

jr_027_516c:
    ld [hl-], a
    ld c, h
    ld c, h
    ld c, h
    rst $28
    rst $28
    inc de
    ld hl, $2d1a
    ld d, e
    rst $28
    daa
    jr z, jr_027_516a

    rra
    ld l, $27
    ld b, b
    rst $28
    rst $28
    rst $28

jr_027_5182:
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    dec d
    ld [hl], b
    nop
    nop
    rlca
    ld e, $25
    dec h
    jr z, jr_027_5182

    and b
    and c
    and d
    and e
    ld c, h
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    ld [$21ef], sp
    jr z, jr_027_51cb

    ld e, $ef
    ld [hl-], a
    jr z, jr_027_51d5

    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    dec d
    ld [hl], b
    nop
    nop
    jr nc, jr_027_51d8

    dec hl
    ld e, $27
    ld c, e
    dec l
    rst $28
    dec l
    jr z, jr_027_51eb

    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    dec de
    ld l, $2c

jr_027_51cb:
    ld [hl-], a
    ld c, h
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28

jr_027_51d5:
    rst $28
    rst $28
    jp hl


jr_027_51d8:
    cp $00
    nop
    nop
    nop
    nop
    nop
    ld d, $71
    nop
    nop
    dec bc
    ld e, $2d
    ld d, e
    rst $28
    jr nz, jr_027_5212

    rst $28

jr_027_51eb:
    jr z, jr_027_5214

    rst $28
    dec l
    ld hl, $ef1e
    rst $28
    add hl, hl
    ld [hl+], a
    inc e
    daa
    ld [hl+], a
    inc e
    ld c, h
    ld c, h
    ld c, h
    rst $28
    and b
    and c
    and d
    and e
    rst $28
    rst $28
    cp $00
    nop
    nop
    nop
    nop
    nop
    dec d
    ld [hl], b
    nop
    nop
    rlca
    ld [hl+], a
    rst $28
    and b

jr_027_5212:
    and c
    and d

jr_027_5214:
    and e
    ld c, h
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    inc de
    ld hl, $2c22
    rst $28
    ld [hl+], a
    inc l
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    dec d
    ld [hl], b
    nop
    nop
    ld d, $22
    dec h
    dec e
    rst $28
    ld b, $2b
    ld a, [de]
    add hl, hl
    ld e, $ef
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    add hl, bc
    ld l, $22
    inc e
    ld e, $4c
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


    cp $00
    nop
    nop
    nop
    nop
    nop
    dec d
    ld [hl], b
    nop
    nop
    ld [$24ef], sp
    daa
    jr z, jr_027_529a

    rst $28
    dec l
    ld hl, $2c22
    rst $28
    ld [hl+], a
    inc l
    rst $28
    rst $28
    ld a, [de]
    rst $28
    dec h
    ld [hl+], a
    dec l
    dec l
    dec h
    ld e, $ef
    inc l
    jr nc, @+$20

    ld e, $2d
    adc [hl]
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    ld b, l
    ld [hl], c
    nop
    nop
    dec de
    ld l, $2d
    rst $28
    add hl, hl
    dec h
    ld e, $1a
    inc l
    ld e, $ef

jr_027_529a:
    ld hl, $2f1a
    ld e, $ef
    inc l
    jr z, jr_027_52c8

    ld e, $4c
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
    cp $00
    nop
    nop
    nop
    nop
    nop
    dec d
    ld [hl], b
    nop
    nop
    ld [$26ef], sp
    ld a, [de]
    dec e
    ld e, $ef
    dec l
    jr z, jr_027_52ec

    rst $28
    ld h, $1a
    daa

jr_027_52c8:
    ld [hl-], a
    rst $28
    inc e
    jr z, jr_027_52f5

    inc h
    ld [hl+], a
    ld e, $2c
    rst $28
    rra
    jr z, jr_027_5300

    rst $28
    dec l
    ld hl, $e91e
    cp $00
    nop
    nop
    nop
    nop
    nop
    dec d
    ld [hl], b
    nop
    nop
    rlca
    ld a, [de]
    dec hl
    cpl
    ld e, $2c
    dec l

jr_027_52ec:
    rst $28
    dec b
    ld e, $2c
    dec l
    ld [hl+], a
    cpl
    ld a, [de]
    dec h

jr_027_52f5:
    and b
    and c
    and d
    and e
    adc [hl]
    ld [$30ef], sp
    jr z, jr_027_532d

    dec h

jr_027_5300:
    dec e
    rst $28
    rst $28
    rst $28
    jp hl


    cp $00
    nop
    nop
    nop
    nop

jr_027_530b:
    nop
    ld a, a
    ld [hl], c
    nop
    nop
    dec h
    ld [hl+], a
    inc h
    ld e, $ef
    ld [hl-], a
    jr z, jr_027_5346

    rst $28
    dec l
    jr z, jr_027_530b

    ld hl, $2f1a
    ld e, $2d
    ld hl, $261e
    ld c, h
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28

jr_027_532d:
    rst $28
    rst $28
    rst $28
    cp $00
    nop
    nop
    nop
    nop
    nop
    dec d
    ld [hl], b
    nop
    nop
    ld c, $21
    rst $28
    dec c
    jr z, jr_027_5381

    rst $28
    rst $28
    rst $28
    rst $28
    rst $28

jr_027_5346:
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    ld c, $21
    rst $28
    dec c
    jr z, jr_027_5391

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


    cp $00
    nop
    nop
    nop
    nop
    nop
    dec d
    ld [hl], b
    nop
    nop
    inc c
    ld [hl-], a
    rst $28
    dec de
    ld [hl+], a
    dec hl
    dec e
    rst $28
    dec hl
    ld a, [de]
    daa
    rst $28
    ld a, [de]
    jr nc, jr_027_538f

    ld [hl-], a
    rrca
    dec h
    ld e, $1a
    inc l
    ld e, $ef
    ld hl, $251e
    add hl, hl

jr_027_5381:
    rst $28
    ld h, $1e
    rst $28
    jp hl


    cp $01
    inc bc
    dec b
    ld b, b
    ld c, h
    nop
    and d
    ld [hl], c

jr_027_538f:
    nop
    nop

jr_027_5391:
    rra
    ld [hl+], a
    daa
    dec e
    rst $28
    ld hl, $2622
    ld b, c
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    jr jr_027_53a8

    ld [de], a
    rst $28
    rst $28
    rst $28

jr_027_53a8:
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    dec c
    ld c, $ef
    cp $00
    nop
    nop
    nop
    nop
    nop
    dec d
    ld [hl], b
    nop
    nop
    inc de
    ld hl, $271a
    inc h
    rst $28
    jr jr_027_53ec

    ld l, $ef
    rrca
    dec h
    ld e, $1a
    inc l
    ld e, $25
    ld e, $2d
    rst $28
    ld h, $1e
    rst $28
    inc h
    daa
    jr z, jr_027_5407

    rst $28
    ld a, [de]
    inc l
    rst $28
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    dec d
    ld [hl], b
    nop
    nop
    inc l
    jr z, jr_027_5412

    daa
    rst $28

jr_027_53ec:
    ld a, [de]
    inc l
    rst $28
    ld [hl-], a
    jr z, jr_027_5420

    rst $28
    rra
    ld [hl+], a
    daa
    dec e
    ld hl, $2622
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

jr_027_5407:
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    dec d
    ld [hl], b
    nop
    nop

jr_027_5412:
    ld c, $21
    adc [hl]
    rst $28
    ld [$1def], sp
    ld [hl+], a
    dec e
    daa
    ld c, e
    dec l
    rst $28
    inc h

jr_027_5420:
    daa
    ld b, h
    jr z, @+$32

    rst $28
    ld [hl-], a
    jr z, jr_027_5456

    rst $28
    jr nc, jr_027_5449

    dec hl
    ld e, $ef
    rst $28
    rst $28
    rst $28
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    dec d
    ld [hl], b
    nop
    nop
    dec de
    ld l, $2c
    ld [hl-], a
    ld c, h
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28

jr_027_5449:
    rst $28
    rst $28
    rst $28
    rst $28
    ld [$1aef], sp
    ld h, $ef
    inc l
    jr z, jr_027_5480

    dec hl

jr_027_5456:
    ld [hl-], a
    ld c, h
    rst $28
    rst $28

jr_027_545a:
    rst $28
    rst $28
    rst $28
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    dec d
    ld [hl], b

jr_027_5466:
    nop
    nop
    inc bc
    jr z, jr_027_545a

    ld [hl-], a
    jr z, @+$30

    rst $28
    jr nc, jr_027_548b

    daa
    dec l
    rst $28
    dec l
    jr z, jr_027_5466

    rst $28
    dec de
    ld e, $ef
    rra
    dec hl
    ld e, $1e
    ld b, c

jr_027_5480:
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    jp hl


    cp $00
    nop

jr_027_548b:
    nop
    nop
    nop
    nop
    dec d
    ld [hl], b
    nop
    nop
    ld d, $1e
    dec h
    dec h
    adc [hl]
    rst $28
    dec l
    ld hl, $271a
    inc h
    rst $28
    ld [hl-], a
    jr z, jr_027_54d0

    rst $28
    rra
    jr z, @+$2d

    rst $28
    dec de
    ld e, $22
    daa
    jr nz, @-$0f

    jr nc, @+$24

    dec l
    ld hl, $e9ef
    cp $00
    nop
    nop
    nop
    nop
    nop
    jp c, $0071

    nop
    ld h, $1e
    adc [hl]
    rst $28
    jr nz, @+$2a

    rst $28
    ld a, [de]
    daa
    dec e
    rst $28
    dec de
    ld e, $ef
    rst $28
    rst $28
    rra
    dec hl

jr_027_54d0:
    ld e, $1e
    rst $28
    daa
    jr z, jr_027_5506

    ld c, h
    ld c, h
    ld c, h
    rst $28
    rst $28
    rst $28
    rst $28
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    db $db
    ld [hl], c
    nop
    nop
    ld b, $28
    jr z, @+$1f

    rst $28
    dec de
    ld [hl-], a
    ld e, $4c
    ld c, h
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

jr_027_5506:
    rst $28
    rst $28
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    and $71
    nop
    nop
    ld [$264b], sp
    rst $28
    daa
    jr z, jr_027_5548

    rst $28
    inc l
    ld a, [de]
    dec e
    ld c, h
    rst $28
    rst $28
    rst $28
    rst $28
    ld [$30ef], sp
    ld [hl+], a
    dec h
    dec h
    rst $28
    dec de
    ld e, $ef
    ld c, $0a
    ld c, h
    ld c, h
    ld c, h
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    dec d
    ld [hl], b
    nop
    nop
    inc de
    ld hl, $271a
    inc h
    rst $28
    ld [hl-], a

jr_027_5546:
    jr z, jr_027_5576

jr_027_5548:
    rst $28
    rra
    jr z, jr_027_5577

    rst $28
    rst $28
    rst $28
    ld hl, $251e
    add hl, hl
    ld [hl+], a
    daa
    jr nz, jr_027_5546

    ld h, $1e
    rst $28
    rra
    ld [hl+], a
    daa
    dec e
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    ld sp, hl
    ld [hl], c
    nop
    nop
    ld h, $32
    rst $28
    dec de
    ld [hl+], a
    dec hl
    dec e
    ld c, h
    ld c, h
    ld c, h
    rst $28
    rst $28

jr_027_5576:
    rst $28

jr_027_5577:
    rst $28
    rst $28
    rst $28
    ld d, $1e
    dec h
    dec h
    adc [hl]
    rst $28
    jr nz, jr_027_55aa

    jr z, @+$1f

    rst $28
    dec de
    ld [hl-], a
    ld e, $4c
    rst $28
    cp $00
    nop
    nop
    nop
    nop
    nop
    dec d
    ld [hl], b
    nop
    nop
    and b
    and c
    and d
    and e
    ld c, h
    rst $28
    inc de
    ld hl, $ef1e
    ld hl, $2b2e
    dec hl
    ld [hl+], a
    ld b, h
    inc e
    ld a, [de]
    daa
    ld e, $ef

jr_027_55aa:
    ld [hl-], a
    ld e, $2c
    dec l
    ld e, $2b
    dec e
    ld a, [de]
    ld [hl-], a
    rst $28
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    dec d
    ld [hl], b
    nop
    nop
    jr nc, jr_027_55dc

    inc l
    rst $28
    inc l
    dec l
    dec hl
    jr z, @+$29

    jr nz, jr_027_5617

    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    ld [$25ef], sp
    jr z, jr_027_5601

    dec l
    rst $28
    ld h, $32
    rst $28
    rst $28
    rst $28

jr_027_55dc:
    rst $28
    rst $28
    rst $28
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    dec d
    ld [hl], b
    nop
    nop
    jr nc, jr_027_560b

    ld a, [de]
    dec l

jr_027_55ef:
    ld hl, $2b1e
    rst $28
    cpl
    ld a, [de]
    ld [hl+], a
    daa
    rst $28
    dec e
    ld l, $44
    dec hl
    ld [hl+], a
    daa
    jr nz, jr_027_55ef

    dec l

jr_027_5601:
    ld hl, $ef1e
    inc l
    dec l
    jr z, @+$2d

    ld h, $8e
    jp hl


jr_027_560b:
    cp $00
    nop
    nop
    nop
    nop
    nop
    dec d
    ld [hl], b
    nop
    nop
    dec e

jr_027_5617:
    ld [hl+], a
    dec e
    rst $28
    ld [hl-], a
    jr z, jr_027_564b

    rst $28
    inc l
    ld e, $1e
    rst $28
    ld [hl+], a
    dec l
    ld b, c
    rst $28
    ld [$ef2d], sp
    ld h, $22
    jr nz, jr_027_564e

    dec l
    rst $28
    ld hl, $2f1a
    ld e, $ef
    rst $28
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    dec d
    ld [hl], b
    nop
    nop
    dec de
    ld e, $1e
    daa
    rst $28
    dec de
    dec h
    jr z, jr_027_567a

    daa

jr_027_564b:
    rst $28
    rst $28
    rst $28

jr_027_564e:
    rst $28
    rst $28
    rst $28
    inc l
    jr z, jr_027_567a

    ld e, $30
    ld hl, $2b1e
    ld e, $ef
    jr z, @+$29

    rst $28
    rst $28
    rst $28
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    dec d
    ld [hl], b
    nop
    nop
    ld [hl-], a
    jr z, jr_027_569d

    dec hl
    rst $28
    dec hl
    ld a, [de]
    daa
    inc e
    ld hl, $4c4c
    ld c, h
    rst $28

jr_027_567a:
    rst $28
    rst $28
    ld [bc], a
    jr z, jr_027_56ad

    dec h
    dec e
    rst $28
    ld [hl-], a
    jr z, jr_027_56b3

    rst $28
    ld hl, $251e
    add hl, hl
    rst $28
    jp hl


    cp $01
    rlca
    add hl, bc
    ld b, b
    ld c, h
    nop
    db $10
    ld [hl], d
    nop
    nop
    ld h, $1e
    rst $28
    rra
    ld [hl+], a
    daa

jr_027_569d:
    dec e
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
    jr jr_027_56ae

    ld [de], a
    rst $28
    rst $28

jr_027_56ad:
    rst $28

jr_027_56ae:
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28

jr_027_56b3:
    rst $28
    dec c
    ld c, $ef
    cp $00
    nop
    nop
    nop
    nop
    nop
    dec d
    ld [hl], b
    nop
    nop
    inc de
    ld hl, $271a
    inc h
    rst $28
    ld [hl-], a
    jr z, jr_027_56f9

    adc [hl]
    rst $28
    and b
    and c
    and d
    and e
    rst $28
    inc de
    ld hl, $2d1a
    ld d, e
    rst $28
    jr nc, jr_027_56fb

    ld [hl-], a
    rst $28
    ld [$efef], sp
    rst $28
    rst $28
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    dec d
    ld [hl], b
    nop
    nop
    dec h
    ld [hl+], a
    inc h
    ld e, $ef
    ld [hl-], a
    jr z, jr_027_5723

    rst $28
    and b
    and c
    and d

jr_027_56f9:
    and e
    ld c, h

jr_027_56fb:
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
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    dec d
    ld [hl], b
    nop
    nop
    ld d, $21
    ld a, [de]
    dec l
    ld b, b
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28

jr_027_5723:
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    ld [$30ef], sp
    ld a, [de]
    inc l
    rst $28
    ld a, [de]
    rst $28
    rra
    jr z, jr_027_575b

    dec h
    rst $28
    rst $28
    rst $28
    jp hl


    cp $00
    nop
    nop
    nop

jr_027_573d:
    nop
    nop
    dec d
    ld [hl], b
    nop
    nop
    rra
    jr z, jr_027_5771

    rst $28
    ld a, [de]
    inc l
    inc h
    ld [hl+], a
    daa
    jr nz, jr_027_573d

    ld [hl-], a
    jr z, jr_027_577f

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

jr_027_575b:
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    dec d
    ld [hl], b
    nop
    nop
    ld c, $21
    adc [hl]

jr_027_5771:
    rst $28
    dec e
    ld [hl+], a
    dec e
    rst $28
    ld [hl-], a
    jr z, jr_027_57a7

    rst $28
    rra
    ld [hl+], a
    daa
    dec e
    ld [hl+], a

jr_027_577f:
    dec l
    ld b, c
    rst $28
    ld b, $28
    jr z, jr_027_57a3

    rst $28
    inc hl
    jr z, jr_027_57a5

    ld c, h
    rst $28
    rst $28
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    dec d
    ld [hl], b
    nop
    nop
    inc de
    ld hl, $2c22
    rst $28
    ld [hl+], a
    inc l

jr_027_57a0:
    rst $28
    ld a, [de]
    rst $28

jr_027_57a3:
    rst $28
    rst $28

jr_027_57a5:
    rst $28
    rst $28

jr_027_57a7:
    rst $28
    rst $28
    ld h, $1e
    ld h, $1e
    daa
    dec l
    jr z, jr_027_57a0

    rra
    dec hl
    jr z, jr_027_57db

    rst $28
    rst $28
    rst $28
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    dec d
    ld [hl], b
    nop
    nop
    ld h, $32
    rst $28
    ld h, $28
    dec l
    ld hl, $2b1e
    ld c, h
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    ld [$ef2d], sp
    ld [hl+], a
    inc l
    rst $28
    cpl

jr_027_57db:
    ld e, $2b
    ld [hl-], a
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    dec d
    ld [hl], b

jr_027_57ed:
    nop
    nop
    inc l
    ld e, $27
    dec l
    ld [hl+], a
    ld h, $1e
    daa
    dec l
    ld a, [de]
    dec h
    rst $28
    dec l
    jr z, jr_027_57ed

    rst $28
    ld h, $1e
    adc [hl]
    rst $28
    ld a, [de]
    daa
    dec e
    rst $28
    ld [$1cef], sp
    jr z, jr_027_583a

    dec h
    dec e
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    dec d
    ld [hl], b
    nop
    nop
    daa
    jr z, jr_027_584a

    rst $28
    dec de
    ld e, $ef
    jr nc, jr_027_5845

    dec l
    ld hl, $2e28
    dec l
    rst $28
    rst $28
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
    jp hl


jr_027_583a:
    cp $00
    nop
    nop
    nop
    nop
    nop
    ld c, l
    ld [hl], d
    nop
    nop

jr_027_5845:
    inc de
    ld hl, $271a
    inc h

jr_027_584a:
    rst $28
    ld [hl-], a
    jr z, jr_027_587c

    rst $28
    ld a, [de]
    jr nz, jr_027_586c

    ld [hl+], a
    daa
    rst $28
    rra
    jr z, jr_027_5883

    rst $28
    ld [hl-], a
    jr z, jr_027_588a

    rst $28
    ld hl, $251e
    add hl, hl
    ld c, h
    rst $28
    rst $28
    rst $28
    cp $00
    nop
    nop
    nop
    nop
    nop

jr_027_586c:
    dec d
    ld [hl], b
    nop
    nop
    ld [$26ef], sp
    ld a, [de]
    dec e
    ld e, $ef
    ld a, [de]
    rst $28
    daa
    ld e, $30

jr_027_587c:
    rst $28
    inc h
    ld [hl+], a
    ld b, h
    daa
    dec e
    rst $28

jr_027_5883:
    jr z, jr_027_58a4

    rst $28
    rra
    dec hl
    ld l, $22

jr_027_588a:
    dec l
    rst $28
    rst $28
    rst $28
    rst $28
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    ld h, d
    ld [hl], c
    nop
    nop
    inc hl
    ld l, $22
    inc e
    ld e, $4c
    rst $28

jr_027_58a2:
    ld d, $28

jr_027_58a4:
    ld l, $25
    dec e
    rst $28
    ld [hl-], a
    jr z, jr_027_58d9

    dec h
    ld [hl+], a
    inc h
    ld e, $ef
    dec l
    jr z, jr_027_58a2

    dec l
    dec hl
    ld [hl-], a
    rst $28
    ld [hl+], a
    dec l
    ld b, c
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    dec d
    ld [hl], b
    nop
    nop
    ld [$ef2d], sp
    ld [hl+], a
    inc l
    rst $28
    ld h, $1a
    dec e
    ld e, $ef
    rra
    dec hl
    jr z, @+$28

    rst $28
    jr nc, @+$24

    dec h

jr_027_58d9:
    dec e
    rst $28
    jr nz, jr_027_5908

    ld a, [de]
    add hl, hl
    ld e, $2c
    adc [hl]
    rst $28
    rst $28
    rst $28
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    dec d
    ld [hl], b
    nop
    nop
    dec h
    ld e, $26
    jr z, jr_027_591d

    inc l
    adc [hl]
    rst $28
    ld hl, $2728
    ld e, $32
    adc [hl]
    rst $28
    rst $28
    ld a, [de]
    add hl, hl
    add hl, hl
    dec h
    ld e, $2c
    adc [hl]

jr_027_5908:
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    dec d
    ld [hl], b
    nop
    nop
    inc e

jr_027_591d:
    dec hl
    ld a, [de]
    daa
    dec de
    ld e, $2b
    dec hl
    ld [hl+], a
    ld e, $2c
    adc [hl]
    rst $28
    rra
    ld [hl+], a
    ld b, h
    jr nz, jr_027_595a

    adc [hl]
    rst $28
    inc h
    ld [hl+], a
    jr nc, @+$24

    inc l
    adc [hl]
    rst $28
    ld a, [de]
    daa
    dec e
    rst $28
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    dec d
    ld [hl], b
    nop
    nop
    dec h
    ld [hl+], a
    ld h, $1e
    inc l
    ld c, h
    rst $28
    ld d, $28
    ld l, $25
    dec e
    rst $28
    ld [hl-], a
    jr z, jr_027_5985

    dec h
    ld [hl+], a
    inc h

jr_027_595a:
    ld e, $ef
    ld a, [de]
    rst $28
    jr nz, jr_027_5985

    ld a, [de]
    inc l
    inc l
    rst $28
    jr z, jr_027_5985

    jp hl


    cp $01
    dec b
    add hl, bc
    ld b, b
    ld c, h
    nop
    ld l, c
    ld [hl], d
    nop
    nop
    inc hl
    ld l, $22
    inc e
    ld e, $41
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
    jr jr_027_5989

jr_027_5985:
    ld [de], a
    rst $28
    rst $28
    rst $28

jr_027_5989:
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    dec c
    ld c, $ef
    cp $00
    nop
    nop
    nop
    nop
    nop
    dec d
    ld [hl], b
    nop
    nop
    ld c, $21
    rst $28
    inc de
    ld hl, $271a
    inc h
    rst $28
    ld [hl-], a
    jr z, jr_027_59d7

    adc [hl]

jr_027_59aa:
    rst $28
    ld [$30ef], sp
    ld a, [de]
    inc l
    rst $28
    jr nc, @+$2a

    daa
    dec e
    ld e, $2b
    ld [hl+], a
    daa
    jr nz, jr_027_59aa

    rst $28
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    dec d
    ld [hl], b
    nop
    nop
    ld hl, $3028
    rst $28
    ld [hl+], a
    dec l
    rst $28
    jr nc, @+$2a

    ld l, $25
    dec e
    rst $28
    dec l
    ld a, [de]

jr_027_59d7:
    ld b, h
    inc l
    dec l
    ld e, $4c
    rst $28
    ld [$ef2d], sp
    jr nc, jr_027_5a04

    dec h
    dec h
    rst $28
    dec de
    ld e, $e9
    cp $00
    nop
    nop
    nop
    nop
    nop
    dec d
    ld [hl], b
    nop
    nop
    ld [hl+], a
    daa
    rst $28
    dec l
    ld hl, $ef1e
    inc l
    dec l
    jr z, jr_027_5a29

    ld e, $2c
    rst $28
    rst $28
    rst $28
    inc l

jr_027_5a04:
    jr z, jr_027_5a2e

    daa
    adc [hl]
    rst $28
    add hl, hl
    dec h
    ld e, $1a
    inc l
    ld e, $ef
    rst $28
    rst $28
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    dec d
    ld [hl], b
    nop
    nop
    dec h
    jr z, jr_027_5a49

    inc h
    rst $28
    rra
    jr z, jr_027_5a51

    rst $28
    ld [hl+], a
    dec l

jr_027_5a29:
    ld c, h
    rst $28
    rst $28
    rst $28
    rst $28

jr_027_5a2e:
    rlca
    ld a, [de]
    rst $28
    ld hl, $ef1a
    ld hl, $4c1a
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    dec d
    ld [hl], b
    nop
    nop

jr_027_5a49:
    rlca
    ld l, $21
    adc [hl]
    rst $28
    dec hl
    ld e, $1a

jr_027_5a51:
    dec h
    dec h
    ld [hl-], a
    ld b, c
    rst $28
    ld [$ef2c], sp
    ld [hl+], a
    dec l
    rst $28
    inc l
    dec l
    dec hl
    ld a, [de]
    daa
    jr nz, jr_027_5a81

    ld c, h
    ld c, h
    ld c, h
    rst $28
    rst $28
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    dec d
    ld [hl], b
    nop
    nop
    ld [$2def], sp
    ld hl, $2e28
    jr nz, jr_027_5a9d

    dec l
    rst $28
    ld [hl+], a
    dec l
    rst $28

jr_027_5a81:
    jr nc, @+$2a

    ld b, h
    ld l, $25
    dec e
    rst $28
    dec l
    ld a, [de]
    inc l
    dec l
    ld e, $ef
    jr nz, jr_027_5ab8

    jr z, jr_027_5aaf

    adc [hl]
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    dec d
    ld [hl], b

jr_027_5a9d:
    nop
    nop
    dec de
    ld l, $2d
    rst $28
    dec l
    ld hl, $271a
    inc h
    rst $28
    ld [hl-], a
    jr z, jr_027_5ada

    rst $28
    rst $28
    rst $28

jr_027_5aaf:
    ld a, [de]
    daa
    ld [hl-], a
    jr nc, jr_027_5ace

    ld [hl-], a
    ld c, h
    rst $28
    rst $28

jr_027_5ab8:
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    dec d
    ld [hl], b
    nop
    nop
    ld [$30ef], sp
    ld [hl+], a

jr_027_5ace:
    dec h
    dec h
    rst $28
    dec l
    dec hl
    ld [hl-], a
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28

jr_027_5ada:
    ld a, [de]
    jr nz, jr_027_5af7

    ld [hl+], a
    daa
    ld c, h
    ld c, h
    ld c, h
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    dec d
    ld [hl], b
    nop
    nop
    jr jr_027_5b1f

jr_027_5af7:
    ld l, $ef
    jr nc, jr_027_5b23

    dec hl
    inc h
    rst $28
    ld hl, $2b1a
    dec e
    rst $28
    rst $28
    rst $28
    ld e, $2f
    ld e, $2b
    ld [hl-], a
    dec e
    ld a, [de]
    ld [hl-], a
    adc [hl]
    and b
    and c
    and d
    and e

jr_027_5b12:
    ld c, h
    rst $28
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    dec d
    ld [hl], b
    nop

jr_027_5b1f:
    nop
    inc bc
    jr z, jr_027_5b12

jr_027_5b23:
    ld [hl-], a
    jr z, jr_027_5b54

    rst $28
    ld hl, $2f1a
    ld e, $ef
    ld a, [de]
    rst $28
    rst $28
    rst $28
    ld d, $1a
    dec l
    ld e, $2b
    rst $28
    ld [bc], a
    ld a, [de]
    daa
    ld b, c
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    dec d
    ld [hl], b
    nop
    nop
    ld [$1cef], sp
    ld a, [de]
    daa
    rst $28
    ld h, $1a
    inc h

jr_027_5b54:
    ld e, $ef
    ld a, [de]
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
    rst $28
    dec de
    ld [hl-], a
    rst $28
    rst $28
    rst $28
    jp hl


    cp $00
    nop
    nop

jr_027_5b6f:
    nop
    nop
    nop
    dec d
    ld [hl], b
    nop
    nop
    ld h, $28
    dec e
    ld [hl+], a
    rra
    ld [hl-], a
    ld [hl+], a
    daa
    jr nz, jr_027_5b6f

    ld a, [de]
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    jr nc, @+$1c

    dec l
    ld e, $2b
    rst $28
    inc e
    ld a, [de]
    daa
    ld c, h
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    dec d
    ld [hl], b
    nop

jr_027_5ba0:
    nop
    ld [$27ef], sp
    ld e, $1e
    dec e
    rst $28
    dec sp
    dec e
    ld a, [de]
    ld [hl-], a
    inc l
    rst $28
    dec l
    jr z, jr_027_5ba0

    inc e
    jr z, jr_027_5bda

    add hl, hl
    dec h
    ld e, $2d
    ld e, $ef
    dec l
    ld hl, $ef1e
    rst $28
    rst $28
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    dec d
    ld [hl], b
    nop
    nop
    inc l
    add hl, hl
    dec hl
    ld [hl+], a
    daa
    inc h
    dec h
    ld e, $2b
    ld c, h
    rst $28
    inc c
    ld a, [de]
    inc h

jr_027_5bda:
    ld e, $ef
    inc l
    ld l, $2b
    ld e, $ef
    ld [hl-], a
    jr z, jr_027_5c12

    rst $28
    inc e
    jr z, jr_027_5c0e

    ld e, $ef
    rst $28
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    dec d
    ld [hl], b
    nop
    nop
    ld a, [de]
    daa
    dec e
    rst $28
    dec de
    ld l, $32
    rst $28
    jr z, jr_027_5c28

    ld e, $4c
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

jr_027_5c0e:
    rst $28
    rst $28
    rst $28
    rst $28

jr_027_5c12:
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    dec d
    ld [hl], b
    nop
    nop
    rlca
    ld e, $32
    ld b, b
    ld b, b
    rst $28

jr_027_5c28:
    and b
    and c
    and d
    and e
    ld c, h
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    ld [de], a
    jr z, @-$0f

    dec l
    ld hl, $2c22
    rst $28
    ld [hl+], a
    inc l
    rst $28
    dec l
    ld hl, $ef1e
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    dec d
    ld [hl], b
    nop
    nop
    ld hl, $2e28
    inc l
    ld e, $ef
    ld [hl-], a
    jr z, jr_027_5c84

    rst $28
    jr nc, jr_027_5c73

    daa
    dec l
    rst $28
    rst $28
    dec l
    jr z, @-$0f

    ld e, $31
    add hl, hl
    ld a, [de]
    daa
    dec e
    ld c, h
    ld c, h
    ld c, h
    rst $28
    rst $28
    rst $28
    jp hl


    cp $00
    nop
    nop
    nop
    nop

jr_027_5c73:
    nop
    dec d
    ld [hl], b
    nop
    nop
    ld d, $1e
    dec h
    dec h
    ld c, h
    ld c, h
    ld c, h
    ld [hl-], a
    jr z, jr_027_5cb0

    rst $28
    daa

jr_027_5c84:
    ld e, $1e
    dec e
    rst $28
    add sp, -$05
    ld [$06eb], a
    rst $28
    ld a, [de]
    daa
    dec e
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    dec d
    ld [hl], b
    nop
    nop
    rst $28
    push hl
    and $e7
    ld h, $1a
    dec l
    ld e, $2b
    ld [hl+], a
    ld a, [de]
    dec h
    inc l

jr_027_5cb0:
    rst $28
    rst $28
    rst $28
    ld [de], a
    ld hl, $251a
    dec h
    rst $28
    ld [$1eef], sp
    ld sp, $1a29
    daa
    dec e
    rst $28
    jp hl


    cp $01
    dec b
    ld a, [bc]
    ld b, b
    ld c, h
    nop
    xor c
    ld [hl], d
    nop
    nop
    dec l
    ld hl, $ef1e
    ld hl, $2e28
    inc l
    ld e, $41
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    jr jr_027_5ce5

    ld [de], a
    rst $28
    rst $28
    rst $28

jr_027_5ce5:
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    dec c
    ld c, $ef
    cp $00
    nop
    nop
    nop
    nop
    nop
    dec d
    ld [hl], b
    nop
    nop
    nop
    dec h
    dec hl
    ld [hl+], a
    jr nz, jr_027_5d20

    dec l
    ld b, b
    rst $28
    ld [$ef2d], sp
    jr nc, @+$24

    dec h
    dec h
    dec l
    ld a, [de]
    inc h
    ld e, $ef
    ld h, $1e
    rst $28
    scf
    dec e
    ld a, [de]
    ld [hl-], a
    inc l

jr_027_5d16:
    rst $28
    rst $28
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop

jr_027_5d20:
    dec d
    ld [hl], b
    nop
    nop
    dec l
    jr z, jr_027_5d16

    inc e
    jr z, @+$28

jr_027_5d2a:
    add hl, hl
    dec h
    ld e, $2d
    ld e, $8e
    rst $28
    inc l
    dec l
    ld b, h
    ld a, [de]
    dec hl
    dec l
    ld [hl+], a
    daa
    jr nz, jr_027_5d2a

    dec l
    jr z, jr_027_5d64

    jr z, @+$2d

    dec hl
    jr z, jr_027_5d73

    ld c, h
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    dec d
    ld [hl], b
    nop
    nop
    ld d, $1a
    ld [hl+], a
    dec l
    rst $28
    jr z, @+$29

    ld e, $ef
    ld h, $22
    daa
    ld l, $2d
    ld e, $40
    jr @+$2a

    ld l, $ef
    dec e

jr_027_5d64:
    jr z, jr_027_5d8d

    ld c, e
    dec l
    rst $28
    ld hl, $2f1a
    ld e, $ef
    jp hl


    cp $00
    nop
    nop

jr_027_5d73:
    nop
    nop
    nop

jr_027_5d76:
    dec d
    ld [hl], b
    nop
    nop
    ld e, $27
    jr z, jr_027_5dac

    jr nz, jr_027_5da1

    rst $28
    dec l
    jr z, jr_027_5d73

    dec e
    jr z, jr_027_5d76

    dec l
    ld hl, $231e
    jr z, jr_027_5da8

jr_027_5d8d:
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


    cp $00
    nop
    nop
    nop
    nop
    nop

jr_027_5da1:
    dec d
    ld [hl], b
    nop
    nop
    ld [$ef2d], sp

jr_027_5da8:
    inc e
    ld a, [de]
    daa
    ld c, e

jr_027_5dac:
    dec l
    rst $28
    dec de
    ld e, $ef
    dec e
    jr z, jr_027_5ddb

    ld e, $27
    jr z, jr_027_5de8

    ld c, h
    rst $28
    ld [de], a
    ld e, $1e
    rst $28
    ld [hl-], a
    ld a, [de]
    ld c, h
    rst $28
    rst $28
    rst $28
    rst $28
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    dec d
    ld [hl], b
    nop
    nop
    ld c, $21
    adc [hl]
    rst $28
    ld [$2cef], sp
    ld e, $1e
    ld c, h
    rst $28

jr_027_5ddb:
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    ld bc, $1e32
    rst $28
    dec l
    ld hl, $271e

jr_027_5de8:
    ld c, h
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    dec d
    ld [hl], b
    nop
    nop
    and b
    and c
    and d
    and e
    ld c, h
    ld c, h
    ld c, h
    rst $28
    rlca
    ld a, [de]
    cpl
    ld e, $ef
    ld [hl-], a
    jr z, jr_027_5e39

    inc l
    ld e, $1e
    daa
    rst $28
    dec c
    ld [hl+], a
    daa
    ld a, [de]
    ld b, c
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    dec d
    ld [hl], b
    nop
    nop
    ld [de], a
    ld hl, $ef1e
    ld hl, $2c1a
    daa
    ld c, e
    dec l
    rst $28
    inc e
    jr z, jr_027_5e5a

    ld e, $ef
    dec de
    ld a, [de]
    inc e

jr_027_5e39:
    inc h
    rst $28
    ld hl, $2628
    ld e, $ef
    inc l
    ld [hl+], a
    daa
    inc e
    ld e, $e9
    cp $00
    nop
    nop
    nop
    nop
    nop
    dec d
    ld [hl], b
    nop
    nop
    ld [hl-], a
    ld e, $2c
    dec l
    ld e, $2b
    dec e
    ld a, [de]
    ld [hl-], a

jr_027_5e5a:
    ld c, h
    ld c, h
    ld c, h
    rst $28
    rst $28
    rst $28
    rst $28
    ld [$24ef], sp
    daa
    jr z, jr_027_5e97

    rst $28
    ld [hl-], a
    jr z, @+$30

    rst $28
    ld a, [de]
    dec hl
    ld e, $ef
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    dec d
    ld [hl], b
    nop
    nop
    dec de
    ld l, $2c
    ld [hl-], a
    adc [hl]
    rst $28
    dec de
    ld l, $2d
    rst $28
    inc e
    jr z, jr_027_5eb7

    dec h
    dec e
    rst $28
    ld [hl-], a
    jr z, jr_027_5ebd

    rst $28
    add hl, hl
    dec h
    ld e, $1a
    inc l
    ld e, $ef

jr_027_5e97:
    ld hl, $251e
    add hl, hl
    jp hl


    cp $01
    dec b
    ld [$4c40], sp
    nop
    ld h, a
    ld [hl], e
    nop
    nop
    rra
    ld [hl+], a
    daa
    dec e
    rst $28
    ld hl, $2b1e
    ld c, h
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28

jr_027_5eb7:
    rst $28
    jr jr_027_5ebe

    ld [de], a
    rst $28
    rst $28

jr_027_5ebd:
    rst $28

jr_027_5ebe:
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    dec c
    ld c, $ef
    cp $00
    nop
    nop
    nop
    nop
    nop
    dec d
    ld [hl], b
    nop
    nop
    ld [$30ef], sp
    ld [hl+], a
    dec h
    dec h
    rst $28
    jr nz, jr_027_5f03

    rst $28
    inc e
    ld hl, $1c1e
    inc h
    rst $28
    ld hl, $2b1e
    rst $28
    ld hl, $2e28
    inc l
    ld e, $4c
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    dec d
    ld [hl], b
    nop
    nop
    and b
    and c
    and d
    and e
    adc [hl]
    rst $28

jr_027_5f03:
    inc e
    jr z, jr_027_5f34

    dec h
    dec e
    rst $28
    ld [hl-], a
    jr z, jr_027_5f3a

    rst $28
    inc e
    ld hl, $1c1e
    inc h
    rst $28
    ld a, [de]
    dec hl
    jr z, jr_027_5f45

    daa
    dec e
    rst $28
    rst $28
    rst $28
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    dec d
    ld [hl], b
    nop
    nop
    ld [hl-], a
    jr z, jr_027_5f59

    dec hl
    rst $28
    dec hl
    ld a, [de]
    daa
    inc e
    ld hl, $4c4c

jr_027_5f34:
    ld c, h
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28

jr_027_5f3a:
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

jr_027_5f45:
    rst $28
    rst $28
    rst $28
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    dec d
    ld [hl], b
    nop
    nop
    and b
    and c
    and d
    and e
    adc [hl]
    rst $28

jr_027_5f59:
    ld [hl+], a
    inc l
    rst $28
    ld [hl-], a
    jr z, jr_027_5f8d

    dec hl
    rst $28
    rst $28
    rst $28
    dec hl
    ld a, [de]
    daa
    inc e
    ld hl, $30ef
    jr z, jr_027_5f97

    inc h
    rst $28
    ld h, $28
    dec hl
    ld e, $e9
    cp $00
    nop
    nop
    nop
    nop
    nop
    dec d
    ld [hl], b
    nop
    nop
    ld [hl+], a
    ld h, $29
    jr z, jr_027_5fae

    dec l
    ld a, [de]
    daa
    dec l
    ld b, c
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28

jr_027_5f8d:
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

jr_027_5f97:
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    dec d
    ld [hl], b
    nop
    nop
    ld [$2cef], sp
    ld e, $1e

jr_027_5fae:
    ld c, h
    ld c, h
    ld c, h
    dec l
    ld hl, $271e
    rst $28
    jr nc, jr_027_5fd9

    ld [hl-], a
    dec e
    jr z, jr_027_5fe3

    ld c, e
    dec l
    rst $28
    ld [hl-], a
    jr z, jr_027_5ff0

    rst $28
    jr nz, jr_027_5fed

    rst $28
    rst $28
    rst $28
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    dec d
    ld [hl], b
    nop
    nop
    dec h
    ld a, [de]
    ld [hl-], a
    rst $28
    ld a, [de]

jr_027_5fd9:
    daa
    rst $28
    ld e, $20
    jr nz, jr_027_601f

    rst $28
    rst $28
    rst $28
    rst $28

jr_027_5fe3:
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

jr_027_5fed:
    rst $28
    rst $28
    rst $28

jr_027_5ff0:
    rst $28
    rst $28
    rst $28
    rst $28
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    dec d
    ld [hl], b
    nop
    nop
    and b
    and c
    and d
    and e
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
    inc e
    ld a, [de]
    daa
    rst $28
    ld [$29ef], sp
    dec h
    ld e, $1a
    inc l
    ld e, $ef
    rst $28
    rst $28
    jp hl


jr_027_601f:
    cp $00
    nop
    nop
    nop
    nop
    nop
    dec d
    ld [hl], b
    nop
    nop
    inc l
    dec l
    ld a, [de]
    ld [hl-], a
    rst $28
    ld a, [de]
    dec l
    rst $28
    ld [hl-], a
    jr z, jr_027_6063

    dec hl
    rst $28
    rst $28
    rst $28
    rst $28
    dec hl
    ld a, [de]
    daa
    inc e
    ld hl, $efef
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    jp hl


    cp $01
    inc bc
    dec b
    ld b, b
    ld c, h
    nop
    ld a, b
    ld [hl], e
    nop
    nop
    rra
    jr z, @+$2d

    rst $28
    ld a, [de]
    rst $28
    jr nc, jr_027_607e

    ld [hl+], a
    dec h
    ld e, $41
    rst $28
    rst $28

jr_027_6063:
    rst $28
    rst $28
    rst $28
    jr jr_027_606c

    ld [de], a
    rst $28
    rst $28
    rst $28

jr_027_606c:
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    dec c
    ld c, $ef
    cp $00
    nop
    nop
    nop
    nop
    nop
    dec d
    ld [hl], b

jr_027_607e:
    nop
    nop
    inc de
    ld hl, $271a
    inc h
    rst $28
    ld [hl-], a
    jr z, jr_027_60b7

    rst $28
    cpl
    ld e, $2b
    ld [hl-], a
    rst $28
    rst $28
    ld h, $2e
    inc e
    ld hl, $1fef
    jr z, jr_027_60c3

    rst $28
    ld [hl-], a
    jr z, jr_027_60ca

    dec hl
    rst $28
    rst $28
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    dec d
    ld [hl], b
    nop
    nop
    inc h
    ld [hl+], a
    daa
    dec e
    daa
    ld e, $2c
    inc l
    ld c, h
    rst $28
    rst $28
    rst $28

jr_027_60b7:
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

jr_027_60c3:
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28

jr_027_60ca:
    rst $28
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    dec d
    ld [hl], b
    nop
    nop
    ld de, $1a1e
    dec h
    dec h
    ld [hl-], a
    ld b, c
    rst $28
    ld [$2cef], sp
    ld e, $1e
    ld c, h
    rst $28
    rst $28
    ld [$264b], sp
    rst $28
    inc l
    jr z, jr_027_6118

    dec hl
    ld [hl-], a
    adc [hl]
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    dec d
    ld [hl], b
    nop
    nop
    ld [$1aef], sp
    inc l
    inc h
    ld e, $1d
    rst $28
    rra
    jr z, jr_027_6137

    rst $28
    dec l
    jr z, @+$2a

    rst $28
    ld h, $2e
    inc e
    ld hl, $ef4c
    rst $28

jr_027_6118:
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    dec d
    ld [hl], b
    nop
    nop
    ld [$24ef], sp
    daa
    jr z, jr_027_6162

    rst $28
    dec hl
    ld a, [de]
    daa
    inc e

jr_027_6137:
    ld hl, $30ef
    jr z, jr_027_6180

    dec hl
    inc h
    rst $28
    ld [hl+], a
    inc l
    rst $28
    dec e
    ld [hl+], a
    rra
    rra
    ld [hl+], a
    inc e
    ld l, $25
    dec l
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    dec d
    ld [hl], b
    nop
    nop
    dec de
    ld l, $2d
    rst $28
    inc h
    ld e, $1e
    add hl, hl
    rst $28
    ld l, $29

jr_027_6162:
    rst $28
    dec l
    ld hl, $ef1e
    jr nz, jr_027_6191

jr_027_6169:
    jr z, jr_027_6188

    rst $28
    jr nc, @+$2a

    dec hl
    inc h
    ld c, h
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    dec d
    ld [hl], b

jr_027_6180:
    nop
    nop
    inc c
    ld a, [de]
    dec hl
    ld [hl+], a
    ld a, [de]
    adc [hl]

jr_027_6188:
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28

jr_027_6191:
    rst $28
    ld [$1aef], sp
    ld h, $ef
    inc l
    jr z, jr_027_61c5

    dec hl
    ld [hl-], a
    ld c, h
    rst $28
    rst $28
    rst $28
    rst $28
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    dec d
    ld [hl], b
    nop
    nop
    rrca
    dec h
    ld e, $1a
    inc l
    ld e, $ef
    inc e
    jr z, @+$28

    ld e, $ef
    rst $28
    rst $28
    rst $28
    rst $28
    dec de
    ld a, [de]
    inc e
    inc h
    ld c, h
    rst $28
    rst $28
    rst $28

jr_027_61c5:
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    dec d
    ld [hl], b
    nop
    nop
    dec c
    jr z, jr_027_6169

    rst $28
    ld [$1aef], sp
    ld h, $ef
    daa
    jr z, jr_027_6211

    rst $28
    rst $28
    rst $28
    rst $28
    dec hl
    ld e, $1a
    dec e
    ld [hl-], a
    rst $28
    dec l
    jr z, @-$0f

    jr nz, jr_027_6211

    dec l
    rst $28
    rst $28
    rst $28
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    dec d
    ld [hl], b
    nop
    nop
    ld h, $1a
    dec hl
    dec hl
    ld [hl+], a
    ld e, $1d
    rst $28
    ld [hl-], a
    ld e, $2d
    ld c, h
    rst $28
    rst $28

jr_027_6211:
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


    cp $00
    nop
    nop
    nop
    nop
    nop
    dec d
    ld [hl], b
    nop
    nop
    ld d, $21

jr_027_6230:
    ld [hl-], a
    ld b, c
    rst $28
    inc de
    ld hl, $2b1e
    ld e, $ef
    ld [hl+], a
    inc l
    rst $28
    rst $28
    rst $28
    daa
    jr z, jr_027_6230

    jr z, @+$29

    ld e, $ef
    dec de

jr_027_6246:
    ld e, $2d
    dec l
    ld e, $2b
    rst $28
    rst $28
    jp hl


    cp $00
    nop
    nop
    nop
    nop

jr_027_6254:
    nop
    dec d
    ld [hl], b
    nop
    nop
    dec l
    ld hl, $271a
    rst $28
    ld hl, $2622
    rst $28
    dec l
    jr z, jr_027_6254

    rst $28
    rst $28
    rst $28
    rst $28
    ld h, $1a
    dec hl
    dec hl
    ld [hl-], a
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

jr_027_6278:
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    dec d
    ld [hl], b
    nop
    nop
    ld [$1def], sp
    jr z, jr_027_6278

    daa
    jr z, jr_027_62b9

    rst $28
    dec h
    ld [hl+], a
    inc h
    ld e, $ef
    rst $28
    rst $28
    ld [hl-], a
    jr z, jr_027_62c5

    dec hl
    rst $28
    jr nc, jr_027_62b5

    ld [hl-], a
    rst $28
    jr z, jr_027_62be

    rst $28
    rst $28
    rst $28
    rst $28
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    dec d
    ld [hl], b
    nop
    nop
    dec l
    ld hl, $2722
    inc h
    ld [hl+], a

jr_027_62b5:
    daa
    jr nz, jr_027_6246

    rst $28

jr_027_62b9:
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28

jr_027_62be:
    rst $28
    rra
    ld a, [de]
    dec l
    ld hl, $2b1e

jr_027_62c5:
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


    cp $00
    nop
    nop
    nop
    nop
    nop
    dec d
    ld [hl], b
    nop
    nop
    inc c
    ld a, [de]
    dec hl
    ld [hl+], a
    ld a, [de]
    adc [hl]
    rst $28
    inc e
    jr z, jr_027_630a

    ld e, $ef
    dec de
    ld a, [de]
    inc e
    inc h
    ld hl, $2628
    ld e, $ef
    ld a, [de]
    daa
    dec e
    rst $28
    jr nc, jr_027_6313

    rst $28
    rst $28
    rst $28
    rst $28
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    sub e
    ld [hl], e
    nop
    nop
    jr nc, jr_027_6329

    dec h
    dec h
    rst $28

jr_027_630a:
    dec e
    ld [hl+], a
    inc l
    inc e
    ld l, $2c
    inc l
    rst $28
    ld [hl+], a

jr_027_6313:
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
    jp hl


    rst $38
    nop
    nop
    nop

jr_027_6329:
    nop
    nop
    nop
    dec d
    ld [hl], b
    nop
    nop
    and b
    and c
    and d
    and e
    adc [hl]

jr_027_6335:
    rst $28
    ld [$30ef], sp
    ld [hl+], a
    dec h
    dec h
    rst $28
    dec de
    ld e, $ef
    jr nz, jr_027_636a

    ld [hl+], a
    daa
    jr nz, jr_027_6335

    ld hl, $2628
    ld e, $ef
    daa
    jr z, jr_027_637e

    ld c, h
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    dec d
    ld [hl], b
    nop
    nop
    inc de
    ld hl, $271a
    inc h
    rst $28
    ld [hl-], a
    jr z, jr_027_6392

    rst $28
    cpl
    ld e, $2b
    ld [hl-], a
    rst $28

jr_027_636a:
    rst $28
    ld h, $2e
    inc e
    ld hl, $1fef
    jr z, jr_027_639e

    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    jp hl


    cp $00

jr_027_637d:
    nop

jr_027_637e:
    nop
    nop
    nop
    nop
    or e
    ld [hl], e
    nop
    nop
    dec h
    ld e, $2d
    dec l
    ld [hl+], a
    daa
    jr nz, jr_027_637d

    ld h, $1e
    rst $28
    inc l

jr_027_6392:
    dec l
    ld a, [de]
    ld [hl-], a
    rst $28
    ld a, [de]
    dec l
    rst $28
    ld [hl-], a
    jr z, jr_027_63ca

    dec hl
    rst $28

jr_027_639e:
    dec hl
    ld a, [de]
    daa
    inc e
    ld hl, $ef4c
    rst $28
    cp $00
    nop
    nop
    nop
    nop
    nop
    dec d
    ld [hl], b
    nop
    nop
    inc c
    ld [hl-], a
    rst $28
    jr nz, jr_027_63e1

jr_027_63b6:
    ld a, [de]
    daa
    dec e
    ld h, $1a
    rst $28
    dec l
    jr z, jr_027_63e4

    dec e
    rst $28
    ld h, $1e
    rst $28
    dec l
    jr z, jr_027_63b6

    dec de
    ld l, $32

jr_027_63ca:
    rst $28
    ld a, [de]
    daa
    rst $28
    rst $28
    rst $28
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    dec d
    ld [hl], b
    nop
    nop
    ld e, $20
    jr nz, jr_027_642c

    rst $28

jr_027_63e1:
    ld [bc], a
    jr z, jr_027_6412

jr_027_63e4:
    dec h
    dec e
    rst $28
    ld [hl-], a
    jr z, jr_027_6418

    rst $28
    rst $28
    add hl, hl
    dec h
    ld e, $1a
    inc l
    ld e, $ef
    inc l
    ld e, $25
    dec h
    rst $28
    ld h, $1e
    rst $28
    jp hl


    cp $01
    nop
    inc bc
    ld b, b
    ld c, h
    nop
    dec [hl]
    ld [hl], h
    nop
    nop
    ld a, [de]
    daa
    rst $28
    ld e, $20
    jr nz, jr_027_644f

    rst $28
    rst $28
    rst $28
    rst $28

jr_027_6412:
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28

jr_027_6418:
    jr jr_027_641e

    ld [de], a
    rst $28
    rst $28
    rst $28

jr_027_641e:
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    dec c
    ld c, $ef
    cp $00
    nop
    nop
    nop

jr_027_642c:
    nop
    nop
    dec d
    ld [hl], b
    nop
    nop
    ld c, $21
    rst $28
    daa
    jr z, jr_027_6478

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
    inc c
    ld [hl-], a
    rst $28
    jr nz, jr_027_6472

    ld a, [de]
    daa
    dec e
    ld h, $1a
    rst $28
    jr nc, jr_027_6471

jr_027_644f:
    dec h
    dec h
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    dec d
    ld [hl], b
    nop
    nop
    dec de
    ld e, $ef
    ld a, [de]
    daa
    jr nz, jr_027_648f

    ld [hl-], a
    rst $28
    jr nc, @+$24

    dec l
    ld hl, $efef
    rst $28
    ld h, $1e
    ld b, b
    ld b, b

jr_027_6471:
    rst $28

jr_027_6472:
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28

jr_027_6478:
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    dec d
    ld [hl], b
    nop
    nop
    rlca
    ld e, $2b
    ld e, $ef
    ld [hl+], a
    inc l

jr_027_648f:
    rst $28
    dec sp
    add hl, sp
    ld b, $ef
    rra
    jr z, jr_027_64c2

    rst $28
    dec l
    ld hl, $ef1e
    ld e, $20
    jr nz, jr_027_64ec

    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    adc b
    ld [hl], h
    nop
    nop
    inc de
    ld hl, $271a
    inc h
    rst $28
    ld [hl-], a
    jr z, @+$30

    rst $28
    ld a, [de]
    daa
    dec e
    rst $28
    rst $28

jr_027_64c2:
    rst $28
    inc l
    ld e, $1e
    rst $28
    ld [hl-], a
    jr z, jr_027_64f8

    rst $28
    dec h
    ld a, [de]
    dec l
    ld e, $2b
    ld c, h
    rst $28
    rst $28
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    dec d
    ld [hl], b
    nop
    nop
    ld [$1bef], sp
    ld e, $25
    ld [hl+], a
    ld e, $2f
    ld e, $ef
    ld [$29ef], sp
    ld a, [de]

jr_027_64ec:
    ld [hl+], a
    dec e
    dec l
    jr z, jr_027_6519

    rst $28
    ld h, $2e
    inc e
    ld hl, $1fef

jr_027_64f8:
    jr z, @+$2d

    rst $28
    rst $28
    rst $28
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    dec d
    ld [hl], b
    nop
    nop
    dec l
    ld hl, $ef1e
    ld e, $20
    jr nz, jr_027_655d

    rst $28
    ld d, $28
    ld l, $25
    dec e
    rst $28
    rst $28

jr_027_6519:
    ld [hl-], a
    jr z, jr_027_654a

    rst $28
    add hl, hl
    dec h
    ld e, $1a
    inc l
    ld e, $ef
    jr nz, jr_027_6548

    cpl
    ld e, $e9
    cp $01
    inc bc
    inc b
    ld b, b
    ld c, h
    nop
    sub l
    ld [hl], h
    nop
    nop
    ld h, $1e
    rst $28
    ld h, $32
    rst $28
    inc e
    ld hl, $271a
    jr nz, jr_027_655e

    ld b, c
    rst $28
    rst $28
    rst $28
    rst $28
    jr jr_027_654b

    ld [de], a

jr_027_6548:
    rst $28
    rst $28

jr_027_654a:
    rst $28

jr_027_654b:
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    dec c
    ld c, $ef
    cp $00
    nop
    nop
    nop
    nop
    nop
    dec d
    ld [hl], b

jr_027_655d:
    nop

jr_027_655e:
    nop
    inc de
    ld hl, $271a
    inc h
    rst $28
    ld [hl-], a
    jr z, jr_027_6596

    ld c, h
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    ld [de], a
    ld e, $1e
    rst $28
    ld [hl-], a
    jr z, jr_027_65a4

    rst $28
    dec h
    ld a, [de]
    dec l
    ld e, $2b
    ld c, h
    rst $28
    rst $28
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    dec d
    ld [hl], b
    nop
    nop
    ld c, $21
    rst $28
    daa
    jr z, @+$42

    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28

jr_027_6596:
    rst $28
    rst $28
    rst $28
    rst $28
    ld d, $21
    ld a, [de]
    dec l
    rst $28
    jr nc, jr_027_65c3

    dec h
    dec h
    rst $28

jr_027_65a4:
    ld [$1def], sp
    jr z, jr_027_65ea

    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    dec d
    ld [hl], b
    nop
    nop
    inc c
    ld [hl-], a
    rst $28
    jr nz, @+$2d

    ld a, [de]
    daa
    dec e
    ld h, $1a
    rst $28
    rst $28
    rst $28
    rst $28

jr_027_65c3:
    rst $28
    rst $28
    jr nc, jr_027_65e9

    dec h
    dec h
    rst $28
    dec de
    ld e, $ef
    ld a, [de]
    daa
    jr nz, jr_027_65fc

    ld [hl-], a
    rst $28
    rst $28
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    dec d
    ld [hl], b
    nop
    nop
    jr nc, jr_027_6604

    dec l
    ld hl, $26ef
    ld e, $40
    ld b, b

jr_027_65e9:
    rst $28

jr_027_65ea:
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

jr_027_65fc:
    rst $28
    rst $28
    rst $28
    rst $28
    rst $38
    nop
    nop
    nop

jr_027_6604:
    nop
    nop
    nop
    dec d
    ld [hl], b
    nop
    nop
    rlca
    ld [hl+], a
    rst $28
    and b
    and c
    and d
    and e
    ld c, h

jr_027_6613:
    rst $28
    inc b
    cpl
    ld e, $2b
    ld [hl-], a
    dec e
    ld b, h
    ld a, [de]
    ld [hl-], a
    rst $28
    ld [hl+], a
    inc l
    rst $28
    inc l
    jr z, jr_027_6613

    ld hl, $2d28
    ld c, h
    ld c, h
    ld c, h
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    dec d
    ld [hl], b
    nop
    nop
    ld [$23ef], sp
    ld l, $2c

jr_027_663b:
    dec l
    rst $28
    inc l
    dec l
    jr z, jr_027_666a

    add hl, hl
    ld e, $1d
    rst $28
    rst $28
    dec de
    ld [hl-], a
    rst $28
    dec l
    jr z, jr_027_663b

    ld e, $2c
    inc e
    ld a, [de]
    add hl, hl
    ld e, $ef
    rst $28
    rst $28
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    dec d
    ld [hl], b
    nop
    nop
    rra
    dec hl
    jr z, jr_027_668b

    rst $28
    dec l
    ld hl, $ef1e

jr_027_666a:
    ld hl, $1a1e
    dec l
    ld c, h
    rst $28
    rst $28
    rrca
    dec h
    ld e, $1a
    inc l
    ld e, $ef
    inc hl
    jr z, jr_027_669d

    daa
    rst $28
    ld h, $1e
    rst $28
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    cp l
    ld [hl], h
    nop

jr_027_668b:
    nop
    and b
    and c
    and d
    and e
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

jr_027_669d:
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
    cp $00
    nop
    nop
    nop
    nop
    nop
    dec d
    ld [hl], b
    nop
    nop
    ld b, $28
    jr z, @+$1f

    rst $28
    ld e, $2f
    ld e, $27
    ld [hl+], a
    daa
    jr nz, @+$4e

    rst $28
    rst $28
    rst $28
    ld d, $21
    ld a, [de]
    dec l
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
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    dec d
    ld [hl], b
    nop
    nop
    dec de
    ld e, $1a
    ld l, $2d
    ld [hl+], a
    rra
    ld l, $25
    rst $28
    ld h, $28
    jr z, jr_027_6717

    rst $28
    rst $28
    dec l
    jr z, jr_027_671c

    ld [hl+], a
    jr nz, jr_027_6719

    dec l
    ld c, h
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    cp l
    ld [hl], h
    nop
    nop
    inc b
    cpl
    ld e, $2b
    ld [hl-], a
    jr z, jr_027_673b

    ld e, $ef
    ld [hl+], a

jr_027_6717:
    inc l
    rst $28

jr_027_6719:
    ld hl, $2b1e

jr_027_671c:
    ld e, $27
    jr z, jr_027_6750

    adc [hl]
    rst $28
    dec h
    ld e, $2d
    ld d, e
    rst $28
    jr nz, jr_027_6751

    ld c, h
    rst $28
    rst $28
    rst $28
    cp $00
    nop
    nop
    nop
    nop
    nop
    dec d
    ld [hl], b
    nop
    nop
    ld [$532d], sp

jr_027_673b:
    rst $28
    inc e
    jr z, @+$28

    add hl, hl
    dec h
    ld e, $2d
    ld e, $1d
    ld c, h
    rst $28
    rst $28
    ld [$21ef], sp
    ld a, [de]
    cpl
    ld e, $ef
    daa

jr_027_6750:
    ld a, [de]

jr_027_6751:
    ld h, $1e
    dec e
    rst $28
    ld [hl+], a
    dec l
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    dec d
    ld [hl], b
    nop
    nop
    inc bc
    ld e, $25
    ld l, $31
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
    ld d, $28
    jr z, jr_027_6794

    rst $28
    rlca
    jr z, jr_027_67a9

    inc l
    ld e, $4c
    rst $28
    rst $28
    rst $28
    rst $28
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    dec d
    ld [hl], b
    nop
    nop
    ld [$30ef], sp
    ld [hl+], a
    dec h
    dec h

jr_027_6794:
    rst $28
    jr nz, jr_027_67b9

    cpl
    ld e, $ef
    ld [hl-], a
    jr z, jr_027_67cb

    rst $28
    dec l
    ld hl, $2c22
    rst $28
    ld [de], a
    ld l, $29
    ld e, $2b
    rst $28

jr_027_67a9:
    rst $28
    rst $28
    rst $28
    rst $28
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    dec d
    ld [hl], b
    nop
    nop

jr_027_67b9:
    rlca
    ld a, [de]
    ld h, $26
    ld e, $2b
    ld c, h
    rst $28
    jr jr_027_67eb

    ld l, $ef
    inc e
    ld a, [de]
    daa
    rst $28
    dec de
    dec hl

jr_027_67cb:
    ld e, $1a
    inc h
    rst $28
    ld a, [de]
    rst $28
    ld hl, $202e
    ld e, $ef
    rst $28
    rst $28
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    dec d
    ld [hl], b
    nop
    nop
    dec hl
    jr z, jr_027_6803

    inc h
    rst $28
    jr nc, jr_027_680d

jr_027_67eb:
    dec l
    ld hl, $28ef
    daa
    ld e, $ef
    rst $28
    rst $28
    inc l
    jr nc, jr_027_6819

    daa
    jr nz, @+$4e

    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28

jr_027_6803:
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    dec d
    ld [hl], b

jr_027_680d:
    nop
    nop
    ld d, $1e
    dec h
    dec h
    adc [hl]
    rst $28
    ld [$30ef], sp
    ld [hl+], a

jr_027_6819:
    dec h
    dec h
    rst $28
    dec de
    ld e, $ef
    dec h
    ld e, $1a
    cpl
    ld [hl+], a
    daa
    jr nz, @+$4e

    rst $28
    ld [bc], a
    jr z, jr_027_6851

    ld e, $ef
    rst $28
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    dec d
    ld [hl], b
    nop
    nop
    inc l
    ld e, $1e
    rst $28
    ld h, $1e
    rst $28
    ld [hl+], a
    rra
    rst $28
    ld [hl-], a
    jr z, jr_027_6875

    rst $28
    rst $28
    rst $28
    daa
    ld e, $1e
    dec e
    rst $28
    ld a, [de]
    daa

jr_027_6851:
    ld [hl-], a
    dec l
    ld hl, $2722
    jr nz, jr_027_68a4

    rst $28
    rst $28
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    dec d
    ld [hl], b
    nop
    nop
    ld [$532d], sp
    rst $28
    rra
    ld [hl+], a
    daa
    ld a, [de]
    dec h
    dec h
    ld [hl-], a
    rst $28
    inc e
    jr z, @+$28

    ld b, h

jr_027_6875:
    add hl, hl
    dec h
    ld e, $2d
    ld e, $1d
    ld c, h
    rst $28
    ld [$532d], sp
    rst $28
    daa
    jr z, jr_027_68b4

    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    dec d
    ld [hl], b
    nop
    nop
    ld a, [de]
    rst $28
    inc d
    dec h
    dec l
    dec hl
    ld a, [de]
    rst $28
    inc bc
    ld e, $25
    ld l, $31
    ld e, $ef
    rst $28
    ld d, $28
    jr z, jr_027_68c1

jr_027_68a4:
    rst $28
    rlca
    jr z, @+$30

    inc l
    ld e, $4c
    rst $28
    rst $28
    rst $28
    rst $28
    jp hl


    cp $00
    nop
    nop

jr_027_68b4:
    nop
    nop
    nop
    dec d
    ld [hl], b
    nop
    nop
    ld d, $1e
    dec h
    dec h
    adc [hl]
    rst $28

jr_027_68c1:
    ld [$254b], sp
    dec h
    rst $28
    dec de
    ld e, $ef
    rst $28
    rst $28
    dec h
    ld e, $1a
    cpl
    ld [hl+], a
    daa
    jr nz, jr_027_691f

    rst $28
    ld [bc], a
    jr z, jr_027_68fd

    ld e, $ef
    rst $28
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    dec d
    ld [hl], b
    nop
    nop
    inc l
    ld e, $1e
    rst $28
    ld h, $1e
    rst $28
    ld [hl+], a
    rra
    rst $28
    ld [hl-], a
    jr z, jr_027_6921

    rst $28
    rst $28
    rst $28
    daa
    ld e, $1e
    dec e
    rst $28
    ld a, [de]
    daa

jr_027_68fd:
    ld [hl-], a
    dec l
    ld hl, $2722
    jr nz, jr_027_6950

    rst $28
    rst $28
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    dec d
    ld [hl], b
    nop
    nop
    rlca
    ld a, [de]
    add hl, hl
    add hl, hl
    ld [hl-], a
    rst $28
    dec c
    ld e, $30
    rst $28
    jr jr_027_693b

    ld a, [de]
    dec hl

jr_027_691f:
    rst $28
    rst $28

jr_027_6921:
    and b
    and c
    and d
    and e
    ld b, b
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
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    dec d
    ld [hl], b
    nop

jr_027_693b:
    nop
    ld [$21ef], sp
    jr z, jr_027_696a

    ld e, $ef
    ld [hl-], a
    jr z, jr_027_6974

    rst $28
    ld hl, $2f1a
    ld e, $ef
    ld a, [de]
    rst $28
    jr nc, jr_027_6978

jr_027_6950:
    daa
    dec e
    ld e, $2b
    rra
    ld l, $25
    rst $28
    rst $28
    rst $28
    rst $28
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    dec d
    ld [hl], b
    nop
    nop
    daa
    ld e, $30

jr_027_696a:
    rst $28
    ld [hl-], a
    ld e, $1a
    dec hl
    ld c, h
    rst $28
    rst $28
    rst $28
    rst $28

jr_027_6974:
    rst $28
    rst $28
    rst $28
    rst $28

jr_027_6978:
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

jr_027_6984:
    rst $28
    rst $28
    rst $28
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    dec d
    ld [hl], b
    nop
    nop
    inc bc
    jr z, jr_027_6984

    ld [hl-], a
    jr z, jr_027_69c6

    rst $28
    jr nc, jr_027_69b5

    daa
    dec l
    rst $28
    dec l
    ld hl, $ef1e
    rlca
    ld a, [de]
    dec hl
    cpl
    ld e, $2c
    dec l
    rst $28
    ld [de], a
    add hl, hl
    dec hl
    ld [hl+], a
    dec l
    ld e, $ef
    jp hl


    cp $01
    ld [bc], a

jr_027_69b5:
    ld a, [bc]
    ld b, b
    ld c, h
    nop
    add $74
    nop
    nop
    ld hl, $251e
    add hl, hl
    ld b, c
    rst $28
    rst $28
    rst $28
    rst $28

jr_027_69c6:
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    jr jr_027_69d4

    ld [de], a
    rst $28
    rst $28
    rst $28

jr_027_69d4:
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    dec c
    ld c, $ef
    cp $00
    nop
    nop
    nop
    nop
    nop
    dec d
    ld [hl], b
    nop
    nop
    dec c
    jr z, jr_027_6a18

    rst $28
    ld [hl-], a
    ld e, $2d
    ld c, h
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    jr jr_027_6a22

    ld l, $ef
    ld h, $2e
    inc l
    dec l
    rst $28
    rra
    ld [hl+], a
    dec hl
    inc l
    dec l
    rst $28
    jp hl


    cp $00

jr_027_6a0a:
    nop
    nop
    nop
    nop
    nop
    dec d
    ld [hl], b
    nop
    nop
    dec l
    ld a, [de]
    dec h
    inc h
    rst $28

jr_027_6a18:
    dec l
    jr z, jr_027_6a0a

    dec l
    ld hl, $ef1e
    rst $28
    rst $28
    rst $28

jr_027_6a22:
    rst $28
    rlca
    ld a, [de]
    dec hl
    cpl
    ld e, $2c
    dec l
    rst $28
    ld [de], a
    add hl, hl
    dec hl
    ld [hl+], a
    dec l
    ld e, $2c
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    ld [hl], $75
    nop
    nop
    ld a, [de]
    dec l
    rst $28
    dec l
    ld hl, $ef1e
    inc e
    ld a, [de]
    cpl
    ld e, $4c
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
    cp $00
    nop
    nop
    nop
    nop
    nop
    dec d
    ld [hl], b
    nop
    nop
    ld d, $21
    ld a, [de]
    dec l
    rst $28
    inc l
    ld hl, $2e28
    dec h
    dec e
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    dec l
    ld hl, $ef1e
    dec h
    ld e, $27
    jr nz, jr_027_6aaf

    ld hl, $28ef
    rra
    rst $28
    rst $28
    jp hl


    cp $01
    rlca
    rlca
    ld b, b
    ld c, e
    nop
    ld d, a
    ld [hl], l
    nop
    nop
    ld a, [de]
    rst $28
    dec e
    ld a, [de]
    ld [hl-], a
    rst $28
    dec de
    ld e, $41
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    ld [de], a
    dec h
    jr z, jr_027_6ad9

    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28

jr_027_6aaf:
    rst $28
    dec b
    ld a, [de]
    inc l
    dec l
    cp $00
    nop
    nop
    nop
    nop
    nop
    dec d
    ld [hl], b
    nop
    nop
    ld c, $0a
    ld b, b
    rst $28
    ld bc, $2d2e
    rst $28
    dec hl
    ld e, $26
    ld e, $26
    dec de
    ld e, $2b
    dec l
    ld hl, $ef1e
    rlca
    ld a, [de]
    dec hl
    cpl
    ld e, $2c

jr_027_6ad9:
    dec l
    rst $28
    rst $28
    rst $28
    rst $28
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    dec d
    ld [hl], b
    nop
    nop
    ld [de], a
    add hl, hl
    dec hl
    ld [hl+], a
    dec l
    ld e, $2c
    rst $28
    inc e
    ld a, [de]
    daa
    rst $28
    jr z, @+$29

    dec h
    ld [hl-], a
    ld hl, $251e
    add hl, hl
    rst $28
    ld [hl-], a
    jr z, jr_027_6b30

    rst $28
    jr z, jr_027_6b2c

    inc e
    ld e, $ef
    rst $28
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    ld [hl], $75
    nop
    nop
    ld e, $2f
    ld e, $2b
    ld [hl-], a
    rst $28
    ld [hl], $38
    rst $28
    ld hl, $2e28
    dec hl
    inc l
    ld b, b
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28

jr_027_6b2c:
    rst $28
    rst $28
    rst $28
    rst $28

jr_027_6b30:
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    cp $00
    nop
    nop
    nop
    nop
    nop
    dec d
    ld [hl], b
    nop
    nop
    ld [$2cef], sp
    ld e, $1e
    ld c, h
    ld c, h
    ld c, h
    rst $28
    inc c
    ld a, [de]
    ld [hl-], a
    dec de
    ld e, $ef
    rst $28
    ld [$1cef], sp
    ld a, [de]
    daa
    rst $28
    ld hl, $251e
    add hl, hl
    rst $28
    ld [hl-], a
    jr z, @+$30

    rst $28
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    ld [hl], $75
    nop
    nop
    daa
    ld e, $31
    dec l
    rst $28
    dec l
    ld [hl+], a
    ld h, $1e
    ld b, b
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
    rst $28
    cp $00
    nop
    nop
    nop
    nop
    nop
    dec d
    ld [hl], b
    nop
    nop
    inc de
    ld hl, $2c22
    rst $28
    ld [hl+], a
    inc l
    rst $28

jr_027_6b9e:
    dec l
    ld hl, $ef1e
    rst $28
    rst $28
    rst $28

jr_027_6ba5:
    rst $28
    ld [de], a
    ld hl, $2922
    add hl, hl
    ld [hl+], a
    daa
    jr nz, jr_027_6b9e

    ld bc, $3128
    rst $28
    dec l
    jr z, jr_027_6ba5

    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    dec d
    ld [hl], b
    nop
    nop
    inc l
    ld hl, $2922
    rst $28
    inc e
    dec hl
    jr z, jr_027_6bf3

    inc l
    ld c, h
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    inc de
    ld hl, $ef1e
    dec l
    dec hl
    ld a, [de]
    dec e
    ld e, $2b
    rst $28
    jr nc, jr_027_6c00

    dec h
    dec h
    rst $28
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    dec d
    ld [hl], b
    nop
    nop
    add hl, hl
    ld [hl+], a
    inc e
    inc h
    rst $28
    ld l, $29

jr_027_6bf3:
    rst $28
    ld [hl-], a
    jr z, @+$30

    dec hl
    rst $28
    rst $28
    rst $28
    rst $28
    inc l
    ld hl, $2922

jr_027_6c00:
    ld h, $1e
    daa
    dec l
    rst $28
    ld a, [de]
    dec l
    rst $28
    add hl, sp
    rrca
    inc c
    ld c, h
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    dec d
    ld [hl], b
    nop
    nop
    inc de
    ld hl, $2c1e
    ld e, $ef
    dec l
    jr nc, @+$2a

    rst $28
    dec l
    jr z, jr_027_6c54

    ld e, $2b
    inc l
    ld a, [de]
    dec hl
    ld e, $ef
    ld [de], a
    ld [hl+], a
    dec h
    jr z, @+$2e

    rst $28
    ld l, $2c
    ld e, $1d
    rst $28
    rst $28
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    dec d
    ld [hl], b
    nop
    nop
    dec l
    jr z, @-$0f

    inc l
    dec l
    jr z, jr_027_6c74

    ld e, $ef
    rra
    jr z, jr_027_6c6b

    dec e
    ld e, $2b
    ld c, h
    ld c, $27

jr_027_6c54:
    rst $28
    dec l
    ld hl, $ef1e
    dec hl
    ld [hl+], a
    jr nz, jr_027_6c7e

    dec l
    rst $28
    jr z, @+$21

    rst $28
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    dec d
    ld [hl], b

jr_027_6c6b:
    nop
    nop
    dec l
    ld hl, $ef1e
    inc l
    ld [hl+], a
    dec h

jr_027_6c74:
    jr z, jr_027_6ca2

    rst $28
    ld [hl+], a
    inc l
    rst $28
    dec l
    ld hl, $021e

jr_027_6c7e:
    ld hl, $1c22
    inc h
    ld e, $27
    rst $28
    ld [bc], a
    jr z, jr_027_6cb0

    add hl, hl
    rst $28
    ld a, [de]
    daa
    dec e
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    dec d
    ld [hl], b
    nop
    nop
    jr z, jr_027_6cc1

    rst $28
    dec l
    ld hl, $ef1e
    dec h
    ld e, $1f

jr_027_6ca2:
    dec l
    rst $28
    ld [hl+], a
    inc l
    rst $28
    rst $28
    dec l
    ld hl, $ef1e
    ld [bc], a
    jr z, jr_027_6cdf

    rst $28

jr_027_6cb0:
    ld bc, $2b1a
    daa
    ld c, h
    rst $28
    rst $28
    rst $28
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    dec d
    ld [hl], b

jr_027_6cc1:
    nop
    nop
    inc de
    ld hl, $2c22
    rst $28
    ld [hl+], a
    inc l
    rst $28
    dec l
    ld hl, $ef1e
    ld [de], a
    ld hl, $1d1e
    jr nc, jr_027_6cf6

    ld e, $2b
    ld e, $ef
    ld [hl-], a
    jr z, jr_027_6d0a

    dec hl
    rst $28
    ld [hl+], a

jr_027_6cdf:
    dec l
    ld e, $26
    inc l
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    dec d
    ld [hl], b
    nop
    nop
    ld a, [de]
    dec hl
    ld e, $ef
    inc h
    ld e, $29
    dec l

jr_027_6cf6:
    ld c, h
    ld c, h
    ld c, h
    ld c, h
    ld c, h
    ld c, h
    ld c, h
    ld c, h
    ld c, h
    ld c, h
    ld c, h
    ld c, h
    ld c, h
    ld c, h
    ld c, h
    ld c, h
    ld c, h
    ld c, h
    ld c, h
    ld c, h

jr_027_6d0a:
    ld c, h
    ld c, h
    ld c, h
    ld c, h
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    dec d
    ld [hl], b
    nop
    nop
    ld e, $31
    add hl, hl
    dec h
    ld a, [de]
    daa
    ld a, [de]
    dec l
    ld [hl+], a
    jr z, @+$29

    inc l
    rst $28
    jr z, jr_027_6d4f

    rst $28
    dec l
    ld hl, $ef1e
    dec l
    jr z, @+$2a

    dec h
    inc l
    rst $28
    ld a, [de]
    daa
    dec e
    rst $28
    rst $28
    rst $28
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    dec d
    ld [hl], b
    nop
    nop
    dec l
    ld hl, $221e
    dec hl
    rst $28
    ld l, $2c
    ld a, [de]
    jr nz, jr_027_6d6d

jr_027_6d4f:
    adc [hl]
    rst $28
    dec de
    ld l, $2d
    ld [$1aef], sp
    ld h, $ef
    ld a, [de]
    rst $28
    dec h
    ld [hl+], a
    dec l
    dec l
    dec h
    ld e, $ef
    rst $28
    rst $28
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    dec d
    ld [hl], b

jr_027_6d6d:
    nop
    nop
    ld [$1aef], sp
    ld h, $ef
    ld a, [de]
    rst $28
    dec h
    ld [hl+], a
    dec l
    dec l
    dec h
    ld e, $ef
    rst $28
    rst $28
    dec l
    dec hl
    ld [hl+], a
    ld e, $1d
    ld c, h
    ld c, h
    ld c, h
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    dec d
    ld [hl], b
    nop
    nop
    ld a, [de]
    dec l
    rst $28
    ld h, $32
    rst $28
    dec de
    jr z, jr_027_6dcb

    inc h
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
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    dec d
    ld [hl], b
    nop
    nop
    dec h
    jr z, jr_027_6df5

    rst $28
    jr z, jr_027_6dea

jr_027_6dcb:
    rst $28
    ld h, $22
    dec h
    inc h
    ld c, h

jr_027_6dd1:
    rst $28
    rst $28
    rst $28
    rst $28
    ld c, $1f
    rst $28
    inc e
    jr z, jr_027_6e09

    dec hl
    inc l
    ld e, $ef
    dec e
    jr z, jr_027_6dd1

    daa
    jr z, jr_027_6e12

    rst $38
    nop
    nop
    nop

jr_027_6de9:
    nop

jr_027_6dea:
    nop
    nop
    dec d
    ld [hl], b
    nop
    nop
    rra
    jr z, @+$2d

    jr nz, jr_027_6e13

jr_027_6df5:
    dec l
    rst $28
    dec l
    jr z, jr_027_6de9

    rra
    ld e, $1e
    dec e
    rst $28
    rst $28
    dec l
    ld hl, $261e
    rst $28
    ld e, $2f
    ld e, $2b

jr_027_6e09:
    ld [hl-], a
    dec e
    ld a, [de]
    ld [hl-], a
    ld c, h
    rst $28
    rst $28
    rst $38
    nop

jr_027_6e12:
    nop

jr_027_6e13:
    nop
    nop
    nop
    nop
    dec d
    ld [hl], b
    nop
    nop
    inc e
    ld hl, $1c22
    inc h
    ld e, $27
    inc l
    rst $28
    jr nc, @+$24

    dec h
    dec h
    rst $28
    rst $28
    rst $28
    daa
    jr z, jr_027_6e5b

    rst $28
    dec h
    ld a, [de]
    ld [hl-], a
    rst $28
    ld a, [de]
    daa
    ld [hl-], a
    rst $28
    ld e, $20
    jr nz, jr_027_6e67

    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    dec d
    ld [hl], b
    nop
    nop
    dec c
    ld e, $2f
    ld e, $2b
    rst $28
    rra
    jr z, jr_027_6e7a

    jr nz, jr_027_6e6f

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

jr_027_6e5b:
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
    rst $38

jr_027_6e67:
    nop
    nop
    nop
    nop
    nop
    nop
    dec d
    ld [hl], b

jr_027_6e6f:
    nop
    nop
    rst $28
    rst $28
    ld de, $271a
    inc e
    ld hl, $0cef

jr_027_6e7a:
    ld a, [de]
    inc l
    dec l
    ld e, $2b
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    inc c
    ld a, [de]
    dec hl
    inc h
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    cp $00
    nop
    nop
    nop
    nop
    nop
    dec d
    ld [hl], b
    nop
    nop
    inc de
    ld hl, $2c22
    rst $28
    ld [hl+], a
    inc l
    rst $28
    dec l
    ld hl, $ef1e
    ld h, $1a
    dec hl
    inc h
    jr z, @+$21

    rst $28
    ld a, [de]
    rst $28
    jr nz, jr_027_6ede

    ld e, $1a
    dec l
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    dec d
    ld [hl], b
    nop
    nop
    ld de, $271a
    inc e
    ld hl, $0cef
    ld a, [de]
    inc l
    dec l
    ld e, $2b
    ld c, h
    rst $28
    rst $28
    rst $28
    inc b
    cpl
    ld e, $2b
    ld [hl-], a
    jr z, jr_027_6f05

jr_027_6ede:
    ld e, $ef
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    dec d
    ld [hl], b
    nop
    nop
    dec hl
    ld e, $2c
    add hl, hl
    ld e, $1c
    dec l
    inc l
    rst $28
    ld a, [de]
    rst $28
    ld de, $271a
    inc e
    ld hl, $1a0c
    inc l

jr_027_6f05:
    dec l
    ld e, $2b
    rst $28
    ld a, [de]
    daa
    dec e
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    jp hl


    cp $00
    nop

jr_027_6f15:
    nop
    nop
    nop
    nop
    dec d
    ld [hl], b
    nop
    nop
    dec h
    jr z, jr_027_6f47

    jr nz, jr_027_6f4e

    rst $28
    dec l
    jr z, jr_027_6f15

    dec de
    ld e, $ef
    jr z, jr_027_6f52

    ld e, $ef
    dec l
    ld hl, $261e
    inc l
    ld e, $25
    cpl
    ld e, $2c
    ld c, h
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    dec d
    ld [hl], b
    nop

jr_027_6f47:
    nop
    inc bc
    jr z, jr_027_6f72

    ld c, e
    dec l
    rst $28

jr_027_6f4e:
    dec l
    jr z, jr_027_6f7f

    inc e

jr_027_6f52:
    ld hl, $2def
    ld hl, $2c22
    add hl, hl
    dec h
    ld a, [de]
    daa
    dec l
    ld b, b
    ld b, b
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    dec d
    ld [hl], b
    nop

jr_027_6f72:
    nop
    rlca
    ld h, $26
    ld c, h
    ld c, h
    rst $28
    ld [$30ef], sp
    jr z, jr_027_6fa5

    dec e

jr_027_6f7f:
    ld e, $2b
    rst $28
    rst $28
    ld [hl+], a
    rra
    rst $28
    dec l
    ld hl, $2c22
    rst $28
    jr nc, jr_027_6fa7

    inc l
    rst $28
    rst $28
    rst $28
    rst $28
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    dec d
    ld [hl], b
    nop
    nop
    jr nz, jr_027_6fcb

    ld a, [de]
    daa
    add hl, hl
    ld a, [de]
    ld d, e

jr_027_6fa5:
    rst $28
    add hl, hl

jr_027_6fa7:
    dec h
    ld a, [de]
    daa
    dec l
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
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    dec d
    ld [hl], b
    nop
    nop
    ld d, $21

jr_027_6fcb:
    jr z, jr_027_6fe7

    ld b, c
    rst $28
    ld [$ef2d], sp
    ld hl, $2c1a
    rst $28
    ld a, [de]
    rst $28
    rst $28
    rra
    dec h
    jr z, jr_027_700d

    ld e, $2b
    rst $28
    jr z, @+$29

    rst $28
    ld [hl+], a
    dec l
    ld c, h
    rst $28

jr_027_6fe7:
    rst $28
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    dec d
    ld [hl], b
    nop
    nop
    ld [$30ef], sp
    jr z, jr_027_7020

    dec e
    ld e, $2b
    rst $28
    jr nc, jr_027_7020

    ld e, $27
    rst $28
    ld [hl+], a
    dec l
    dec de
    dec h
    jr z, @+$2a

    ld h, $1e
    dec e
    adc [hl]
    rst $28

jr_027_700d:
    ld hl, $2626
    ld h, $4c
    rst $28
    rst $28
    rst $38
    ret


    ld a, [$cb72]
    or a
    ret nz

    ld a, $ff
    ld [$cb52], a

jr_027_7020:
    xor a
    ld [$cb53], a
    ld [$cb55], a
    xor a
    ld [$cb56], a
    ld [$cb5f], a
    call Call_000_3efc
    xor a
    ld [$cb58], a
    ld [$cb57], a
    ld a, $50
    ld [$cb73], a
    ld [$c912], a
    call Call_000_0f0f
    ret


    ld a, [$cb72]
    or a
    jr nz, jr_027_7092

    ld a, $ff
    ld [$cb52], a
    xor a
    ld [$cb53], a
    ld [$cb55], a
    xor a
    ld [$cb56], a
    ld [$cb5f], a
    call Call_000_3efc
    xor a
    ld [$cb58], a
    ld [$cb57], a
    ld a, $50
    ld [$cb73], a
    ld [$c912], a
    call Call_000_0f0f
    xor a
    ld [$b890], a
    ld [$b891], a
    ld [$c760], a
    ld a, $10
    ld [$ae30], a
    ld a, $00
    ld [$ae31], a
    ld a, [$b899]
    and $01
    ret z

    ld a, $03
    ld [$b899], a
    ret


jr_027_7092:
    call Call_000_3f26
    ret


    ld a, [$cb72]
    or a
    jr nz, jr_027_70c7

    ld a, $ff
    ld [$cb52], a
    xor a
    ld [$cb53], a
    ld [$cb55], a
    xor a
    ld [$cb56], a
    ld [$cb5f], a
    call Call_000_3efc
    xor a
    ld [$cb58], a
    ld [$cb57], a
    ld a, $18
    ld [$c911], a
    ld a, $01
    ld [$c90f], a
    call Call_000_0f0f
    ret


jr_027_70c7:
    call Call_000_3f26
    ret


    ld a, [$cb72]
    or a
    jr nz, jr_027_70fc

    ld a, $01
    ld [$c911], a
    ld a, $02
    ld [$c90f], a
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
    xor a
    ld [$cb58], a
    ld [$cb57], a
    ret


jr_027_70fc:
    call Call_000_3f26
    ret


    call Call_000_3f26
    ret


    ret


    ld a, [$cb72]
    or a
    jr nz, jr_027_7111

    ld a, $01
    ld [$b893], a
    ret


jr_027_7111:
    xor a
    ld [$b893], a
    ret


    xor a
    ld [$b893], a
    ld a, $0a
    ld [$c90f], a
    ld a, $20
    ld [$c911], a
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
    xor a
    ld [$cb58], a
    ld [$cb57], a
    ret


    ld a, $3c
    ld [$c912], a
    ld a, $ff
    ld [$cb8d], a
    ld a, $8e
    call Call_000_151d
    call Call_000_3f26
    ld a, $01
    ld [$cbf6], a
    ld b, $1e
    call $1ae6
    ret


    ld a, $02
    ld [$cbf6], a
    ld a, $3c
    ld [$c912], a
    ld a, $ff
    ld [$cb8d], a
    ld a, $8e
    call Call_000_151d
    ld b, $1e
    call $1ae6
    call Call_000_3f26
    ret


    ld a, $60
    ld [$c912], a
    ld a, $06
    ld [$cb8d], a
    ld a, $20
    call Call_000_151d
    call Call_000_3f26
    ld a, $01
    ld [$cbf6], a
    ld a, [$b8ee]
    srl a
    srl a
    ld b, a
    call $1ae6
    ret


    ld a, [$cb72]
    or a
    jr nz, jr_027_71d5

    ld a, $01
    ld [$b890], a
    ld a, $1d
    call Call_000_15e4
    ld a, $89
    ld [$c766], a
    ld a, $01
    ld [$c767], a
    ld a, $25
    ld [$c768], a
    ld a, $01
    ld [$c769], a
    ld a, $03
    ld [$c770], a
    xor a
    ld [$c76c], a
    ld a, $0a
    call Call_000_0f47
    ret


jr_027_71d5:
    xor a
    ld [$b890], a
    ret


    ret


    ld a, $01
    ld [$c76c], a
    ld a, $ff
    ld [$c912], a
    ret


    ld a, $04
    ld [$c811], a
    ld a, $02
    ld [$c813], a
    ld a, $01
    ld [$c810], a
    call Call_000_3f26
    ret


    xor a
    ld [$c810], a
    ld a, $ff
    ld [$c80c], a
    ld a, $01
    ld [$c80d], a
    ld a, $31
    call Call_000_152a
    call Call_000_3f26
    ret


    ld a, [$cb72]
    or a
    jr nz, jr_027_7248

    ld a, $01
    ld [$b891], a
    ld a, $22
    call Call_000_15e4
    ld a, $88
    ld [$c766], a
    ld a, $01
    ld [$c767], a
    ld a, $bc
    ld [$c768], a
    ld a, $01
    ld [$c769], a
    ld a, $04
    ld [$c770], a
    xor a
    ld [$c76c], a
    ld a, $d6
    ld [$ae30], a
    ld a, $81
    ld [$ae31], a
    ret


jr_027_7248:
    xor a
    ld [$b891], a
    ret


    xor a
    ld [$c810], a
    ld a, $ff
    ld [$c80c], a
    ld a, $01
    ld [$c80d], a
    ld a, $19
    call Call_000_152a
    call Call_000_3f26
    ld a, $64
    ld [$c912], a
    ret


    ld a, [$cb72]
    or a
    jr nz, jr_027_7275

    ld a, $0a
    call Call_000_0f47
    ret


jr_027_7275:
    ld a, $f6
    call Call_000_0f47
    ret


    ld a, [$cb72]
    or a
    jr nz, jr_027_7299

    ld a, $01
    ld [$b897], a
    ld a, [$b8a5]
    or a
    jr nz, jr_027_729e

    ld a, [sInventory]
    cp HAMMER
    jr z, jr_027_72a3

    ld a, NO_ITEM
    ld [sInventory+1], a
    ret


jr_027_7299:
    xor a
    ld [$b897], a
    ret


jr_027_729e:
    xor a
    ld [$b8a5], a
    ret


jr_027_72a3:
    ld a, $ff
    ld [sInventory], a
    ret


    ld a, [$cb72]
    or a
    jp nz, Jump_027_7362

    ld a, [$b911]
    cp $00
    jr z, jr_027_72e6

    ld a, [$b939]
    cp $02
    jr nc, jr_027_72cb

    cp $00
    jr z, jr_027_7310

    ld a, [$b938]
    cp $2c
    jr nc, jr_027_72cb

    jr jr_027_7310

jr_027_72cb:
    ld a, [$b8f1]
    cp $00
    jr nz, jr_027_7324

    ld a, [$b8f0]
    cp $14
    jr nc, jr_027_7324

    cp $13
    jr c, jr_027_7310

    ld a, [$b8ef]
    cp $88
    jr nc, jr_027_7324

    jr jr_027_7310

jr_027_72e6:
    ld a, [$b939]
    or a
    jr nz, jr_027_72f5

    ld a, [$b938]
    cp $64
    jr nc, jr_027_72f5

    jr jr_027_7310

jr_027_72f5:
    ld a, [$b8f1]
    cp $00
    jr nz, jr_027_7324

    ld a, [$b8f0]
    cp $0a
    jr nc, jr_027_7324

    cp $09
    jr c, jr_027_7310

    ld a, [$b8ef]
    cp $c4
    jr nc, jr_027_7324

    jr jr_027_7310

jr_027_7310:
    call Call_000_3a18
    ld hl, $cb53
    ld bc, $0056
    call Call_000_0cce
    xor a
    ld [$cb55], a
    ld [$b8fe], a
    ret


jr_027_7324:
    ld a, $02
    ld [$b8fe], a
    ld a, [$b911]
    cp $00
    jr z, jr_027_7349

    ld hl, $b938
    ld bc, $fed4
    call Call_000_0cce
    ld hl, $b8ef
    ld bc, $ec78
    call Call_000_0cbb
    call Call_000_0f73
    call Call_000_1056
    ret


jr_027_7349:
    ld hl, $b938
    ld bc, $ff9c
    call Call_000_0cce
    ld hl, $b8ef
    ld bc, $f63c
    call Call_000_0cbb
    call Call_000_0f73
    call Call_000_1056
    ret


Jump_027_7362:
    xor a
    ld [$b8fe], a
    ret


    ld a, [$cb72]
    or a
    jr nz, jr_027_7373

    ld a, $01
    ld [$b899], a
    ret


jr_027_7373:
    xor a
    ld [$b899], a
    ret


    ld a, [$cb72]
    or a
    jr nz, jr_027_7389

    ld a, $01
    ld [$b89a], a
    ld a, $0a
    call Call_000_0f47
    ret


jr_027_7389:
    xor a
    ld [$b89a], a
    ld a, $f6
    call Call_000_0f47
    ret


    call Call_000_3f26
    ld a, [$b911]
    cp $00
    jr z, jr_027_73a7

    cp $01
    jr z, jr_027_73ad

    ld a, $72
    ld [$c831], a
    ret


jr_027_73a7:
    ld a, $5a
    ld [$c831], a
    ret


jr_027_73ad:
    ld a, $83
    ld [$c831], a
    ret


    xor a
    ld [$b89a], a
    ld a, [$b911]
    cp $00
    jr z, jr_027_73e4

    cp $01
    jr z, jr_027_7413

    xor a
    ld [$d8d8], a
    ld [$d8b6], a
    ld [$d8d9], a
    ld [$d8b7], a
    call Call_000_3f26
    ld a, $02
    ld [$c813], a
    ld a, $03
    ld [$c810], a
    xor a
    ld [$c80c], a
    ld [$c811], a
    ret


jr_027_73e4:
    xor a
    ld [$d8d8], a
    ld [$d8b6], a
    ld [$d8d9], a
    ld [$d8b7], a
    ld a, $01
    ld [$c80d], a
    ld a, $11
    call Call_000_152a
    call Call_000_3f26
    ld a, $10
    ld [$c811], a
    ld a, $02
    ld [$c813], a
    ld a, $03
    ld [$c810], a
    ld a, $ff
    ld [$c80c], a
    ret


jr_027_7413:
    xor a
    ld [$d8d6], a
    ld [$d8b4], a
    ld [$d8d7], a
    ld [$d8b5], a
    call Call_000_3f26
    ld a, $02
    ld [$c813], a
    ld a, $03
    ld [$c810], a
    xor a
    ld [$c80c], a
    ld [$c811], a
    ret


    ld a, [$cb72]
    or a
    jr nz, jr_027_7483

    ld a, $01
    ld [$b88e], a
    ld hl, $b8ef
    ld bc, $004b
    call Call_000_0cbb
    call Call_000_1056
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
    xor a
    ld [$cb58], a
    ld [$cb57], a
    ld a, $04
    ld [$c810], a
    xor a
    ld [$c80c], a
    ld [$c811], a
    ld a, $01
    ld [$c813], a
    ld a, $02
    ld [$c912], a
    ret


jr_027_7483:
    xor a
    ld [$b88e], a
    ret


    call Call_000_3f26
    xor a
    ld [$c813], a
    ld a, $01
    ld [$cbf6], a
    ret


    ld a, [$cb72]
    or a
    jr nz, jr_027_74b3

    ld a, $01
    xor a
    ld [$b88e], a
    ld hl, $b8ef
    ld bc, $fffb
    call Call_000_0cbb
    call Call_000_1056
    ld a, $14
    call Call_000_0f47
    ret


jr_027_74b3:
    xor a
    ld [$b88e], a
    ld a, $ec
    call Call_000_0f47
    ret


    call Call_000_3f26
    ld a, $02
    ld [$c813], a
    ret


    xor a
    ld [$cb5f], a
    ld a, [$cb72]
    or a
    jp nz, Jump_027_74ea

    ld a, [$b909]
    or a
    jr z, jr_027_7522

    call Call_000_3a18
    ld hl, $cb53
    ld bc, $0081
    call Call_000_0cce
    xor a
    ld [$cb55], a
    jr jr_027_752a

    ret


Jump_027_74ea:
    xor a
    ld [$b90a], a
    call Call_000_0fc7
    ld a, [$b909]
    or a
    jr nz, jr_027_751a

    call Call_000_3a18
    ld a, $01
    ld [$cb52], a
    ld [$cb57], a
    call Call_000_3f0b
    xor a
    ld [$cb58], a
    ld [$cb55], a
    ld [$cb53], a
    ld [$cb54], a
    ld a, $01
    ld [$cb56], a
    jr jr_027_7522

    ret


jr_027_751a:
    xor a
    ld [$b90a], a
    call Call_000_0fc7
    ret


jr_027_7522:
    xor a
    ld [$b90a], a
    call Call_000_0fc7
    ret


jr_027_752a:
    ld a, $01
    ld [$b90a], a
    call Call_000_0fc7
    call Call_000_0cd5
    ret


    call Call_000_3a18
    ld a, $01
    ld [$cb52], a
    ld [$cb57], a
    call Call_000_3f0b
    xor a
    ld [$cb58], a
    ld [$cb53], a
    ld [$cb54], a
    ld [$cb55], a
    ld a, $01
    ld [$cb56], a
    ret


    ld a, [$cb72]
    or a
    jr nz, jr_027_7562

    xor a
    ld [$ba41], a
    ret


jr_027_7562:
    ld a, $01
    ld [$ba41], a
    ret


    ld a, $01
    ld [$cb56], a
    ret


    ret


    nop
    inc b
    and $13
    nop
    ld bc, $af01
    ld bc, $01b3
    and [hl]
    and [hl]
    ld bc, $127a
    nop
    and [hl]
    stop
    nop
    nop
    dec b
    ld b, $ad
    inc bc
    db $eb
    and a
    and a
    inc bc
    ld [bc], a
    and a
    stop
    nop
    nop
    dec d
    ld bc, $af16
    dec b
    dec h
    nop
    ld bc, $1f04
    nop
    rlca
    ld [bc], a
    ld bc, $1f04
    nop
    nop
    rrca
    inc b
    ld c, e
    ld [$040f], sp
    ld c, e
    ld [$040d], sp
    ld hl, $690c
    inc c
    dec c
    inc b
    ld hl, sp+$21
    inc c
    ld l, c
    inc c
    db $e3
    rrca
    ld hl, $2322
    ld h, b
    and [hl]
    rst $20
    and [hl]
    inc bc
    inc b
    rrca
    ld a, [bc]
    db $e3
    ld de, $3231
    inc sp
    rst $18
    ld [hl], b
    and a
    and a
    inc de
    inc d
    rrca
    ld [bc], a
    ld bc, rSB
    rlca
    ld [$0101], sp
    ld b, c
    ld b, d
    ld b, e
    cpl
    db $fc
    ld bc, $2f14
    inc b
    ld bc, $1701
    jr @+$03

    ld bc, $ba0f
    cp e
    ret


    ccf
    ld bc, $2f14
    inc b
    add c
    rla
    ld b, l
    nop
    ld h, e
    jr nz, jr_027_763a

    daa
    nop
    rlca
    jr jr_027_7626

    nop
    jr nc, jr_027_7652

    daa
    nop
    nop
    dec bc
    ld e, $87
    dec de
    cpl
    inc e
    ld c, e
    inc de
    cpl
    inc e
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

jr_027_7626:
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

jr_027_763a:
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
    rla
    nop
    nop
    inc b
    db $fd
    cp l
    ld [de], a
    nop
    ld e, d
    ldh a, [$fff1]
    ldh a, [c]

jr_027_7652:
    di
    db $f4
    cp h
    ld d, d
    nop
    inc de
    ld bc, $5abd
    jr nz, jr_027_769d

    ld [bc], a
    ld [bc], a
    xor d
    ld l, d
    ld [de], a
    nop
    ld a, l
    rlca
    ld [bc], a
    ld a, h
    inc h
    ld bc, $5030
    ld [bc], a
    inc b
    adc a
    or b
    or c
    or c
    or d
    dec bc
    ld [bc], a
    inc h
    ld bc, $0404
    jp hl


    cp a
    ld l, c
    ld l, d
    ld hl, sp-$18
    add sp, $6d
    rlca
    ld b, $6c
    cp h
    inc h
    ld bc, $0404
    or e
    ld a, c
    ld a, d
    or h
    nop
    ld b, $c6
    cpl
    rst $00
    ret z

    and $e7
    ld d, d
    nop
    ld a, h
    inc h
    ld bc, $0804
    rst $38
    or a

jr_027_769d:
    ld l, e
    ld a, e
    cp b
    or [hl]
    or [hl]
    cp c
    sub $2f
    rst $10
    ret c

    or $f7
    ld d, d
    nop
    or l
    inc h
    ld bc, $0804
    scf
    nop
    ld bc, $b501
    inc c
    rlca
    ld [$0129], sp
    inc b
    inc c
    ld h, $08
    ld [bc], a
    rla
    jr @+$2b

    inc bc
    inc b
    inc c
    ld bc, $001f
    ld a, [bc]
    inc b
    nop
    rst $18
    ld bc, $0204
    dec b
    ld [$0829], sp
    sbc c
    dec d
    dec b
    ld [$020f], sp
    sub e
    rla
    ld e, d
    inc b
    inc d
    inc b

jr_027_76df:
    inc hl
    inc c
    xor e
    xor h
    inc d
    nop
    xor l
    ld d, c
    add hl, de
    xor a
    dec b
    ld b, $05

jr_027_76ec:
    ld b, $04
    jr @+$16

    inc hl
    ld c, $bc
    ld a, d
    dec d
    nop
    ld e, c
    ld d, c
    dec de
    dec d
    ld d, $15
    ld d, $0b
    ld [$0be0], sp
    ld [bc], a
    ld hl, $0b04
    ld [$020d], sp
    rlca
    inc b
    dec b
    ld b, $01
    add a
    ld bc, $0605
    ld [hl], b
    jr nz, @+$33

    ld b, $a0
    jr nz, jr_027_7725

    inc c
    dec d
    rra
    ld d, $01
    ld bc, $1615
    ld h, b
    rra
    and c
    ld [hl+], a
    and b

jr_027_7725:
    jr nz, jr_027_7733

    inc c
    inc c
    ld [bc], a
    inc b
    nop
    nop
    ld h, b
    ld hl, $20a4
    rrca
    inc b

jr_027_7733:
    inc b
    ld [bc], a
    daa
    or e
    ld l, c
    ld l, d
    and c
    ld e, $0c
    db $10
    add hl, bc
    inc hl
    inc e
    ld bc, $7402
    and e
    jr nz, jr_027_7752

    inc c
    ld a, [bc]
    inc hl
    ld e, $b5
    or [hl]
    or [hl]
    and h
    jr nz, jr_027_7772

    inc c
    inc c

jr_027_7752:
    dec bc
    daa
    jr nz, jr_027_76df

    ld d, $06
    inc d
    inc e
    rrca
    ld [bc], a
    dec bc
    stop
    add hl, sp
    ld e, $e9
    inc bc
    add hl, bc
    inc e
    dec c
    ld [bc], a
    pop hl
    rla
    inc b
    jr nc, jr_027_76ec

    ld [bc], a
    cpl
    nop
    ccf
    jr nz, jr_027_77b2

jr_027_7772:
    and [hl]
    and [hl]
    ld d, h
    ld d, l
    ld [bc], a
    ld [hl], $80
    ld [bc], a
    ld a, [hl]
    cpl
    nop
    jr nc, jr_027_77cf

    and a
    and a
    ld h, h
    ld h, l
    jp hl


    ld a, [bc]
    call z, Call_000_1f21
    jp hl


    dec bc
    and [hl]
    and [hl]
    add hl, bc
    ld [bc], a
    ld bc, $151f
    ld d, $80
    jp hl


    dec bc
    add hl, bc
    inc b
    xor c
    inc bc
    push hl
    inc hl
    add hl, bc
    inc b
    xor c
    inc bc
    push hl
    inc hl
    and a
    rlca
    and a
    ld [hl], h
    ld [hl], l
    ld b, d
    add hl, hl
    di
    ld a, $ff
    ld [$dd00], a
    ld [$dd01], a
    xor a

jr_027_77b2:
    ldh [rBGP], a
    ldh [rOBP0], a
    ldh [rOBP1], a
    ld hl, $7807
    call Call_000_23e9
    call Call_000_2424
    ld hl, $7976
    call Call_000_23e9
    call Call_000_2424
    ld hl, $79d6
    ld b, $08

jr_027_77cf:
    push hl
    push bc
    call Call_000_23e9
    call Call_000_2424
    pop bc
    pop hl
    ld de, $0010
    add hl, de
    dec b
    jr nz, jr_027_77cf

    ld hl, $7d26
    ld a, $33
    ld de, $7956
    call Call_000_24ea
    ld hl, $79da
    ld a, $30
    ld de, $7966
    call Call_000_24ea
    xor a
    ldh [rBGP], a
    ldh [rOBP0], a
    ldh [rOBP1], a
    ld hl, $7996
    call Call_000_23e9
    call Call_000_2424
    ret


    ld bc, $7fff
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [$dd00]
    or a
    ret z

    ld hl, $7976
    call Call_000_23e9
    call Call_000_2424
    xor a
    ldh [rBGP], a
    ldh [rOBP0], a
    ldh [rOBP1], a
    ld hl, $9000
    ld bc, $0010
    call ZeroOutHL
    ld hl, $9800
    ld bc, $0400
    call ZeroOutHL
    ld hl, $7a56
    ld a, [$c0a7]
    cp $01
    jr z, jr_027_7854

    cp $07
    jr z, jr_027_7854

    cp $0f
    jr z, jr_027_7854

    cp $25
    jr nz, jr_027_785a

jr_027_7854:
    ld hl, $7b52
    ld a, [$b884]

jr_027_785a:
    ld c, l
    ld b, h
    ld l, a
    ld h, $00
    add hl, hl
    ld d, h
    ld e, l
    add hl, hl
    add hl, de
    add hl, bc
    ld de, $c0aa
    ld a, $51
    ld [de], a
    inc de
    ld b, $04

jr_027_786e:
    ld a, [hl+]
    ld [de], a
    inc de
    xor a
    ld [de], a
    inc de
    dec b
    jr nz, jr_027_786e

    ld a, [hl+]
    set 7, a
    ld [de], a
    inc de
    ld b, $06
    xor a

jr_027_787f:
    ld [de], a
    inc de
    dec b
    jr nz, jr_027_787f

    push hl
    ld hl, $c0aa
    call Call_000_23e9
    call Call_000_2424
    pop hl
    ld a, [$c0a7]
    cp $20
    jr z, jr_027_7912

    ld a, [$cb50]
    cp $20
    jr z, jr_027_7912

    ld b, [hl]
    ld a, [$dd01]
    cp b
    jp z, Jump_027_7949

    ld a, b
    ld [$dd01], a
    push af
    push bc
    xor a
    ldh [rBGP], a
    ldh [rOBP0], a
    ldh [rOBP1], a
    ld hl, $9000
    ld bc, $0010
    call ZeroOutHL
    ld hl, $9800
    ld bc, $0400
    ld a, $83
    ld [$c0a2], a
    call ZeroOutHL
    call Call_000_2273
    call Call_000_2424
    call SafeTurnOffLCDDuringVBlank
    ld hl, $7976
    call Call_000_23e9
    call Call_000_2424
    pop bc
    pop af
    add a
    add b
    ld hl, $7b6a
    call Call_000_0a47
    ld de, $79a6
    call Call_000_24ea
    ld a, [$dd01]
    ld b, a
    add a
    add b
    inc a
    ld hl, $7b6a
    call Call_000_0a47
    ld de, $79b6
    call Call_000_24ea
    ld a, [$dd01]
    ld b, a
    add a
    add b
    inc a
    inc a
    ld hl, $7b6a
    call Call_000_0a47
    ld de, $79c6
    call Call_000_24ea

jr_027_7912:
    call SafeTurnOffLCDDuringVBlank
    ld hl, $9000
    ld bc, $0010
    call ZeroOutHL
    ld hl, $9800
    ld bc, $0400
    call ZeroOutHL
    xor a
    ldh [rBGP], a
    ldh [rOBP0], a
    ldh [rOBP1], a
    call Call_000_2273
    call Call_000_2424
    call SafeTurnOffLCDDuringVBlank
    ld hl, $7996
    call Call_000_23e9
    call Call_000_2424
    ld hl, $7976
    call Call_000_23e9
    call Call_000_2424

Jump_027_7949:
    ret


    ld a, [$dd00]
    or a
    ret z

    ld hl, $7996
    call Call_000_23e9
    ret


    ld e, c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    xor c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    cp c
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    cp c
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    cp c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    sbc c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    sbc c
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
    and c
    nop
    nop

Jump_027_79c9:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, c
    dec de
    ld [$0b00], sp
    ld [$eaea], a
    ld [$a9ea], a
    ld bc, $4fcd
    inc c
    ret nc

    ld a, c
    ld h, $08
    nop
    dec bc
    add hl, sp
    call $0c48
    ret nc

    inc [hl]
    and l
    ret


    ret


    add b
    ret nc

    ld a, c
    ld sp, $0008
    dec bc
    inc c
    and l
    jp z, Jump_027_7ec9

    ret nc

    ld b, $a5
    set 1, c
    ld a, [hl]
    ld a, c
    inc a
    ld [$0b00], sp
    ldh a, [rNR12]
    and l
    ret


    ret


    ret z

    ret nc

    inc e
    and l
    jp z, Jump_027_79c9

    ld b, a
    ld [$0b00], sp
    call nz, $16d0
    and l
    set 1, c
    dec b
    ret nc

    db $10
    and d
    jr z, jr_027_7aa0

    ld d, d
    ld [$0b00], sp
    xor c
    rst $20
    sbc a
    ld bc, $7ec0
    add sp, -$18
    add sp, -$18
    ldh [$ff79], a
    ld e, l
    ld [$0400], sp
    adc h
    ret nc

    db $f4
    ld h, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, c
    db $10
    ld [$0b00], sp
    ld c, h
    jr nz, @+$0a

    ld [$eaea], a
    ld [$60ea], a
    ld [$00ea], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $4444
    ld b, h
    ld b, h
    ld bc, $4801
    ld c, b
    ld c, b
    ld c, b
    ld [bc], a
    ld bc, $4c4c
    ld c, h
    ld c, h
    inc bc
    ld bc, $5050
    ld d, b
    ld d, b
    inc b
    ld bc, $0000
    nop
    nop
    nop
    ld bc, $0000
    nop
    nop
    nop
    ld bc, $5454
    ld d, h
    ld d, h
    ld de, $5401
    ld d, h
    ld d, h
    ld d, h
    ld de, $5401
    ld d, h
    ld d, h
    ld d, h
    ld de, $5401
    ld d, h
    ld d, h
    ld d, h
    ld de, $5401
    ld d, h

jr_027_7aa0:
    ld d, h
    ld d, h
    ld de, $5801
    ld e, c
    ld e, d
    ld e, e
    ld [de], a
    ld bc, $5958
    ld e, d
    ld e, e
    ld [de], a
    ld bc, $0000
    nop
    nop
    nop
    ld bc, $0404
    inc b
    inc b
    dec b
    nop
    ld [$0a09], sp
    dec bc
    ld b, $01
    ld [$0a09], sp
    dec bc
    rlca
    ld bc, $3030
    jr nc, jr_027_7afc

    nop
    ld bc, $1110
    ld [de], a
    inc de
    add hl, bc
    ld bc, $1514
    ld d, $17
    ld a, [bc]
    ld bc, $1918
    ld a, [de]
    dec de
    dec bc
    ld bc, $1d1c
    ld e, $1f
    inc c
    ld bc, $2120
    ld [hl+], a
    inc hl
    dec c
    ld bc, $2524
    ld h, $27
    ld c, $01
    inc c
    dec c
    ld c, $0f
    ld [$0001], sp
    nop
    nop
    nop

jr_027_7afc:
    nop
    ld bc, $0000
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
    nop
    ld bc, $0000
    nop
    nop
    nop
    ld bc, $2928
    ld a, [hl+]
    dec hl
    rrca
    nop
    inc l
    dec l
    ld l, $2f
    stop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0000
    nop
    nop
    nop
    ld bc, $5858
    ld e, b
    ld e, b
    nop
    ld bc, $0000
    nop
    nop
    nop
    ld bc, $3434
    inc [hl]
    inc [hl]
    nop
    ld bc, $4848
    ld c, b
    ld c, b
    ld [bc], a
    ld bc, $3434
    inc [hl]
    inc [hl]
    nop
    ld bc, $4c4c
    ld c, h
    ld c, h
    inc bc
    ld bc, $3434
    inc [hl]
    inc [hl]
    nop
    ld bc, $3838
    jr c, jr_027_7b94

    nop
    ld bc, $3c3c
    inc a
    inc a
    nop
    ld bc, $4040
    ld b, b
    ld b, b
    nop
    ld bc, $71f6
    ccf
    adc e
    ld [hl], c
    ld a, $ef
    ld a, l
    inc a
    or $71
    ccf
    adc e
    ld [hl], c
    ld a, $1a
    ld a, d
    dec a
    nop
    inc b
    ld e, e
    db $10
    ld [bc], a
    dec d
    nop
    sbc $df
    or h
    nop
    db $10
    add hl, bc
    ld [bc], a
    or a
    ld bc, $3534
    inc h
    nop
    xor $ef
    and e
    nop

jr_027_7b94:
    scf
    ld sp, hl
    ld de, $020a
    push af
    ld bc, $c735
    ret


    inc [hl]
    inc h
    sbc a
    dec h
    jr nz, jr_027_7bc5

    ld [hl+], a
    inc hl
    dec bc
    ld [bc], a
    dec b
    inc b
    cp b
    rst $38
    rst $00
    ret


    cp c
    ld h, $27
    jr nc, @+$33

    ld [hl-], a
    db $fd
    inc sp
    dec bc
    inc b
    ld [hl], $37
    ld [hl], $37
    ld c, b
    ld c, c
    rst $38
    ld l, b
    ld l, c
    rst $00
    ret z

    ret z

    ret


jr_027_7bc5:
    jr z, jr_027_7bf0

    rst $28
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    dec bc
    ld b, $70
    ld [hl], c
    ld [hl], d
    rst $38
    ld [hl], e
    ld e, b
    ld e, c
    ld a, b
    ld a, c
    rst $00
    rst $20
    add sp, $7f
    ret


    jr c, jr_027_7c17

    ld d, b
    ld d, c
    ld d, d
    ld d, e
    dec bc
    ld [$baff], sp
    cp e
    cp h
    cp l
    xor b
    xor c
    xor b
    xor c
    rst $38
    rst $10
    ret c

jr_027_7bf0:
    ret c

    reti


    xor b
    xor c
    ld h, b
    ld h, c
    ei
    ld h, d
    ld h, e
    dec bc
    ld a, [bc]
    jp z, $cccb

    call Call_027_7f45
    ld b, l
    ld b, h
    ld b, l
    ldh [$ffe1], a
    pop hl
    ldh [c], a
    add c
    nop
    ld a, e
    ld b, l
    ld b, a
    dec bc
    inc c
    and b
    and c
    and d
    and e
    ld h, b
    ld bc, $45ff

jr_027_7c17:
    ldh a, [$fff1]
    pop af
    ldh a, [c]
    ld b, h
    inc bc
    inc b
    ld a, e
    ld b, l
    ld b, h
    inc c
    ld [bc], a
    or b
    or c
    or d
    or e
    add d
    inc bc
    sbc $40
    inc b
    ld a, [bc]
    dec bc
    dec bc
    inc c
    dec c
    inc b
    ret nz

    pop bc
    ei
    jp nz, $e3c3

    ld bc, $4545
    ld a, [de]
    dec de
    ld c, [hl]
    db $ed
    ld c, a
    dec c
    inc b
    ld c, d
    ld c, e
    push hl
    ld bc, $4544
    ld a, [hl+]
    or a
    dec hl
    ld e, [hl]
    ld e, a
    dec c
    ld [$5b5a], sp
    push hl
    dec b
    ld b, l
    rst $18
    ld b, l
    ld a, [hl-]
    dec sp
    dec sp
    inc a
    dec c
    ld [$6b6a], sp
    inc a
    rlca
    inc b
    rrca
    inc c
    nop
    ld bc, $7b7a
    ld [$0e01], a
    inc c
    ei
    jp c, Jump_000_07db

    ld [$1e1d], sp
    rra
    dec a
    ld a, $ed
    ret


    dec bc
    inc e
    ld [$07eb], a
    ld [$2e2d], sp
    cpl
    or a
    ld c, h
    ld c, l
    ccf
    ld a, [bc]
    ld e, $10
    ld [de], a
    inc de
    nop
    ld d, h
    rlca
    ld d, l
    ld d, [hl]
    ld d, a
    or h
    nop
    ld a, [bc]
    ld [hl+], a
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
    dec e
    nop
    nop
    inc b
    sbc e
    db $10
    ld [bc], a
    dec d
    nop
    sbc $df
    or [hl]
    nop
    ld b, e
    ld bc, $fe10
    ld bc, $0102
    inc [hl]
    dec [hl]
    inc [hl]
    dec [hl]
    ld e, h
    ld l, h
    sbc a
    ld l, l
    dec [hl]
    inc [hl]
    xor $ef
    and b
    nop
    pop hl
    nop
    ld de, $42ee
    ld bc, $3734
    ld de, $0206
    ld e, l
    ld a, h
    ld a, l
    rst $38
    dec [hl]
    inc [hl]
    rst $00
    ret


    dec [hl]
    dec b
    ld b, $20
    rst $38
    ld hl, $2322
    ld de, $2401
    dec h
    ld h, h
    rst $20
    ld h, l
    ld h, [hl]
    ld h, a
    rlca
    ld [bc], a
    ld b, c
    inc b
    cp b
    rst $00
    ret


    rst $38
    cp c
    dec d
    ld d, $30
    ld sp, $3332
    ld de, $017f
    ld h, $27
    ld [hl], h
    ld [hl], l
    halt
    ld [hl], a
    inc bc
    inc b
    rst $38
    ld [hl], $37
    ld [hl], $37
    ld c, b
    ld c, c
    ld l, b
    ld l, c
    rst $38
    rst $00
    ret z

    ret z

    ret


    rlca
    ld [$4140], sp
    rst $38
    ld b, d
    ld b, e
    ld de, $2801
    add hl, hl
    xor d
    xor e
    ei
    xor h
    xor l
    inc bc
    ld b, $70
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld e, b
    rst $38
    ld e, c
    ld a, b
    ld a, c
    rst $00
    rst $20
    add sp, -$37
    rla
    rst $38
    jr jr_027_7da7

    ld d, c
    ld d, d
    ld d, e
    ld de, $3801
    rst $18
    add hl, sp
    ld l, [hl]
    ld l, a
    ld a, [hl]
    ld a, a
    inc bc
    ld [$bbba], sp
    rst $38
    cp h
    cp l
    xor b
    xor c
    xor b
    xor c
    rst $10
    ret c

    rst $38
    ret c

    reti


    add hl, bc
    add hl, de
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    rst $28
    push de
    sub $a8
    xor c
    rlca
    ld [bc], a
    jp z, $cccb

    rst $18
    call Call_027_4544
    ld b, l
    ld b, l
    ld b, a
    nop
    push hl
    and $eb
    ldh [$ffe1], a
    stop
    db $e4
    inc bc
    inc c
    and b
    and c
    and d
    ld l, l
    and e
    push hl
    ld bc, $0403
    and c
    ld [bc], a
    push af
    or $09
    ld [bc], a
    rst $28
    or b
    or c

jr_027_7da7:
    or d
    or e
    inc bc
    inc b
    cp [hl]
    cp a
    cp a
    rst $20
    cp a
    adc $cf
    pop bc
    inc b
    add hl, bc
    inc b
    ret nz

    pop bc
    jp nz, $c3fd

    db $e3
    dec b
    and h
    and l
    and l
    and l
    and [hl]
    and a
    sub $a1
    ld b, $f0
    pop af
    stop
    db $f4
    inc bc
    ld [de], a
    ld c, d
    ld c, e
    ld a, [hl]
    push bc
    rlca
    or h
    or l
    or l
    or l
    or [hl]
    or a
    pop bc
    ld [$1dbf], sp
    ld e, $1f
    dec a
    ld a, $c9
    inc bc
    inc d
    ld e, d
    db $fd
    ld e, e
    push hl
    add hl, bc
    call nz, $c5c4
    push bc
    push bc
    add $7e
    and c
    ld a, [bc]
    dec l
    ld l, $2f
    ld c, h
    ld c, l
    ccf
    inc bc
    ld d, $b3
    ld l, d
    ld l, e
    ret


    dec bc
    add e
    inc c
    dec c
    ld c, $10
    nop
    rrca
    or $03
    jr jr_027_7e83

    ld a, e
    db $ed
    ld bc, $4544
    rst $30
    ld hl, sp+$4c
    ld hl, $0300
    ld a, [de]
    jp c, $0fdb

    inc b
    ld [bc], a
    ld de, $0347
    inc e
    ld h, e
    ld [$efeb], a
    ld bc, $12e2
    inc bc
    ld [bc], a
    db $10
    ld [de], a
    rla
    nop
    rrca
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld hl, sp+$00
    ld [bc], a
    ld [hl+], a
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
    dec e
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

jr_027_7e83:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_027_7ec9:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_027_7f45:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
