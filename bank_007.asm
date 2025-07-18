; Disassembly of "harvest_moon.gbc"
; This file was created with:
; mgbdis v2.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $007", ROMX[$4000], BANK[$7]

    rlca
    push hl
    push af
    ld l, $2c
    ld h, $6c
    ld a, $20
    call BankSwitchCallHL
    pop af
    pop hl
    ld a, $ff
    ld [wTextID], a
    xor a
    ld [$cb53], a
    ld [$cb54], a
    ld [$cb55], a
    xor a
    ldh [$ff91], a
    call ClearBGMap0
    call ClearBGMap1
    call ClearShadowOAMBuffer
    xor a
    ldh [$ff93], a
    ldh [$ff91], a
    ld [$c909], a
    ld [$c90a], a
    ld [$cb80], a
    ld [$c800], a
    ld [$c880], a
    ld a, $1d
    ld [wFreezePlayerWhenEnteringNewMap], a
    ld hl, $4758
    ld c, $0b
    ld de, $8800
    call Call_000_31a0
    ld hl, $4001
    ld c, $0b
    ld de, $9000
    call Call_000_31a0
    call Call_007_4275
    ld a, [$c90b]
    cp $00
    call z, Call_007_4298
    cp $01
    call z, Call_007_4308
    cp $02
    call z, Call_007_4360
    ld a, $08
    call Call_000_25c8
    ret


    call Call_000_2d67
    ld a, [wPlayerIdleWhenExitingCurrentMap]
    or a
    ret nz

    ld a, [$ccc1]
    or a
    jr nz, jr_007_4088

    ldh a, [$ff8b]
    or a
    jr nz, jr_007_40a1

    jr jr_007_408e

jr_007_4088:
    ldh a, [$ff8b]
    cp $02
    jr z, jr_007_40a1

jr_007_408e:
    ld a, [$c90b]
    cp $00
    call z, Call_007_40e8
    cp $01
    call z, Call_007_40f8
    cp $02
    call z, Call_007_4100
    ret


Jump_007_40a1:
jr_007_40a1:
    ld a, $1d
    ld [wPlayerIdleWhenExitingCurrentMap], a
    ld a, [$ccc1]
    or a
    jr z, jr_007_40d3

    ld a, [$c90b]
    cp $00
    jr z, jr_007_40c2

    cp $01
    jr z, jr_007_40cd

    ld a, $01
    ld [$c910], a
    ld a, $02
    ld [$cb50], a
    ret


jr_007_40c2:
    ld a, $26
    ld [$cb50], a
    ld a, $01
    ld [$c90b], a
    ret


jr_007_40cd:
    ld a, $27
    ld [$cb50], a
    ret


jr_007_40d3:
    ld a, $11
    ld [$cb50], a
    ld a, $ff
    ld [wTextID], a
    xor a
    ld [$cb53], a
    ld [$cb54], a
    ld [$cb55], a
    ret


Call_007_40e8:
    ld hl, $5061
    ld a, $05
    call BankSwitchCallHL
    call Call_007_4108
    call Call_000_36f4
    pop hl
    ret


Call_007_40f8:
    call Call_007_43fb
    call Call_000_36f4
    pop hl
    ret


Call_007_4100:
    call Call_007_4443
    call Call_000_36f4
    pop hl
    ret


Call_007_4108:
    ld a, [wFreezePlayerWhenEnteringNewMap]
    or a
    ret nz

    ld a, [$c613]
    cp $00
    jp z, Jump_007_4139

    cp $01
    jp z, Jump_007_414f

    cp $02
    jp z, Jump_007_416e

    cp $03
    jp z, Jump_007_4184

    cp $04
    jp z, Jump_007_4191

    cp $05
    jp z, Jump_007_41a7

    cp $06
    jp z, Jump_007_41bb

    cp $07
    jp z, Jump_007_41cb

    ret


Jump_007_4139:
    ld a, [$c611]
    cp $6c
    jp z, Jump_007_41db

    inc a
    ld [$c611], a
    ld hl, $c60a
    ld bc, $ffff
    call AddBCtoWordAtHL
    ret


Jump_007_414f:
    ld a, [$c611]
    cp $24
    jp z, Jump_007_41f4

    inc a
    ld [$c611], a
    ld hl, $c60a
    ld bc, $ffff
    call AddBCtoWordAtHL
    ld a, [$c90d]
    or a
    ret z

    dec a
    ld [$c90d], a
    ret


Jump_007_416e:
    ld a, [$c611]
    cp $08
    jp z, Jump_007_4203

    inc a
    ld [$c611], a
    ld hl, $c60a
    ld bc, $ffff
    call AddBCtoWordAtHL
    ret


Jump_007_4184:
    ld a, [$c611]
    cp $08
    jp z, Jump_007_4217

    inc a
    ld [$c611], a
    ret


Jump_007_4191:
    ld a, [$c611]
    cp $18
    jp z, Jump_007_422b

    inc a
    ld [$c611], a
    ld hl, $c60b
    ld bc, $0001
    call AddBCtoWordAtHL
    ret


Jump_007_41a7:
    ld a, [$c611]
    cp $08
    jp nc, Jump_007_4244

    inc a
    ld [$c611], a
    ld a, [wInputFreezeTimer]
    dec a
    ld [wInputFreezeTimer], a
    ret


Jump_007_41bb:
    ld a, [$c611]
    cp $f0
    jp z, Jump_007_4266

    ld a, [$c611]
    inc a
    ld [$c611], a
    ret


Jump_007_41cb:
    ld a, [$c611]
    cp $f0
    jp z, Jump_007_40a1

    ld a, [$c611]
    inc a
    ld [$c611], a
    ret


Jump_007_41db:
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


Jump_007_41f4:
    ld a, $02
    ld [$c613], a
    xor a
    ld [$c611], a
    ld a, $15
    call Call_000_151d
    ret


Jump_007_4203:
    ld a, $03
    ld [$c613], a
    xor a
    ld [$c611], a
    ld a, $00
    ld [wPlayerFacingDirection], a
    ld a, $4c
    call Call_000_151d
    ret


Jump_007_4217:
    ld a, $04
    ld [$c613], a
    xor a
    ld [$c611], a
    ld a, $00
    ld [wPlayerFacingDirection], a
    ld a, $14
    call Call_000_151d
    ret


Jump_007_422b:
    ld a, $05
    ld [$c613], a
    xor a
    ld [$c611], a
    ld a, $15
    call RST_TableJumpBankSwitch
    ld a, $01
    ld [$cb80], a
    ld a, $08
    ld [wInputFreezeTimer], a
    ret


Jump_007_4244:
    ld a, $06
    ld [$c613], a
    xor a
    ld [$c611], a
    ld [wPlayerIsCarryingItem], a
    ld [$cb4a], a
    ld hl, $5ef6
    ld a, $01
    call BankSwitchCallHL
    ld a, $00
    call RST_TableJumpBankSwitch
    ld a, $3e
    call InitializeTextIDAndDisplay
    ret


Jump_007_4266:
    ld a, $07
    ld [$c613], a
    xor a
    ld [$c611], a
    ld a, $48
    call InitializeTextIDAndDisplay
    ret


Call_007_4275:
    ld hl, $4288
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
    jr z, jr_007_4295

jr_007_4295:
    ld bc, $0001

Call_007_4298:
    push hl
    push af
    ld l, $8d
    ld h, $78
    ld a, $1f
    call BankSwitchCallHL
    pop af
    pop hl
    push hl
    push af
    ld l, $19
    ld h, $78
    ld a, $1f
    call BankSwitchCallHL
    pop af
    pop hl
    ld hl, $75d2
    ld c, $07
    ld de, $9800
    call Call_000_31a0
    ld a, $a8
    ld [$cb5c], a
    ld a, $d9
    ld [$cb5d], a
    ld [$cb5e], a
    ld hl, $0455
    ld a, $00
    call BankSwitchCallHL
    ld a, $15
    call Call_000_151d
    ld a, $01
    ld [wPlayerFacingDirection], a
    ld a, $e0
    ld [$c60a], a
    ld a, $28
    ld [$c60b], a
    ld a, $1f
    call $16d1
    ld a, $01
    ld [wPlayerIsCarryingItem], a
    ld a, $80
    ld [$c62f], a
    ld a, $83
    ld [wLCDCTempStorage], a
    xor a
    ldh [rIF], a
    ld a, $01
    ldh [rIE], a
    ld a, $3d
    call InitializeTextIDAndDisplay
    pop hl
    ret


Call_007_4308:
    push hl
    push af
    ld l, $3a
    ld h, $78
    ld a, $1f
    call BankSwitchCallHL
    pop af
    pop hl
    ld hl, $76ab
    ld c, $07
    ld de, $9800
    call Call_000_31a0
    ld a, $a8
    ld [$cb5c], a
    ld a, $d9
    ld [$cb5d], a
    ld [$cb5e], a
    ld hl, $0455
    ld a, $00
    call BankSwitchCallHL
    ld a, $4a
    call Call_000_151d
    ld a, $03
    ld [wPlayerFacingDirection], a
    ld a, $50
    ld [$c60a], a
    ld a, $58
    ld [$c60b], a
    xor a
    ld [wPlayerIsCarryingItem], a
    ld a, $83
    ld [wLCDCTempStorage], a
    xor a
    ldh [rIF], a
    ld a, $01
    ldh [rIE], a
    ld a, $3f
    call InitializeTextIDAndDisplay
    pop hl
    ret


Call_007_4360:
    push hl
    push af
    ld l, $0b
    ld h, $6c
    ld a, $20
    call BankSwitchCallHL
    pop af
    pop hl
    push hl
    push af
    ld l, $3e
    ld h, $48
    ld a, $05
    call BankSwitchCallHL
    pop af
    pop hl
    ld c, $4f
    ld a, $01
    ldh [c], a
    ld hl, $99a7
    ld a, $05
    ld [hl+], a
    ld [hl], a
    ld hl, $99c7
    ld [hl+], a
    ld [hl], a
    ld c, $4f
    xor a
    ldh [c], a
    ld hl, $717e
    ld c, $05
    ld de, $8800
    call Call_000_31a0
    ld hl, $6acc
    ld c, $05
    ld de, $9000
    call Call_000_31a0
    ld hl, $69ed
    ld c, $05
    ld de, $9800
    call Call_000_31a0
    call Call_007_4497
    ld a, $cd
    ld [$cb5c], a
    ld a, $c8
    ld [$cb5d], a
    ld [$cb5e], a
    ld a, $07
    ldh [$ff96], a
    ld a, $00
    ldh [$ff95], a
    ld hl, $44a2
    ld a, $05
    call BankSwitchCallHL
    ld a, $4a
    call Call_000_151d
    ld a, $03
    ld [wPlayerFacingDirection], a
    ld a, $50
    ld [$c60a], a
    ld a, $58
    ld [$c60b], a
    xor a
    ld [wPlayerIsCarryingItem], a
    ld a, $83
    ld [wLCDCTempStorage], a
    xor a
    ldh [rIF], a
    ld a, $01
    ldh [rIE], a
    ld a, $41
    call InitializeTextIDAndDisplay
    pop hl
    ret


Call_007_43fb:
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
    jr z, jr_007_4422

    cp $01
    jr z, jr_007_442c

    cp $02
    jr z, jr_007_4436

    cp $03
    jr z, jr_007_4440

    ret


jr_007_4422:
    inc a
    ld [$c613], a
    ld a, $40
    call InitializeTextIDAndDisplay
    ret


jr_007_442c:
    inc a
    ld [$c613], a
    ld a, $49
    call InitializeTextIDAndDisplay
    ret


jr_007_4436:
    inc a
    ld [$c613], a
    ld a, $4a
    call InitializeTextIDAndDisplay
    ret


jr_007_4440:
    jp Jump_007_40a1


Call_007_4443:
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
    jr z, jr_007_4467

    cp $01
    jr z, jr_007_4471

    cp $02
    jr z, jr_007_4494

jr_007_4467:
    inc a
    ld [$c613], a
    ld a, $42
    call InitializeTextIDAndDisplay
    ret


jr_007_4471:
    inc a
    ld [$c613], a
    ld a, $4c
    call InitializeTextIDAndDisplay
    ret


    inc a
    ld [$c613], a
    ld a, $4b
    call InitializeTextIDAndDisplay
    ret


    inc a
    ld [$c613], a
    ld a, $4c
    call InitializeTextIDAndDisplay
    ret


    inc a
    ld [$c613], a
    ret


jr_007_4494:
    jp Jump_007_40a1


Call_007_4497:
    ld a, $18
    ldh [$ff91], a
    ld hl, $99ab
    ld a, $48
    ld b, $08

jr_007_44a2:
    ld [hl+], a
    inc a
    dec b
    jr nz, jr_007_44a2

    ld hl, $99cb
    ld a, $58
    ld b, $08

jr_007_44ae:
    ld [hl+], a
    inc a
    dec b
    jr nz, jr_007_44ae

    ld a, [sPlayerGender]
    or a
    ret z

    ld hl, $9927
    ld a, $2e
    ld b, $02

jr_007_44bf:
    ld [hl+], a
    inc a
    dec b
    jr nz, jr_007_44bf

    ld hl, $9947
    ld a, $3e
    ld b, $02

