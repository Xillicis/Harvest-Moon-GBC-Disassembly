; Disassembly of "harvest_moon.gbc"
; This file was created with:
; mgbdis v2.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $009", ROMX[$4000], BANK[$9]

    add hl, bc
    push hl
    push af
    ld l, $78
    ld h, $6d
    ld a, $20
    call BankSwitchCallHL
    pop af
    pop hl
    call ClearBGMap0
    call ClearBGMap1
    call ClearShadowOAMBuffer
    push hl
    push af
    ld l, $6e
    ld h, $45
    ld a, $08
    call BankSwitchCallHL
    pop af
    pop hl
    ld hl, $45e1
    ld c, $1c
    ld de, $8800
    call Call_000_31a0
    ld hl, $4001
    ld c, $1c
    ld de, $9000
    call Call_000_31a0
    ld hl, $4bf9
    ld c, $1c
    ld de, $8000
    call Call_000_31a0
    ld hl, $4fea
    ld c, $1c
    ld de, $9800
    call Call_000_31a0
    xor a
    ldh [$ff93], a
    ldh [$ff91], a
    xor a
    ld hl, $cb14
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    dec a
    ld [$cb1c], a
    ld [wTextID], a
    ld a, $01
    ld [$cb56], a
    ld a, [$cd2a]
    cp $08
    jr c, jr_009_4073

    xor a
    ld [$cd2a], a

jr_009_4073:
    add a
    ld hl, $40b6
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, l
    ld [$cd28], a
    ld a, h
    ld [$cd29], a
    xor a
    ld [$cd69], a
    ld [$cd6a], a
    ld [$cd2b], a
    ld a, $1d
    ld [$cb4e], a
    ld hl, wShadowOAM
    ld bc, $00a0
    call ZeroOutHL
    ld a, $54
    call Call_000_25c5
    ld a, $83
    ld [wLCDCTempStorage], a
    ld a, $00
    ldh [rSTAT], a
    xor a
    ldh [rIF], a
    ld a, $03
    ldh [rIE], a
    ret


    call c, $ec40
    ld b, b
    db $fc
    ld b, b
    inc c
    ld b, c
    inc e
    ld b, c
    inc l
    ld b, c
    inc a
    ld b, c
    ld c, h
    ld b, c
    call Call_000_0d90
    ld a, [$cb4e]
    ld b, a
    ld a, [$cb4f]
    or b
    ret nz

    call Call_000_33c4
    call Call_009_46ed
    call Call_009_416a
    ret


    db $fd
    ld b, c
    nop
    inc b
    ld b, d
    ld c, h
    ld b, c
    db $ec
    ld b, b
    ld c, h
    ld b, c
    db $ec
    ld b, b
    nop
    jr @-$7c

    db $fd
    ld b, c
    ld bc, $4204
    call c, $fc40
    ld b, b
    call c, $fc40
    ld b, b
    ld [$1412], sp
    db $fd
    ld b, c
    ld [bc], a
    inc b
    ld b, d
    db $ec
    ld b, b
    inc c
    ld b, c
    db $ec
    ld b, b
    inc c
    ld b, c
    ld [de], a
    jr jr_009_4121

    db $fd
    ld b, c
    inc bc
    inc b
    ld b, d
    db $fc
    ld b, b
    inc e
    ld b, c
    db $fc
    ld b, b
    inc e
    ld b, c
    ld [$1612], sp
    db $fd
    ld b, c
    inc b
    inc b
    ld b, d

jr_009_4121:
    inc c
    ld b, c
    inc l
    ld b, c
    inc c
    ld b, c
    inc l
    ld b, c
    ld [$1a12], sp
    db $fd
    ld b, c
    dec b
    inc b
    ld b, d
    inc e
    ld b, c
    inc a
    ld b, c
    inc e
    ld b, c
    inc a
    ld b, c
    ld [$1712], sp
    db $fd
    ld b, c
    ld b, $04
    ld b, d
    inc l
    ld b, c
    ld c, h
    ld b, c
    inc l
    ld b, c
    ld c, h
    ld b, c
    ld [$1812], sp
    db $fd
    ld b, c
    rlca
    inc b
    ld b, d
    inc a
    ld b, c
    call c, $3c40
    ld b, c
    call c, $0840
    ld [de], a
    add hl, de
    or l
    ld b, d
    ld h, h
    ld b, c
    sub [hl]
    ld c, h
    ld h, b
    ld b, c
    ld b, a
    ld b, e
    sub [hl]
    ld c, h
    ld h, b
    ld b, c

Call_009_416a:
    ld hl, $cd69
    ld b, $10
    call Call_009_43b4
    ld b, $04
    inc hl
    call z, Call_009_43b4
    ld a, [$cd2a]
    ld hl, $41bd
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld c, [hl]
    inc hl
    ld b, [hl]
    ld hl, $41cd
    ld a, [sPlayerGender]
    or a
    jr z, jr_009_4194

    ld hl, $41d5

jr_009_4194:
    ld a, [$cd6a]
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_000_20de
    ld a, [$cd2a]
    ld hl, $41dd
    add a
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld c, [hl]
    inc hl
    ld b, [hl]
    inc hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_000_20de
    ret


    sbc b
    ld d, b
    adc b
    ld b, b
    ld d, b
    jr nc, @+$22

    ld c, b
    ld [$2850], sp
    add b
    ld e, b
    adc b
    adc b
    add b
    call nc, $bb43
    ld b, e
    db $ed
    ld b, e
    cp e
    ld b, e
    and d
    ld b, [hl]
    cp e
    ld b, [hl]
    and d
    ld b, [hl]
    call nc, $5046
    ld c, b
    ld [hl], c
    ld b, [hl]
    ld d, b
    ld c, b
    ld b, $44
    ld d, b
    ld c, b
    ld h, a
    ld b, h
    ld d, b
    ld c, b
    ld h, [hl]
    ld b, l
    ld d, b
    ld c, b
    cp h
    ld b, h
    ld d, b
    ld c, b
    cp e
    ld b, l
    ld d, b
    ld c, b
    dec b
    ld b, l
    ld d, b
    ld c, b
    db $10
    ld b, [hl]
    ld h, b
    ld l, c
    ld a, [hl+]
    ld [$cd2a], a
    ret


    ld h, b
    ld l, c
    ld a, [$cd24]
    bit 0, a
    jr nz, jr_009_424f

    bit 1, a
    jp nz, Jump_009_42b2

    bit 4, a
    jr nz, jr_009_4225

    bit 5, a
    jr nz, jr_009_422e

    bit 6, a
    jr nz, jr_009_4232

    bit 7, a
    jr nz, jr_009_423c

    dec hl
    dec hl
    ret


jr_009_4225:
    ld a, $48
    call Call_000_25ce
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


jr_009_422e:
    inc hl
    inc hl
    jr jr_009_4225

jr_009_4232:
    ld a, $04
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    jr jr_009_4225

jr_009_423c:
    ld a, $06
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    jr jr_009_4225

jr_009_4246:
    ld a, $51
    call Call_000_25cb
    pop hl
    dec hl
    dec hl
    ret


jr_009_424f:
    push hl
    ld a, [$cd2a]
    or a
    jr z, jr_009_4274

    cp $04
    jr nz, jr_009_4261

    ld a, [$b89a]
    cp $01
    jr z, jr_009_4246

jr_009_4261:
    ld a, [$b890]
    or a
    jr nz, jr_009_4246

    ld a, [$b891]
    or a
    jr nz, jr_009_4246

    ld a, [$b899]
    cp $01
    jr z, jr_009_4246

jr_009_4274:
    ld a, $08
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [sCurrentHour]
    cp [hl]
    jr c, jr_009_4246

    inc hl
    cp [hl]
    jr nc, jr_009_4246

    inc hl
    pop de
    push hl
    call Call_000_1056
    pop hl
    ld a, $42
    call Call_000_25cb
    ld a, [hl+]
    bit 7, a
    jr nz, jr_009_42a0

jr_009_4297:
    ld [$cb50], a
    ld a, $1d
    ld [$cb4f], a
    ret


jr_009_42a0:
    and $7f
    cp $02
    jr nz, jr_009_4297

    ld hl, $415c
    ld a, l
    ld [$cd28], a
    ld a, h
    ld [$cd29], a
    ret


Jump_009_42b2:
    dec hl
    dec hl
    ret


    push bc
    call Call_000_0f73
    ld a, [sCurrentHour]
    cp $05
    jr z, jr_009_4318

    cp $10
    call z, Call_009_431d
    call Call_009_436a
    ld a, [sCurrentHour]
    cp $05
    jr nz, jr_009_42dc

    ld a, [sCurrentMinute]
    cp $0e
    jr nz, jr_009_4303

    dec a
    ld [sCurrentMinute], a
    jr jr_009_4303

jr_009_42dc:
    ld a, [sCurrentHour]
    cp $12
    jr nz, jr_009_4303

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
    jr z, jr_009_4303

    ld a, $03
    ld [$b899], a

jr_009_4303:
    xor a
    ld [$cb56], a
    ld a, $05
    ld [$c910], a
    ld a, $01
    ld [$cb50], a
    ld a, $1d
    ld [$cb4f], a
    pop hl
    ret


jr_009_4318:
    pop hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


Call_009_431d:
    xor a
    ld [$cb90], a
    ld a, [sShipmentPayment]
    ld b, a
    ld a, [sShipmentPayment+1]
    or b
    jr z, jr_009_433f

    ld a, [sShipmentPayment]
    ld [$b8fc], a
    ld a, [sShipmentPayment+1]
    ld [$b8fd], a
    xor a
    ld [sShipmentPayment], a
    ld [sShipmentPayment+1], a
    ret


jr_009_433f:
    xor a
    ld [$b8fc], a
    ld [$b8fd], a
    ret


    push bc
    ld a, $05
    ld [sCurrentHour], a
    ld a, $0d
    ld [sCurrentMinute], a
    call UpdateHourTileData
    pop hl
    xor a
    ld [$cb56], a
    ld a, $05
    ld [$c910], a
    ld a, $01
    ld [$cb50], a
    ld a, $1d
    ld [$cb4f], a
    ret


Call_009_436a:
    ld a, [sCurrentHour]
    inc a
    ld [sCurrentHour], a
    cp $18
    jr nc, jr_009_4379

    call UpdateHourTileData
    ret


jr_009_4379:
    xor a
    ld [sCurrentHour], a
    call UpdateHourTileData
    ld a, [sCurrentDayCounter]
    inc a
    ld [sCurrentDayCounter], a
    cp $1e
    jr nc, jr_009_438f

    call UpdateDayOfTheWeekTileData
    ret


jr_009_438f:
    xor a
    ld [sCurrentDayCounter], a
    call UpdateDayOfTheWeekTileData
    ld a, [sCurrentSeason]
    inc a
    ld [sCurrentSeason], a
    cp $04
    jr nc, jr_009_43a5

    call Call_000_08b7
    ret


jr_009_43a5:
    xor a
    ld [sCurrentSeason], a
    call Call_000_08b7
    ld a, [sCurrentYear]
    inc a
    ld [sCurrentYear], a
    ret


Call_009_43b4:
    inc [hl]
    ld a, [hl]
    cp b
    ret c

    xor a
    ld [hl], a
    ret


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
    rst $30
    nop
    add hl, bc
    db $10
    rst $30
    ld hl, sp+$08
    db $10
    rst $28
    nop
    rlca
    ld de, $f8ef
    ld b, $11
    rst $20
    nop
    ld bc, $e710
    ld hl, sp+$00
    db $10
    add b
    rst $30
    nop
    dec c
    db $10
    rst $30
    ld hl, sp+$0c
    db $10
    rst $28
    nop
    dec bc
    ld de, $f8ef
    ld a, [bc]
    ld de, $00e7
    ld bc, $e710
    ld hl, sp+$00
    db $10
    add b
    inc b
    ld de, $1315
    inc b
    add hl, bc
    dec d
    inc de
    inc b
    jp hl


    dec d
    inc de
    db $f4
    ld de, $130f
    db $f4
    add hl, bc
    rrca
    inc de
    db $f4
    jp hl


    rrca
    inc de
    db $fc
    add hl, de
    inc de
    inc de
    db $fc
    pop hl
    ld de, $0413
    add hl, de
    ld d, $13
    db $f4
    add hl, de
    db $10
    inc de
    inc b
    pop hl
    inc d
    inc de
    db $f4
    pop hl
    ld c, $13
    db $fc
    ld de, $131c
    db $fc
    add hl, bc
    dec de
    inc de
    db $fc
    ld bc, $131a
    db $fc
    ld sp, hl
    add hl, de
    inc de
    db $fc
    pop af
    jr @+$15

    db $fc
    jp hl


    rla
    inc de
    inc b
    ld bc, $1315
    inc b
    ld sp, hl
    dec d
    inc de
    inc b
    pop af
    dec d
    inc de
    db $f4
    ld bc, $130f
    db $f4
    ld sp, hl
    rrca
    inc de
    db $f4
    pop af
    rrca
    inc de
    add b
    inc b
    rla
    ld d, l
    inc de
    inc b
    rrca
    ld d, h
    inc de
    db $f4
    rla
    ld d, e
    inc de
    db $f4
    rrca
    ld d, d
    inc de
    db $fc
    rst $20
    ld de, $fc13
    rla
    ld [hl+], a
    inc de
    db $fc
    rrca
    ld hl, $fc13
    rlca
    jr nz, jr_009_449a

    inc b
    rst $30
    dec d
    inc de
    inc b
    rst $28
    dec d
    inc de
    inc b
    rst $20
    inc d
    inc de
    db $f4
    rst $28
    rrca
    inc de
    db $f4
    rst $30
    rrca

jr_009_449a:
    inc de
    db $f4
    rst $20
    ld c, $13
    db $fc
    rst $38
    rra
    inc de
    db $fc
    rst $30
    ld e, $13
    db $fc
    rst $28
    dec e
    inc de
    inc b
    rlca
    dec d
    inc de
    inc b
    rst $38
    dec d
    inc de
    db $f4
    rlca
    rrca
    inc de
    db $f4
    rst $38
    rrca
    inc de
    add b
    db $f4
    di
    rrca
    inc de
    db $f4
    db $eb
    ld c, $13
    inc b
    di
    dec d
    inc de
    inc b
    db $eb
    inc d
    inc de
    inc b
    inc de
    ld d, l
    inc de
    inc b
    dec bc
    ld d, h
    inc de
    db $f4
    inc de
    ld d, e
    inc de
    db $f4
    dec bc
    ld d, d
    inc de
    db $fc
    inc de
    ld [hl+], a
    inc de
    db $fc
    db $eb
    ld de, $fc13
    dec bc
    ld h, $13
    db $fc
    inc bc
    dec h
    inc de
    db $fc
    ei
    inc h
    inc de
    db $fc
    di
    inc hl
    inc de
    inc b
    inc bc
    dec d
    inc de
    inc b
    ei
    dec d
    inc de
    db $f4
    inc bc
    rrca
    inc de
    db $f4
    ei
    rrca
    inc de
    add b
    db $f4
    ld [$130f], a
    db $f4
    ldh [c], a
    ld c, $13
    inc b
    ld [$1315], a
    inc b
    ldh [c], a
    inc d
    inc de
    inc b
    ld a, [de]
    ld e, c
    inc de
    inc b
    ld [de], a
    ld e, b
    inc de
    db $f4
    ld a, [de]
    ld d, a
    inc de
    db $f4
    ld [de], a
    ld d, [hl]
    inc de
    db $fc
    ldh [c], a
    ld de, $fc13
    ld a, [de]
    dec l
    inc de
    db $fc
    ld [de], a
    inc l
    inc de
    db $fc
    ld a, [bc]
    dec hl
    inc de
    db $fc
    ld [bc], a
    ld a, [hl+]
    inc de
    db $fc
    ld a, [$1329]
    db $fc
    ldh a, [c]
    jr z, jr_009_4554

    db $fc
    ld [$1327], a
    inc b
    ld a, [bc]
    dec d
    inc de
    inc b
    ld [bc], a
    dec d
    inc de
    inc b
    ld a, [$1315]
    inc b
    ldh a, [c]
    dec d