jr_007_44cb:
    ld [hl+], a
    inc a
    dec b
    jr nz, jr_007_44cb

    ld hl, $992b
    ld a, $08
    ld b, $04

jr_007_44d7:
    ld [hl+], a
    inc a
    dec b
    jr nz, jr_007_44d7

    ld hl, $994b
    ld a, $18
    ld b, $04

jr_007_44e3:
    ld [hl+], a
    inc a
    dec b
    jr nz, jr_007_44e3

    ld hl, $99a7
    ld a, $66
    ld b, $02

jr_007_44ef:
    ld [hl+], a
    inc a
    dec b
    jr nz, jr_007_44ef

    ld hl, $99c7
    ld a, $76
    ld b, $02

jr_007_44fb:
    ld [hl+], a
    inc a
    dec b
    jr nz, jr_007_44fb
    ret

; I Think this is the beginning of all the text in the game.
Data_007_4501:
    db $00, $00, $00, $00, $00, $00, $78, $70, $00, $00, $B1, $EC, $A4, $A5, $A6, $A7,
    db $A8, $A9, $C8, $C9, $EE, $F0, $ED, $AB, $AA, $0C, $EF, $AC, $AD, $AE, $AF, $B0,
    db $F6, $EF, $EF, $EF, $B2, $B3, $B4, $B5, $B6, $06 
    db $FF, $00, $00, $00, $00, $00, $00, $78, $70, $00, $00
    db " Pet       Timer"
    db " Horse     Memo "
    db $FF, $00, $00, $00, $00, $00, $00, $78, $70, $00, $00
    db "Show the items  "
    db "that relate to ▽"
    db $FE, $00, $00, $00, $00, $00, $00, $78, $70, $00, $00
    db "the A button?   "
    db " YES        NO  "
    db $FF, $00, $00, $00, $00, $00, $00, $78, $70, $00, $00
    db $C8, $C9, $EE, $F0, $ED, $AB, $AA, $0C, $EF, $EF,
    db $EF, $EF, $EF, $EF, $EF, $EF, $D0, $D1, $D2, $D3, $D4, $D5, $D6, $D7, $D8, $F1,
    db $F2, $F3, $F4, $F5, $EF, $EF, $FF, $01, $00, $00, $40, $4C, $00, $A7, $70, $00,
    db $00, 
    db "Go to sleep?    "
    db " YES         NO "
    db $FE, $01, $00, $00, $40, $4C, $00, $2E, $71, $00, $00
    db "Exchange?       "
    db " YES         NO "
    db $FE, $00, $00, $00, $00, $0C, $00, $78, $70, $00, $00
Data_007_4638:
    db "Confirm the     "
    db "origin of fire!▽"
    db $FE, $00, $00, $00, $00, $0C, $00, $78, $70, $00, $00
    db "Everything is   "
    db "alright!!       "
    db $ff, $00, $00, $00, $00, $00, $00, $78, $70, $00, $00
    db "What! There is  "
    db "money in the   ▽"
    db $FE, $00, $00, $00, $00, $00, $00, $78, $70, $00, $00
    db "drawer. Was this"
    db "grandpa's rainy ▽"
    db $FE, $00, $00, $00, $00, $00, $00, $78, $70, $00, $00
    db "day money? It's  "
    db "mine now!!     ▽"
    db $FE, $00, $00, $00, $00, $00, $00, $78, $70, $00, $00
    db "Received 1000G!!                "
    db $FF, $00, $00, $00, $00, $00, $00, $78, $70, $00, $00
    db "Let me see...   "
    db "               ▽"
    db $FE, $00, $00, $00, $00, $00, $00, $78, $70, $00, $00
    db "Everything is   "
    db "alright!        "
    db $FF, $00, $00, $00, $00, $00, $00, $78, $70, $00, $00
    db $BA, $00, $01, $00, $12, $00, $44, $00, $34, $00, $02
    db $00, $81, $00, $92, $00, $02, $00, $A0, $00,
    db $12, $00, $83, $00, $30, $00, $03, $00, $BA, $00, $DA, $00, $C8, $00, $12, $00,
    db $B1, $00, $92, $00, $02, $00, $44, $00, $52, $00, $02, $00, $13, $00, $01, $00,
    db $AC, $00, $10, $00, $40, $00, $6B, $00, $FD, $00, $FD, $00, $FF, $FF, $00, $00,
    db $00, $00, $00, $00, $78, $70, $00, $00
    db "It has been warm"
    db "everyday.      ▽"
    db $FE, $00, $00, $00, $00, $00, $00, $78, $70, $00, $00
    db "Tomorrow will be"
    db "a fine day.     "
    db $FF, $00, $00, $00, $00, $00, $00, $78, $70, $00, $00
    db "It will be a    "
    db "rainy day      ▽"
    db $FE, $00, $00, $00, $00, $00, $00, $78, $70, $00, $00
    db "tomorrow,       "
    db "causing the    ▽"
    db $FE, $00, $00, $00, $00, $00, $00, $78, $70, $00, $00
    db "flowers to fall."
    db "                "
    db $FF, $00, $00, $00, $00, $00, $00, $78, $70, $00, $00
    db $08, $2D, $EF, $21, $1A, $2C, $EF, $1B, $1E, $1E, $27, $EF, $21, $28, $2D, $EF, $1E,
    db $2F, $1E, $2B, $32, $1D, $1A, $32, $4C, $EF, $EF, $EF, $EF, $EF, $EF, $E9, $FE,
    db $00, $00, $00, $00, $00, $00, $78, $70, $00, $00, $13, $28, $26, $28, $2B, $2B,
    db $28, $30, $EF, $30, $22, $25, $25, $EF, $1B, $1E, $1A, $EF, $2C, $2E, $27, $27,
    db $32, $EF, $1D, $1A, $32, $4C, $EF, $EF, $EF, $EF, $FF, $00, $00, $00, $00, $00,
    db $00, $78, $70, $00, $00, $08, $2D, $EF, $30, $22, $25, $25, $EF, $2B, $1A, $22,
    db $27, $EF, $EF, $EF, $EF, $21, $1E, $1A, $2F, $22, $25, $32, $EF, $1A, $25, $25,
    db $EF, $1D, $1A, $32, $E9, $FE, $00, $00, $00, $00, $00, $00, $78, $70, $00, $00,
    db $2D, $28, $26, $28, $2B, $2B, $28, $30, $4C, $EF, $EF, $EF, $EF, $EF, $EF, $EF,
    db $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF,
    db $FF, $00, $00, $00, $00, $00, $00, $78, $70, $00, $00, $13, $21, $1E, $EF, $26,
    db $28, $2E, $27, $2D, $1A, $22, $27, $2C, $EF, $EF, $EF, $1A, $2B, $1E, $EF, $1B,
    db $1E, $1A, $2E, $2D, $22, $1F, $2E, $25, $25, $32, $E9, $FE, $00, $00, $00, $00,
    db $00, $00, $78, $70, $00, $00, $1C, $28, $25, $28, $2B, $1E, $1D, $4C, $EF, $EF,
    db $EF, $EF, $EF, $EF, $EF, $EF, $13, $21, $1E, $EF, $2C, $24, $32, $EF, $30, $22,
    db $25, $25, $EF, $1B, $1E, $E9, $FE, $00, $00, $00, $00, $00, $00, $78, $70, $00,
    db $00, $1C, $25, $1E, $1A, $2B, $EF, $2D, $28, $26, $28, $2B, $2B, $28, $30, $4C,
    db $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF,
    db $EF, $FF, $00, $00, $00, $00, $00, $00, $78, $70, $00, $00, $08, $2D, $53, $EF,
    db $20, $1E, $2D, $2D, $22, $27, $20, $EF, $1C, $28, $25, $44, $1D, $1E, $2B, $EF,
    db $1D, $1A, $32, $EF, $1B, $32, $EF, $1D, $1A, $32, $4C, $E9, $FE, $00, $00, $00,
    db $00, $00, $00, $78, $70, $00, $00, $08, $2D, $EF, $30, $22, $25, $25, $EF, $2B,
    db $1A, $22, $27, $EF, $1A, $25, $25, $1D, $1A, $32, $EF, $2D, $28, $26, $28, $2B,
    db $2B, $28, $30, $4C, $EF, $EF, $EF, $FF, $00, $00, $00, $00, $00, $00, $78, $70,
    db $00, $00, $08, $2D, $53, $EF, $20, $1E, $2D, $2D, $22, $27, $20, $EF, $1C, $28,
    db $25, $44, $1D, $1E, $2B, $EF, $1D, $1A, $32, $EF, $1B, 

jr_007_4a4f:
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

jr_007_4a5a:
    nop
    nop
    nop
    ld a, b
    ld [hl], b
    nop
    nop
    ld [$ef2d], sp
    jr nc, jr_007_4a88

    dec h
    dec h
    rst $28
    dec de

jr_007_4a6a:
    ld e, $ef
    inc l
    ld l, $27
    daa
    ld [hl-], a
    dec l
    jr z, jr_007_4a9a

    jr z, jr_007_4aa1

    dec hl
    jr z, jr_007_4aa9

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

jr_007_4a88:
    ld a, b
    ld [hl], b
    nop
    nop
    ld [$532d], sp
    rst $28
    inc e
    jr z, jr_007_4ab8

    dec e
    rst $28
    ld e, $2f
    ld e, $2b
    ld [hl-], a

jr_007_4a9a:
    ld b, h
    rst $28
    dec e
    ld a, [de]
    ld [hl-], a
    ld c, h
    rst $28

jr_007_4aa1:
    ld [$ef2d], sp
    jr nc, jr_007_4ac8

    dec h
    dec h
    rst $28

jr_007_4aa9:
    rst $28
    rst $28
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    ld a, b
    ld [hl], b
    nop
    nop
    inc l

jr_007_4ab8:
    daa
    jr z, @+$32

    rst $28
    dec l
    jr z, jr_007_4ae5

    jr z, jr_007_4aec

    dec hl
    jr z, @+$32

    ld c, h
    rst $28
    rst $28
    rst $28

jr_007_4ac8:
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
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
    ld a, b
    ld [hl], b
    nop
    nop
    rlca
    ld l, $2b

jr_007_4ae5:
    dec hl
    ld [hl+], a
    inc e
    ld a, [de]
    daa
    ld e, $ef

jr_007_4aec:
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
    ld a, b
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
    jr nc, jr_007_4b4b

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
    ld a, b
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

jr_007_4b4b:
    rst $28
    dec l
    jr z, jr_007_4b75

    jr z, jr_007_4b7c

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
    ld a, b
    ld [hl], b
    nop
    nop
    ld d, $21
    jr z, jr_007_4b81

    ld b, b
    rst $28

jr_007_4b69:
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

jr_007_4b75:
    dec hl
    jr z, jr_007_4b9f

    jr nz, jr_007_4b69

    jr nc, jr_007_4b9e

jr_007_4b7c:
    daa
    dec e
    inc l
    ld c, h
    rst $28

jr_007_4b81:
    rst $28
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    ld a, b
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

jr_007_4b9e:
    ld [hl+], a

jr_007_4b9f:
    daa
    inc l
    ld [hl+], a
    dec e
    ld e, $ef
    dec l
    jr z, jr_007_4bc5

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
    ld a, b
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

jr_007_4bc5:
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
    ld a, b
    ld [hl], b
    nop
    nop
    ld c, $28
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
    ld a, b
    ld [hl], b
    nop
    nop
    ld [$1bef], sp
    ld e, $2d
    dec l
    ld e, $2b
    rst $28
    jr nz, jr_007_4c42

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

jr_007_4c33:
    nop
    nop
    nop

jr_007_4c36:
    ld a, b
    ld [hl], b
    nop
    nop
    inc l
    jr z, jr_007_4c63

    ld e, $2d
    ld hl, $2722

jr_007_4c42:
    jr nz, jr_007_4c33

    dec l
    jr z, jr_007_4c36

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
    ld a, b
    ld [hl], b

jr_007_4c63:
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
    ld a, b
    ld [hl], b
    nop
    nop
    ld [$1bef], sp
    ld e, $2d

jr_007_4c95:
    dec l
    ld e, $2b
    rst $28
    jr nz, jr_007_4cb9

    dec l
    rst $28
    rst $28
    rst $28
    rst $28
    jr nz, jr_007_4cca

    ld [hl+], a
    daa
    jr nz, jr_007_4c95

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

jr_007_4cb5:
    nop
    nop
    ld a, b
    ld [hl], b

jr_007_4cb9:
    nop
    nop
    rst $28
    ld a, $12
    ld hl, $2922
    add hl, hl
    ld [hl+], a
    daa
    jr nz, jr_007_4cb5

    ld bc, $3128
    ccf

jr_007_4cca:
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
    ld a, b
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
    jr z, jr_007_4d25

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
    ld a, b
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

jr_007_4d25:
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
    ld a, b
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
    ld a, b
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
    jr z, jr_007_4d8f

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
    cp a
    ret nz

    pop bc
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
    ld a, b

jr_007_4d8f:
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