jr_009_4554:
    inc de
    db $f4
    ld a, [bc]
    rrca
    inc de
    db $f4
    ld [bc], a
    rrca
    inc de
    db $f4
    ld a, [$130f]
    db $f4
    ldh a, [c]
    rrca
    inc de
    add b
    db $f4
    db $ec
    rrca
    inc de
    db $f4
    db $e4
    ld c, $13
    inc b
    db $ec
    dec d
    inc de
    inc b
    db $e4
    inc d
    inc de
    inc b
    inc d
    ld e, e
    inc de
    db $f4
    inc d
    ld e, d
    inc de
    db $fc
    db $e4
    ld de, $fc13
    inc d
    ld b, h
    inc de
    db $fc
    inc c
    ld b, e
    inc de
    db $fc
    inc b
    ld b, d
    inc de
    db $fc
    db $fc
    ld b, c
    inc de
    db $fc
    db $f4
    ld b, b
    inc de
    db $fc
    db $ec
    ld l, $13
    inc b
    inc c
    dec d
    inc de
    inc b
    inc b
    dec d
    inc de
    inc b
    db $fc
    dec d
    inc de
    inc b
    db $f4
    dec d
    inc de
    db $f4
    inc c
    rrca
    inc de
    db $f4
    inc b
    rrca
    inc de
    db $f4
    db $fc
    rrca
    inc de
    db $f4
    db $f4
    rrca
    inc de
    add b
    inc b
    ld d, $59
    inc de
    inc b
    ld c, $58
    inc de
    db $f4
    ld d, $57
    inc de
    db $f4
    ld c, $56
    inc de
    db $fc
    ld d, $2d
    inc de
    db $fc
    ld c, $49
    inc de
    db $fc
    ld b, $48
    inc de
    db $fc
    cp $47
    inc de
    db $fc
    or $46
    inc de
    db $fc
    xor $45
    inc de
    inc b
    ld b, $15
    inc de
    inc b
    cp $15
    inc de
    inc b
    or $15
    inc de
    inc b
    xor $15
    inc de
    inc b
    and $14
    inc de
    db $fc
    and $11
    inc de
    db $f4
    ld b, $0f
    inc de
    db $f4
    cp $0f
    inc de
    db $f4
    or $0f
    inc de
    db $f4
    xor $0f
    inc de
    db $f4
    and $0e
    inc de
    add b
    inc b
    ld a, [de]
    ld e, c
    inc de
    inc b
    ld [de], a
    ld e, b
    inc de
    db $f4
    ld a, [de]
    ld d, a
    inc de
    db $f4
    ld [de], a
    ld d, [hl]
    inc de
    db $fc
    ld a, [de]
    dec l
    inc de
    db $fc
    ld [de], a
    ld c, a
    inc de
    db $fc
    ld a, [bc]
    ld c, [hl]
    inc de
    db $fc
    ld [bc], a
    ld c, l
    inc de
    db $fc
    ld a, [$134c]
    db $fc
    ldh a, [c]
    ld c, e
    inc de
    db $fc
    ld [$134a], a
    inc b
    ld a, [bc]
    dec d
    inc de
    db $f4
    ld a, [bc]
    rrca
    inc de
    inc b
    ld [$1315], a
    db $f4
    ld [$130f], a
    inc b
    ldh a, [c]
    dec d
    inc de
    db $f4
    ldh a, [c]
    rrca
    inc de
    inc b
    ldh [c], a
    inc d
    inc de
    db $fc
    ldh [c], a
    ld de, $f413
    ldh [c], a
    ld c, $13
    inc b
    ld [bc], a
    dec d
    inc de
    inc b
    ld a, [$1315]
    db $f4
    ld [bc], a
    rrca
    inc de
    db $f4
    ld a, [$130f]
    add b
    inc b
    add hl, bc
    ld d, $13
    db $fc
    add hl, bc
    inc de
    inc de
    db $f4
    add hl, bc
    db $10
    inc de
    db $fc
    ld bc, $1351
    db $fc
    ld sp, hl
    ld d, b
    inc de
    inc b
    ld bc, $1315
    inc b
    ld sp, hl
    dec d
    inc de
    inc b
    pop af
    inc d
    inc de
    db $fc
    pop af
    ld de, $f413
    ld bc, $130f
    db $f4
    ld sp, hl
    rrca
    inc de
    db $f4
    pop af
    ld c, $13
    add b
    rst $30
    nop
    dec [hl]
    db $10
    rst $30
    ld hl, sp+$34
    db $10
    rst $28
    nop
    inc sp
    ld de, $f8ef
    ld [hl-], a
    ld de, $00e7
    ld sp, $e711
    ld hl, sp+$30
    ld de, $f780
    nop
    dec sp
    db $10
    rst $30
    ld hl, sp+$3a
    db $10
    rst $28
    nop
    add hl, sp
    ld de, $f8ef
    jr c, jr_009_46dc

    rst $20
    nop
    scf
    ld de, $f8e7
    ld [hl], $11
    add b
    rst $30
    nop
    ccf
    db $10
    rst $30
    ld hl, sp+$3e
    db $10

jr_009_46dc:
    rst $28
    nop
    dec a
    ld de, $f8ef
    inc a
    ld de, $00e7
    scf
    ld de, $f8e7
    ld [hl], $11
    add b

Call_009_46ed:
    ld hl, $cd28
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    inc hl
    ld bc, $4700
    push bc
    ld b, h
    ld c, l
    ld h, d
    ld l, e
    jp hl


    ld a, l
    ld [$cd28], a
    ld a, h
    ld [$cd29], a
    ret


    xor a
    ldh [$ffa4], a
    ld hl, $4713
    call Call_009_5435
    ret


    xor [hl]
    ld d, a
    inc e
    rrca
    ld h, e
    inc e
    call $1c65
    and c
    ld c, b
    call Call_000_0d90
    ld a, [$cb4e]
    ld b, a
    ld a, [$cb4f]
    or b
    ret nz

    call Call_009_4747
    call Call_000_33c4
    call Call_009_46ed
    push hl
    push af
    ld l, $01
    ld h, $40
    ld a, $1b
    call BankSwitchCallHL
    pop af
    pop hl
    call Call_009_484e
    call Call_009_4816
    ret


Call_009_4747:
    ldh a, [$ff8b]
    and $04
    jp nz, Jump_009_47e9

    ld a, [wLCDCTempStorage]
    bit 5, a
    ret z

    ld hl, sPlayerMoney
    ld de, wTempPlayerMoney
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    call Call_000_3268
    ld a, [wDecimalPlayerMoneyTileID]
    ld bc, $8060
    call Call_009_4794
    ld a, [wDecimalPlayerMoneyTileID+1]
    ld bc, $8068
    call Call_009_4794
    ld a, [wDecimalPlayerMoneyTileID+2]
    ld bc, $8070
    call Call_009_4794
    ld a, [wDecimalPlayerMoneyTileID+3]
    ld bc, $8078
    call Call_009_4794
    ld a, [wDecimalPlayerMoneyTileID+4]
    ld bc, $8080
    call Call_009_4794
    pop hl
    ret


Call_009_4794:
    cp $af
    jr nz, jr_009_479f

    ld hl, $47e4
    call Call_000_20de
    ret


jr_009_479f:
    sub $34
    ld l, a
    add a
    add a
    add l
    ld hl, $47b2
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

Jump_009_47e9:
    ld a, [wLCDCTempStorage]
    bit 5, a
    jr z, jr_009_4803

    ld a, [wLCDCTempStorage]
    ld b, a

jr_009_47f4:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_009_47f4

    ld a, b
    and $df
    ldh [rLCDC], a
    ld [wLCDCTempStorage], a
    ret


jr_009_4803:
    ld a, [wLCDCTempStorage]
    ld b, a

jr_009_4807:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_009_4807

    ld a, b
    or $20
    ldh [rLCDC], a
    ld [wLCDCTempStorage], a
    ret


Call_009_4816:
    ld a, [$cd33]
    or a
    ret z

    push hl
    push af
    ld l, $20
    ld h, $57
    ld a, $20
    call BankSwitchCallHL
    pop af
    pop hl
    ld hl, $4844
    ld a, [$cd32]
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld c, [hl]
    inc hl
    ld b, [hl]
    ld hl, $483f
    call Call_000_20de
    ret


    nop
    nop
    rst $18
    nop
    add b
    inc e
    ld c, b
    inc [hl]
    ld c, b
    ld c, h
    ld c, b
    ld h, h
    ld c, b
    ld a, h
    ld c, b

Call_009_484e:
    ld a, [$cd33]
    cp $04
    ret c

    ld a, [$cd31]
    or a
    jr z, jr_009_4863

    ld bc, $500c
    ld hl, $4884
    call Call_000_20de

jr_009_4863:
    ld a, [$cd31]
    add $04
    ld b, a
    ld a, [$cd33]
    dec a
    cp b
    ret z

    ld a, [$cd31]
    ld b, a
    ld a, [$cd33]
    sub b
    cp $05
    ret c

    ld bc, $508c
    ld hl, $488d
    call Call_000_20de
    ret


    nop
    nop
    ldh [rP1], a
    ld [$f000], sp
    nop
    add b
    nop
    nop
    pop hl
    nop
    ld [$f100], sp
    nop
    add b

Call_009_4896:
    ld hl, sInventory
    cp [hl]
    ret z

    inc hl
    cp [hl]
    ret z

    inc hl
    cp [hl]
    ret


    sbc h
    ld c, h
    sub l
    ld b, [hl]
    dec e
    ld c, c
    daa
    ld c, e
    sbc c
    ld b, e
    nop
    sbc c
    ld h, e
    daa
    ld c, e
    sbc c
    ld b, [hl]
    ld bc, $6699
    daa
    ld c, e
    sbc c
    ld c, c
    ld [bc], a
    sbc c
    ld l, c
    daa
    ld c, e
    sbc c
    ld c, h
    inc bc
    sbc c
    ld l, h
    daa
    ld c, e
    sbc c
    ld c, a
    inc b
    sbc c
    ld l, a
    sbc h
    ld c, h
    ld [$ab6e], sp
    ld c, h
    or l
    ld c, e
    ld sp, hl
    ld c, b
    ld de, $2749
    ld c, e
    sbc c
    ld b, e
    nop
    sbc c
    ld h, e
    daa
    ld c, e
    sbc c
    ld b, [hl]
    ld bc, $6699
    daa
    ld c, e
    sbc c
    ld c, c
    ld [bc], a
    sbc c
    ld l, c
    daa
    ld c, e
    sbc c
    ld c, h
    inc bc
    sbc c
    ld l, h
    daa
    ld c, e
    sbc c
    ld c, a
    inc b
    sbc c
    ld l, a
    ld l, e
    ld c, e
    jp $d64b


    ld c, b
    ld sp, hl
    ld c, b
    ld de, $0549
    ld c, c
    xor e
    ld c, h
    dec e
    ld c, c
    adc d
    ld c, e
    or l
    ld c, e
    sub $48
    ld de, $9c49
    ld c, h
    ld c, h
    ld [hl], c
    xor e
    ld c, h
    or l
    ld c, h
    sub [hl]
    ld c, h
    add hl, de
    ld c, c
    push bc
    call Call_009_4b09
    xor a
    ld [$cd33], a
    ld hl, $495d
    call Call_009_49ae
    ld hl, $4966
    call Call_009_49ae
    ld hl, $496f
    call Call_009_49ae
    ld hl, $4978
    call Call_009_49ae
    ld hl, $4981
    call Call_009_49ae
    ld hl, $498a
    call Call_009_49ae
    ld hl, $4993
    call Call_009_49ae
    ld hl, $499c
    call Call_009_49ae
    ld hl, $49a5
    call Call_009_49ae
    pop hl
    ret


    jp nc, $01b8

    rra
    add hl, de
    ld [hl], a
    ld h, $6e
    ld d, h
    db $d3
    cp b
    ld bc, $231f
    ld [hl], a
    ld a, e
    ld l, [hl]
    ld e, b
    call nc, $02b8
    rra
    dec l
    ld [hl], a
    ret nc

    ld l, [hl]
    ld e, h
    push de
    cp b
    ld [bc], a
    rra
    scf
    ld [hl], a
    dec h
    ld l, a
    ld h, b
    sub $b8
    inc b
    dec bc
    ld b, c
    ld [hl], a
    ld a, d
    ld l, a
    ld h, h
    rst $10
    cp b
    inc b
    dec d
    ld c, e
    ld [hl], a
    rst $08
    ld l, a
    ld l, b
    ret c

    cp b
    ld [$5513], sp
    ld [hl], a
    inc h
    ld [hl], b
    ld l, h
    reti


    cp b
    ld [$5f0d], sp
    ld [hl], a
    ld a, c
    ld [hl], b
    ld [hl], b
    jp c, $07b8

    rra
    ld l, c
    ld [hl], a
    jp c, Jump_009_5070

Call_009_49ae:
    ld e, [hl]
    inc hl
    ld d, [hl]
    inc hl
    ld a, [de]
    cp $63
    ret nc

    call Call_009_49e3
    ret z

    inc hl
    call $49f8
    ret z

    inc hl
    ld de, $cd33
    ld a, [de]
    inc a
    ld [de], a
    dec a
    ld e, a
    add a
    add a
    add e
    ld de, $cd34
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
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
    inc de
    ld a, [hl+]
    ld [de], a
    ret


Call_009_49e3:
    push hl
    ld a, [sCurrentSeason]
    ld hl, $49f4
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    pop hl
    and [hl]
    ret


    ld bc, $0402
    ld [$fae5], sp
    db $f4
    cp b
    ld hl, $4a09
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    pop hl
    and [hl]
    ret


    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0101], sp
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101

Call_009_4b09:
    ld a, $7c
    ld [$cd38], a
    ld [$cd3d], a
    ld [$cd42], a
    ld [$cd47], a
    ld [$cd4c], a
    ld [$cd51], a
    ld [$cd56], a
    ld [$cd5b], a
    ld [$cd60], a
    ret


    push bc
    call Call_000_0924
    pop bc
    ld a, [bc]
    inc bc
    ld [hl+], a
    ld a, [bc]
    inc bc
    ld [hl+], a
    ld a, $02
    ld [hl+], a
    ld a, [$cd31]
    ld e, a
    ld a, [bc]
    inc bc
    add e
    ld e, a
    add a
    add a
    add e
    ld de, $cd34
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    inc de
    inc de
    inc de
    inc de
    ld a, [de]
    ld [hl+], a
    inc a
    ld [hl+], a
    inc a
    push af
    ld a, [bc]
    inc bc
    ld [hl+], a
    ld a, [bc]
    inc bc
    ld [hl+], a
    ld a, $02
    ld [hl+], a
    pop af
    ld [hl+], a
    inc a
    ld [hl+], a
    xor a
    ld [hl], a
    ldh a, [$ff97]
    add $0a
    ldh [$ff97], a
    ld h, b
    ld l, c
    ret


    ld a, [$cd30]
    ld e, a
    add a
    add a
    add e
    ld hl, $cd34
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld [$cd6c], a
    ld a, [hl+]
    ld [$cd6d], a
    xor a
    ld [$cd6b], a
    ld h, b
    ld l, c
    ret


    ld h, b
    ld l, c
    ld a, [$cd33]
    or a
    jr z, jr_009_4bad

    ld b, a
    ld a, [$cd30]
    cp b
    ret c

    ld a, b
    dec a
    ld [$cd30], a
    cp $05
    jr c, jr_009_4bad

    ld a, b
    sub $04
    ld [$cd31], a
    ld a, $04
    ld [$cd32], a
    ret


jr_009_4bad:
    ld [$cd32], a
    xor a
    ld [$cd31], a
    ret


    ld h, b
    ld l, c
    ld a, [$cd33]
    or a
    jr nz, jr_009_4bbf

    inc hl
    inc hl

jr_009_4bbf:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


    ld h, b
    ld l, c
    ld a, [$cd33]
    dec a
    ld c, a
    ldh a, [$ff8b]
    bit 0, a
    jr nz, jr_009_4be2

    bit 1, a
    jr nz, jr_009_4c14

    ld a, [$cd24]
    bit 4, a
    jr nz, jr_009_4c25

    bit 5, a
    jr nz, jr_009_4c5e

    dec hl
    dec hl
    ret


jr_009_4be2:
    ld a, $06
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld e, [hl]
    inc hl
    ld d, [hl]
    inc hl
    push de
    ld hl, $cd34
    ld a, [$cd30]
    ld e, a
    add a
    add a
    add e
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    inc hl
    inc hl
    ld a, [hl+]
    ld [$cd6c], a
    ld a, [hl+]
    ld [$cd6d], a
    xor a
    ld [$cd6b], a
    ld a, $42
    call Call_000_25cb
    pop hl
    ret


jr_009_4c14:
    ld a, $51
    call Call_000_25cb
    ld a, $04
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


jr_009_4c25:
    ld a, [$cd30]
    cp c
    jr nc, jr_009_4c5b

    inc a
    push af
    ld a, [$cd32]
    cp $04
    jr c, jr_009_4c48

    ld a, [$cd31]
    inc a
    ld [$cd31], a
    pop af
    ld [$cd30], a
    ld a, $48
    call Call_000_25ce
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


jr_009_4c48:
    inc a
    ld [$cd32], a
    pop af
    ld [$cd30], a
    ld a, $48
    call Call_000_25ce
    inc hl
    inc hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


jr_009_4c5b:
    dec hl
    dec hl
    ret


jr_009_4c5e:
    ld a, [$cd30]
    or a
    jr z, jr_009_4c93

    dec a
    push af
    ld a, [$cd32]
    or a
    jr nz, jr_009_4c80

    ld a, [$cd31]
    dec a
    ld [$cd31], a
    pop af
    ld [$cd30], a
    ld a, $48
    call Call_000_25ce
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


jr_009_4c80:
    dec a
    ld [$cd32], a
    pop af
    ld [$cd30], a
    ld a, $48
    call Call_000_25ce
    inc hl
    inc hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


jr_009_4c93:
    dec hl
    dec hl
    ret


    ld h, b
    ld l, c
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


    ld h, b
    ld l, c
    ld a, [hl+]
    ld [$cd6c], a
    ld a, [hl+]
    ld [$cd6d], a
    xor a
    ld [$cd6b], a
    ret


    ld h, b
    ld l, c
    ld a, [$cd6b]
    or a
    ret nz

    dec hl
    dec hl
    ret


    ld h, b
    ld l, c
    ld a, $13
    ld [$cb50], a
    ld a, $1d
    ld [$cb4f], a
    ret


    ld a, $01
    ldh [$ffa4], a
    ld hl, $4ccd
    call Call_009_5435
    ret


    and h
    ld e, b
    inc e
    jp hl


    ld e, [hl]
    inc e
    jp c, $1c61

    ld bc, $cd4d
    sub b
    dec c
    ld a, [$cb4e]
    ld b, a
    ld a, [$cb4f]
    or b
    ret nz

    call Call_009_4747
    call Call_000_33c4
    call Call_009_46ed
    push hl
    push af
    ld l, $01
    ld h, $40
    ld a, $1b
    call BankSwitchCallHL
    pop af
    pop hl
    call Call_009_4816
    call Call_009_4816
    ret


    sbc h
    ld c, h
    sub l
    ld b, [hl]
    ld a, l
    ld c, l
    daa
    ld c, e
    sbc c
    ld b, e
    nop
    sbc c
    ld h, e
    daa
    ld c, e
    sbc c
    ld b, [hl]
    ld bc, $6699
    daa
    ld c, e
    sbc c
    ld c, c
    ld [bc], a
    sbc c
    ld l, c
    daa
    ld c, e
    sbc c
    ld c, h
    inc bc
    sbc c
    ld l, h
    daa
    ld c, e
    sbc c
    ld c, a
    inc b
    sbc c
    ld l, a
    sbc h
    ld c, h
    call c, $ab50
    ld c, h
    or l
    ld c, e
    ld e, c
    ld c, l
    ld [hl], c
    ld c, l
    daa
    ld c, e
    sbc c
    ld b, e
    nop
    sbc c
    ld h, e
    daa
    ld c, e
    sbc c
    ld b, [hl]
    ld bc, $6699
    daa
    ld c, e
    sbc c
    ld c, c
    ld [bc], a
    sbc c
    ld l, c
    daa
    ld c, e
    sbc c
    ld c, h
    inc bc
    sbc c
    ld l, h
    daa
    ld c, e
    sbc c
    ld c, a
    inc b
    sbc c
    ld l, a
    ld l, e
    ld c, e
    jp $364b


    ld c, l
    ld e, c
    ld c, l
    ld [hl], c
    ld c, l
    ld h, l
    ld c, l
    xor e
    ld c, h
    ld a, l
    ld c, l
    adc d
    ld c, e
    or l
    ld c, e
    ld [hl], $4d
    ld [hl], c
    ld c, l
    sbc h
    ld c, h
    ld b, b
    ld d, d
    xor e
    ld c, h
    or l
    ld c, h
    sub [hl]
    ld c, h
    ld a, c
    ld c, l
    push bc
    call Call_009_4b09
    ld a, $01
    ld [$cd33], a
    ld hl, $4dbb
    ld de, $cd34
    ld b, $05
    call CopyHLtoDE
    call Call_009_4de0
    jr c, jr_009_4da1

    ld hl, $4dc0
    ld b, $05
    call CopyHLtoDE
    call Call_009_508e

jr_009_4da1:
    ld hl, $4dc5
    call Call_009_49ae
    ld hl, $4dce
    call Call_009_49ae
    ld hl, $4dd7
    ld a, [$b942]
    or a
    jr z, jr_009_4db9

    call Call_009_49ae

jr_009_4db9:
    pop hl
    ret


    rst $08
    ld a, d
    xor $50
    ld d, h
    reti


    ld a, d
    dec h
    ld d, c
    ld d, b
    jp z, $0fb8

    rra
    db $e3
    ld a, d
    ld l, b
    ld d, c
    ld e, b
    res 7, b
    rrca
    rra
    db $ed
    ld a, d
    xor l
    ld d, c
    ld e, h
    call z, $0fb8
    rra
    rst $30
    ld a, d
    ldh a, [c]
    ld d, c
    ld h, b

Call_009_4de0:
    push hl
    push de
    push bc
    call Call_009_50d0
    ld de, $0086
    ld a, l
    sub e
    ld l, a
    ld a, h
    sbc d
    ld h, a
    pop bc
    pop de
    pop hl
    ret


    ld a, $02
    ldh [$ffa4], a
    ld hl, $4dfe
    call Call_009_5435
    ret


    xor l
    ld e, c
    inc e
    adc d
    ld l, a
    inc e
    ld a, h
    ld [hl], d
    inc e
    ld [hl-], a
    ld c, [hl]
    call Call_000_0d90
    ld a, [$cb4e]
    ld b, a
    ld a, [$cb4f]
    or b
    ret nz

    call Call_009_4747
    call Call_000_33c4
    call Call_009_46ed
    push hl
    push af
    ld l, $01
    ld h, $40
    ld a, $1b
    call BankSwitchCallHL
    pop af
    pop hl
    call Call_009_484e
    call Call_009_4816
    ret


    sbc h
    ld c, h
    sub l
    ld b, [hl]
    or b
    ld c, [hl]
    daa
    ld c, e
    sbc c
    ld b, e
    nop
    sbc c
    ld h, e
    daa
    ld c, e
    sbc c
    ld b, [hl]
    ld bc, $6699
    daa
    ld c, e
    sbc c
    ld c, c
    ld [bc], a
    sbc c
    ld l, c
    daa
    ld c, e
    sbc c
    ld c, h
    inc bc
    sbc c
    ld l, h
    daa
    ld c, e
    sbc c
    ld c, a
    inc b
    sbc c
    ld l, a
    sbc h
    ld c, h
    inc c
    ld c, [hl]
    xor e
    ld c, h
    sub [hl]
    ld c, h
    adc b
    ld c, [hl]
    daa
    ld c, e
    sbc c
    ld b, e
    nop
    sbc c
    ld h, e
    daa
    ld c, e
    sbc c
    ld b, [hl]
    ld bc, $6699
    daa
    ld c, e
    sbc c
    ld c, c
    ld [bc], a
    sbc c
    ld l, c
    daa
    ld c, e
    sbc c
    ld c, h
    inc bc
    sbc c
    ld l, h
    daa
    ld c, e
    sbc c
    ld c, a
    inc b
    sbc c
    ld l, a
    or l
    ld c, e
    adc [hl]
    ld c, [hl]
    and h
    ld c, [hl]
    ld l, e
    ld c, e
    jp $654b


    ld c, [hl]
    adc [hl]
    ld c, [hl]
    and h
    ld c, [hl]
    sbc d
    ld c, [hl]
    xor e
    ld c, h
    or b
    ld c, [hl]
    adc d
    ld c, e
    sub [hl]
    ld c, h
    ld h, l
    ld c, [hl]
    sbc h
    ld c, h
    rst $20
    ld c, [hl]
    xor e
    ld c, h
    or l
    ld c, h
    sub [hl]
    ld c, h
    xor h
    ld c, [hl]
    push bc
    call Call_009_4b09
    xor a
    ld [$cd33], a
    ld hl, $b938
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $03e7
    ld a, l
    sub e
    ld l, a
    ld a, h
    sbc d
    ld de, $cd34
    jr nc, jr_009_4ed8

    ld a, $01
    ld [$cd33], a
    ld hl, $4ef6
    ld b, $05
    call CopyHLtoDE

jr_009_4ed8:
    ld a, [sHouseExpansionFlag]
    cp $02
    jr z, jr_009_4ef4

    ld a, [$b8fe]
    or a
    jr nz, jr_009_4ef4

    ld a, [$cd33]
    inc a
    ld [$cd33], a
    ld hl, $4efb
    ld b, $06
    call CopyHLtoDE

jr_009_4ef4:
    pop hl
    ret


    sub e
    ld a, b
    ld [hl], $4e
    ld d, b
    sbc l
    ld a, b
    sbc e
    ld c, [hl]
    ld d, h
    ld a, $03
    ldh [$ffa4], a
    ld hl, $4f0b
    call Call_009_5435
    ret


    cpl
    ld e, d
    inc e
    inc a
    ld l, e
    inc e
    inc sp
    ld l, [hl]
    inc e
    ccf
    ld c, a
    call Call_000_0d90
    ld a, [$cb4e]
    ld b, a
    ld a, [$cb4f]
    or b
    ret nz

    call Call_009_4747
    call Call_000_33c4
    call Call_009_46ed
    push hl
    push af
    ld l, $01
    ld h, $40
    ld a, $1b
    call BankSwitchCallHL
    pop af
    pop hl
    call Call_009_484e
    call Call_009_4816
    ret


    sbc h
    ld c, h
    sub l
    ld b, [hl]
    cp [hl]
    ld c, a
    daa
    ld c, e
    sbc c
    ld b, e
    nop
    sbc c
    ld h, e
    daa
    ld c, e
    sbc c
    ld b, [hl]
    ld bc, $6699
    daa
    ld c, e
    sbc c
    ld c, c
    ld [bc], a
    sbc c
    ld l, c
    daa
    ld c, e
    sbc c
    ld c, h
    inc bc
    sbc c
    ld l, h
    daa
    ld c, e
    sbc c
    ld c, a
    inc b
    sbc c
    ld l, a
    sbc h
    ld c, h
    adc b
    ld c, b
    xor e
    ld c, h
    sub [hl]
    ld c, h
    sub l
    ld c, a
    daa
    ld c, e
    sbc c
    ld b, e
    nop
    sbc c
    ld h, e
    daa
    ld c, e
    sbc c
    ld b, [hl]
    ld bc, $6699
    daa
    ld c, e
    sbc c
    ld c, c
    ld [bc], a
    sbc c
    ld l, c
    daa
    ld c, e
    sbc c
    ld c, h
    inc bc
    sbc c
    ld l, h
    daa
    ld c, e
    sbc c
    ld c, a
    inc b
    sbc c
    ld l, a
    or l
    ld c, e
    sbc e
    ld c, a
    or c
    ld c, a
    ld l, e
    ld c, e
    jp $724b


    ld c, a
    sbc e
    ld c, a
    or c
    ld c, a
    and a
    ld c, a
    xor e
    ld c, h
    cp [hl]
    ld c, a
    adc d
    ld c, e
    sub [hl]
    ld c, h
    ld [hl], d
    ld c, a
    sbc h
    ld c, h
    ld c, a
    ld c, d
    xor e
    ld c, h
    or l
    ld c, h
    sub [hl]
    ld c, h
    cp c
    ld c, a
    ld h, b
    push bc
    call Call_009_4b09
    xor a
    ld [$cd33], a
    ld de, $cd34
    ld a, [$b898]
    or a
    jr z, jr_009_4ff8

    ld a, [sShedSprinklerFlag]
    or a
    jr nz, jr_009_4ff8

    ld a, $12
    call Call_009_4896
    jr z, jr_009_4ff8

    call Call_009_5096
    jr c, jr_009_4ff8

    ld a, [$ba3e]
    cp $02
    jr z, jr_009_4fed

    ld a, $01
    ld [$ba3e], a

jr_009_4fed:
    ld hl, $506b
    ld b, $05
    call CopyHLtoDE
    call Call_009_508e

jr_009_4ff8:
    ld a, [sShedBrushFlag]
    or a
    jr nz, jr_009_5010

    ld a, $09
    call Call_009_4896
    jr z, jr_009_5010

    ld hl, $5075
    ld b, $05
    call CopyHLtoDE
    call Call_009_508e

jr_009_5010:
    ld a, [$b8c2]
    or a
    jr nz, jr_009_5028

    ld a, [$b8ea]
    cp $02
    jr nz, jr_009_5028

    ld hl, $507a
    ld b, $05
    call CopyHLtoDE
    call Call_009_508e

jr_009_5028:
    ld a, [$b8ac]
    or a
    jr nz, jr_009_5040

    ld a, $08
    call Call_009_4896
    jr z, jr_009_5040

    ld hl, $507f
    ld b, $05
    call CopyHLtoDE
    call Call_009_508e

jr_009_5040:
    ld a, [$b942]
    cp $c8
    jr c, jr_009_5069

    ld a, [$b944]
    or a
    jr nz, jr_009_5058

    ld hl, $5084
    ld b, $05
    call CopyHLtoDE
    call Call_009_508e

jr_009_5058:
    ld a, [$b943]
    or a
    jr nz, jr_009_5069

    ld hl, $5089
    ld b, $05
    call CopyHLtoDE
    call Call_009_508e

jr_009_5069:
    pop hl
    ret


    rst $00
    ld a, b
    ld a, [hl+]
    ld c, c
    ld e, h

Jump_009_5070:
    rst $00
    ld a, b
    ld a, [hl+]
    ld c, c
    ld h, b
    pop de
    ld a, b
    cp d
    ld c, b
    ld d, b
    db $db
    ld a, b
    nop
    ld c, d
    ld e, b
    push hl
    ld a, b
    ldh a, [c]
    ld c, b
    ld d, h
    rst $28
    ld a, b
    cp h
    ld c, c
    ld h, h
    ld sp, hl
    ld a, b
    ld a, b
    ld c, c
    ld l, b

Call_009_508e:
    ld a, [$cd33]
    inc a
    ld [$cd33], a
    ret


Call_009_5096:
    push hl
    push de
    push bc
    ld a, [$ba3d]
    ld hl, $0000
    or a
    jr z, jr_009_50aa

    ld b, a
    ld de, $0078

jr_009_50a6:
    add hl, de
    dec b
    jr nz, jr_009_50a6

jr_009_50aa:
    ld d, h
    ld e, l
    ld a, [$ba3c]
    ld c, $1e
    call Multiply8Bit
    ld a, [$ba3b]
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    add hl, de
    push hl
    call Call_009_50d0
    pop de
    ld a, l
    sub e
    ld l, a
    ld a, h
    sbc d
    ld h, a
    ld a, l
    cp $07
    pop bc
    pop de
    pop hl
    ret


Call_009_50d0:
    ld a, [sCurrentYear]
    ld hl, $0000
    or a
    jr z, jr_009_50e1

    ld b, a
    ld de, $0078

jr_009_50dd:
    add hl, de
    dec b
    jr nz, jr_009_50dd

jr_009_50e1:
    ld d, h
    ld e, l
    ld a, [sCurrentSeason]
    ld c, $1e
    call Multiply8Bit
    ld a, [sCurrentDayCounter]
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    add hl, de
    ret


    ld a, $04
    ldh [$ffa4], a
    ld hl, $5101
    call Call_009_5435
    ret


    call c, $1c5b
    inc h
    ld h, a
    inc e
    push hl
    ld l, c
    inc e
    dec [hl]
    ld d, c
    call Call_000_0d90
    ld a, [$cb4e]
    ld b, a
    ld a, [$cb4f]
    or b
    ret nz

    call Call_009_4747
    call Call_000_33c4
    call Call_009_46ed
    push hl
    push af
    ld l, $01
    ld h, $40
    ld a, $1b
    call BankSwitchCallHL
    pop af
    pop hl
    call Call_009_484e
    call Call_009_4816
    ret


    sbc h
    ld c, h
    sub l
    ld b, [hl]
    or c
    ld d, c
    daa
    ld c, e
    sbc c
    ld b, e
    nop
    sbc c
    ld h, e
    daa
    ld c, e
    sbc c
    ld b, [hl]
    ld bc, $6699
    daa
    ld c, e
    sbc c
    ld c, c
    ld [bc], a
    sbc c
    ld l, c
    daa
    ld c, e
    sbc c
    ld c, h
    inc bc
    sbc c
    ld l, h
    daa
    ld c, e
    sbc c
    ld c, a
    inc b
    sbc c
    ld l, a
    sbc h
    ld c, h
    xor h
    ld l, b
    xor e
    ld c, h
    or l
    ld c, e
    adc l
    ld d, c
    and l
    ld d, c
    daa
    ld c, e
    sbc c
    ld b, e
    nop
    sbc c
    ld h, e
    daa
    ld c, e
    sbc c
    ld b, [hl]
    ld bc, $6699
    daa
    ld c, e
    sbc c
    ld c, c
    ld [bc], a
    sbc c
    ld l, c
    daa
    ld c, e
    sbc c
    ld c, h
    inc bc
    sbc c
    ld l, h
    daa
    ld c, e
    sbc c
    ld c, a
    inc b
    sbc c
    ld l, a
    ld l, e
    ld c, e
    jp Jump_009_6a4b


    ld d, c
    adc l
    ld d, c
    and l
    ld d, c
    sbc c
    ld d, c
    xor e
    ld c, h
    or c
    ld d, c
    adc d
    ld c, e
    or l
    ld c, e
    ld l, d
    ld d, c
    and l
    ld d, c
    sbc h
    ld c, h
    ld c, h
    ld l, d
    xor e
    ld c, h
    or l
    ld c, h
    sub [hl]
    ld c, h
    xor l
    ld d, c
    push bc
    call Call_009_4b09
    ld a, $02
    ld [$cd33], a
    ld hl, $51d9
    ld de, $cd34
    ld b, $0a
    call CopyHLtoDE
    ld hl, $51e3
    call Call_009_49ae
    ld hl, $51ec
    call Call_009_49ae
    ld hl, $51f5
    call Call_009_49ae
    pop hl
    ret


    ld c, l
    ld a, d
    sub $68
    ld d, h
    ld d, a
    ld a, d
    dec h
    ld l, c
    ld d, b
    push bc
    cp b
    rrca
    rra
    ld h, c
    ld a, d
    ld l, b
    ld l, c
    ld e, h
    add $b8
    rrca
    rra
    ld l, e
    ld a, d
    and c
    ld l, c
    ld e, b
    rst $00
    cp b
    rrca
    rra
    ld [hl], l
    ld a, d
    and $69
    ld h, b
    ld a, $05
    ldh [$ffa4], a
    ld hl, $5252
    call Call_009_5435
    ld a, [$cd2b]
    rst $00
    jr jr_009_5260

    add hl, de
    ld d, d
    inc [hl]
    ld d, d
    inc [hl]
    ld d, d
    ld d, b
    ld d, d
    ld d, c
    ld d, d
    ret


    ld hl, $55f1
    ld a, l
    ld [$cd6c], a
    ld a, h
    ld [$cd6d], a
    ld hl, $5302
    ld a, l
    ld [$cd28], a
    ld a, h
    ld [$cd29], a
    xor a
    ld [$cd6b], a
    ret


    ld hl, $4695
    ld a, l
    ld [$cd6c], a
    ld a, h
    ld [$cd6d], a
    ld hl, $5302
    ld a, l
    ld [$cd28], a
    ld a, h
    ld [$cd29], a
    ld a, $01
    ld [$cd6b], a
    ret


    ret


    ret


    rst $20
    ld e, h
    inc e
    db $d3
    ld [hl], e
    inc e
    push hl
    ld l, c
    inc e
    add [hl]
    ld d, d
    call Call_000_0d90

jr_009_5260:
    ld a, [$cb4e]
    ld b, a
    ld a, [$cb4f]
    or b
    ret nz

    call Call_009_4747
    call Call_000_33c4
    call Call_009_46ed
    push hl
    push af
    ld l, $01
    ld h, $40
    ld a, $1b
    call BankSwitchCallHL
    pop af
    pop hl
    call Call_009_484e
    call Call_009_4816
    ret


    sbc h
    ld c, h
    sub l
    ld b, [hl]
    ld sp, $2753
    ld c, e
    sbc c
    ld b, e
    nop
    sbc c
    ld h, e
    daa
    ld c, e
    sbc c
    ld b, [hl]
    ld bc, $6699
    daa
    ld c, e
    sbc c
    ld c, c
    ld [bc], a
    sbc c
    ld l, c
    daa
    ld c, e
    sbc c
    ld c, h
    inc bc
    sbc c
    ld l, h
    daa
    ld c, e
    sbc c
    ld c, a
    inc b
    sbc c
    ld l, a
    sbc h
    ld c, h
    sbc h
    ld d, l
    xor e
    ld c, h
    or l
    ld c, e
    sbc $52
    or $52
    daa
    ld c, e
    sbc c
    ld b, e
    nop
    sbc c
    ld h, e
    daa
    ld c, e
    sbc c
    ld b, [hl]
    ld bc, $6699
    daa
    ld c, e
    sbc c
    ld c, c
    ld [bc], a
    sbc c
    ld l, c
    daa
    ld c, e
    sbc c
    ld c, h
    inc bc
    sbc c
    ld l, h
    daa
    ld c, e
    sbc c
    ld c, a
    inc b
    sbc c
    ld l, a
    ld l, e
    ld c, e
    jp $bb4b


    ld d, d
    sbc $52
    or $52
    ld [$ab52], a
    ld c, h
    ld sp, $8a53
    ld c, e
    or l
    ld c, e
    cp e
    ld d, d
    or $52
    sbc h
    ld c, h
    cp b
    ld e, c
    xor e
    ld c, h
    or l
    ld c, h
    sub [hl]
    ld c, h
    cp $52
    daa
    ld c, e
    sbc c
    ld b, e
    nop
    sbc c
    ld h, e
    daa
    ld c, e
    sbc c
    ld b, [hl]
    ld bc, $6699
    daa
    ld c, e
    sbc c
    ld c, c
    ld [bc], a
    sbc c
    ld l, c
    daa
    ld c, e
    sbc c
    ld c, h
    inc bc
    sbc c
    ld l, h
    daa
    ld c, e
    sbc c
    ld c, a
    inc b
    sbc c
    ld l, a
    xor e
    ld c, h
    ld sp, $8a53
    ld c, e
    or l
    ld c, e
    cp e
    ld d, d
    or $52
    push bc
    call Call_009_4b09
    ld a, $02
    ld [$cd33], a
    ld hl, $5408
    ld de, $cd34
    ld b, $0a
    call CopyHLtoDE
    ld a, [sCowFeedFlag]
    or a
    jr nz, jr_009_535d

    ld a, $10
    call Call_009_4896
    jr z, jr_009_535d

    ld hl, $5412
    ld b, $05
    call CopyHLtoDE
    call Call_009_508e