jr_007_4db9:
    ld a, b
    ld [hl], b
    nop
    nop
    ld b, $28
    jr z, @+$1f

    rst $28
    inc c
    jr z, jr_007_4df0

    daa
    ld [hl+], a
    daa
    jr nz, jr_007_4db9

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
    ld a, b
    ld [hl], b
    nop
    nop
    rlca
    jr z, jr_007_4e1b

    rst $28
    ld a, [de]
    dec hl
    ld e, $ef

jr_007_4df0:
    ld [hl-], a
    jr z, jr_007_4e21

    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    dec e
    jr z, jr_007_4e1d

    daa
    jr nz, jr_007_4e3f

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
    ld a, b
    ld [hl], b
    nop
    nop
    ld [$ef2d], sp
    inc l
    ld e, $1e
    ld h, $2c

jr_007_4e1b:
    rst $28
    dec l

jr_007_4e1d:
    ld hl, $2d1a
    rst $28

jr_007_4e21:
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
    ld a, b
    ld [hl], b
    nop
    nop
    dec h

jr_007_4e3f:
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
    ld a, b
    ld [hl], b
    nop
    nop
    inc e
    ld a, [de]
    dec hl
    ld e, $ef
    jr z, jr_007_4e8f

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
    jr z, jr_007_4ea8

    rst $28
    ld [hl-], a
    jr z, jr_007_4eb3

    dec hl
    rst $28
    rst $28
    jp hl


    cp $00
    nop
    nop
    nop
    nop

jr_007_4e8f:
    nop
    ld a, b
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

jr_007_4ea8:
    rst $28
    ld hl, $2622
    ld c, h
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28

jr_007_4eb3:
    rst $28
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, b
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
    jr z, jr_007_4ef9

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
    ld a, b
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

jr_007_4ef9:
    rst $28
    jr nc, jr_007_4f1e

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
    ld a, b
    ld [hl], b
    nop
    nop
    inc de
    ld hl, $ef1e
    ld h, $28
    daa
    ld e, $32

jr_007_4f1e:
    rst $28
    jr nc, jr_007_4f43

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
    ld a, b
    ld [hl], b
    nop
    nop
    dec l
    jr z, jr_007_4f69

jr_007_4f43:
    jr z, @+$2d

    dec hl
    jr z, jr_007_4f78

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
    jr z, jr_007_4f8b

    ld b, b
    ld b, b
    rst $28
    rst $38
    nop
    nop
    nop
    nop
    nop

jr_007_4f66:
    nop
    ld a, b
    ld [hl], b

jr_007_4f69:
    nop
    nop
    inc de
    ld hl, $2b1e
    ld e, $ef
    ld [hl+], a
    inc l
    rst $28
    daa
    jr z, jr_007_4f66

    rst $28

jr_007_4f78:
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
    jr z, jr_007_4fa4

    ld a, [de]
    ld [hl-], a
    ld b, c
    jp hl


jr_007_4f8b:
    cp $00
    nop
    nop
    nop
    nop
    nop
    ld a, b
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
    jr z, jr_007_4fd1

    rst $28

jr_007_4fa4:
    rst $28
    rst $28
    dec l
    jr z, jr_007_4fcf

    jr z, @+$2d

    dec hl
    jr z, jr_007_4fde

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
    ld a, b
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

jr_007_4fcf:
    rst $28
    rst $28

jr_007_4fd1:
    ld a, [de]
    dec h
    dec hl
    ld [hl+], a
    jr nz, jr_007_4ff8

    dec l
    ld b, c
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28

jr_007_4fde:
    rst $28
    rst $28
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    ld a, b
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

jr_007_4ff8:
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
    jr nc, jr_007_5028

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
    ld a, b
    ld [hl], b
    nop
    nop
    ld a, [de]
    jr nz, jr_007_5042

    rst $28
    jr nc, jr_007_5037

    inc l
    rst $28
    ld hl, $202e
    ld e, $40
    rst $28
    rst $28
    rst $28
    rst $28

jr_007_5028:
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
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


jr_007_5037:
    cp $00
    nop
    nop
    nop
    nop
    nop

jr_007_503e:
    ld a, b
    ld [hl], b
    nop
    nop

jr_007_5042:
    ld d, $1a
    inc l
    rst $28
    ld a, [de]
    daa
    ld [hl-], a
    dec l
    ld hl, $2722
    jr nz, jr_007_503e

    rst $28
    rst $28
    rst $28
    dec e
    ld a, [de]
    ld h, $1a
    jr nz, jr_007_5076

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
    ld a, b
    ld [hl], b
    nop
    nop
    ld e, $1a
    dec hl
    dec l
    ld hl, $2e2a
    ld a, [de]
    inc h

jr_007_5076:
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
    ld a, b
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
    ld b, h
    rst $28
    rst $28
    dec l
    ld hl, $2722
    jr nz, jr_007_50fa

    rst $28
    ld b, $28
    jr z, jr_007_50d0

    rst $28
    ld bc, $1e32
    ld c, h
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, b
    ld [hl], b
    nop
    nop
    rlca
    ld e, $25
    dec h
    jr z, jr_007_5115

    rst $28

jr_007_50ca:
    inc de
    jr z, @+$28

    jr z, jr_007_50fa

    dec hl

jr_007_50d0:
    jr z, jr_007_5102

    rst $28
    ld h, $28
    dec hl
    daa
    ld [hl+], a
    daa
    jr nz, jr_007_50ca

    jr nc, jr_007_50fb

    rst $28
    ld a, [de]
    dec hl
    ld e, $ef
    jp hl


jr_007_50e3:
    cp $00
    nop
    nop
    nop
    nop
    nop
    ld a, b
    ld [hl], b
    nop
    nop
    jr nz, jr_007_5118

    ld [hl+], a
    daa
    jr nz, jr_007_50e3

    jr z, jr_007_511d

    rst $28
    ld a, [de]
    rst $28
    rst $28

jr_007_50fa:
    rst $28

jr_007_50fb:
    rst $28
    rst $28
    rst $28
    add hl, hl
    ld [hl+], a
    inc e
    daa

jr_007_5102:
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

jr_007_5115:
    ld a, b
    ld [hl], b
    nop

jr_007_5118:
    nop
    ld [bc], a
    jr z, jr_007_514a

    dec h

jr_007_511d:
    dec e
    rst $28
    jr nc, jr_007_513f

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

jr_007_513f:
    nop
    ld l, b
    ld [hl], c
    nop
    nop
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28

jr_007_514a:
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    jr jr_007_515b

    ld [de], a
    rst $28
    rst $28
    rst $28

jr_007_515b:
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
    ld a, b
    ld [hl], b
    nop
    nop
    jr jr_007_5175

    nop
    rlca
    ld b, b
    rst $28

jr_007_5175:
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
    jr nc, jr_007_51ad

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
    ld a, b
    ld [hl], b
    nop
    nop
    ld hl, $2f1a
    ld e, $ef
    dec h
    jr z, jr_007_51cf

    inc l
    rst $28
    jr z, jr_007_51c5

    rst $28
    rst $28
    rst $28
    rst $28
    rra
    ld l, $27

jr_007_51ad:
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
    ld a, b
    ld [hl], b
    nop
    nop

jr_007_51c5:
    ld de, $1a1e
    dec h
    dec h
    ld [hl-], a
    ld b, c
    rst $28

jr_007_51cd:
    ld d, $21

jr_007_51cf:
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
    jr z, jr_007_51cd

    rra
    ld l, $27
    ld b, b
    rst $28
    rst $28
    rst $28

jr_007_51e5:
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, b
    ld [hl], b
    nop
    nop
    rlca
    ld e, $25
    dec h
    jr z, jr_007_51e5

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
    jr z, jr_007_522e

    ld e, $ef
    ld [hl-], a
    jr z, jr_007_5238

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
    ld a, b
    ld [hl], b
    nop
    nop
    jr nc, jr_007_523b

    dec hl
    ld e, $27
    ld c, e
    dec l
    rst $28
    dec l
    jr z, jr_007_524e

    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    dec de
    ld l, $2c

jr_007_522e:
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

jr_007_5238:
    rst $28
    rst $28
    jp hl


jr_007_523b:
    cp $00
    nop
    nop
    nop
    nop
    nop
    ld a, c
    ld [hl], c
    nop
    nop
    dec bc
    ld e, $2d
    ld d, e
    rst $28
    jr nz, jr_007_5275

    rst $28

jr_007_524e:
    jr z, jr_007_5277

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
    ld a, b
    ld [hl], b
    nop
    nop
    rlca
    ld [hl+], a
    rst $28
    and b

jr_007_5275:
    and c
    and d

jr_007_5277:
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
    ld a, b
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
    ld a, b
    ld [hl], b
    nop
    nop
    ld [$24ef], sp
    daa
    jr z, jr_007_52fd

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
    xor b
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

jr_007_52fd:
    ld hl, $2f1a
    ld e, $ef
    inc l
    jr z, jr_007_532b

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
    ld a, b
    ld [hl], b
    nop
    nop
    ld [$26ef], sp
    ld a, [de]
    dec e
    ld e, $ef
    dec l
    jr z, jr_007_534f

    rst $28
    ld h, $1a
    daa

jr_007_532b:
    ld [hl-], a
    rst $28
    inc e
    jr z, jr_007_5358

    inc h
    ld [hl+], a
    ld e, $2c
    rst $28
    rra
    jr z, jr_007_5363

    rst $28
    dec l
    ld hl, $e91e
    cp $00
    nop
    nop
    nop
    nop
    nop
    ld a, b
    ld [hl], b
    nop
    nop
    rlca
    ld a, [de]
    dec hl
    cpl
    ld e, $2c
    dec l

jr_007_534f:
    rst $28
    dec b
    ld e, $2c
    dec l
    ld [hl+], a
    cpl
    ld a, [de]
    dec h

jr_007_5358:
    and b
    and c
    and d
    and e
    adc [hl]
    ld [$30ef], sp
    jr z, jr_007_5390

    dec h

jr_007_5363:
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

jr_007_536e:
    nop
    ldh [c], a
    ld [hl], c
    nop
    nop
    dec h
    ld [hl+], a
    inc h
    ld e, $ef
    ld [hl-], a
    jr z, jr_007_53a9

    rst $28
    dec l
    jr z, jr_007_536e

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

jr_007_5390:
    rst $28
    rst $28
    rst $28
    cp $00
    nop
    nop
    nop
    nop
    nop
    ld a, b
    ld [hl], b
    nop
    nop
    ld c, $21
    rst $28
    dec c
    jr z, jr_007_53e4

    rst $28
    rst $28
    rst $28
    rst $28
    rst $28

jr_007_53a9:
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    ld c, $21
    rst $28
    dec c
    jr z, jr_007_53f4

    rst $28
    inc c
    ld [hl-], a
    rst $28
    dec de
    ld [hl+], a
    dec hl
    dec e
    rst $28
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    ld a, b
    ld [hl], b
    nop
    nop
    dec hl
    ld a, [de]
    daa
    rst $28
    ld a, [de]
    jr nc, @+$1c

    ld [hl-], a
    ld c, h
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
    ld hl, $251e
    add hl, hl

jr_007_53e4:
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
    dec b
    ld [hl], d
    nop
    nop

jr_007_53f4:
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
    jr jr_007_540b

    ld [de], a
    rst $28
    rst $28
    rst $28

jr_007_540b:
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
    ld a, b
    ld [hl], b
    nop
    nop
    inc de
    ld hl, $271a
    inc h
    rst $28
    jr jr_007_544f

    ld l, $4c
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
    dec h
    ld e, $2d
    rst $28
    ld h, $1e
    rst $28
    rst $28
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    ld a, b
    ld [hl], b
    nop
    nop
    inc h
    daa
    jr z, jr_007_547e

    rst $28

jr_007_544f:
    ld a, [de]
    inc l
    rst $28
    inc l
    jr z, jr_007_547d

    daa
    rst $28
    ld a, [de]
    inc l
    rst $28
    ld [hl-], a
    jr z, jr_007_548b

    rst $28
    rra
    ld [hl+], a
    daa
    dec e
    rst $28
    ld hl, $2622
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
    ld a, b
    ld [hl], b
    nop
    nop
    ld c, $21
    adc [hl]
    rst $28
    ld [$1def], sp
    ld [hl+], a

jr_007_547d:
    dec e

jr_007_547e:
    daa
    ld c, e
    dec l
    rst $28
    rst $28
    rst $28
    rst $28
    inc h
    daa
    jr z, jr_007_54b9

    rst $28
    ld [hl-], a

jr_007_548b:
    jr z, jr_007_54bb

    rst $28
    jr nc, jr_007_54ae

    dec hl
    ld e, $ef
    rst $28
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    ld a, b
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
    rst $28
    rst $28

jr_007_54ae:
    rst $28
    rst $28
    ld [$1aef], sp
    ld h, $ef
    inc l
    jr z, @+$2d

    dec hl

jr_007_54b9:
    ld [hl-], a
    ld c, h

jr_007_54bb:
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
    ld a, b
    ld [hl], b
    nop
    nop
    ld c, $21

jr_007_54cd:
    rst $28
    ld [$264b], sp
    rst $28
    inc l
    jr z, jr_007_5500

    dec hl
    ld [hl-], a
    ld c, h
    ld c, h