jr_009_535d:
    ld a, [sChickenFeedFlag]
    or a
    jr nz, jr_009_5375

    ld a, $11
    call Call_009_4896
    jr z, jr_009_5375

    ld hl, $5417
    ld b, $05
    call CopyHLtoDE
    call Call_009_508e

jr_009_5375:
    ld a, [$b8ab]
    or a
    jr nz, jr_009_538d

    ld a, $00
    call Call_009_4896
    jr z, jr_009_538d

    ld hl, $541c
    ld b, $05
    call CopyHLtoDE
    call Call_009_508e

jr_009_538d:
    ld a, [$b8b2]
    or a
    jr nz, jr_009_53a5

    ld a, $01
    call Call_009_4896
    jr z, jr_009_53a5

    ld hl, $5421
    ld b, $05
    call CopyHLtoDE
    call Call_009_508e

jr_009_53a5:
    ld a, [$b945]
    cp $08
    jr c, jr_009_53c4

    ld a, [$b8b1]
    or a
    jr nz, jr_009_53c4

    ld a, $52
    call Call_009_4896
    jr z, jr_009_53c4

    ld hl, $5426
    ld b, $05
    call CopyHLtoDE
    call Call_009_508e

jr_009_53c4:
    ld hl, $b949
    ld b, $04

jr_009_53c9:
    ld a, [hl]
    inc a
    jr nz, jr_009_53da

    ld a, $16
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    dec b
    jr nz, jr_009_53c9

    jr jr_009_53e5

jr_009_53da:
    ld hl, $542b
    ld b, $05
    call CopyHLtoDE
    call Call_009_508e

jr_009_53e5:
    ld hl, $b9a7
    ld b, $04

jr_009_53ea:
    ld a, [hl]
    inc a
    jr nz, jr_009_53fb

    ld a, $0c
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    dec b
    jr nz, jr_009_53ea

    jr jr_009_5406

jr_009_53fb:
    ld hl, $5430
    ld b, $05
    call CopyHLtoDE
    call Call_009_508e

jr_009_5406:
    pop hl
    ret


    ld h, e
    ld a, c
    xor [hl]
    ld d, l
    ld d, b
    ld l, l
    ld a, c
    ld d, d
    ld d, [hl]
    ld d, h
    ld [hl], a
    ld a, c
    sbc c
    ld d, [hl]
    ld e, b
    add c
    ld a, c
    db $ed
    ld d, [hl]
    ld e, h
    adc e
    ld a, c
    ld b, c
    ld d, a
    ld h, h
    sub l
    ld a, c
    add l
    ld d, a
    ld h, b
    sbc a
    ld a, c
    ret


    ld d, a
    ld l, b
    xor c
    ld a, c
    dec c
    ld e, b
    ld l, h
    or e
    ld a, c
    ret c

    ld e, b
    ld [hl], b

Call_009_5435:
    push hl
    call ClearBGMap0
    call ClearBGMap1
    call ClearShadowOAMBuffer
    push hl
    push af
    ld l, $6c
    ld h, $55
    ld a, $20
    call BankSwitchCallHL
    pop af
    pop hl
    ld hl, $5618
    ld c, $1c
    ld de, $8800
    call Call_000_31a0
    ld hl, $519a
    ld c, $1c
    ld de, $9000
    call Call_000_31a0
    pop hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    inc hl
    ld c, [hl]
    inc hl
    push hl
    ld h, d
    ld l, e
    ld de, $9500
    call Call_000_31a0
    pop hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    inc hl
    ld c, [hl]
    inc hl
    push hl
    ld h, d
    ld l, e
    ld de, $8a00
    call Call_000_31a0
    pop hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    inc hl
    ld c, [hl]
    inc hl
    push hl
    ld h, d
    ld l, e
    ld de, $9800
    call Call_000_31a0
    ld hl, $99a0
    ld de, vBGMap1
    ld b, $c0
    call CopyHLtoDE
    ld hl, $9c22
    call Call_009_5599
    ld hl, $9c62
    call Call_009_5599
    ld hl, $9c22
    ld a, $f2
    ld [hl+], a
    ld a, $f3
    ld [hl+], a
    ld a, $f4
    ld [hl+], a
    ld a, $f5
    ld [hl+], a
    ld a, $f6
    ld [hl+], a
    ld a, $f4
    ld [hl+], a
    ld a, $f7
    inc hl
    ld [hl+], a
    ld a, $f8
    ld [hl+], a
    ld a, $f9
    ld [hl+], a
    ld a, $fa
    ld [hl+], a
    ld a, $f6
    ld [hl], a
    ld hl, $9c71
    ld a, $fb
    ld [hl], a
    ld hl, $40b1
    ld de, $8f20
    call Call_009_5590
    ld hl, $41a1
    ld de, $8f30
    call Call_009_5590
    ld hl, $42d1
    ld de, $8f40
    call Call_009_5590
    ld hl, $41e1
    ld de, $8f50
    call Call_009_5590
    ld hl, $42c1
    ld de, $8f60
    call Call_009_5590
    ld hl, $4051
    ld de, $8f70
    call Call_009_5590
    ld hl, $42e1
    ld de, $8f80
    call Call_009_5590
    ld hl, $4271
    ld de, $8f90
    call Call_009_5590
    ld hl, $41d1
    ld de, $8fa0
    call Call_009_5590
    ld hl, $4061
    ld de, $8fb0
    call Call_009_5590
    pop hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, l
    ld [$cd28], a
    ld a, h
    ld [$cd29], a
    xor a
    ld [$cd30], a
    ld [$cd31], a
    ld [$cd32], a
    ld [$cd33], a
    ld [$cb5c], a
    ld a, $4c
    ld [$cd9a], a
    ld a, $9f
    ld [$cd9b], a
    xor a
    ldh [$ff93], a
    ldh [$ff91], a
    ld a, $07
    ldh [$ff96], a
    ld a, $68
    ldh [$ff95], a
    xor a
    ld hl, $cb14
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    dec a
    ld [$cb1c], a
    ld a, $1d
    ld [$cb4e], a
    ld hl, wShadowOAM
    ld bc, $00a0
    call ZeroOutHL
    ld a, $54
    call Call_000_25c5
    ld a, $c3
    ld [wLCDCTempStorage], a
    ld a, $00
    ldh [rSTAT], a
    xor a
    ldh [rIF], a
    ld a, $03
    ldh [rIE], a
    ret


Call_009_5590:
    ld a, $11
    ld bc, $0010
    call BankedCopyHLtoDEBig
    ret


Call_009_5599:
    xor a
    ld b, $10

jr_009_559c:
    ld [hl+], a
    dec b
    jr nz, jr_009_559c

    ret


    push hl
    push af
    ld l, $7b
    ld h, $56
    ld a, $20
    call BankSwitchCallHL
    pop af
    pop hl
    call ClearBGMap0
    call ClearBGMap1
    call ClearShadowOAMBuffer
    ld hl, $7771
    ld c, $06
    ld de, $8800
    call Call_000_31a0
    ld hl, $6e55
    ld c, $1e
    ld de, $9000
    call Call_000_31a0
    ld hl, $780d
    ld c, $1c
    ld de, $9800
    call Call_000_31a0
    ld hl, $9030
    ld de, $9000
    ld b, $10

jr_009_55e0:
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_009_55e0

    xor a
    ldh [$ff93], a
    ldh [$ff91], a
    xor a
    ld hl, $cb14
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    dec a
    ld [$cb1c], a
    ld a, $6d
    ld [$cd9a], a
    ld a, $9f
    ld [$cd9b], a
    ld a, $1d
    ld [$cb4e], a
    ld hl, $5661
    ld a, l
    ld [$cd28], a
    ld a, h
    ld [$cd29], a
    ld de, $4695
    ld a, e
    ld [$cd6c], a
    ld a, d
    ld [$cd6d], a
    xor a
    ld [$cd6b], a
    ld [$cb5c], a
    ld hl, wShadowOAM
    ld bc, $00a0
    call ZeroOutHL
    ld a, $54
    call Call_000_25c5
    ld a, $83
    ld [wLCDCTempStorage], a
    ld a, $00
    ldh [rSTAT], a
    xor a
    ldh [rIF], a
    ld a, $03
    ldh [rIE], a
    ret


    call Call_000_0d90
    ld a, [$cb4e]
    ld b, a
    ld a, [$cb4f]
    or b
    ret nz

    call Call_000_33c4
    call Call_009_46ed
    push hl
    push af
    ld l, $01
    ld h, $40
    ld a, $1b
    call BankSwitchCallHL
    pop af
    pop hl
    ret


    sbc h
    ld c, h
    inc c
    ld h, d
    xor e
    ld c, h
    or l
    ld c, h
    sub [hl]
    ld c, h
    ld l, c
    ld d, [hl]

Call_009_566d:
    call Call_009_5680
    ld a, $e3
    ld [wLCDCTempStorage], a
    xor a
    ldh [rSTAT], a
    xor a
    ldh [rIF], a
    ld a, $03
    ldh [rIE], a
    ret


Call_009_5680:
    call ClearBGMap0
    call ClearBGMap1
    call ClearShadowOAMBuffer
    ld hl, TextFontTileset
    ld a, BANK(TextFontTileset)
    ld de, $9000
    ld bc, $0800
    call BankedCopyHLtoDEBig
    ld hl, $4801
    ld a, $11
    ld de, $8800
    ld bc, $0800
    call BankedCopyHLtoDEBig
    ld hl, $6aae
    ld c, $09
    ld de, $8000
    call Call_000_31a0
    ld hl, $79d4
    ld c, $05
    ld de, $9800
    call Call_000_31a0
    ld hl, $9980
    ld de, vBGMap1
    ld b, $c0
    call CopyHLtoDE
    ld hl, $9820
    ld de, $9980
    ld b, $c0
    call CopyHLtoDE
    ld hl, $5ed7
    ld de, $9821
    ld b, $0b
    call Call_009_5e8e
    ld hl, $637b
    ld de, $9c41
    ld b, $03
    call Call_009_5e8e
    call Call_009_5867
    ld hl, $5811
    ld a, l
    ld [$cd28], a
    ld a, h
    ld [$cd29], a
    xor a
    ld [$cd63], a
    ld [$cd64], a
    ld [$cd65], a
    ld [$cd66], a
    ld [$cd67], a
    xor a
    ld hl, $cb14
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    dec a
    ld [$cb1c], a
    ld [wTextID], a
    ld a, $01
    ld [$cb56], a
    call Call_009_5867
    xor a
    ldh [$ff91], a
    ldh [$ff93], a
    ld a, $07
    ldh [$ff96], a
    ld a, $60
    ldh [$ff95], a
    ld a, $1d
    ld [$cb4e], a
    ld a, $22
    call Call_000_25c5
    ret


    call Call_000_0d90
    call Call_009_5793
    ld a, [$cb4e]
    ld b, a
    ld a, [$cb4f]
    or b
    ret nz

    call Call_009_5749
    call Call_009_5765
    ret


Call_009_5749:
    ld hl, $cd28
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    inc hl
    ld bc, $575c
    push bc
    ld b, h
    ld c, l
    ld h, d
    ld l, e
    jp hl


    ld a, l
    ld [$cd28], a
    ld a, h
    ld [$cd29], a
    ret


Call_009_5765:
    ld hl, $cd67
    inc [hl]
    ld a, [$cd67]
    bit 4, a
    ret nz

    ld hl, $578b
    ld a, [$cd64]
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld c, [hl]
    inc hl
    ld b, [hl]
    ld hl, $5786
    call Call_000_20de
    ret


    nop
    nop
    ld [$8000], a
    ld [$0870], sp
    add b
    ld l, b
    ld [hl], b
    ld l, b
    add b

Call_009_5793:
    ld a, [$cd63]
    or a
    ret nz

    ld hl, $cd65
    ld b, $0c
    call Call_009_5ed0
    ld b, $03
    inc hl
    call z, Call_009_5ed0
    ld bc, $3868
    ld hl, $57f3
    ld a, [sCatOrDog]
    or a
    jr z, jr_009_57b5

    ld hl, $57ed

jr_009_57b5:
    ld a, [$cd66]
    add a
    push af
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_000_20de
    ld a, [$b8ea]
    or a
    jr z, jr_009_57eb

    ld hl, $57f9
    dec a
    add a
    ld b, a
    add a
    add b
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    pop af
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld bc, $6468
    call Call_000_20de
    ret


jr_009_57eb:
    pop af
    ret


    add d
    ld h, h
    sub e
    ld h, h
    and h
    ld h, h
    or l
    ld h, h
    add $64
    rst $10
    ld h, h
    ld e, $65
    add sp, $64
    ld bc, $6965
    ld h, l
    scf
    ld h, l
    ld d, b
    ld h, l
    or h
    ld h, l
    add d
    ld h, l
    sbc e
    ld h, l
    ld a, b
    ld e, l
    rst $10
    ld e, [hl]
    ld h, a
    ld e, b
    reti


    ld e, l
    dec e
    ld e, b
    cpl
    ld e, b
    ld b, c
    ld e, b
    ld d, l
    ld e, b
    ld d, e
    ld e, b
    ld a, b
    ld e, l
    ld h, e
    ld h, b
    ld d, b
    ld e, c
    reti


    ld e, l
    dec e
    ld e, b
    dec e
    ld e, b
    dec e
    ld e, b
    dec e
    ld e, b
    dec bc
    ld e, b
    ld a, b
    ld e, l
    rst $28
    ld h, c
    daa
    ld e, e
    reti


    ld e, l
    cpl
    ld e, b
    cpl
    ld e, b
    cpl
    ld e, b
    cpl
    ld e, b
    dec bc
    ld e, b
    ld a, b
    ld e, l
    sbc l
    ld e, a
    ret c

    ld e, h
    reti


    ld e, l
    dec e
    ld e, b
    cpl
    ld e, b
    ld b, a
    ld e, b
    ld d, l
    ld e, b
    dec bc
    ld e, b
    ld a, l
    ld e, [hl]
    ld a, b
    ld e, l
    or l
    ld h, d
    ld a, [de]
    ld e, l
    reti


    ld e, l
    dec e
    ld e, b
    cpl
    ld e, b
    ld b, c
    ld e, b
    ld e, e
    ld e, b
    dec bc
    ld e, b

Call_009_5867:
    ld hl, sPlayerName
    ld de, vBGMap0 + $21
    ld b, 4
    call CopyHLtoDE
    ld hl, sPlayerMoney
    ld de, wTempPlayerMoney
    ld b, $03
    call CopyHLtoDE
    call Call_000_3268
    ld hl, wDecimalPlayerMoneyTileID
    ld de, vBGMap0 + $6d
    ld b, $05
    call CopyHLtoDE
    ld hl, $1a02
    ld a, [sCatOrDog]
    or a
    jr z, jr_009_5897

    ld hl, $2803

jr_009_5897:
    ld a, l
    ld [vBGMap0 + $a6], a
    ld a, h
    ld [vBGMap0 + $a7], a
    ld hl, $af2d
    ld a, [sCatOrDog]
    or a
    jr z, jr_009_58ab

    ld hl, $af20

jr_009_58ab:
    ld a, l
    ld [vBGMap0 + $a8], a
    ld a, h
    ld [$98a9], a
    ld hl, sPetName
    ld de, vBGMap0 + $e6
    ld b, 4
    call CopyHLtoDE
    ld hl, $0eaf
    ld a, [$b8ea]
    or a
    jp z, Jump_009_592e

    cp $03
    jr z, jr_009_58cf

    ld hl, $0eaf

jr_009_58cf:
    ld de, $58e5
    ld hl, $9927
    ld b, $09

jr_009_58d7:
    call SyncToBlankPeriod
    ld a, [de]
    ld [hl+], a
    inc de
    dec b
    jr nz, jr_009_58d7

    ld hl, $0d0e
    jr @+$0b

    ld [de], a
    ld a, [de]
    dec e
    dec e

jr_009_58e9:
    dec h
    ld e, $1b
    ld a, [de]
    jr nz, jr_009_58e9

    ld [$feb8], a
    inc bc
    jr z, jr_009_590b

    ld hl, $9927
    ld b, $09

jr_009_58fa:
    call SyncToBlankPeriod
    ld a, $af
    ld [hl+], a
    dec b
    jr nz, jr_009_58fa

    ld a, $af
    ld [$9930], a
    ld hl, $afaf

jr_009_590b:
    ld a, l
    ld [$9931], a
    ld a, h
    ld [$9932], a
    ld hl, $b8e6
    ld de, $9966
    ld b, $04
    call CopyHLtoDE
    xor a
    ld [$cd63], a
    ld hl, $637b
    ld de, $9c41
    ld b, $03
    call Call_009_5e8e
    ret


Jump_009_592e:
    ld hl, $9900
    ld de, $9920
    ld b, $14
    call CopyHLtoDE
    xor a
    ld [$cd63], a
    ld hl, $637b
    ld de, $9c41
    ld b, $03
    call Call_009_5e8e
    ret


    ret


    call Call_009_6451
    jp Jump_009_5953


    call Call_009_6448

Jump_009_5953:
    ld hl, $0000
    call Call_009_642d
    ld c, $16
    call Multiply8Bit
    ld a, h
    ld b, a
    ld a, l
    ld c, a
    ld e, $00
    ld hl, $b949
    ld a, c
    add l
    ld l, a
    ld a, b
    adc h
    ld h, a
    ld a, [hl]
    cp $ff
    jp z, Jump_009_5a3d

    push hl
    inc hl
    ld de, $9822
    ld b, $04
    call CopyHLtoDE
    pop hl
    push hl
    ld a, [hl]
    add a
    ld c, a
    add a
    add a
    add c
    ld b, a
    ld a, $09
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    push af
    ld a, b
    ld hl, $5ac6
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld de, $9827
    ld b, $0a
    call CopyHLtoDE
    pop af
    add a
    add a
    add a
    ld hl, $5af8
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld de, $9867
    ld b, $08
    call CopyHLtoDE
    pop hl
    push hl
    ld a, [hl]
    cp $02
    jp z, Jump_009_59cd

    ld hl, $5aaa
    ld de, $98a7
    ld b, $0b
    call CopyHLtoDE
    jp Jump_009_5a17


Jump_009_59cd:
    pop hl
    push hl
    ld a, $09
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    cp $01
    jp z, Jump_009_5a02

    pop hl
    push hl
    ld a, $06
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    cp $a0
    jr nc, jr_009_59f6

    cp $50
    jr nc, jr_009_59fe

    cp $0a
    jr nc, jr_009_59fa

    jr jr_009_5a02

jr_009_59f6:
    ld a, $03
    jr jr_009_5a04

jr_009_59fa:
    ld a, $01
    jr jr_009_5a04

jr_009_59fe:
    ld a, $02
    jr jr_009_5a04

Jump_009_5a02:
jr_009_5a02:
    ld a, $00

jr_009_5a04:
    pop hl
    push hl
    ld hl, $5b10
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld de, $98b1
    ld b, $01
    call CopyHLtoDE

Jump_009_5a17:
    pop hl
    ld a, [hl]
    cp $03
    jp nz, Jump_009_5a5e

    ld a, $05
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, $16
    sub [hl]
    call Call_000_3304
    ld hl, wDecimalPlayerMoneyTileID+3
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, l
    ld [$996a], a
    ld a, h
    ld [$996b], a
    jp Jump_009_5a74


Jump_009_5a3d:
    ld hl, $5a9c
    ld de, $9822
    ld b, $08
    call CopyHLtoDE
    ld hl, $5aa4
    ld de, $9867
    ld b, $06
    call CopyHLtoDE
    ld hl, $5aaa
    ld de, $98a7
    ld b, $0a
    call CopyHLtoDE

Jump_009_5a5e:
    ld hl, $5ab4
    ld de, $9942
    ld b, $0e
    call CopyHLtoDE
    ld hl, $5ac0
    ld de, $996d
    ld b, $06
    call CopyHLtoDE

Jump_009_5a74:
    ld hl, $b93a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_000_325c
    ld hl, wDecimalPlayerMoneyTileID+2
    ld de, $9928
    ld b, $03
    call CopyHLtoDE
    ld a, $01
    ld [$cd63], a
    ld hl, $63b1
    ld de, $9c41
    ld b, $03
    call Call_009_5e8e
    call Call_009_6470
    ret


    ld b, h
    ld b, h
    ld b, h
    ld b, h
    rst $28
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    rst $28
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    rst $28
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld [bc], a
    ld a, [de]
    dec h
    rra
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    inc c
    ld e, $1d
    rst $28
    ld [bc], a
    jr z, jr_009_5b07

    rst $28
    rst $28
    rst $28
    ld [bc], a
    jr z, jr_009_5b0d

    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    inc c
    ld a, [de]
    dec l
    ld e, $1d
    rst $28
    ld [bc], a
    jr z, @+$32

    rst $28
    ld [de], a
    ld [hl+], a
    inc e
    inc h
    rst $28
    ld [bc], a
    jr z, @+$32

    rst $28
    rst $28
    rlca
    ld e, $1a
    dec h
    dec l
    ld hl, $ef32
    inc d
    daa
    ld hl, $291a
    add hl, hl
    ld [hl-], a

jr_009_5b07:
    rst $28
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h

jr_009_5b0d:
    ld b, h
    ld b, h
    ld b, h
    rst $28
    ld [de], a
    inc c
    dec bc
    ld a, [$cd63]
    and a
    jr nz, jr_009_5b1e

    xor a
    ld [$cd64], a

jr_009_5b1e:
    ld hl, $0000
    call Call_009_6451
    jp Jump_009_5b37


    ld a, [$cd63]
    and a
    jr nz, jr_009_5b31

    xor a
    ld [$cd64], a

jr_009_5b31:
    ld hl, $0000
    call Call_009_6448

Jump_009_5b37:
    call Call_009_642d
    ld c, $0c
    call Multiply8Bit
    ld a, l
    ld c, a
    ld a, h
    ld b, a
    ld hl, $b9a7
    ld e, $00
    ld a, c
    add l
    ld l, a
    ld a, b
    adc h
    ld h, a
    push hl
    call Call_009_642d
    add a
    add a
    ld hl, $5c59
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld de, $9822
    ld b, $04
    call CopyHLtoDE
    pop hl
    push hl
    ld hl, $5c69
    ld de, $9826
    ld b, $07
    call CopyHLtoDE
    pop hl
    ld a, [hl]
    cp $ff
    jp z, Jump_009_5bae

    push hl
    ld a, [hl]
    add a
    add a
    ld b, a
    add a
    add b
    ld hl, $5c70
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld de, $9866
    ld b, $0c
    call CopyHLtoDE
    pop hl
    push hl
    inc hl
    inc hl
    ld a, [hl]
    add a
    add a
    add a
    ld hl, $5ca0
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld de, $98a6
    ld b, $08
    call CopyHLtoDE
    pop hl
    jp Jump_009_5c1b


Jump_009_5bae:
    ld a, [$b9a5]
    and a
    jp z, Jump_009_5c05

    ld hl, $b9a7
    ld c, $00

jr_009_5bba:
    ld a, [hl]
    cp $ff
    jr z, jr_009_5bd0

    inc c
    ld a, $0c
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, c
    cp $04
    jr nz, jr_009_5bba

    jp Jump_009_5c05


jr_009_5bd0:
    call Call_009_642d
    cp c
    jp nz, Jump_009_5c05

    ld hl, $5c70
    ld de, $9866
    ld b, $0c
    call CopyHLtoDE
    ld hl, $5ca0
    ld de, $98a6
    ld b, $08
    call CopyHLtoDE
    ld a, [$b9a5]
    and $7f
    call Call_000_3304
    ld hl, wDecimalPlayerMoneyTileID+3
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, l
    ld [$996a], a
    ld a, h
    ld [$996b], a
    jr jr_009_5c31

Jump_009_5c05:
    ld hl, $5cb0
    ld de, $9866
    ld b, $0c
    call CopyHLtoDE
    ld hl, $5cbc
    ld de, $98a6
    ld b, $08
    call CopyHLtoDE

Jump_009_5c1b:
    ld hl, $5cc4
    ld de, $9942
    ld b, $10
    call CopyHLtoDE
    ld hl, $5cd2
    ld de, $996d
    ld b, $06
    call CopyHLtoDE

jr_009_5c31:
    ld hl, $b93a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_000_325c
    ld hl, wDecimalPlayerMoneyTileID+2
    ld de, $9908
    ld b, $03
    call CopyHLtoDE
    ld a, $02
    ld [$cd63], a
    ld hl, $63e7
    ld de, $9c41
    ld b, $03
    call Call_009_5e8e
    call Call_009_6470
    ret


    dec [hl]
    inc l
    dec l
    rst $28
    ld [hl], $27
    dec e
    rst $28
    scf
    dec hl
    dec e
    rst $28
    jr c, jr_009_5c94

    ld hl, $02ef
    ld hl, $1c22
    inc h
    ld e, $27
    inc b
    jr nz, jr_009_5c93

    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    ld [bc], a
    ld hl, $1c22
    inc h
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    ld [bc], a
    ld hl, $1c22
    inc h
    ld e, $27
    rst $28
    rst $28
    rst $28
    rst $28

jr_009_5c93:
    rst $28

jr_009_5c94:
    ld b, $28
    dec h
    dec e
    rst $28
    ld [bc], a
    ld hl, $1c22
    inc h
    ld e, $27
    rlca
    ld e, $1a
    dec h
    dec l
    ld hl, $ef32
    inc d
    daa
    ld hl, $291a
    add hl, hl
    ld [hl-], a
    rst $28
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld a, [sNumCroissant]
    call Call_000_3304
    ld hl, wDecimalPlayerMoneyTileID+3
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, l
    ld [$9869], a
    ld a, h
    ld [$986a], a
    ld a, [sNumRiceBall]
    call Call_000_3304
    ld hl, wDecimalPlayerMoneyTileID+3
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, l
    ld [$98e9], a
    ld a, h
    ld [$98ea], a
    ld a, [sNumMeatDumpling]
    call Call_000_3304
    ld hl, wDecimalPlayerMoneyTileID+3
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, l
    ld [$9969], a
    ld a, h
    ld [$996a], a
    ld a, $03
    ld [$cd63], a
    ret


    ld a, [sNumWildGrapeJuice]
    call Call_000_3304
    ld hl, wDecimalPlayerMoneyTileID+3
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, l
    ld [$986b], a
    ld a, h
    ld [$986c], a
    ld a, [sNumGreenTea]
    call Call_000_3304
    ld hl, wDecimalPlayerMoneyTileID+3
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, l
    ld [$98eb], a
    ld a, h
    ld [$98ec], a
    ld a, [$b8cc]
    call Call_000_3304
    ld hl, wDecimalPlayerMoneyTileID+3
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, l
    ld [$996b], a
    ld a, h
    ld [$996c], a
    ld a, [$b942]
    or a
    jr nz, jr_009_5d72

    ld a, $af
    ld b, $10
    ld hl, $9962

jr_009_5d63:
    ld [hl+], a
    dec b
    jr nz, jr_009_5d63

    ld a, $ef
    ld b, $10
    ld hl, $9922

jr_009_5d6e:
    ld [hl+], a
    dec b
    jr nz, jr_009_5d6e

jr_009_5d72:
    ld a, $04
    ld [$cd63], a
    ret


Call_009_5d78:
    ld h, b
    ld l, c
    ld a, [hl+]
    ld d, [hl]
    inc hl
    push hl
    ld h, d
    ld l, a
    push hl
    ld a, [$dd00]
    or a
    jr z, jr_009_5d8d

    ld hl, $5db9
    call Call_000_23e9

jr_009_5d8d:
    call SafeTurnOffLCDDuringVBlank
    pop hl
    ld de, $9821
    ld b, $0b
    call Call_009_5e8e
    pop hl
    ld a, [hl+]
    ld d, [hl]
    inc hl
    push hl
    ld h, d
    ld l, a
    ld bc, $5da5
    push bc
    jp hl


    call Call_000_2273
    ld a, [$dd00]
    or a
    jr z, jr_009_5db7

    call Call_000_2424
    ld hl, $5dc9
    call Call_000_23e9

jr_009_5db7:
    pop hl
    ret


    cp c
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
    ld h, b
    ld l, c
    ldh a, [$ff8b]
    bit 0, a
    jr nz, jr_009_5e4c

    bit 1, a
    jp nz, Jump_009_5e6c

    ld bc, $cd64
    bit 4, a
    jr nz, jr_009_5e38

    bit 5, a
    jr nz, jr_009_5e24

    bit 6, a
    jr nz, jr_009_5dfc

    bit 7, a
    jr nz, jr_009_5e10

    dec hl
    dec hl
    ret


jr_009_5dfc:
    ld a, [bc]
    bit 0, a
    jr z, jr_009_5e0d

    res 0, a
    ld [bc], a
    ld a, $48
    call Call_000_25ce
    xor a
    ld [$cd67], a

jr_009_5e0d:
    dec hl
    dec hl
    ret


jr_009_5e10:
    ld a, [bc]
    bit 0, a
    jr nz, jr_009_5e21

    set 0, a
    ld [bc], a
    ld a, $48
    call Call_000_25ce
    xor a
    ld [$cd67], a

jr_009_5e21:
    dec hl
    dec hl
    ret


jr_009_5e24:
    ld a, [bc]
    bit 1, a
    jr z, jr_009_5e35

    res 1, a
    ld [bc], a
    ld a, $48
    call Call_000_25ce
    xor a
    ld [$cd67], a

jr_009_5e35:
    dec hl
    dec hl
    ret


jr_009_5e38:
    ld a, [bc]
    bit 1, a
    jr nz, jr_009_5e49

    set 1, a
    ld [bc], a
    ld a, $48
    call Call_000_25ce
    xor a
    ld [$cd67], a

jr_009_5e49:
    dec hl
    dec hl
    ret


jr_009_5e4c:
    ld a, $42
    call Call_000_25cb
    ld a, [$cd63]
    ld b, a
    ld a, [$cd64]
    inc a
    cp b
    jr z, jr_009_5e5e

    ld e, a
    ld a, e

jr_009_5e5e:
    ld a, [$cd64]
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


Jump_009_5e6c:
    ld a, $51
    call Call_000_25cb
    ld a, $08
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


    ld h, b
    ld l, c
    xor a
    ld [$cb56], a
    ld a, $02
    ld [$cb50], a
    ld a, $1d
    ld [$cb4f], a
    ret

Call_009_5e8e:
jr_009_5e8e:
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
    inc de
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
    inc de
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
    inc de
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
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, $0e
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    dec b
    jr nz, jr_009_5e8e
    ret

Call_009_5ed0:
    inc [hl]
    ld a, [hl]
    cp b
    ret c

    xor a
    ld [hl], a
    ret


    xor a
    xor a
    xor a
    xor a
    ld d, e
    xor a
    xor a
    rrca
    jr z, @+$2e

    inc l
    ld e, $2c
    inc l
    ld [hl+], a
    jr z, jr_009_5f0f

    inc l
    rst $28
    rst $28
    rst $28
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    dec bc
    ld a, [de]
    dec l
    ld e, $2c
    dec l
    xor a
    dec b
    ld l, $27
    dec e
    inc l
    xor a
    xor a
    xor a
    xor a
    xor a
    ld b, $af
    xor a

jr_009_5f0f:
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    rrca
    ld e, $2d
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    rlca
    jr z, jr_009_5f95

    inc l
    ld e, $af
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a

jr_009_5f95:
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    ld [bc], a
    dec hl
    jr z, jr_009_5fc4

    inc l
    inc l
    ld a, [de]
    daa
    dec l
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a

jr_009_5fc4:
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    rrca
    ld [hl+], a
    ld e, $1c
    ld e, $2c
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    ld de, $1c22
    ld e, $af

jr_009_5feb:
    ld bc, $251a
    dec h
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    rrca
    ld [hl+], a
    ld e, $1c
    ld e, $2c
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    inc c
    ld e, $1a
    dec l
    xor a
    inc bc
    ld l, $26
    add hl, hl
    dec h
    ld [hl+], a
    daa
    jr nz, jr_009_5feb

    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    rrca
    ld [hl+], a
    ld e, $1c
    ld e, $2c
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    inc c
    ld [hl+], a
    dec h
    inc h
    xor a
    ld [de], a
    ld [hl+], a
    inc sp
    ld e, $43
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    ld [bc], a
    ld l, $2b
    dec hl
    ld e, $27
    dec l
    xor a
    dec b
    jr z, jr_009_60f8

    dec e
    ld e, $2b
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a

jr_009_60f8:
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    rrca
    ld [hl+], a
    ld e, $1c
    ld e, $2c
    xor a
    xor a
    inc d
    daa
    dec l
    ld [hl+], a
    dec h
    xor a
    inc bc
    ld e, $25
    ld [hl+], a
    cpl
    ld e, $2b
    ld [hl-], a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    inc bc
    ld a, [de]
    ld [hl-], a
    ld d, b
    inc l
    ld d, c
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    ld [bc], a
    ld l, $2b
    dec hl
    ld e, $27
    dec l
    xor a
    dec b
    jr z, jr_009_6284

    dec e
    ld e, $2b
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    rrca
    ld [hl+], a
    ld e, $1c
    ld e, $2c
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a

jr_009_6284:
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    inc d
    daa
    dec l
    ld [hl+], a
    dec h
    xor a
    inc bc
    ld e, $25
    ld [hl+], a
    cpl
    ld e, $2b
    ld [hl-], a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    inc bc
    ld a, [de]
    ld [hl-], a
    ld d, b
    inc l
    ld d, c
    xor a
    ld d, $22
    dec h
    dec e
    xor a
    ld b, $2b
    ld a, [de]
    add hl, hl
    ld e, $af
    add hl, bc
    ld l, $22
    inc e
    ld e, $af
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    ld [bc], a
    ld l, $29
    inc l
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    ld b, $2b
    ld e, $1e
    daa
    xor a
    inc de
    ld e, $1a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    ld [bc], a
    ld l, $29
    inc l
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    inc c
    ld [hl+], a
    dec h
    inc h
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    ld [bc], a
    ld l, $29
    inc l
    xor a
    xor a
    ld [bc], a
    jr z, jr_009_63af

    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    dec b
    jr z, jr_009_63b3

    dec e
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    ld [bc], a
    ld hl, $1c22
    inc h
    ld e, $27
    xor a
    xor a
    xor a
    xor a
    xor a
    inc bc
    dec hl
    ld [hl+], a

jr_009_63af:
    daa
    inc h
    xor a
    dec [hl]

jr_009_63b3:
    inc l
    dec l
    rst $28
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    ld [hl], $27
    dec e
    rst $28
    rst $28
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    scf
    dec hl
    dec e
    rst $28
    rst $28
    rst $28
    rst $28
    xor a
    xor a
    xor a
    xor a
    xor a
    jr c, jr_009_6411

    ld hl, $efef
    xor a
    dec [hl]
    inc l
    dec l
    rst $28
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    ld [hl], $27
    dec e
    rst $28
    rst $28
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    scf
    dec hl
    dec e
    rst $28
    rst $28

jr_009_6411:
    rst $28
    rst $28
    xor a
    xor a
    xor a
    xor a
    xor a
    jr c, jr_009_6447

    ld hl, $efef
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a

Call_009_642d:
    ld a, [$cd64]
    bit 7, a
    jr z, jr_009_6437

    and $0f
    ret


jr_009_6437:
    and $0f
    cp $01
    jr z, jr_009_6442

    cp $02
    jr z, jr_009_6445

    ret


jr_009_6442:
    ld a, $02
    ret


jr_009_6445:
    ld a, $01

jr_009_6447:
    ret


Call_009_6448:
    ld a, [$cd64]
    res 7, a
    ld [$cd64], a
    ret


Call_009_6451:
    ld a, [$cd64]
    and $0f
    swap a
    ld b, a
    ld a, [$cd64]
    ld hl, $cd9c
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ld [$cd64], a
    or b
    set 7, a
    ld [$cd64], a
    ret