jr_007_54d9:
    ld c, h
    rst $28
    inc bc
    jr z, jr_007_54cd

    ld [hl-], a
    jr z, jr_007_550f

    rst $28
    jr nc, jr_007_54fe

    daa
    dec l
    rst $28
    dec l
    jr z, jr_007_54d9

    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    ld a, b
    ld [hl], b
    nop
    nop
    dec de
    ld e, $ef
    rra
    dec hl
    ld e, $1e
    ld b, c

jr_007_54fe:
    rst $28
    rst $28

jr_007_5500:
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28

jr_007_550f:
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
    ld a, b
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
    jr z, jr_007_555e

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
    dec a
    ld [hl], d
    nop
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

jr_007_555e:
    ld e, $1e
    rst $28
    daa
    jr z, jr_007_5594

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
    ld a, $72
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
    ld [$264b], sp
    rst $28
    daa
    jr z, jr_007_55bb

    rst $28
    inc l
    ld a, [de]
    dec e
    ld c, h
    rst $28

jr_007_5594:
    rst $28
    rst $28
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    ld c, c
    ld [hl], d
    nop
    nop
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
    rst $28
    inc de
    ld hl, $271a
    inc h
    rst $28
    ld [hl-], a
    jr z, jr_007_55e9

jr_007_55bb:
    rst $28
    rra
    jr z, jr_007_55ea

    rst $28
    rst $28
    jp hl


    cp $00

jr_007_55c4:
    nop
    nop
    nop
    nop
    nop
    ld a, b
    ld [hl], b
    nop
    nop
    ld hl, $251e
    add hl, hl
    ld [hl+], a
    daa
    jr nz, jr_007_55c4

    ld h, $1e
    rst $28
    rra
    ld [hl+], a
    daa
    dec e
    rst $28
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

jr_007_55e9:
    rst $28

jr_007_55ea:
    rst $28
    rst $28
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    ld e, h
    ld [hl], d
    nop
    nop
    ld d, $1e
    dec h
    dec h
    adc [hl]
    rst $28
    jr nz, jr_007_5628

    jr z, jr_007_561f

    rst $28
    dec de
    ld [hl-], a
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
    cp $00
    nop
    nop
    nop
    nop
    nop

jr_007_561f:
    ld a, b
    ld [hl], b
    nop
    nop
    and b
    and c
    and d
    and e
    ld c, h

jr_007_5628:
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
    ld a, b
    ld [hl], b
    nop
    nop
    jr nc, jr_007_566a

    inc l
    rst $28
    inc l
    dec l
    dec hl
    jr z, @+$29

    jr nz, jr_007_56a5

    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    ld [$25ef], sp
    jr z, jr_007_568f

    dec l
    rst $28
    ld h, $32
    rst $28
    rst $28
    rst $28

jr_007_566a:
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
    ld a, b
    ld [hl], b
    nop
    nop
    jr nc, jr_007_5699

    ld a, [de]
    dec l

jr_007_567d:
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
    jr nz, jr_007_567d

    dec l

jr_007_568f:
    ld hl, $ef1e
    inc l
    dec l
    jr z, @+$2d

    ld h, $8e
    jp hl


jr_007_5699:
    cp $00
    nop
    nop
    nop
    nop
    nop
    ld a, b
    ld [hl], b
    nop
    nop
    dec e

jr_007_56a5:
    ld [hl+], a
    dec e
    rst $28
    ld [hl-], a
    jr z, jr_007_56d9

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
    jr nz, jr_007_56dc

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
    ld a, b
    ld [hl], b
    nop
    nop
    dec de
    ld e, $1e
    daa
    rst $28
    dec de
    dec h
    jr z, jr_007_5708

    daa

jr_007_56d9:
    rst $28
    rst $28
    rst $28

jr_007_56dc:
    rst $28
    rst $28
    rst $28
    inc l
    jr z, jr_007_5708

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
    ld a, b
    ld [hl], b
    nop
    nop
    ld [hl-], a
    jr z, jr_007_572b

    dec hl
    rst $28
    dec hl
    ld a, [de]
    daa
    inc e
    ld hl, $4c4c
    ld c, h
    rst $28

jr_007_5708:
    rst $28
    rst $28
    ld [bc], a
    jr z, jr_007_573b

    dec h
    dec e
    rst $28
    ld [hl-], a
    jr z, jr_007_5741

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
    ld [hl], e
    ld [hl], d
    nop
    nop
    ld h, $1e
    rst $28
    rra
    ld [hl+], a
    daa

jr_007_572b:
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
    jr jr_007_573c

    ld [de], a
    rst $28
    rst $28

jr_007_573b:
    rst $28

jr_007_573c:
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28

jr_007_5741:
    rst $28
    dec c
    ld c, $ef
    cp $00
    nop
    nop
    nop
    nop
    nop
    ld a, b
    ld [hl], b
    nop
    nop
    inc de
    ld hl, $271a
    inc h
    rst $28
    ld [hl-], a
    jr z, jr_007_5787

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
    jr nc, jr_007_5789

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
    ld a, b
    ld [hl], b
    nop
    nop
    dec h
    ld [hl+], a
    inc h
    ld e, $ef
    ld [hl-], a
    jr z, jr_007_57b1

    rst $28
    and b
    and c
    and d

jr_007_5787:
    and e
    ld c, h

jr_007_5789:
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
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
    ld a, b
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

jr_007_57b1:
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
    jr z, jr_007_57e9

    dec h
    rst $28
    rst $28
    rst $28
    jp hl


    cp $00
    nop
    nop
    nop

jr_007_57cb:
    nop
    nop
    ld a, b
    ld [hl], b
    nop
    nop
    rra
    jr z, jr_007_57ff

    rst $28
    ld a, [de]
    inc l
    inc h
    ld [hl+], a
    daa
    jr nz, jr_007_57cb

    ld [hl-], a
    jr z, jr_007_580d

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

jr_007_57e9:
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
    ld a, b
    ld [hl], b
    nop
    nop
    ld c, $21
    adc [hl]

jr_007_57ff:
    rst $28
    dec e
    ld [hl+], a
    dec e
    rst $28
    ld [hl-], a
    jr z, jr_007_5835

    rst $28
    rra
    ld [hl+], a
    daa
    dec e
    ld [hl+], a

jr_007_580d:
    dec l
    ld b, c
    rst $28
    ld b, $28
    jr z, @+$1f

    rst $28
    inc hl
    jr z, jr_007_5833

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
    ld a, b
    ld [hl], b
    nop
    nop
    inc de
    ld hl, $2c22
    rst $28
    jr nc, jr_007_584c

    ld a, [de]
    dec l
    ld hl, $2b1e

jr_007_5833:
    cpl
    ld a, [de]

jr_007_5835:
    daa
    ld e, $22
    inc l
    rst $28
    ld a, [de]
    rst $28
    ld h, $1e
    ld h, $1e
    daa
    dec l
    jr z, jr_007_5833

    rst $28
    rst $28
    jp hl


    cp $00
    nop
    nop
    nop

jr_007_584c:
    nop
    nop
    ld a, b
    ld [hl], b
    nop
    nop
    rra
    dec hl
    jr z, jr_007_587c

    rst $28
    ld h, $32
    rst $28
    ld h, $28
    dec l
    ld hl, $2b1e
    ld c, h
    rst $28
    inc de
    ld hl, $271a
    inc h
    rst $28
    ld [hl-], a
    jr z, jr_007_5899

    rst $28
    rra
    jr z, jr_007_589a

    rst $28
    rst $28
    jp hl


    cp $00
    nop

jr_007_5875:
    nop
    nop
    nop
    nop
    or b
    ld [hl], d
    nop

jr_007_587c:
    nop
    rra
    ld a, [de]
    ld [hl+], a
    daa
    dec e
    ld [hl+], a
    daa
    jr nz, jr_007_5875

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

jr_007_5899:
    rst $28

jr_007_589a:
    rst $28
    rst $28
    rst $28
    cp $00
    nop
    nop
    nop
    nop
    nop
    ld a, b
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
    rst $28
    rst $28
    rst $28
    rst $28
    inc h
    ld [hl+], a
    daa
    dec e
    rst $28
    jr z, jr_007_58de

    rst $28
    rra
    dec hl
    ld l, $22
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
    push bc
    ld [hl], c
    nop
    nop
    inc hl
    ld l, $22
    inc e
    ld e, $4c
    rst $28

jr_007_58da:
    ld d, $28
    ld l, $25

jr_007_58de:
    dec e
    rst $28
    ld [hl-], a
    jr z, jr_007_5911

    dec h
    ld [hl+], a
    inc h
    ld e, $ef
    dec l
    jr z, jr_007_58da

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
    ld a, b
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

jr_007_5911:
    dec e
    rst $28
    jr nz, jr_007_5940

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
    ld a, b
    ld [hl], b
    nop
    nop
    dec h
    ld e, $26
    jr z, jr_007_5955

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

jr_007_5940:
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
    ld a, b
    ld [hl], b
    nop
    nop
    inc e

jr_007_5955:
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
    rst $28
    rst $28
    rst $28
    rra
    ld [hl+], a
    jr nz, jr_007_5994

    adc [hl]
    rst $28
    inc h
    ld [hl+], a
    jr nc, jr_007_5990

    inc l
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
    ld a, b
    ld [hl], b
    nop
    nop
    ld a, [de]
    daa
    dec e
    rst $28
    dec h
    ld [hl+], a
    ld h, $1e
    inc l
    ld c, h
    rst $28
    ld d, $28
    ld l, $25
    dec e
    ld [hl-], a

jr_007_5990:
    jr z, jr_007_59c0

    rst $28
    dec h

jr_007_5994:
    ld [hl+], a
    inc h
    ld e, $ef
    ld a, [de]
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    jp hl


    cp $01
    dec b
    add hl, bc
    ld b, b
    ld c, h
    nop
    call z, $0072
    nop
    jr nz, jr_007_59d1

    ld a, [de]
    inc l
    inc l
    rst $28
    jr z, jr_007_59d1

    rst $28
    inc hl
    ld l, $22
    inc e
    ld e, $41
    rst $28
    rst $28
    jr jr_007_59c1

    ld [de], a
    rst $28
    rst $28

jr_007_59c0:
    rst $28

jr_007_59c1:
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

jr_007_59d1:
    ld a, b
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
    jr z, jr_007_5a0f

    adc [hl]

jr_007_59e2:
    rst $28
    ld [$30ef], sp
    ld a, [de]
    inc l
    rst $28
    jr nc, jr_007_5a13

    daa
    dec e
    ld e, $2b
    ld [hl+], a
    daa
    jr nz, jr_007_59e2

    rst $28
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    ld a, b
    ld [hl], b
    nop
    nop
    ld hl, $3028
    rst $28
    ld [hl+], a
    dec l
    rst $28
    jr nc, jr_007_5a31

    ld l, $25
    dec e
    rst $28
    rst $28
    rst $28

jr_007_5a0f:
    rst $28
    dec l
    ld a, [de]
    inc l

jr_007_5a13:
    dec l
    ld e, $4c
    rst $28
    ld [$ef2d], sp
    jr nc, jr_007_5a3e

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
    ld a, b
    ld [hl], b
    nop
    nop
    dec de
    ld e, $ef
    ld [hl+], a
    daa
    rst $28

jr_007_5a31:
    dec l
    ld hl, $ef1e
    inc l
    dec l
    jr z, jr_007_5a64

    ld e, $2c
    inc l
    jr z, jr_007_5a66

jr_007_5a3e:
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
    ld a, b
    ld [hl], b
    nop
    nop
    dec h
    jr z, jr_007_5a81

    inc h
    rst $28
    rra
    jr z, jr_007_5a89

    rst $28
    ld [hl+], a
    dec l
    ld c, h
    rst $28
    rst $28

jr_007_5a64:
    rst $28
    rst $28

jr_007_5a66:
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
    ld a, b
    ld [hl], b
    nop
    nop

jr_007_5a81:
    rlca
    ld l, $21
    adc [hl]
    rst $28
    dec hl
    ld e, $1a

jr_007_5a89:
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
    jr nz, jr_007_5ab9

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
    ld a, b
    ld [hl], b
    nop
    nop
    ld [$2def], sp
    ld hl, $2e28
    jr nz, jr_007_5ad5

    dec l
    rst $28
    ld [hl+], a
    dec l
    rst $28

jr_007_5ab9:
    rst $28
    rst $28
    rst $28
    jr nc, jr_007_5ae6

    ld l, $25
    dec e
    rst $28
    dec l
    ld a, [de]
    inc l
    dec l
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
    ld a, b
    ld [hl], b

jr_007_5ad5:
    nop
    nop
    jr nz, jr_007_5b01

    jr z, @+$1f

    ld d, h
    rst $28
    dec de
    ld l, $2d
    rst $28
    dec l
    ld hl, $271a
    inc h

jr_007_5ae6:
    rst $28
    ld [hl-], a
    jr z, jr_007_5b18

    rst $28
    ld a, [de]
    daa
    ld [hl-], a
    jr nc, jr_007_5b0a

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
    ld a, b
    ld [hl], b
    nop

jr_007_5b01:
    nop
    ld [$30ef], sp
    ld [hl+], a
    dec h
    dec h
    rst $28
    dec l

jr_007_5b0a:
    dec hl
    ld [hl-], a
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    ld a, [de]
    jr nz, jr_007_5b2f

    ld [hl+], a
    daa
    ld c, h

jr_007_5b18:
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
    ld a, b
    ld [hl], b
    nop
    nop
    jr jr_007_5b57

jr_007_5b2f:
    ld l, $ef
    jr nc, jr_007_5b5b

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
    rst $28
    and b
    and c
    and d

jr_007_5b4a:
    and e
    ld c, h
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    ld a, b
    ld [hl], b
    nop

jr_007_5b57:
    nop
    inc bc
    jr z, jr_007_5b4a

jr_007_5b5b:
    ld [hl-], a
    jr z, jr_007_5b8c

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
    ld a, b
    ld [hl], b
    nop
    nop
    ld [$1cef], sp
    ld a, [de]
    daa
    rst $28
    ld h, $1a
    inc h

jr_007_5b8c:
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

jr_007_5ba7:
    nop
    nop
    nop
    ld a, b
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
    jr nz, jr_007_5ba7

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
    ld a, b
    ld [hl], b
    nop

jr_007_5bd8:
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
    jr z, jr_007_5bd8

    inc e
    jr z, jr_007_5c12

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
    ld a, b
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

jr_007_5c12:
    ld e, $ef
    inc l
    ld l, $2b
    ld e, $ef
    ld [hl-], a
    jr z, jr_007_5c4a

    rst $28
    inc e
    jr z, jr_007_5c46

    ld e, $ef
    rst $28
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    ld a, b
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
    jr z, jr_007_5c60

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

jr_007_5c46:
    rst $28
    rst $28
    rst $28
    rst $28

jr_007_5c4a:
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
    ld a, b
    ld [hl], b
    nop
    nop
    rlca
    ld e, $32
    ld b, b
    ld b, b
    rst $28

jr_007_5c60:
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
    ld a, b
    ld [hl], b
    nop
    nop
    ld hl, $2e28
    inc l
    ld e, $ef
    ld [hl-], a
    jr z, jr_007_5cbc

    rst $28
    jr nc, jr_007_5cab

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

jr_007_5cab:
    nop
    ld a, b
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
    jr z, jr_007_5ce8

    rst $28
    daa

jr_007_5cbc:
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
    ld a, b
    ld [hl], b
    nop
    nop
    rst $28
    push hl
    and $e7
    rst $28
    ld h, $1a
    dec l
    ld e, $2b
    ld [hl+], a
    ld a, [de]
    dec h

jr_007_5ce8:
    inc l
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
    dec bc
    ld b, b
    ld c, h
    nop
    inc c
    ld [hl], e
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
    jr jr_007_5d1d

    ld [de], a
    rst $28
    rst $28
    rst $28

jr_007_5d1d:
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
    ld a, b
    ld [hl], b
    nop
    nop
    nop
    dec h
    dec hl
    ld [hl+], a
    jr nz, jr_007_5d58

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
    rst $28
    dec e
    ld a, [de]
    ld [hl-], a

jr_007_5d4e:
    inc l
    rst $28
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop

jr_007_5d58:
    ld a, b
    ld [hl], b
    nop
    nop
    dec l
    jr z, jr_007_5d4e

    inc e
    jr z, jr_007_5d88

    add hl, hl
    dec h

jr_007_5d64:
    ld e, $2d
    ld e, $8e
    rst $28
    rst $28
    rst $28
    rst $28
    inc l
    dec l
    ld a, [de]
    dec hl
    dec l
    ld [hl+], a
    daa
    jr nz, jr_007_5d64

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
    ld a, b
    ld [hl], b
    nop
    nop
    dec l

jr_007_5d88:
    jr z, jr_007_5db0

    jr z, jr_007_5db7

    dec hl
    jr z, @+$32

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
    ld a, b
    ld [hl], b

jr_007_5db0:
    nop
    nop
    ld d, $1a
    ld [hl+], a
    dec l
    rst $28

jr_007_5db7:
    jr z, @+$29

    ld e, $ef
    ld h, $22
    daa
    ld l, $2d
    ld e, $40
    jr @+$2a

    ld l, $ef
    dec e
    jr z, jr_007_5df0

    ld c, e
    dec l
    rst $28
    ld hl, $2f1a
    ld e, $ef
    jp hl


    cp $00
    nop
    nop

jr_007_5dd6:
    nop
    nop
    nop

jr_007_5dd9:
    ld a, b
    ld [hl], b
    nop
    nop
    ld e, $27
    jr z, jr_007_5e0f

    jr nz, jr_007_5e04

    rst $28
    dec l
    jr z, jr_007_5dd6

    dec e
    jr z, jr_007_5dd9

    dec l
    ld hl, $231e
    jr z, jr_007_5e0b

jr_007_5df0:
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

jr_007_5e04:
    ld a, b
    ld [hl], b
    nop
    nop
    ld [$ef2d], sp

jr_007_5e0b:
    inc e
    ld a, [de]
    daa
    ld c, e

jr_007_5e0f:
    dec l
    rst $28
    dec de
    ld e, $ef
    dec e
    jr z, jr_007_5e3e

    ld e, $27
    jr z, jr_007_5e4b

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
    ld a, b
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

jr_007_5e3e:
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    ld bc, $1e32
    rst $28
    dec l
    ld hl, $271e

jr_007_5e4b:
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
    ld a, b
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
    jr z, jr_007_5e9c

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
    ld a, b
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
    jr z, jr_007_5ebd

    ld e, $ef
    dec de
    ld a, [de]
    inc e

jr_007_5e9c:
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
    ld a, b
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

jr_007_5ebd:
    ld c, h
    ld c, h
    ld c, h
    rst $28
    rst $28
    rst $28
    rst $28
    ld [$24ef], sp
    daa
    jr z, jr_007_5efa

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
    ld a, b
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
    jr z, jr_007_5f1a

    dec h
    dec e
    rst $28
    ld [hl-], a
    jr z, jr_007_5f20

    rst $28
    add hl, hl
    dec h
    ld e, $1a
    inc l
    ld e, $ef

jr_007_5efa:
    ld hl, $251e
    add hl, hl
    jp hl


    cp $01
    dec b
    ld [$4c40], sp
    nop
    jp z, $0073

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

jr_007_5f1a:
    rst $28
    jr jr_007_5f21

    ld [de], a
    rst $28
    rst $28

jr_007_5f20:
    rst $28

jr_007_5f21:
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
    ld a, b
    ld [hl], b
    nop
    nop
    ld [$30ef], sp
    ld [hl+], a
    dec h
    dec h
    rst $28
    jr nz, jr_007_5f66

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
    ld a, b
    ld [hl], b
    nop
    nop
    and b
    and c
    and d
    and e
    adc [hl]
    rst $28

jr_007_5f66:
    inc e
    jr z, jr_007_5f97

    dec h
    dec e
    rst $28
    ld [hl-], a
    jr z, jr_007_5f9d

    rst $28
    inc e
    ld hl, $1c1e
    inc h
    rst $28
    ld a, [de]
    dec hl
    jr z, jr_007_5fa8

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
    ld a, b
    ld [hl], b
    nop
    nop
    ld [hl-], a
    jr z, jr_007_5fbc

    dec hl
    rst $28
    dec hl
    ld a, [de]
    daa
    inc e
    ld hl, $4c4c

jr_007_5f97:
    ld c, h
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28

jr_007_5f9d:
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28

jr_007_5fa8:
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
    ld a, b
    ld [hl], b
    nop
    nop
    and b
    and c
    and d
    and e
    adc [hl]
    rst $28

jr_007_5fbc:
    ld [hl+], a
    inc l
    rst $28
    ld [hl-], a
    jr z, jr_007_5ff0

    dec hl
    rst $28
    rst $28
    rst $28
    dec hl
    ld a, [de]
    daa
    inc e
    ld hl, $30ef
    jr z, jr_007_5ffa

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
    ld a, b
    ld [hl], b
    nop
    nop
    ld [hl+], a
    ld h, $29
    jr z, jr_007_6011

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

jr_007_5ff0:
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28

jr_007_5ffa:
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
    ld a, b
    ld [hl], b
    nop
    nop
    ld [$2cef], sp
    ld e, $1e

jr_007_6011:
    ld c, h
    ld c, h
    ld c, h
    dec l
    ld hl, $271e
    rst $28
    jr nc, jr_007_603c

    ld [hl-], a
    dec e
    jr z, jr_007_6046

    ld c, e
    dec l
    rst $28
    ld [hl-], a
    jr z, jr_007_6053

    rst $28
    jr nz, jr_007_6050

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
    ld a, b
    ld [hl], b
    nop
    nop
    dec h
    ld a, [de]
    ld [hl-], a
    rst $28
    ld a, [de]

jr_007_603c:
    daa
    rst $28
    ld e, $20
    jr nz, jr_007_6082

    rst $28
    rst $28
    rst $28
    rst $28

jr_007_6046:
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28

jr_007_6050:
    rst $28
    rst $28
    rst $28

jr_007_6053:
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
    ld a, b
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


jr_007_6082:
    cp $00
    nop
    nop
    nop
    nop
    nop
    ld a, b
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
    jr z, jr_007_60c6

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
    db $db
    ld [hl], e
    nop
    nop
    rra
    jr z, @+$2d

    rst $28
    ld a, [de]
    rst $28
    jr nc, jr_007_60e1

    ld [hl+], a
    dec h
    ld e, $41
    rst $28
    rst $28

jr_007_60c6:
    rst $28
    rst $28
    rst $28
    jr jr_007_60cf

    ld [de], a
    rst $28
    rst $28
    rst $28

jr_007_60cf:
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
    ld a, b
    ld [hl], b

jr_007_60e1:
    nop
    nop
    inc de
    ld hl, $271a
    inc h
    rst $28
    ld [hl-], a
    jr z, jr_007_611a

    rst $28
    cpl
    ld e, $2b
    ld [hl-], a
    rst $28
    rst $28
    ld h, $2e
    inc e
    ld hl, $1fef
    jr z, jr_007_6126

    rst $28
    ld [hl-], a
    jr z, jr_007_612d

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
    ld a, b
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

jr_007_611a:
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28

jr_007_6126:
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28

jr_007_612d:
    rst $28
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, b
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
    jr z, jr_007_617b

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
    ld a, b
    ld [hl], b
    nop
    nop
    ld [$1aef], sp
    inc l
    inc h
    ld e, $1d
    rst $28
    rra
    jr z, jr_007_619a

    rst $28
    dec l
    jr z, @+$2a

    rst $28
    ld h, $2e
    inc e
    ld hl, $ef4c
    rst $28

jr_007_617b:
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
    ld a, b
    ld [hl], b
    nop
    nop
    ld [$24ef], sp
    daa
    jr z, @+$32

    rst $28
    dec hl
    ld a, [de]
    daa
    inc e

jr_007_619a:
    ld hl, $efef
    rst $28
    rst $28
    jr nc, @+$2a

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
    ld b, h
    rst $28
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    ld a, b
    ld [hl], b
    nop
    nop
    inc e
    ld l, $25
    dec l
    rst $28
    dec de
    ld l, $2d
    rst $28
    inc h
    ld e, $1e
    add hl, hl
    rst $28
    ld l, $29
    dec l
    ld hl, $ef1e
    jr nz, jr_007_61f8

    jr z, jr_007_61ef

    rst $28
    jr nc, jr_007_61fd

    dec hl
    inc h
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
    ld a, b
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
    rst $28
    rst $28
    rst $28

jr_007_61ef:
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    ld [$1aef], sp

jr_007_61f8:
    ld h, $ef
    inc l
    jr z, jr_007_6228

jr_007_61fd:
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
    ld a, b
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

jr_007_6228:
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
    ld a, b
    ld [hl], b
    nop
    nop
    dec c
    jr z, @-$70

    rst $28
    ld [$1aef], sp
    ld h, $ef
    daa
    jr z, jr_007_6274

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

    jr nz, jr_007_6274

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
    ld a, b
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

jr_007_6274:
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
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
    ld a, b
    ld [hl], b
    nop
    nop
    ld d, $21

jr_007_6293:
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
    jr z, jr_007_6293

    jr z, @+$29

    ld e, $ef
    dec de

jr_007_62a9:
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

jr_007_62b7:
    nop
    ld a, b
    ld [hl], b
    nop
    nop
    dec l
    ld hl, $271a
    rst $28
    ld hl, $2622
    rst $28
    dec l
    jr z, jr_007_62b7

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

jr_007_62db:
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    ld a, b
    ld [hl], b
    nop
    nop
    ld [$1def], sp
    jr z, jr_007_62db

    daa
    jr z, jr_007_631c

    rst $28
    dec h
    ld [hl+], a
    inc h
    ld e, $ef
    rst $28
    rst $28
    ld [hl-], a
    jr z, jr_007_6328

    dec hl
    rst $28
    jr nc, jr_007_6318

    ld [hl-], a
    rst $28
    jr z, jr_007_6321

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
    ld a, b
    ld [hl], b
    nop
    nop
    dec l
    ld hl, $2722
    inc h
    ld [hl+], a

jr_007_6318:
    daa
    jr nz, jr_007_62a9

    rst $28

jr_007_631c:
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28

jr_007_6321:
    rst $28
    rra
    ld a, [de]
    dec l
    ld hl, $2b1e