Call_009_6470:
    ld a, [$cd64]
    bit 7, a
    jr nz, jr_009_6478

    ret


jr_009_6478:
    res 7, a
    swap a
    and $0f
    ld [$cd64], a
    ret


    ld hl, sp+$00
    ld de, $f814
    ld hl, sp+$10
    inc d
    ldh a, [rP1]
    ld bc, $f014
    ld hl, sp+$00
    inc d
    add b
    ld hl, sp+$00
    inc de
    inc d
    ld hl, sp-$08
    ld [de], a
    inc d
    ldh a, [rP1]
    inc bc
    inc d
    ldh a, [$fff8]
    ld [bc], a
    inc d
    add b
    ld hl, sp+$00
    dec d
    inc d
    ld hl, sp-$08
    inc d
    inc d
    ldh a, [rP1]
    dec b
    inc d
    ldh a, [$fff8]
    inc b
    inc d
    add b
    ld hl, sp+$00
    rla
    inc d
    ld hl, sp-$08
    ld d, $14
    ldh a, [rP1]
    rlca
    inc d
    ldh a, [$fff8]
    ld b, $14
    add b
    ld hl, sp+$00
    add hl, de
    inc d
    ld hl, sp-$08
    jr jr_009_64e2

    ldh a, [rP1]
    add hl, bc
    inc d
    ldh a, [$fff8]
    ld [$8014], sp
    ld hl, sp+$00
    dec de
    inc d
    ld hl, sp-$08
    ld a, [de]
    inc d
    ldh a, [rP1]
    dec bc

jr_009_64e2:
    inc d
    ldh a, [$fff8]
    ld a, [bc]
    inc d
    add b
    ld hl, sp+$06
    dec e
    ld d, $f8
    cp $1c
    ld d, $f8
    or $0f
    ld d, $f0
    ld b, $0e
    ld d, $f0
    cp $0d
    ld d, $f0
    or $0c
    ld d, $80
    ld hl, sp+$06
    inc h
    ld d, $f8
    cp $23
    ld d, $f8
    or $22
    ld d, $f0
    ld b, $21
    ld d, $f0
    cp $20
    ld d, $f0
    or $1f
    ld d, $e8
    rst $30
    ld e, $16
    add b
    ld hl, sp+$06
    ld a, [hl+]
    ld d, $f8
    cp $29
    ld d, $f8
    or $28
    ld d, $f0
    ld b, $27
    ld d, $f0
    cp $26
    ld d, $f0
    or $25
    ld d, $80
    ld sp, hl
    rlca
    jr nc, jr_009_6551

    ld sp, hl
    rst $38
    cpl
    ld d, $f1
    rlca
    ld l, $16
    pop af
    rst $38
    dec l
    ld d, $f1
    rst $30
    inc l
    ld d, $e9
    ld a, [$162b]
    add b
    jp hl


jr_009_6551:
    ld sp, hl
    ld sp, $f916
    inc bc
    ld [hl], $16
    ld sp, hl
    ei
    dec [hl]
    ld d, $f1
    rlca
    inc [hl]
    ld d, $f1
    rst $38
    inc sp
    ld d, $f1
    rst $30
    ld [hl-], a
    ld d, $80
    add sp, -$07
    dec hl
    ld d, $f8
    ld b, $3b
    ld d, $f8
    cp $3a
    ld d, $f0
    ld [$1639], sp
    ldh a, [rP1]
    jr c, jr_009_6593

    ldh a, [$fff8]
    scf
    ld d, $80
    jp hl


    ld a, [$162b]
    ld sp, hl
    rlca
    ccf
    ld d, $f9
    rst $38
    ld a, $16
    pop af
    rlca
    dec a
    ld d, $f1

jr_009_6593:
    rst $38
    inc a
    ld d, $f1
    rst $30
    inc l
    ld d, $80
    ld sp, hl
    inc bc
    ld b, e
    ld d, $f9
    ei
    ld b, d
    ld d, $f1
    rlca
    ld b, c
    ld d, $f1
    rst $38
    ld b, b
    ld d, $e9
    ld sp, hl
    ld sp, $f116
    rst $30
    ld [hl-], a
    ld d, $80
    ld hl, sp+$06
    ld b, a
    ld d, $f8
    cp $46
    ld d, $e8
    ld sp, hl
    dec hl
    ld d, $f0
    ld hl, sp+$37
    ld d, $f0
    ld [$1645], sp
    ldh a, [rP1]
    ld b, h
    ld d, $80
    call Call_009_5680
    ld hl, $79d4
    ld c, $05
    ld de, $9800
    call Call_000_31a0
    ld hl, $b949
    ld c, $16
    call Call_009_662f
    ld a, $af
    ld [$cb5c], a
    ld a, $e9
    ld [$cd9b], a
    ld a, $ea
    ld [$cd9a], a
    xor a
    ld [$cd64], a
    ld [$cd65], a
    ld [$cd67], a
    ld bc, $662b
    call Call_009_5d78
    call SafeTurnOffLCDDuringVBlank
    ld a, $af
    ld hl, $9922
    ld b, $10

jr_009_660c:
    ld [hl+], a
    dec b
    jr nz, jr_009_660c

    ld hl, $66b7
    ld a, l
    ld [$cd28], a
    ld a, h
    ld [$cd29], a
    ld a, $83
    ld [wLCDCTempStorage], a
    xor a
    ldh [rSTAT], a
    xor a
    ldh [rIF], a
    ld a, $03
    ldh [rIE], a
    ret


    add hl, hl
    ld h, c
    ld c, c
    ld e, c

Call_009_662f:
    push hl
    ld hl, $cd9f
    ld a, $ff
    ld [hl-], a
    ld [hl-], a
    ld [hl-], a
    ld [hl], a
    xor a
    ld [$cda0], a
    ld d, h
    ld e, l
    pop hl
    ld b, $04

jr_009_6642:
    ld a, [hl]
    cp $ff
    jr z, jr_009_6653

    ld a, $04
    sub b
    ld [de], a
    inc de
    ld a, [$cda0]
    inc a
    ld [$cda0], a

jr_009_6653:
    ld a, c

jr_009_6654:
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    dec b
    jr nz, jr_009_6642

    ret


    call Call_000_0d90
    ld a, [$cb4e]
    ld b, a
    ld a, [$cb4f]
    or b
    ret nz

    call Call_000_33c4
    call Call_009_46ed
    push hl
    push af
    ld l, $01
    ld h, $40
    ld a, $1b
    call BankSwitchCallHL
    pop af
    pop hl
    ld hl, $66af
    call Call_009_6684
    ret


Call_009_6684:
    push hl
    ld hl, $cd67
    inc [hl]
    pop hl
    ld a, [$cd65]
    or a
    jr z, jr_009_6696

    ld a, [$cd67]
    bit 4, a
    ret nz

jr_009_6696:
    ld a, [$cd64]
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld c, a
    ld b, [hl]
    ld hl, $66aa
    call Call_000_20de
    ret


    nop
    nop
    xor l
    nop
    add b
    ld [$0808], sp
    jr jr_009_66bc

    jr z, jr_009_66be

    jr c, jr_009_6654

    ld c, h
    ld sp, $0658

jr_009_66bc:
    ld h, a
    xor e

jr_009_66be:
    ld c, h
    rst $30
    ld h, [hl]
    pop af
    ld h, [hl]
    ld a, b
    ld e, l
    ld h, e
    ld h, b
    ld c, d
    ld e, c
    db $f4
    ld h, [hl]
    sbc h
    ld c, h
    ld c, a
    ld e, b
    dec c
    ld h, a
    adc a
    ld h, a
    pop bc
    ld h, [hl]
    reti


    ld h, [hl]
    push hl
    ld h, [hl]
    rst $38
    ld h, [hl]
    sbc h
    ld c, h
    ld l, l
    ld e, b
    xor e
    ld c, h
    sub [hl]
    ld c, h
    db $ed
    ld h, [hl]
    sbc h
    ld c, h
    jp nc, $9658

    ld c, h
    db $ed
    ld h, [hl]
    sub [hl]
    ld c, h
    db $ed
    ld h, [hl]
    ld h, b
    ld l, c
    ret


    ld h, b
    ld l, c
    ret


    ld a, $01
    ld [$cd65], a
    ld h, b
    ld l, c
    ret


    xor a
    ld [$cd65], a
    ld h, b
    ld l, c
    ret


    xor a
    ld [$cd64], a
    ld h, b
    ld l, c
    ret


    ld h, b
    ld l, c
    ld a, [$cd24]
    bit 0, a
    jr nz, jr_009_6725

    bit 1, a
    jr nz, jr_009_6746

    bit 6, a
    jr nz, jr_009_6755

    bit 7, a
    jr nz, jr_009_676e

    dec hl
    dec hl
    ret


jr_009_6725:
    push hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld bc, $672e
    push bc
    jp hl


    pop hl
    jr nz, jr_009_673e

    ld a, $42
    call Call_000_25cb
    inc hl
    inc hl
    inc hl
    inc hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


jr_009_673e:
    ld a, $51
    call Call_000_25cb
    dec hl
    dec hl
    ret


jr_009_6746:
    ld a, $51
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


jr_009_6755:
    ld a, [$cd64]
    or a
    jr z, jr_009_678c

    dec a
    ld [$cd64], a
    xor a
    ld [$cd67], a
    ld a, $48
    call Call_000_25ce
    inc hl
    inc hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


jr_009_676e:
    ld a, [$cda0]
    dec a
    ld b, a
    ld a, [$cd64]
    cp b
    jr nc, jr_009_678c

    inc a
    ld [$cd64], a
    xor a
    ld [$cd67], a
    ld a, $48
    call Call_000_25ce
    inc hl
    inc hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


jr_009_678c:
    dec hl
    dec hl
    ret


    ld hl, $67c4
    call Call_009_67a6
    ld a, [hl]
    cp $02
    ret


    ld hl, $67cc
    call Call_009_67a6
    ld a, [hl]
    cp $03
    ret z

    cp $02
    ret


Call_009_67a6:
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
    call Call_009_67b9
    ret


Call_009_67b9:
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
    call Call_009_566d
    ld hl, $79d4
    ld c, $05
    ld de, $9800
    call Call_000_31a0
    ld hl, $b9a7

jr_009_67e5:
    ld c, $0c
    call Call_009_662f
    ld a, $83
    ld [wLCDCTempStorage], a
    ld a, $af
    ld [$cb5c], a
    ld a, $e9
    ld [$cd9b], a
    ld a, $ea
    ld [$cd9a], a
    xor a
    ld [$cd64], a
    ld [$cd65], a
    ld [$cd67], a
    ld bc, $662b
    call Call_009_5d78
    ld hl, $6848
    ld a, l
    ld [$cd28], a
    ld a, h
    ld [$cd29], a
    ret


    call Call_000_0d90
    ld a, [$cb4e]
    ld b, a
    ld a, [$cb4f]
    or b
    ret nz

    call Call_000_33c4
    call Call_009_46ed
    push hl
    push af
    ld l, $01
    ld h, $40
    ld a, $1b
    call BankSwitchCallHL
    pop af
    pop hl
    ld hl, $6840
    call Call_009_6684
    ret


    ld [$0808], sp
    jr @+$0a

    jr z, jr_009_684f

    jr c, jr_009_67e5

    ld c, h
    db $fc
    ld e, b
    ld b, $67
    xor e

jr_009_684f:
    ld c, h
    rst $30
    ld h, [hl]
    pop af
    ld h, [hl]
    ld a, b
    ld e, l
    rst $28
    ld h, c
    inc d
    ld e, e
    db $f4
    ld h, [hl]
    sbc h
    ld c, h
    ld a, [de]
    ld e, c
    dec c
    ld h, a
    sbc c
    ld h, a
    ld d, d
    ld l, b
    ld l, d
    ld l, b
    halt
    ld l, b
    rst $38
    ld h, [hl]
    sbc h
    ld c, h
    jr c, jr_009_68c9

    xor e
    ld c, h
    sub [hl]
    ld c, h
    ld a, [hl]
    ld l, b
    sbc h
    ld c, h
    sbc l
    ld e, c
    sub [hl]
    ld c, h
    ld a, [hl]
    ld l, b
    sub [hl]
    ld c, h
    ld a, [hl]
    ld l, b
    ld hl, $68a6
    ld de, $cd72
    ld b, $20
    call CopyHLtoDE
    ld a, [$cb68]
    add a
    ld hl, $68c6
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [hl+]
    ld b, a
    ld de, $cd74
    call CopyHLtoDE
    ret


    rst $28
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    rst $28
    xor a
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    ld d, $69
    inc hl

jr_009_68c9:
    ld l, c
    dec hl
    ld l, c
    jr c, @+$6b

    ccf
    ld l, c
    ld b, [hl]
    ld l, c
    ld c, e
    ld l, c
    ld d, d
    ld l, c
    ld e, [hl]
    ld l, c
    ld l, b
    ld l, c
    halt
    ld l, c
    ld a, a
    ld l, c
    adc [hl]
    ld l, c
    sbc l
    ld l, c
    and d
    ld l, c
    and a
    ld l, c
    xor h
    ld l, c
    or c
    ld l, c
    or [hl]
    ld l, c
    cp e
    ld l, c
    ret nz

    ld l, c
    push bc
    ld l, c
    jp z, $cf69

    ld l, c
    call nc, $d969
    ld l, c
    sbc $69
    db $e3
    ld l, c
    add sp, $69
    db $ed
    ld l, c
    ldh a, [c]
    ld l, c
    rst $30
    ld l, c
    db $fc
    ld l, c
    ld bc, $066a
    ld l, d
    dec bc
    ld l, d
    db $10
    ld l, d
    dec d
    ld l, d
    ld a, [de]
    ld l, d
    rra
    ld l, d
    inc c
    ld [de], a
    dec l
    jr z, @+$2b

    rst $28
    rrca
    dec h
    ld a, [de]
    ld [hl-], a
    ld [hl+], a
    daa
    jr nz, @+$09

    ld c, $29
    ld e, $27
    ld [hl+], a
    daa
    jr nz, jr_009_6938

    inc b
    daa
    dec l
    ld e, $2b
    rst $28
    nop
    rst $28
    dec c
    ld a, [de]
    ld h, $1e

jr_009_6938:
    ld b, $12
    add hl, hl
    dec hl
    ld [hl+], a
    daa
    jr nz, jr_009_6946

    ld [de], a
    ld l, $26
    ld h, $1e
    dec hl

jr_009_6946:
    inc b
    dec b
    ld a, [de]
    dec h
    dec h
    ld b, $16
    ld [hl+], a
    daa
    dec l
    ld e, $2b
    dec bc
    rlca
    ld a, [de]
    add hl, hl
    add hl, hl
    ld [hl-], a
    rst $28
    inc b
    cpl
    ld e, $27
    dec l
    add hl, bc
    ld [de], a
    ld a, [de]
    dec e
    rst $28
    inc b
    cpl
    ld e, $27
    dec l
    dec c
    ld [de], a
    dec l
    ld a, [de]
    rra
    rra
    rst $28
    ld [bc], a
    dec hl
    ld e, $1d
    ld [hl+], a
    dec l
    inc l
    ld [$3104], sp
    inc e
    ld hl, $271a
    jr nz, jr_009_699d

    ld c, $07
    ld a, [de]
    dec hl
    cpl
    ld e, $2c
    dec l
    ld [de], a
    add hl, hl
    dec hl
    ld [hl+], a
    dec l
    ld e, $2c
    ld c, $06
    dec hl
    ld a, [de]
    daa
    dec e
    add hl, hl
    ld a, [de]
    nop
    add hl, hl
    add hl, hl
    ld e, $1a
    dec hl
    inc l

jr_009_699d:
    inc b
    inc de
    jr z, jr_009_69d1

    daa
    inc b
    ld [de], a
    inc b
    inc [hl]
    inc [hl]
    inc b
    ld [de], a
    inc b
    inc [hl]
    dec [hl]
    inc b
    ld [de], a
    inc b
    inc [hl]
    ld [hl], $04
    ld [de], a
    inc b
    inc [hl]
    scf
    inc b
    ld [de], a
    inc b
    inc [hl]
    jr c, jr_009_69c0

    ld [de], a
    inc b
    inc [hl]
    add hl, sp

jr_009_69c0:
    inc b
    ld [de], a
    inc b
    inc [hl]
    ld a, [hl-]
    inc b
    ld [de], a
    inc b
    inc [hl]
    dec sp
    inc b
    ld [de], a
    inc b
    inc [hl]
    inc a
    inc b
    ld [de], a

jr_009_69d1:
    inc b
    inc [hl]
    dec a
    inc b
    ld [de], a
    inc b
    dec [hl]
    inc [hl]
    inc b
    ld [de], a
    inc b
    dec [hl]
    dec [hl]
    inc b
    ld [de], a
    inc b
    dec [hl]
    ld [hl], $04
    ld [de], a
    inc b
    dec [hl]
    scf
    inc b
    ld [de], a
    inc b
    dec [hl]
    jr c, jr_009_69f2

    ld [de], a
    inc b
    dec [hl]
    add hl, sp

jr_009_69f2:
    inc b
    ld [de], a
    inc b
    dec [hl]
    ld a, [hl-]
    inc b
    ld [de], a
    inc b
    dec [hl]
    dec sp
    inc b
    ld [de], a
    inc b
    dec [hl]
    inc a
    inc b
    ld [de], a
    inc b
    dec [hl]
    dec a
    inc b
    ld [de], a
    inc b
    ld [hl], $34
    inc b
    ld [de], a
    inc b
    ld [hl], $35
    inc b
    ld [de], a
    inc b
    ld [hl], $36
    inc b
    ld [de], a
    inc b
    ld [hl], $37
    inc b
    ld [de], a
    inc b
    ld [hl], $38
    inc b
    ld [de], a
    inc b
    ld [hl], $39
    ld a, [$cb68]
    add a
    ld hl, $6a5e
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld b, a
    ld a, [hl]
    cp $03
    jr z, jr_009_6a4a

    cp $02
    jr z, jr_009_6a54

    cp $01
    jr z, jr_009_6a59

    push bc
    call Call_000_2527
    pop bc
    ld a, b
    call Call_000_25c5
    ret


jr_009_6a4a:
    push bc

Jump_009_6a4b:
    call Call_000_2527
    pop bc
    ld a, b
    call Call_000_25c8
    ret