jr_007_6328:
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
    ld a, b
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
    jr z, jr_007_636d

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
    jr nc, jr_007_6376

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
    or $73
    nop
    nop
    jr nc, jr_007_638c

    dec h
    dec h
    rst $28

jr_007_636d:
    dec e
    ld [hl+], a
    inc l
    inc e
    ld l, $2c
    inc l
    rst $28
    ld [hl+], a

jr_007_6376:
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

jr_007_638c:
    nop
    nop
    nop
    ld a, b
    ld [hl], b
    nop
    nop
    and b
    and c
    and d
    and e
    adc [hl]

jr_007_6398:
    rst $28
    ld [$30ef], sp
    ld [hl+], a
    dec h
    dec h
    rst $28
    dec de
    ld e, $ef
    jr nz, jr_007_63cd

    ld [hl+], a
    daa
    jr nz, jr_007_6398

    ld hl, $2628
    ld e, $ef
    daa
    jr z, jr_007_63e1

    ld c, h
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    ld a, b
    ld [hl], b
    nop
    nop
    inc de
    ld hl, $271a
    inc h
    rst $28
    ld [hl-], a
    jr z, jr_007_63f5

    rst $28
    cpl
    ld e, $2b
    ld [hl-], a
    rst $28

jr_007_63cd:
    rst $28
    ld h, $2e
    inc e
    ld hl, $1fef
    jr z, jr_007_6401

    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    jp hl


    cp $00

jr_007_63e0:
    nop

jr_007_63e1:
    nop
    nop
    nop
    nop
    ld d, $74
    nop
    nop
    dec h
    ld e, $2d
    dec l
    ld [hl+], a
    daa
    jr nz, jr_007_63e0

    ld h, $1e
    rst $28
    inc l

jr_007_63f5:
    dec l
    ld a, [de]
    ld [hl-], a
    rst $28
    ld a, [de]
    dec l
    rst $28
    ld [hl-], a
    jr z, jr_007_642d

    dec hl
    rst $28

jr_007_6401:
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
    ld a, b
    ld [hl], b
    nop
    nop
    inc c
    ld [hl-], a
    rst $28
    jr nz, jr_007_6444

jr_007_6419:
    ld a, [de]
    daa
    dec e
    ld h, $1a
    rst $28
    dec l
    jr z, jr_007_6447

    dec e
    rst $28
    ld h, $1e
    rst $28
    dec l
    jr z, jr_007_6419

    dec de
    ld l, $32

jr_007_642d:
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
    ld a, b
    ld [hl], b
    nop
    nop
    ld e, $20
    jr nz, jr_007_648f

    rst $28

jr_007_6444:
    ld [bc], a
    jr z, jr_007_6475

jr_007_6447:
    dec h
    dec e
    rst $28
    ld [hl-], a
    jr z, jr_007_647b

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
    sbc b
    ld [hl], h
    nop
    nop
    ld a, [de]
    daa
    rst $28
    ld e, $20
    jr nz, jr_007_64b2

    rst $28
    rst $28
    rst $28
    rst $28

jr_007_6475:
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28

jr_007_647b:
    jr jr_007_6481

    ld [de], a
    rst $28
    rst $28
    rst $28

jr_007_6481:
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

jr_007_648f:
    nop
    nop
    ld a, b
    ld [hl], b
    nop
    nop
    ld c, $21
    rst $28
    daa
    jr z, jr_007_64db

    rst $28
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
    jr nz, jr_007_64d5

    ld a, [de]
    daa
    dec e
    ld h, $1a
    rst $28
    jr nc, jr_007_64d4

jr_007_64b2:
    dec h
    dec h
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    ld a, b
    ld [hl], b
    nop
    nop
    dec de
    ld e, $ef
    ld a, [de]
    daa
    jr nz, jr_007_64f2

    ld [hl-], a
    rst $28
    jr nc, @+$24

    dec l
    ld hl, $efef
    rst $28
    ld h, $1e
    ld b, b
    ld b, b

jr_007_64d4:
    rst $28

jr_007_64d5:
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28

jr_007_64db:
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
    ld a, b
    ld [hl], b
    nop
    nop
    rlca
    ld e, $2b
    ld e, $ef
    ld [hl+], a
    inc l

jr_007_64f2:
    rst $28
    dec sp
    add hl, sp
    ld b, $ef
    rra
    jr z, jr_007_6525

    rst $28
    dec l
    ld hl, $ef1e
    ld e, $20
    jr nz, jr_007_654f

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
    db $eb
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

jr_007_6525:
    rst $28
    inc l
    ld e, $1e
    rst $28
    ld [hl-], a
    jr z, jr_007_655b

    rst $28
    dec h
    ld a, [de]
    dec l
    ld e, $2b
    ld c, h
    rst $28
    rst $28
    cp $00
    nop
    nop
    nop
    nop
    nop
    ld a, b
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

jr_007_654f:
    ld [hl+], a
    dec e
    dec l
    jr z, jr_007_657c

    rst $28
    ld h, $2e
    inc e
    ld hl, $1fef

jr_007_655b:
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
    ld a, b
    ld [hl], b
    nop
    nop
    dec l
    ld hl, $ef1e
    ld e, $20
    jr nz, jr_007_65c0

    rst $28
    ld d, $28
    ld l, $25
    dec e
    rst $28
    rst $28

jr_007_657c:
    ld [hl-], a
    jr z, jr_007_65ad

    rst $28
    add hl, hl
    dec h
    ld e, $1a
    inc l
    ld e, $ef
    jr nz, jr_007_65ab

    cpl
    ld e, $e9
    cp $01
    inc bc
    inc b
    ld b, b
    ld c, h
    nop
    ld hl, sp+$74
    nop
    nop
    ld h, $1e
    rst $28
    ld h, $32
    rst $28
    inc e
    ld hl, $271a
    jr nz, jr_007_65c1

    ld b, c
    rst $28
    rst $28
    rst $28
    rst $28
    jr jr_007_65ae

    ld [de], a

jr_007_65ab:
    rst $28
    rst $28

jr_007_65ad:
    rst $28

jr_007_65ae:
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
    ld a, b
    ld [hl], b

jr_007_65c0:
    nop

jr_007_65c1:
    nop
    inc de
    ld hl, $271a
    inc h
    rst $28
    ld [hl-], a
    jr z, jr_007_65f9

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
    jr z, jr_007_6607

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
    ld a, b
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

jr_007_65f9:
    rst $28
    rst $28
    rst $28
    rst $28
    ld d, $21
    ld a, [de]
    dec l
    rst $28
    jr nc, jr_007_6626

    dec h
    dec h
    rst $28

jr_007_6607:
    ld [$1def], sp
    jr z, jr_007_664d

    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    ld a, b
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

jr_007_6626:
    rst $28
    rst $28
    jr nc, jr_007_664c

    dec h
    dec h
    rst $28
    dec de
    ld e, $ef
    ld a, [de]
    daa
    jr nz, jr_007_665f

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
    ld a, b
    ld [hl], b
    nop
    nop
    jr nc, jr_007_6667

    dec l
    ld hl, $26ef
    ld e, $40
    ld b, b

jr_007_664c:
    rst $28

jr_007_664d:
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28

jr_007_665f:
    rst $28
    rst $28
    rst $28
    rst $28
    rst $38
    nop
    nop
    nop

jr_007_6667:
    nop
    nop
    nop
    ld a, b
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

jr_007_6676:
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
    jr z, jr_007_6676

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
    ld a, b
    ld [hl], b
    nop
    nop
    ld [$23ef], sp
    ld l, $2c

jr_007_669e:
    dec l
    rst $28
    inc l
    dec l
    jr z, jr_007_66cd

    add hl, hl
    ld e, $1d
    rst $28
    rst $28
    dec de
    ld [hl-], a
    rst $28
    dec l
    jr z, jr_007_669e

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
    ld a, b
    ld [hl], b
    nop
    nop
    rra
    dec hl
    jr z, jr_007_66ee

    rst $28
    dec l
    ld hl, $ef1e

jr_007_66cd:
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
    jr z, jr_007_6700

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
    jr nz, jr_007_6762

    nop

jr_007_66ee:
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

jr_007_6700:
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
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
    ld a, b
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
    ld a, b
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
    jr z, jr_007_677a

    rst $28
    rst $28
    dec l
    jr z, jr_007_677f

    ld [hl+], a
    jr nz, jr_007_677c

    dec l
    ld c, h
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28

jr_007_6762:
    rst $28
    rst $28
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_007_67e3

    nop
    nop
    inc b
    cpl
    ld e, $2b
    ld [hl-], a
    jr z, jr_007_679e

    ld e, $ef
    ld [hl+], a

jr_007_677a:
    inc l
    rst $28

jr_007_677c:
    ld hl, $2b1e

jr_007_677f:
    ld e, $27
    jr z, jr_007_67b3

    adc [hl]
    rst $28
    dec h
    ld e, $2d
    ld d, e
    rst $28
    jr nz, jr_007_67b4

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
    ld a, b
    ld [hl], b
    nop
    nop
    ld [$532d], sp

jr_007_679e:
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

jr_007_67b3:
    ld a, [de]

jr_007_67b4:
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
    ld a, b
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
    jr z, jr_007_67f7

    rst $28
    rlca
    jr z, jr_007_680c

    inc l
    ld e, $4c
    rst $28
    rst $28

jr_007_67e3:
    rst $28
    rst $28
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    ld a, b
    ld [hl], b
    nop
    nop
    ld [$30ef], sp
    ld [hl+], a
    dec h
    dec h

jr_007_67f7:
    rst $28
    jr nz, jr_007_681c

    cpl
    ld e, $ef
    ld [hl-], a
    jr z, jr_007_682e

    rst $28
    dec l
    ld hl, $2c22
    rst $28
    ld [de], a
    ld l, $29
    ld e, $2b
    rst $28

jr_007_680c:
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
    ld a, b
    ld [hl], b
    nop
    nop

jr_007_681c:
    rlca
    ld a, [de]
    ld h, $26
    ld e, $2b
    ld c, h
    rst $28
    jr jr_007_684e

    ld l, $ef
    inc e
    ld a, [de]
    daa
    rst $28
    dec de
    dec hl

jr_007_682e:
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
    ld a, b
    ld [hl], b
    nop
    nop
    dec hl
    jr z, jr_007_6866

    inc h
    rst $28
    jr nc, jr_007_6870

jr_007_684e:
    dec l
    ld hl, $28ef
    daa
    ld e, $ef
    rst $28
    rst $28
    inc l
    jr nc, jr_007_687c

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

jr_007_6866:
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    ld a, b
    ld [hl], b

jr_007_6870:
    nop
    nop
    ld d, $1e
    dec h
    dec h
    adc [hl]
    rst $28
    ld [$30ef], sp
    ld [hl+], a

jr_007_687c:
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
    jr z, jr_007_68b4

    ld e, $ef
    rst $28
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    ld a, b
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
    jr z, jr_007_68d8

    rst $28
    rst $28
    rst $28
    daa
    ld e, $1e
    dec e
    rst $28
    ld a, [de]
    daa

jr_007_68b4:
    ld [hl-], a
    dec l
    ld hl, $2722
    jr nz, jr_007_6907

    rst $28
    rst $28
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, b
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

jr_007_68d8:
    add hl, hl
    dec h
    ld e, $2d
    ld e, $1d
    ld c, h
    rst $28
    ld [$532d], sp
    rst $28
    daa
    jr z, jr_007_6917

    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    ld a, b
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
    ld b, h
    inc bc
    ld e, $25
    ld l, $31
    ld e, $ef
    rst $28
    ld d, $28
    jr z, jr_007_6924

jr_007_6907:
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

jr_007_6917:
    nop
    nop
    nop
    ld a, b
    ld [hl], b
    nop
    nop
    ld d, $1e
    dec h
    dec h
    adc [hl]
    rst $28

jr_007_6924:
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
    jr nz, jr_007_6982

    rst $28
    ld [bc], a
    jr z, jr_007_6960

    ld e, $ef
    rst $28
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    ld a, b
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
    jr z, jr_007_6984

    rst $28
    rst $28
    rst $28
    daa
    ld e, $1e
    dec e
    rst $28
    ld a, [de]
    daa

jr_007_6960:
    ld [hl-], a
    dec l
    ld hl, $2722
    jr nz, jr_007_69b3

    rst $28
    rst $28
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, b
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
    jr jr_007_699e

    ld a, [de]
    dec hl

jr_007_6982:
    rst $28
    rst $28

jr_007_6984:
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
    ld a, b
    ld [hl], b
    nop

jr_007_699e:
    nop
    ld [$21ef], sp
    jr z, jr_007_69cd

    ld e, $ef
    ld [hl-], a
    jr z, jr_007_69d7

    rst $28
    ld hl, $2f1a
    ld e, $ef
    ld a, [de]
    rst $28
    jr nc, jr_007_69db

jr_007_69b3:
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
    ld a, b
    ld [hl], b
    nop
    nop
    daa
    ld e, $30

jr_007_69cd:
    rst $28
    ld [hl-], a
    ld e, $1a
    dec hl
    ld c, h
    rst $28
    rst $28
    rst $28
    rst $28

jr_007_69d7:
    rst $28
    rst $28
    rst $28
    rst $28

jr_007_69db:
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28