jr_009_6a54:
    ld a, b
    call Call_000_25cb
    ret


jr_009_6a59:
    ld a, b
    call Call_000_25ce
    ret


    ld c, l
    inc b
    nop
    inc b
    inc b
    inc b
    ld [$0b03], sp
    inc b
    rrca
    inc b
    inc de
    inc b
    rla
    inc b
    dec de
    inc bc
    ld e, $04
    ld [hl+], a
    inc b
    ld h, $04
    ld a, [hl+]
    inc b
    ld d, h
    inc b
    ld l, $01
    cpl
    ld bc, $0130
    ld sp, $3201
    ld bc, $0133
    inc [hl]
    ld bc, $0135
    ld [hl], $01
    scf
    ld bc, $0238
    ld a, [hl-]
    ld bc, $013b
    inc a
    ld bc, $013d
    ld a, $01
    ccf
    ld bc, $0140
    ld b, c
    ld bc, $0242
    ld b, h
    ld [bc], a
    ld b, [hl]
    ld [bc], a
    ld c, b
    ld bc, $0251
    ld d, e
    ld bc, $0158
    add b
    inc b
    cp $15
    nop
    ld a, $00
    ld b, c
    ld a, $a4
    ld e, e
    ld h, h
    db $fd
    dec de
    daa
    ld bc, $0080
    ld [hl], b
    add b
    ld c, [hl]
    or b
    sbc $c9
    ld bc, $7fb0
    ld sp, hl
    ld a, $c5
    ld bc, $8060
    cp a
    ld e, b
    and b
    ld b, [hl]
    cp b
    add l
    ld a, d
    inc de
    inc b
    ld b, c
    rst $38
    nop
    cp [hl]
    ld b, c
    add b
    ld a, a
    ld h, h
    dec de
    ld h, l
    db $fd
    ld a, [de]
    push bc
    inc bc
    ld h, [hl]
    add b
    ld e, d
    and h
    ld b, h
    cp b
    ei
    add h
    ld a, b
    inc de
    ld b, $4c
    nop
    ld l, d
    inc b
    ld e, l
    rst $18
    ld h, $41
    ld a, $6d
    ld [de], a
    ld de, $1807
    nop
    rst $38
    jr z, @+$12

    ld d, b
    jr nz, jr_009_6b56

    jr nz, jr_009_6b30

    db $10
    ei
    inc d
    ld [$01a7], sp
    ld l, b
    rla
    ld a, b
    cpl
    ld a, $ff
    dec e
    nop
    nop
    inc c
    nop
    ld a, [bc]
    inc b
    ld a, [bc]
    rst $38
    inc b
    dec b
    ld [bc], a
    add l
    ld [bc], a
    ld h, l
    add d
    dec e
    db $fd
    ldh [c], a
    inc de
    ld a, [bc]
    sbc b
    nop
    call nc, $ba08
    ld c, h
    rst $38

jr_009_6b30:
    add d
    ld a, h
    jp c, $0024

    nop
    inc bc
    nop
    rst $28
    dec b
    ld [bc], a
    dec b
    ld [bc], a
    ld b, c
    ld [bc], a
    ld a, [bc]
    inc b
    ld [hl], h
    rst $38
    ld [$0006], sp
    rrca
    inc b
    dec bc
    rlca
    rrca
    rst $38
    rlca
    rrca
    dec b
    rrca
    dec b
    rra
    dec c
    rra
    rst $38
    rrca

jr_009_6b56:
    ret nz

    nop
    ret nz

    add b
    ldh [rP1], a
    ret nc

    rst $38
    and b
    xor h
    ret nc

    rst $18
    ldh [rIE], a
    rst $38
    ld a, a
    db $fd
    rst $38
    daa
    ld c, $c0
    nop
    ldh a, [$ffc0]
    add sp, -$30
    rst $30
    ld e, $0f
    rrca
    adc d
    rrca
    or c
    ld a, [hl]
    ld hl, sp+$3f
    rst $38
    cp h
    ld a, a
    ld e, d
    dec a
    ld a, $01
    dec bc
    inc b
    cp l
    dec b
    ldh [rNR10], a
    add l
    ld a, d
    ld [bc], a
    db $fc
    inc hl
    nop
    inc h
    rst $38
    ret c

    call c, $d888
    nop
    cp h
    ld a, a
    ld e, e
    cp a
    inc a
    ld a, $01
    ld d, $0b
    dec bc
    and h
    ld [de], a
    ld b, $ff
    ld hl, sp+$0c
    ldh a, [rDIV]
    ld hl, sp-$0a
    inc c
    inc c
    or $a4
    inc de
    or b
    ld a, a
    dec b
    inc b
    ld c, $05
    rlca
    ld bc, $01ff
    nop
    ld c, $f0
    ld b, $fc
    inc b
    ld hl, sp+$7f
    jr @-$1e

    ld h, b
    add b
    ld b, b
    add b
    add b
    ld b, b
    inc d
    xor $63
    dec c
    ld e, $03
    ld b, $00
    ld [bc], a
    rrca
    inc bc
    inc bc
    rst $28
    nop
    ld a, [$0204]
    nop
    ld [bc], a
    inc b
    ld hl, sp+$44
    rst $38
    cp b
    db $ec
    db $10
    ld hl, sp+$30
    ld [hl], b
    nop
    ld e, $ef
    inc bc
    rra
    ld a, [bc]
    ld c, $88
    jr jr_009_6bf0

    db $fc
    ld b, h

jr_009_6bf0:
    rst $38
    cp b
    call nz, $e238
    ld e, h
    ld [hl], d
    inc l
    inc a
    ei
    ld [$e008], sp
    add hl, de
    pop de
    ld l, $f0
    ld e, a
    ld a, h
    rst $38
    dec sp
    jr c, @+$09

    dec bc
    inc b
    ld c, $04
    inc e
    rst $38
    ld [$0018], sp
    adc d
    ld [hl], b
    dec b
    ld a, [$cf03]
    cp $27
    jp c, $a4db

    dec de

jr_009_6c1c:
    jr nc, @+$10

    ld a, a
    cp a
    rst $38
    ld a, a
    rst $18
    jr c, jr_009_6c1c

    ld e, b
    cp d
    ld d, c
    db $eb
    rst $38
    db $10
    jr c, jr_009_6c2d

jr_009_6c2d:
    db $e4
    ret c

    or h
    ret z

    call nc, $88ff
    db $ec
    ret nz

    ld h, h
    ret nz

    ldh [rLCDC], a
    and b
    ei
    ld b, b
    ret nz

    ld c, d
    ld e, $1b
    nop
    ccf
    ld [de], a
    rla
    rst $38
    ld c, $1f
    rrca
    rra
    dec bc
    rra
    dec bc
    ccf
    cp a
    dec de
    ld a, $1f
    dec a
    ld e, $1f
    ld h, b
    ld de, $ffa0

jr_009_6c59:
    ld b, b
    ld d, b
    and b
    or b
    ret nz

    ret c

    ldh [rIE], a
    di
    ld hl, sp-$01
    stop
    add hl, bc
    jr nz, jr_009_6c59

    add b
    ret z

    or b
    rst $38
    inc bc
    nop
    rlca
    ld [bc], a
    rlca
    ld bc, $0106
    db $fd
    inc bc
    and h
    ld [hl+], a
    ld a, a
    rst $38
    cp a
    ld a, a
    ei
    rst $00
    rst $38
    ld h, a

jr_009_6c81:
    add c
    add [hl]
    ld bc, $0205
    rlca
    nop
    rst $18
    ld bc, $e400
    sbc b
    ld e, [hl]
    add b
    ld c, $c0
    add b
    inc a
    ld hl, $2100
    rrca
    dec c
    nop
    rra
    add hl, bc
    ld c, c
    ld b, $41
    db $10
    rst $38
    ret nz

    nop
    and c
    ld b, b
    ld e, a
    and c
    cp a
    rst $08
    cp $07
    ld b, $dc
    nop
    and $d8
    ei
    ret nz

    ldh [rWave_f], a
    ret nz

    or b
    ret nz

    dec a
    ld e, $1e
    adc d
    jr z, @+$03

    ld b, $ff
    ld a, a
    inc e
    ld a, h
    jr z, jr_009_6d3f

    jr z, jr_009_6c81

    ld e, b
    ld a, l
    add sp, $00
    dec c
    db $ec
    ldh a, [$fff4]
    jr c, jr_009_6d0b

    ld a, a
    dec hl
    rst $38
    nop
    ld a, [hl]
    nop
    xor $54
    cp $4c
    db $fd
    dec [hl]
    ld a, d
    ldh [$ff0c], a
    dec c
    ld hl, $3f00
    rra
    jr nz, jr_009_6ce5

jr_009_6ce5:
    ret nz

    inc b
    ld a, a
    and b
    ld b, b
    ld e, b
    and b
    cp a
    ret nz

    ldh a, [$ffb0]
    inc c
    push af
    ld a, a
    pop af
    rra
    ld a, a
    ld de, $e02e
    nop
    ld hl, sp-$20
    rst $38
    db $fc
    ldh a, [$fffa]
    db $f4
    ld sp, hl
    or $fd
    ldh a, [c]
    cp $30
    ld hl, $fc38
    ld e, b

jr_009_6d0b:
    ld hl, sp+$50
    cp b
    ld d, b
    cp $e1
    dec b

jr_009_6d12:
    nop
    nop
    push af
    ldh [c], a
    ei
    jr nc, jr_009_6d12

    push af
    jr nc, jr_009_6d1f

    ld bc, $cc30

jr_009_6d1f:
    dec b
    db $fd
    ld a, d
    rst $38
    ld l, h
    cp a
    ccf
    dec de
    ccf
    dec de
    ld a, a
    ccf
    jr nz, jr_009_6d2d

jr_009_6d2d:
    inc a
    rst $38
    dec a
    nop
    rlca
    nop
    rrca
    ld b, $e0
    add b
    adc a
    db $fc
    ret nz

    db $e3
    db $fc
    and c
    ld [de], a
    ld b, d

jr_009_6d3f:
    nop
    ld [bc], a
    ld b, $c0
    rst $38
    nop
    ldh [$ffc0], a
    ld hl, sp-$20
    db $f4
    add sp, -$06
    rst $38
    db $e4
    rst $30
    ret nz

    cp a
    ld e, [hl]
    cp $18
    inc h
    db $fd
    jr jr_009_6d7f

    dec bc
    ld a, [hl]
    db $fc
    rst $38
    ld c, $3f
    ld d, $7f
    rra
    ld a, [bc]
    rla
    ld a, [bc]
    dec e
    ld [bc], a
    ld b, $81
    dec bc
    ld a, a
    dec a
    ld a, l
    ld [hl], $7e
    scf
    ld a, a
    scf
    add c
    dec de
    rst $38
    rst $38
    ld a, c
    ld a, e
    ld bc, $0083
    ld c, a
    add e
    di
    rst $30
    rrca

jr_009_6d7f:
    or d
    ld de, $0552
    cp h
    nop
    and $98
    ld [hl], a
    db $db
    ldh [$ffe0], a
    ret nz

    ld de, $c0f0
    db $fc
    ret nz

    rrca
    cp $a1
    rlca
    ld a, [hl]
    inc e
    ld a, [hl]
    inc l
    cp $6c
    xor h
    dec sp
    ld e, b
    db $e4
    add b
    dec b
    ret


    ld b, $07
    adc d
    dec sp
    inc b
    rrca
    rst $38
    rst $28
    rst $38
    ldh a, [$ff7c]
    di
    ei
    ld [hl], h
    rst $30
    db $fd
    ld l, a
    inc b
    rrca
    ld h, b
    db $fc
    jr nc, jr_009_6df3

    call nc, $fff9
    ld d, $3d
    jp nc, Jump_009_6ff6

    ld hl, sp+$37
    rst $30
    sbc [hl]
    ld [$350f], sp
    jp nz, $b07b

jr_009_6dcb:
    add hl, bc
    rrca
    ld [bc], a
    dec c
    call c, $f9ff
    and $fe
    pop af
    pop af
    xor $fe
    pop hl
    db $fc
    inc bc
    inc b
    ld [bc], a
    dec c
    ld h, b
    ld [hl], h
    xor b
    ld a, d
    and h
    scf
    ld a, [$0d00]
    rst $38
    ld a, [bc]
    dec c
    ld h, d
    db $fc
    add a
    ld a, d
    ld a, a
    ld sp, hl
    ld b, $07
    dec c

jr_009_6df3:
    nop
    inc c
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
    cp $04
    inc c
    ld b, b
    ld h, b
    add b
    jr nc, jr_009_6dcb

    inc a
    ret nc

    ld a, a
    inc [hl]
    ret c

    ld a, a
    ld a, $7f
    dec a
    ld a, a
    ld [$070c], sp
    add hl, de
    and $e7
    and b
    jr c, @+$19

    nop
    nop
    ld [$1dfe], sp
    nop
    ld bc, $0700
    nop
    jr @+$09

    inc hl
    rst $38
    inc e
    daa
    jr jr_009_6e78

    jr nc, jr_009_6e82

    jr nz, @+$62

    cp $04
    ld [bc], a
    rrca
    nop
    jr nc, jr_009_6e4a

    ld b, b
    ccf
    add b
    rst $38
    ld a, a
    ldh [$ff1f], a
    ldh a, [rIF]
    ldh a, [rIF]
    adc b
    rst $38
    ld [hl], a
    db $fc

jr_009_6e4a:
    inc bc
    rst $38
    ld e, h
    rst $38
    ld h, l
    rst $38
    rst $30
    ld h, a
    rst $38
    ld l, a
    inc de
    inc b
    add b
    nop
    ld [hl], b
    add b
    rst $38

jr_009_6e5b:
    inc c
    ldh a, [rSC]
    db $fc
    ld bc, $01fe
    cp $fb
    nop
    rst $38
    ld hl, $e000
    rra
    db $fc
    add e
    rst $38
    rst $10
    ret nz

    rst $38
    ret nz

    cpl
    rlca
    add b
    ld h, $00
    ldh [rP1], a

jr_009_6e78:
    rla
    jr jr_009_6e5b

    ld b, b
    jr nz, @+$09

    ld bc, $025f
    add [hl]

jr_009_6e82:
    add hl, bc
    ld b, b
    ld b, $ff
    rst $20
    rst $38
    rst $38
    rst $38
    ld [hl], a
    rst $38
    ld c, a
    ld a, a
    rst $38
    ccf
    ccf
    rrca
    rrca
    ld b, $1e
    ld bc, $ff20
    rra
    inc hl
    inc e
    ld b, a
    jr c, jr_009_6efd

    ld [hl+], a
    ld a, a
    rst $38
    nop
    ld a, a
    inc c
    ld a, a
    ld [$d0ff], sp
    rst $38
    rst $38
    ret c

    rst $38
    ld hl, sp-$02
    ldh a, [$fffe]
    ret nz

    pop af
    rst $38
    adc $e2
    sbc h
    sbc h
    ld h, b
    sub [hl]
    ld l, b
    pop hl
    rst $18
    ld e, $fe
    ld h, b
    db $fc
    ldh a, [rNR43]
    nop
    nop
    db $fc
    ccf

jr_009_6ec6:
    ldh [$ffe4], a
    jr jr_009_6ec6

    nop
    jr c, jr_009_6f4c

    dec b
    rra
    nop
    db $fc
    rra
    nop
    add d
    add hl, bc
    ld c, a
    jr nc, @+$49

    add hl, sp
    daa
    dec de
    rst $38
    rla
    ld [$0b17], sp
    dec bc
    inc b
    ld [$f707], sp
    rrca
    nop
    rrca
    ld b, b
    nop
    jr @+$09

    inc h
    dec de
    rst $30

jr_009_6eef:
    ld b, b
    ccf
    ret nz

    jr nz, jr_009_6ef4

jr_009_6ef4:
    rst $38
    nop
    db $f4
    jr z, @+$01

    db $f4
    ret z

    ld hl, sp-$20

jr_009_6efd:
    ld hl, sp-$20
    ldh a, [rLCDC]
    rst $38
    ret nc

    jr nz, jr_009_6f25

    ret nz

    ldh [rP1], a
    ret nc

    and b
    rst $38
    ldh a, [rP1]
    ld d, b
    and b
    ld c, b
    or b
    jr z, @-$2e

    rra
    inc l
    ret nc

    ccf
    ret nz

    cp $4f
    dec b
    inc l
    ld d, $0f
    ld d, $8f
    ldh a, [rIF]
    ld [$0df7], sp

jr_009_6f25:
    ld d, $0f
    inc d
    ld h, c
    inc d
    ret nz

    ccf
    nop
    jr nc, jr_009_6eef

    ld h, b
    nop
    ld b, c
    rrca
    inc d
    add sp, $1c
    db $fc
    rrca
    inc d
    ld [bc], a
    inc d
    add hl, sp
    ld e, a
    ld hl, $007f
    rst $38
    rst $30
    inc c
    rst $38
    adc b
    ld b, $14
    ldh [$fff9], a
    and $f0
    rst $38

jr_009_6f4c:
    adc a
    rst $08
    jr nc, @+$4c

    or h
    pop af
    ld c, $fc
    rst $38
    or e
    rst $38
    ld a, b

jr_009_6f58:
    cp $7c
    cp $b0
    rst $38
    rst $38
    inc l
    rst $38
    dec bc
    ret z

    jr nc, jr_009_6f58

    ld [$e37c], sp
    nop
    jr @+$66

    ld e, $e5
    ld e, $65
    rra
    ret nz

    add b
    inc bc
    rst $30
    ld bc, $0103
    add hl, bc
    ld [$0007], sp
    ld [$7f07], sp
    db $10
    rrca
    db $10
    rrca
    inc c
    inc bc
    rra
    and b
    inc h
    rst $38
    nop
    nop
    call z, $c033
    cp a
    ldh a, [$ffcf]
    rst $38
    ldh [$ff1f], a
    ld b, b
    ccf
    ld b, c
    ld a, $f2
    inc c

jr_009_6f98:
    rst $38
    xor $70
    ld a, [$9c1c]
    ld h, b
    ld [$7ff0], sp
    ld [$1ff0], sp
    ldh [$ff1f], a
    ldh [rIE], a
    and c
    dec h
    db $fd
    rst $30
    jr nz, jr_009_6faf