jr_007_69e7:
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
    ld a, b
    ld [hl], b
    nop
    nop
    inc bc
    jr z, jr_007_69e7

    ld [hl-], a
    jr z, jr_007_6a29

    rst $28
    jr nc, jr_007_6a18

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

jr_007_6a18:
    ld a, [bc]
    ld b, b
    ld c, h
    nop
    add hl, hl
    ld [hl], l
    nop
    nop
    ld hl, $251e
    add hl, hl
    ld b, c
    rst $28
    rst $28
    rst $28
    rst $28

jr_007_6a29:
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    jr jr_007_6a37

    ld [de], a
    rst $28
    rst $28
    rst $28

jr_007_6a37:
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
    ld a, b
    ld [hl], b
    nop
    nop
    dec c
    jr z, jr_007_6a7b

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
    jr jr_007_6a85

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

jr_007_6a6d:
    nop
    nop
    nop
    nop
    nop
    ld a, b
    ld [hl], b
    nop
    nop
    dec l
    ld a, [de]
    dec h
    inc h
    rst $28

jr_007_6a7b:
    dec l
    jr z, jr_007_6a6d

    dec l
    ld hl, $ef1e
    rst $28
    rst $28
    rst $28

jr_007_6a85:
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
    sbc c
    ld [hl], l
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
    ld a, b
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
    jr nz, jr_007_6b12

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
    cp d
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
    jr z, jr_007_6b3c

    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28

jr_007_6b12:
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
    ld a, b
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

jr_007_6b3c:
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
    ld a, b
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
    jr z, jr_007_6b93

    rst $28
    jr z, jr_007_6b8f

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
    sbc c
    ld [hl], l
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

jr_007_6b8f:
    rst $28
    rst $28
    rst $28
    rst $28

jr_007_6b93:
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
    ld a, b
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
    sbc c
    ld [hl], l
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
    ld a, b
    ld [hl], b
    nop
    nop
    inc de
    ld hl, $2c22
    rst $28
    ld [hl+], a
    inc l
    rst $28

jr_007_6c01:
    dec l
    ld hl, $ef1e
    rst $28
    rst $28
    rst $28

jr_007_6c08:
    rst $28
    ld [de], a
    ld hl, $2922
    add hl, hl
    ld [hl+], a
    daa
    jr nz, jr_007_6c01

    ld bc, $3128
    rst $28
    dec l
    jr z, jr_007_6c08

    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, b
    ld [hl], b
    nop
    nop
    inc l
    ld hl, $2922
    rst $28
    inc e
    dec hl
    jr z, jr_007_6c56

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
    jr nc, jr_007_6c63

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
    ld a, b
    ld [hl], b
    nop
    nop
    add hl, hl
    ld [hl+], a
    inc e
    inc h
    rst $28
    ld l, $29

jr_007_6c56:
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

jr_007_6c63:
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
    ld a, b
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
    jr z, jr_007_6cb7

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
    ld a, b
    ld [hl], b
    nop
    nop
    dec l
    jr z, @-$0f

    inc l
    dec l
    jr z, jr_007_6cd7

    ld e, $ef
    rra
    jr z, jr_007_6cce

    dec e
    ld e, $2b
    ld c, h
    ld c, $27

jr_007_6cb7:
    rst $28
    dec l
    ld hl, $ef1e
    dec hl
    ld [hl+], a
    jr nz, jr_007_6ce1

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
    ld a, b
    ld [hl], b

jr_007_6cce:
    nop
    nop
    dec l
    ld hl, $ef1e
    inc l
    ld [hl+], a
    dec h

jr_007_6cd7:
    jr z, jr_007_6d05

    rst $28
    ld [hl+], a
    inc l
    rst $28
    dec l
    ld hl, $021e

jr_007_6ce1:
    ld hl, $1c22
    inc h
    ld e, $27
    rst $28
    ld [bc], a
    jr z, jr_007_6d13

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
    ld a, b
    ld [hl], b
    nop
    nop
    jr z, jr_007_6d24

    rst $28
    dec l
    ld hl, $ef1e
    dec h
    ld e, $1f

jr_007_6d05:
    dec l
    rst $28
    ld [hl+], a
    inc l
    rst $28
    rst $28
    dec l
    ld hl, $ef1e
    ld [bc], a
    jr z, jr_007_6d42

    rst $28

jr_007_6d13:
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
    ld a, b
    ld [hl], b

jr_007_6d24:
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
    jr nc, jr_007_6d59

    ld e, $2b
    ld e, $ef
    ld [hl-], a
    jr z, jr_007_6d6d

    dec hl
    rst $28
    ld [hl+], a

jr_007_6d42:
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
    ld a, b
    ld [hl], b
    nop
    nop
    ld a, [de]
    dec hl
    ld e, $ef
    inc h
    ld e, $29
    dec l

jr_007_6d59:
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

jr_007_6d6d:
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
    ld a, b
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
    jr z, jr_007_6db2

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
    ld a, b
    ld [hl], b
    nop
    nop
    dec l
    ld hl, $221e
    dec hl
    rst $28
    ld l, $2c
    ld a, [de]
    jr nz, jr_007_6dd0

jr_007_6db2:
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
    ld a, b
    ld [hl], b

jr_007_6dd0:
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
    ld [hl+], a
    dec hl
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
    ld a, b
    ld [hl], b
    nop
    nop
    ld a, [de]
    dec l
    rst $28
    ld h, $32
    rst $28
    dec de
    jr z, jr_007_6e2e

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
    ld a, b
    ld [hl], b
    nop
    nop
    dec h
    jr z, jr_007_6e58

    rst $28
    jr z, jr_007_6e4d

jr_007_6e2e:
    rst $28
    ld h, $22
    dec h
    inc h
    ld c, h

jr_007_6e34:
    rst $28
    rst $28
    rst $28
    rst $28
    ld c, $1f
    rst $28
    inc e
    jr z, jr_007_6e6c

    dec hl
    inc l
    ld e, $ef
    dec e
    jr z, jr_007_6e34

    daa
    jr z, jr_007_6e75

    rst $38
    nop
    nop
    nop

jr_007_6e4c:
    nop

jr_007_6e4d:
    nop
    nop
    ld a, b
    ld [hl], b
    nop
    nop
    rra
    jr z, @+$2d

    jr nz, jr_007_6e76

jr_007_6e58:
    dec l
    rst $28
    dec l
    jr z, jr_007_6e4c

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

jr_007_6e6c:
    ld [hl-], a
    dec e
    ld a, [de]
    ld [hl-], a
    ld c, h
    rst $28
    rst $28
    rst $38
    nop

jr_007_6e75:
    nop

jr_007_6e76:
    nop
    nop
    nop
    nop
    ld a, b
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
    jr z, jr_007_6ebe

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
    jr nz, jr_007_6eca

    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, b
    ld [hl], b
    nop
    nop
    dec c
    ld e, $2f
    ld e, $2b
    rst $28
    rra
    jr z, jr_007_6edd

    jr nz, jr_007_6ed2

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

jr_007_6ebe:
    rst $28
    rst $28
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

jr_007_6eca:
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, b
    ld [hl], b

jr_007_6ed2:
    nop
    nop
    rst $28
    rst $28
    ld de, $271a
    inc e
    ld hl, $0cef

jr_007_6edd:
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
    ld a, b
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
    jr nz, jr_007_6f41

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
    ld a, b
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
    jr z, jr_007_6f68

jr_007_6f41:
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
    ld a, b
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

jr_007_6f68:
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

jr_007_6f78:
    nop
    nop
    nop
    nop
    ld a, b
    ld [hl], b
    nop
    nop
    dec h
    jr z, jr_007_6faa

    jr nz, jr_007_6fb1

    rst $28
    dec l
    jr z, jr_007_6f78

    dec de
    ld e, $ef
    jr z, jr_007_6fb5

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
    ld a, b
    ld [hl], b
    nop

jr_007_6faa:
    nop
    inc bc
    jr z, jr_007_6fd5

    ld c, e
    dec l
    rst $28

jr_007_6fb1:
    dec l
    jr z, jr_007_6fe2

    inc e

jr_007_6fb5:
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
    ld a, b
    ld [hl], b
    nop

jr_007_6fd5:
    nop
    rlca
    ld h, $26
    ld c, h
    ld c, h
    rst $28
    ld [$30ef], sp
    jr z, jr_007_7008

    dec e

jr_007_6fe2:
    ld e, $2b
    rst $28
    rst $28
    ld [hl+], a
    rra
    rst $28
    dec l
    ld hl, $2c22
    rst $28
    jr nc, jr_007_700a

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
    ld a, b
    ld [hl], b
    nop
    nop
    jr nz, jr_007_702e

    ld a, [de]
    daa
    dec e
    add hl, hl
    ld a, [de]

jr_007_7008:
    ld d, e
    rst $28

jr_007_700a:
    add hl, hl
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
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, b
    ld [hl], b
    nop
    nop
    ld d, $21

jr_007_702e:
    jr z, jr_007_704a

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
    jr z, jr_007_7070

    ld e, $2b
    rst $28
    jr z, @+$29

    rst $28
    ld [hl+], a
    dec l
    ld c, h
    rst $28

jr_007_704a:
    rst $28
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    ld a, b
    ld [hl], b
    nop
    nop
    ld [$30ef], sp
    jr z, jr_007_7083

    dec e
    ld e, $2b
    rst $28
    jr nc, jr_007_7083

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

jr_007_7070:
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
    ld [wTextID], a

jr_007_7083:
    xor a
    ld [$cb53], a
    ld [$cb55], a
    xor a
    ld [wFreezePlayerInTextWindowOrInTown], a
    ld [$cb5f], a
    call Call_000_3efc
    xor a
    ld [$cb58], a
    ld [$cb57], a
    ld a, $50
    ld [$cb73], a
    ld [wInputFreezeTimer], a
    call Call_000_0f0f
    ret


    ld a, [$cb72]
    or a
    jr nz, jr_007_70f5

    ld a, $ff
    ld [wTextID], a
    xor a
    ld [$cb53], a
    ld [$cb55], a
    xor a
    ld [wFreezePlayerInTextWindowOrInTown], a
    ld [$cb5f], a
    call Call_000_3efc
    xor a
    ld [$cb58], a
    ld [$cb57], a
    ld a, $50
    ld [$cb73], a
    ld [wInputFreezeTimer], a
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


jr_007_70f5:
    call Call_000_3f26
    ret


    ld a, [$cb72]
    or a
    jr nz, jr_007_712a

    ld a, $ff
    ld [wTextID], a
    xor a
    ld [$cb53], a
    ld [$cb55], a
    xor a
    ld [wFreezePlayerInTextWindowOrInTown], a
    ld [$cb5f], a
    call Call_000_3efc
    xor a
    ld [$cb58], a
    ld [$cb57], a
    ld a, $18
    ld [wMapChangeFreezeTimer], a
    ld a, $01
    ld [wDestinationWarpID], a
    call Call_000_0f0f
    ret


jr_007_712a:
    call Call_000_3f26
    ret


    ld a, [$cb72]
    or a
    jr nz, jr_007_715f

    ld a, $01
    ld [wMapChangeFreezeTimer], a
    ld a, $02
    ld [wDestinationWarpID], a
    ld a, $ff
    ld [wTextID], a
    xor a
    ld [$cb53], a
    ld [$cb54], a
    ld [$cb55], a
    xor a
    ld [wFreezePlayerInTextWindowOrInTown], a
    ld [$cb5f], a
    call Call_000_3efc
    xor a
    ld [$cb58], a
    ld [$cb57], a
    ret


jr_007_715f:
    call Call_000_3f26
    ret


    call Call_000_3f26
    ret


    ret


    ld a, [$cb72]
    or a
    jr nz, jr_007_7174

    ld a, $01
    ld [$b893], a
    ret


jr_007_7174:
    xor a
    ld [$b893], a
    ret


    xor a
    ld [$b893], a
    ld a, $0a
    ld [wDestinationWarpID], a
    ld a, $20
    ld [wMapChangeFreezeTimer], a
    ld a, $ff
    ld [wTextID], a
    xor a
    ld [$cb53], a
    ld [$cb54], a
    ld [$cb55], a
    xor a
    ld [wFreezePlayerInTextWindowOrInTown], a
    ld [$cb5f], a
    call Call_000_3efc
    xor a
    ld [$cb58], a
    ld [$cb57], a
    ret


    ld a, $3c
    ld [wInputFreezeTimer], a
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
    ld [wInputFreezeTimer], a
    ld a, $ff
    ld [$cb8d], a
    ld a, $8e
    call Call_000_151d
    ld b, $1e
    call $1ae6
    call Call_000_3f26
    ret


    ld a, $60
    ld [wInputFreezeTimer], a
    ld a, $06
    ld [$cb8d], a
    ld a, $20
    call Call_000_151d
    call Call_000_3f26
    ld a, $01
    ld [$cbf6], a
    ld a, [sPlayerMaxEnergy]
    srl a
    srl a
    ld b, a
    call $1ae6
    ret


    ld a, [$cb72]
    or a
    jr nz, jr_007_7238

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


jr_007_7238:
    xor a
    ld [$b890], a
    ret


    ret


    ld a, $01
    ld [$c76c], a
    ld a, $ff
    ld [wInputFreezeTimer], a
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
    jr nz, jr_007_72ab

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


jr_007_72ab:
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
    ld [wInputFreezeTimer], a
    ret


    ld a, [$cb72]
    or a
    jr nz, jr_007_72d8

    ld a, $0a
    call Call_000_0f47
    ret


jr_007_72d8:
    ld a, $f6
    call Call_000_0f47
    ret


    ld a, [$cb72]
    or a
    jr nz, jr_007_72fc

    ld a, $01
    ld [$b897], a
    ld a, [$b8a5]
    or a
    jr nz, jr_007_7301

    ld a, [sInventory]
    cp HAMMER
    jr z, jr_007_7306

    ld a, NO_ITEM
    ld [sInventory+1], a
    ret


jr_007_72fc:
    xor a
    ld [$b897], a
    ret


jr_007_7301:
    xor a
    ld [$b8a5], a
    ret


jr_007_7306:
    ld a, $ff
    ld [sInventory], a
    ret


    ld a, [$cb72]
    or a
    jp nz, Jump_007_73c5

    ld a, [sHouseExpansionFlag]
    cp $00
    jr z, jr_007_7349

    ld a, [$b939]
    cp $02
    jr nc, jr_007_732e

    cp $00
    jr z, jr_007_7373

    ld a, [$b938]
    cp $2c
    jr nc, jr_007_732e

    jr jr_007_7373

jr_007_732e:
    ld a, [sPlayerMoney+2]
    cp $00
    jr nz, jr_007_7387

    ld a, [sPlayerMoney+1]
    cp $14
    jr nc, jr_007_7387

    cp $13
    jr c, jr_007_7373

    ld a, [sPlayerMoney]
    cp $88
    jr nc, jr_007_7387

    jr jr_007_7373

jr_007_7349:
    ld a, [$b939]
    or a
    jr nz, jr_007_7358

    ld a, [$b938]
    cp $64
    jr nc, jr_007_7358

    jr jr_007_7373

jr_007_7358:
    ld a, [sPlayerMoney+2]
    cp $00
    jr nz, jr_007_7387

    ld a, [sPlayerMoney+1]
    cp $0a
    jr nc, jr_007_7387

    cp $09
    jr c, jr_007_7373

    ld a, [sPlayerMoney]
    cp $c4
    jr nc, jr_007_7387

    jr jr_007_7373

jr_007_7373:
    call ClearOldTextOnTextBox
    ld hl, $cb53
    ld bc, $0081
    call AddBCtoWordAtHL
    xor a
    ld [$cb55], a
    ld [$b8fe], a
    ret


jr_007_7387:
    ld a, $02
    ld [$b8fe], a
    ld a, [sHouseExpansionFlag]
    cp $00
    jr z, jr_007_73ac

    ld hl, $b938
    ld bc, -300
    call AddBCtoWordAtHL
    ld hl, sPlayerMoney
    ld bc, -5000
    call AddSignedBCToHL
    call Call_000_0f73
    call UpdatePlayerMoneyTileData
    ret


jr_007_73ac:
    ld hl, $b938
    ld bc, -100
    call AddBCtoWordAtHL
    ld hl, sPlayerMoney
    ld bc, -2500
    call AddSignedBCToHL
    call Call_000_0f73
    call UpdatePlayerMoneyTileData
    ret


Jump_007_73c5:
    xor a
    ld [$b8fe], a
    ret


    ld a, [$cb72]
    or a
    jr nz, jr_007_73d6

    ld a, $01
    ld [$b899], a
    ret


jr_007_73d6:
    xor a
    ld [$b899], a
    ret


    ld a, [$cb72]
    or a
    jr nz, jr_007_73ec

    ld a, $01
    ld [$b89a], a
    ld a, $0a
    call Call_000_0f47
    ret


jr_007_73ec:
    xor a
    ld [$b89a], a
    ld a, $f6
    call Call_000_0f47
    ret


    call Call_000_3f26
    ld a, [sHouseExpansionFlag]
    cp $00
    jr z, jr_007_740a

    cp $01
    jr z, jr_007_7410

    ld a, $72
    ld [$c831], a
    ret


jr_007_740a:
    ld a, $5a
    ld [$c831], a
    ret


jr_007_7410:
    ld a, $83
    ld [$c831], a
    ret


    xor a
    ld [$b89a], a
    ld a, [sHouseExpansionFlag]
    cp $00
    jr z, jr_007_7447

    cp $01
    jr z, jr_007_7476

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


jr_007_7447:
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


jr_007_7476:
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
    jr nz, jr_007_74e6

    ld a, $01
    ld [$b88e], a
    ld hl, sPlayerMoney
    ld bc, $004b
    call AddSignedBCToHL
    call UpdatePlayerMoneyTileData
    ld a, $ff
    ld [wTextID], a
    xor a
    ld [$cb53], a
    ld [$cb54], a
    ld [$cb55], a
    xor a
    ld [wFreezePlayerInTextWindowOrInTown], a
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
    ld [wInputFreezeTimer], a
    ret


jr_007_74e6:
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
    jr nz, jr_007_7516

    ld a, $01
    xor a
    ld [$b88e], a
    ld hl, sPlayerMoney
    ld bc, -5
    call AddSignedBCToHL
    call UpdatePlayerMoneyTileData
    ld a, $14
    call Call_000_0f47
    ret


jr_007_7516:
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
    jp nz, Jump_007_754d

    ld a, [sSpriteFirstInteractionFlag]
    or a
    jr z, jr_007_7585

    call ClearOldTextOnTextBox
    ld hl, $cb53
    ld bc, $0081
    call AddBCtoWordAtHL
    xor a
    ld [$cb55], a
    jr jr_007_758d

    ret


Jump_007_754d:
    xor a
    ld [$b90a], a
    call Call_000_0fc7
    ld a, [sSpriteFirstInteractionFlag]
    or a
    jr nz, jr_007_757d

    call ClearOldTextOnTextBox
    ld a, $01
    ld [wTextID], a
    ld [$cb57], a
    call Call_000_3f0b
    xor a
    ld [$cb58], a
    ld [$cb55], a
    ld [$cb53], a
    ld [$cb54], a
    ld a, $01
    ld [wFreezePlayerInTextWindowOrInTown], a
    jr jr_007_7585

    ret


jr_007_757d:
    xor a
    ld [$b90a], a
    call Call_000_0fc7
    ret


jr_007_7585:
    xor a
    ld [$b90a], a
    call Call_000_0fc7
    ret


jr_007_758d:
    ld a, $01
    ld [$b90a], a
    call Call_000_0fc7
    call InitRealTimeClock
    ret


    call ClearOldTextOnTextBox
    ld a, $01
    ld [wTextID], a
    ld [$cb57], a
    call Call_000_3f0b
    xor a
    ld [$cb58], a
    ld [$cb53], a
    ld [$cb54], a
    ld [$cb55], a
    ld a, $01
    ld [wFreezePlayerInTextWindowOrInTown], a
    ret


    ld a, [$cb72]
    or a
    jr nz, jr_007_75c5

    xor a
    ld [$ba41], a
    ret


jr_007_75c5:
    ld a, $01
    ld [$ba41], a
    ret


    ld a, $01
    ld [wFreezePlayerInTextWindowOrInTown], a
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
    jr nz, jr_007_769d

    daa
    nop
    rlca
    jr jr_007_7689

    nop
    jr nc, jr_007_76b5

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

jr_007_7689:
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

jr_007_769d:
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

jr_007_76b5:
    di
    db $f4
    cp h
    ld d, d
    nop
    inc de
    ld bc, $5abd
    jr nz, jr_007_7700

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

jr_007_7700:
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

jr_007_7742:
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

jr_007_774f:
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
    jr nz, jr_007_7788

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

jr_007_7788:
    jr nz, jr_007_7796

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

jr_007_7796:
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
    jr nz, jr_007_77b5

    inc c
    ld a, [bc]
    inc hl
    ld e, $b5
    or [hl]
    or [hl]
    and h
    jr nz, jr_007_77d5

    inc c
    inc c

jr_007_77b5:
    dec bc
    daa
    jr nz, jr_007_7742

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
    jr nc, jr_007_774f

    ld [bc], a
    cpl
    nop
    ccf
    jr nz, jr_007_7815

jr_007_77d5:
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
    jr nc, jr_007_7832

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

jr_007_7815:
    ldh [rBGP], a
    ldh [rOBP0], a
    ldh [rOBP1], a
    ld hl, $786a
    call Call_000_23e9
    call Call_000_2424
    ld hl, $79f9
    call Call_000_23e9
    call Call_000_2424
    ld hl, $7a59
    ld b, $08

jr_007_7832:
    push hl
    push bc
    call Call_000_23e9
    call Call_000_2424
    pop bc
    pop hl
    ld de, $0010
    add hl, de
    dec b
    jr nz, jr_007_7832

    ld hl, $7d26
    ld a, $13
    ld de, $79d9
    call Call_000_24ea
    ld hl, $79da
    ld a, $10
    ld de, $79e9
    call Call_000_24ea
    xor a
    ldh [rBGP], a
    ldh [rOBP0], a
    ldh [rOBP1], a
    ld hl, $7a19
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
    ld [wLCDCTempStorage], a
    call ZeroOutHL
    call Call_000_2273
    call Call_000_2424
    call SafeTurnOffLCDDuringVBlank
    ld hl, $79f9
    call Call_000_23e9
    call Call_000_2424
    ld hl, $7ad9
    ld a, [wSTAT_HandlerIndex]
    cp $01
    jr z, jr_007_78c5

    cp $07
    jr z, jr_007_78c5

    cp $0f
    jr z, jr_007_78c5

    cp $25
    jr nz, jr_007_78cb

jr_007_78c5:
    ld hl, $7bd5
    ld a, [sCurrentSeason]

jr_007_78cb:
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

jr_007_78df:
    ld a, [hl+]
    ld [de], a
    inc de
    xor a
    ld [de], a
    inc de
    dec b
    jr nz, jr_007_78df

    ld a, [hl+]
    set 7, a
    ld [de], a
    inc de
    ld b, $06
    xor a

jr_007_78f0:
    ld [de], a
    inc de
    dec b
    jr nz, jr_007_78f0

    push hl
    ld hl, $c0aa
    call Call_000_23e9
    call Call_000_2424
    pop hl
    ld a, [wSTAT_HandlerIndex]
    cp $20
    jr z, jr_007_7983

    ld a, [$cb50]
    cp $20
    jr z, jr_007_7983

    ld b, [hl]
    ld a, [$dd01]
    cp b
    jp z, Jump_007_79cc

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
    ld [wLCDCTempStorage], a
    call ZeroOutHL
    call Call_000_2273
    call Call_000_2424
    call SafeTurnOffLCDDuringVBlank
    ld hl, $79f9
    call Call_000_23e9
    call Call_000_2424
    pop bc
    pop af
    add a
    add b
    ld hl, $7bed
    call Lookup3ByteTableEntry
    ld de, $7a29
    call Call_000_24ea
    ld a, [$dd01]
    ld b, a
    add a
    add b
    inc a
    ld hl, $7bed
    call Lookup3ByteTableEntry
    ld de, $7a39
    call Call_000_24ea
    ld a, [$dd01]
    ld b, a
    add a
    add b
    inc a
    inc a
    ld hl, $7bed
    call Lookup3ByteTableEntry
    ld de, $7a49
    call Call_000_24ea

jr_007_7983:
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
    ld hl, $7a19
    call Call_000_23e9
    call Call_000_2424
    call Call_000_2424
    call Call_000_2424
    call Call_000_2424
    ld hl, $79f9
    call Call_000_23e9
    call Call_000_2424
    call Call_000_2424
    call Call_000_2424

Jump_007_79c9:
    call Call_000_2424

Jump_007_79cc:
    ret


    ld a, [$dd00]
    or a
    ret z

    ld hl, $7a19
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
    nop
    nop
    nop
    nop
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
    jp z, Jump_007_7ec9

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
    jp z, Jump_007_79c9

    ld b, a
    ld [$0b00], sp
    call nz, $16d0
    and l
    set 1, c
    dec b
    ret nc

    db $10
    and d
    jr z, jr_007_7b23

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

jr_007_7b23:
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
    jr nc, jr_007_7b7f

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

jr_007_7b7f:
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

jr_007_7bba:
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
    jr c, jr_007_7c17

    nop
    ld bc, $3c3c
    inc a
    inc a
    nop
    ld bc, $4040
    ld b, b
    ld b, b
    nop
    ld bc, $5cc0
    jr nz, jr_007_7bba

    ld [hl], d
    ld e, $89
    ld a, c
    inc e
    ret nz

    ld e, h
    jr nz, @-$35

    ld [hl], d
    ld e, $9a
    ld a, e
    dec e
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

jr_007_7c17:
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
    jr nz, jr_007_7c48

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


jr_007_7c48:
    jr z, jr_007_7c73

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


    jr c, jr_007_7c9a

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

jr_007_7c73:
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

    call Call_007_7f45
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

jr_007_7c9a:
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
    jp c, $07db

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
    jr jr_007_7e2a

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
    call $4544
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

jr_007_7e2a:
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
    jr jr_007_7f06

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

Jump_007_7ec9:
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

jr_007_7f06:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_007_7f45:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