jr_009_6faf:
    db $f4
    rra
    db $e3
    ld l, e
    sub h
    adc [hl]
    rst $38
    ld [hl], l
    ld e, h
    dec hl
    ld a, b
    rla
    ld a, [hl-]
    dec b
    inc c
    sbc a
    inc bc
    ld [$0807], sp
    rlca
    jr nz, @+$28

    sub b
    inc h
    nop
    ld a, a
    nop
    ldh [$ffc0], a
    ldh [$ffc0], a
    ret nz

    add b
    and c
    rlca
    rst $28
    ret nz

    nop
    jr nz, jr_009_6f98

    daa
    nop
    ld b, b
    add b
    ldh [$ffe0], a
    ld [bc], a
    add hl, bc
    rrca
    db $10
    and a
    inc l
    pop bc
    add hl, bc
    dec c
    db $10
    rra
    nop
    ld hl, $1eff
    inc hl
    dec e
    ld b, a
    dec sp
    rst $38
    rlca
    rst $38
    rst $18
    db $d3

Jump_009_6ff6:
    rst $38
    dec l
    rst $38
    db $ec
    dec b
    inc h
    db $fc
    ret nz

    rst $38
    db $e4
    ret c

    jp nz, Jump_000_3c3c

    ret nz

    ld h, $d8
    rst $38
    pop af
    ld c, $fe
    or b
    db $fc
    ret nc

    db $fc
    ret z

    ccf
    cp $a8
    rst $38
    ld h, d
    rst $38
    ld a, [bc]
    add hl, bc
    db $10
    rra
    nop
    cp c
    nop
    ld b, d
    ld b, $07
    ld [$0003], sp
    inc b
    ldh [c], a
    dec bc
    ld b, $fa
    ld b, b
    ld de, $e007
    nop
    nop
    nop
    db $fc
    db $e3
    ldh a, [rIE]
    rst $28
    ldh [$ffdf], a
    ldh a, [rIF]
    jr z, @+$19

    ld a, b
    rst $38
    rlca
    ld a, h
    inc sp
    cp $0d
    ld c, l
    or b
    inc b
    ld a, a
    ld hl, sp+$04
    ld hl, sp+$08
    ldh a, [$ff8f]
    ld [hl], b
    inc bc
    ld c, $ff
    rra
    ld [$f00e], a
    inc c
    ldh a, [rNR23]
    ldh [rIE], a
    ld a, $c0
    dec d
    ld [$eb1c], a
    inc e
    db $eb
    rst $28
    cp b
    ld d, a
    ld a, h
    inc bc
    ld bc, $f014
    rrca
    ld hl, sp-$4f
    rlca
    ld bc, $7712
    dec c
    dec b
    db $10
    ld b, b
    add b
    ld hl, $c000
    ret nz

    ldh [rWave_3], a
    rst $18
    dec [hl]
    rra
    nop
    rra
    nop
    rra
    nop
    dec l
    ld b, b
    rra
    nop
    rst $38
    ccf
    ld e, $1e
    add hl, bc
    dec bc
    rlca
    rla
    rrca
    ei
    rra
    rrca
    db $fd
    ld bc, $008c
    jp c, $db8c

    rst $38
    adc h
    cp $01
    ldh a, [rIE]
    ldh a, [rIE]
    ld hl, sp+$7f
    rst $38
    cp $ff
    dec hl
    dec e
    ccf
    add hl, de
    jr nz, jr_009_70ac

jr_009_70ac:
    rst $38
    dec e
    ld e, a
    add hl, sp
    ld a, [hl]
    add hl, sp
    or b
    ld a, a
    rst $38
    cp $20
    nop
    ldh a, [$ff7f]
    and b
    ld a, a
    ld b, b
    ccf
    ld b, b
    rst $38
    ccf
    jr nz, jr_009_70e2

    jr jr_009_70cc

    rlca
    nop
    rst $30
    rst $20
    rst $08
    rst $38
    rst $00

jr_009_70cc:
    jr nz, jr_009_70ce

jr_009_70ce:
    ld h, b
    nop
    ccf
    rst $00
    ld bc, $90de
    jr z, @+$01

    rst $38
    rra
    rst $38
    or d
    dec e
    rst $38
    ld bc, $feff
    rrca
    pop af

jr_009_70e2:
    rst $38
    inc bc
    ldh [rP1], a
    db $10
    rst $38
    ldh [rNR41], a
    ret nz

    rst $38
    nop
    ld b, b
    cp a
    ld b, b
    db $ed
    cp a
    and b
    ld [hl+], a
    cp a
    rst $38
    ld [hl+], a
    nop
    cp [hl]
    rst $18
    db $fc
    ld a, h
    inc h
    nop
    di
    add hl, bc
    ldh a, [rP1]
    rrca
    ldh a, [rP1]
    and b
    inc bc
    add a
    ld a, a
    rst $38
    db $fc
    ld h, b
    rlca
    ldh a, [rSC]
    daa
    nop
    ld b, $0c
    ldh [rIE], a
    nop
    ret c

    ldh [$fff4], a
    ld hl, sp+$3a
    db $fc
    rra
    rst $38
    db $fc
    ld e, $fd
    dec c
    cp $0f
    cp $07
    ldh a, [rNR43]
    nop
    rrca
    ld c, $e1
    ld c, d
    ld b, c
    inc d
    and b
    ld b, b
    and b
    ld b, b
    rst $18
    ld d, b
    jr nz, @+$05

    nop
    ld [bc], a
    ld [$0f2c], sp
    nop
    ld sp, hl
    ccf
    ldh [rIF], a
    add hl, sp
    ld de, $fb07
    rst $38
    inc bc
    dec b
    rst $38
    ei
    adc e
    ld [hl], l
    ld [hl], e
    dec c
    ld a, [hl+]
    dec e
    inc de
    ld sp, hl
    inc c
    inc a
    rlca
    ret nz

    inc de
    cp $df
    cp a
    rst $18
    ld a, a
    ld sp, hl
    cp a
    add b
    rrca
    jp nz, $fb0d

    rst $38
    ld sp, hl
    rst $38
    cp $bf
    ld sp, hl
    db $fd
    ld hl, sp-$0c
    ld hl, sp-$08
    sub b
    ld d, d
    sbc a
    pop de
    ld h, b
    jr nz, jr_009_71a3

    ld d, b
    ld [hl], $15
    nop
    db $fd
    ldh [rSB], a
    di
    db $fd
    rst $38
    rrca
    pop af
    di
    dec c
    ld [de], a
    dec c
    add hl, bc
    ld b, $7a
    ld d, e
    inc c
    rlca
    and b
    ld a, [bc]
    dec e
    cp $fe
    db $fc
    ld hl, $1f00
    ld a, [$fcfc]
    ld hl, sp-$04
    jp nz, $2103

    nop
    inc bc
    inc b
    rst $38
    ld d, b
    jr nz, jr_009_71eb

jr_009_71a3:
    jr nc, jr_009_7209

    jr c, jr_009_71e3

    jr jr_009_71e8

jr_009_71a9:
    inc a
    jr jr_009_71e4

    db $10
    jr nc, jr_009_71af

jr_009_71af:
    db $f4
    ld b, d
    inc b
    ld hl, $f0c1
    jr nz, jr_009_720b

    rra
    nop
    dec hl
    ld a, [de]
    db $eb
    inc e
    rst $28
    ld a, [de]
    cp $ff
    ld hl, sp+$2f
    ld a, [de]
    add hl, hl
    ld a, [de]
    add c
    dec d
    db $10
    ldh [rWave_f], a
    ret nz

    ret nz

    add hl, sp
    ccf
    ld hl, $051a
    ld a, [de]
    cp $bf
    cp h
    ld a, [bc]
    ld a, [de]
    rrca
    ld d, $b8
    dec h
    nop
    db $eb
    jr nz, jr_009_71a9

    ld e, [hl]
    rra
    nop

jr_009_71e3:
    ld a, a

jr_009_71e4:
    ldh [rNR21], a
    rst $30
    rst $38

jr_009_71e8:
    add hl, bc
    ld a, [bc]
    push af

jr_009_71eb:
    di
    inc c
    add l
    ld a, d
    ld a, c
    rst $18
    ld b, $72
    inc a
    inc h
    jr jr_009_7206

    ld d, $fe
    rst $18
    push af
    rst $38
    jr z, jr_009_7214

    db $fd
    nop
    jr nz, jr_009_7280

    db $fd
    db $fd
    ld a, [hl]
    ld a, a

jr_009_7206:
    cp a
    ld a, [hl]
    ld e, l

jr_009_7209:
    ld a, $e9

jr_009_720b:
    ld e, $f3
    nop
    add hl, de
    cp $09
    ld d, $fb
    rst $38

jr_009_7214:
    di
    rst $38
    rst $20
    ei
    rrca
    ei
    rst $30
    rst $30
    add b
    dec hl
    rla
    rrca
    di
    rrca
    ld sp, hl
    cp [hl]
    ld b, b
    ld d, $07
    cp $0d
    cp $1f
    jp nz, $fe15

    rst $38
    ld hl, sp-$02
    ld hl, sp-$0a
    ld hl, sp-$06
    db $f4
    jp hl


    rst $38
    or $f5
    xor $d7
    xor $b2
    call z, Call_009_757f
    add b
    sub c
    ld l, d
    and b
    add b
    ld e, e
    ld e, b
    jr nc, jr_009_72c6

    jr nz, @+$18

    rst $18
    inc e
    ld [$000c], sp
    ld [$30e8], sp
    ldh [rP1], a
    pop hl
    ld hl, sp-$80
    daa
    rra
    nop
    inc bc
    inc h
    pop bc
    inc hl
    ld d, b
    jr nz, jr_009_728b

    push af
    db $10
    db $eb
    ld l, $03
    ld c, $0e
    rst $38
    inc bc
    dec bc
    rst $30
    ld e, a
    ccf
    rst $00
    rst $08
    scf
    ld [hl], a
    jr nz, jr_009_727f

    inc de
    ld b, d
    dec a
    db $fc
    rrca
    ld c, $27
    inc h
    rst $30

jr_009_727f:
    rst $38

jr_009_7280:
    pop af
    rst $38
    xor $f1
    ccf
    pop de
    xor $a9
    sbc $51
    adc [hl]

jr_009_728b:
    db $f4
    dec l
    ld [$fd24], sp
    rst $38
    nop
    scf
    ld sp, hl
    cp $06
    ld sp, hl
    ld hl, sp+$07
    ld l, a
    add hl, hl
    ld e, $22
    inc e
    rlca
    inc h

jr_009_72a0:
    rra
    cp $90
    jr c, jr_009_72a0

    cp $fe
    pop de
    scf
    rst $38
    cp a
    ld a, a
    rst $38
    ccf
    cp a
    rst $18
    ccf
    cpl
    rra
    ld d, $0f
    inc hl
    ld d, h
    jr z, @+$01

    db $10
    ld b, h
    jr c, jr_009_7329

    jr c, jr_009_733b

    jr c, jr_009_72f9

    cp a
    db $10
    cp b
    db $10
    sub b

jr_009_72c6:
    nop
    sub b
    jp nz, $c02f

    nop
    ld [hl+], a
    ld b, h
    inc bc
    ld c, $00
    ld [$13fe], sp
    nop
    inc bc

jr_009_72d6:
    nop
    ld b, $03
    inc c
    rlca
    dec e
    rst $38
    rrca
    ld a, $1f
    ccf
    rra
    ld e, [hl]
    ccf
    halt
    cp a
    ccf
    ld h, l
    ld a, $47
    dec a
    ld b, e
    jr nz, jr_009_72ee

jr_009_72ee:
    ld b, a
    db $fd
    dec sp
    ld de, $fe02
    nop
    ld bc, $00fe
    rst $38

jr_009_72f9:
    cp $23
    nop
    ld b, b
    cp a
    ld h, b
    cp a
    ei
    ld e, a
    db $fd
    rst $38
    cpl
    rst $38
    sub $ff
    add hl, sp
    rst $38
    inc e
    cp $fd
    ld a, l
    inc de
    inc b
    add b
    nop
    ld b, b
    add b
    jr nc, jr_009_72d6

    rst $38
    ld [$14f0], sp
    ld hl, sp+$2c
    ld hl, sp+$76
    db $fc
    rst $38
    cp $fc
    ld a, [$d2fc]
    db $fc
    jp z, $ff7c

jr_009_7329:
    ld b, d
    cp h
    ldh [c], a
    inc e
    cpl
    inc de
    cpl
    rla
    ld a, a
    rla
    dec bc
    rrca
    inc bc
    inc bc
    nop
    ld bc, $06c2

jr_009_733b:
    db $ed
    ld bc, $0024
    inc bc
    ld bc, $0022
    nop
    rst $38
    inc a
    rst $38
    rst $38
    dec a
    sbc a
    rst $38
    rst $38
    ld a, [hl]
    cp $fd
    rst $38
    rst $38
    ld a, b
    ld a, [hl]
    add hl, sp
    ld sp, hl
    ld b, $0a
    push af
    cp a
    rra
    ldh [rIE], a
    ld e, $ff
    rra
    jr nz, jr_009_7361

jr_009_7361:
    nop
    rst $38
    rst $38
    ld b, $ff
    ld b, $c4
    cp b
    call nz, $ffb8
    ret z

    or b
    xor b
    ld d, b
    ret nc

    jr nz, jr_009_7393

    ret nz

    rst $38
    db $10
    ldh [$ffe0], a
    nop
    jr nz, jr_009_733b

    jr nc, @-$3e

    dec d
    ret nz

    nop
    rlca
    add b
    and l
    dec bc
    ld bc, $0505
    inc bc
    ld b, $43
    ld b, $ff
    ld [bc], a
    ld bc, $0304
    inc c
    inc bc
    inc e

jr_009_7393:
    inc bc
    rst $38
    rrca
    nop
    rst $38
    ld bc, $c73f
    rrca
    rst $30
    rst $38
    rst $38
    dec b
    rst $38
    push af
    rst $38
    nop
    halt
    jr c, @+$01

    rst $38
    nop
    ld a, [$7f7d]
    nop
    jp nz, $af3d

    ld b, d
    cp l
    ld bc, $21fe
    nop
    rst $38
    and d
    inc b
    ret nz

    pop af
    add b
    ld hl, $2300
    dec b
    and c
    dec b
    ld b, b
    add b
    jr nz, @-$3e

    rst $38
    jr nz, @-$3e

    ld h, b
    add b
    ldh a, [rP1]
    ldh [rP1], a
    db $f4
    rrca
    inc c
    add hl, bc
    inc c
    rlca
    ld [$fe0c], sp
    ld a, c
    ld a, a
    jr c, @+$01

    db $fc
    inc bc
    dec b
    ld a, [$f00f]
    rst $38
    rrca
    rst $38
    rst $38
    rst $08
    rst $38
    adc a
    rst $38
    add [hl]
    rst $38
    add c
    ei
    rst $38
    nop
    dec b
    inc c
    ld d, b
    and b
    ldh [rP1], a
    db $10
    cp e
    ldh [$ffd8], a
    ld h, b
    inc c
    sub b
    ld h, b
    ld hl, sp+$21
    rlca
    nop
    rst $38
    ldh [$ff80], a
    ldh a, [$ffc0]
    db $fc
    or b
    rrca
    dec b
    rst $18
    rra
    ld a, [bc]
    rra
    dec b
    rlca
    ld hl, $0011
    rlca
    rst $38
    inc bc
    rlca
    nop
    inc e
    inc bc
    inc h
    dec de
    ld b, b
    rst $38
    ccf
    ld b, b
    ccf
    jr nc, jr_009_7433

    db $fc
    inc bc
    ld a, a
    cp $e0
    add hl, de
    rst $38
    nop
    sbc a
    ld h, b
    db $e3
    sbc h
    ld a, [hl]
    rst $38
    pop hl

jr_009_7433:
    db $fd
    ld a, [de]
    rst $18
    ldh [$fff9], a
    ld b, $d7
    rst $38
    pop hl
    rst $30
    ld [bc], a
    inc hl

jr_009_743f:
    ret nz

    ld hl, $41c0
    db $eb
    add b
    ld a, a
    jr nz, jr_009_7448

jr_009_7448:
    rst $38
    pop bc
    add hl, de
    ld a, h
    rst $38
    ld h, [hl]
    rst $38
    cp $30
    or b
    nop
    ret nz

    nop
    ld h, b
    add b
    rst $38
    ret c

    and b
    add h
    ld a, b
    inc b
    ld hl, sp-$7c
    ld a, b
    rst $38
    ld [$08f0], sp
    ldh a, [$ff88]
    ld [hl], b
    db $fc
    nop
    pop bc
    ld hl, sp-$20
    dec e
    rrca
    inc c
    ld [$6018], sp
    jr @+$0b

    jr jr_009_74f2

    inc sp
    cp a
    di
    inc c
    inc d
    db $eb
    ld e, $e1
    nop
    jr jr_009_743f

    cp [hl]
    ld b, b
    jr jr_009_74b1

    rst $38
    ld [hl], b
    rst $38
    and b
    add hl, bc
    inc c
    jr nz, @-$0e

    and b
    rla
    add c
    ld de, $1803
    jr nz, jr_009_74a1

    ld b, b
    ldh a, [$ff60]
    rlca
    or a
    ld [bc], a
    rlca
    ld bc, $0b80
    ld [bc], a
    ld [bc], a

jr_009_74a1:
    and d
    dec e
    rlca
    rst $38
    nop
    add hl, bc
    ld b, $10
    rrca
    db $10
    rrca
    inc c
    cp a
    inc bc
    ccf
    nop

jr_009_74b1:
    ld a, a
    nop
    ccf
    ld bc, $c00c
    rst $38
    cp $c1
    db $e3
    sbc h
    rst $38
    inc bc
    db $fd
    ld c, [hl]
    ld a, a
    xor $31
    ei
    ret nz

    rst $20
    add hl, sp
    add hl, sp
    ld h, b
    ld [hl+], a
    rst $08
    db $10
    ldh [rNR11], a
    ldh [$ff60], a
    ld e, $30
    dec h
    nop
    nop
    rst $28
    ld hl, sp+$30
    ldh a, [rLCDC]
    pop hl
    db $10
    ld [hl], b
    ret nz

    ld hl, sp-$01
    sub b
    ld hl, sp+$60
    db $e4
    sbc b
    add d
    ld a, h
    pop bc
    rst $38
    ld a, $81
    ld a, [hl]
    ld [bc], a
    db $fc
    ld b, $f8
    adc a
    inc bc

jr_009_74f2:
    ld [hl], b
    cp $ff
    ld a, [hl+]
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

Call_009_757f:
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
    jr jr_009_7597

jr_009_7597:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
