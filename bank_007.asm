; Disassembly of "harvest_moon.gbc"
; This file was created with:
; mgbdis v2.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $007", ROMX[$4000], BANK[$7]

    db $07 ; bank number

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
    ld [wTextNavigator], a
    ld [wTextNavigator+1], a
    ld [wTextCharacterCounter], a
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
    ld [wTextNavigator], a
    ld [wTextNavigator+1], a
    ld [wTextCharacterCounter], a
    ret


Call_007_40e8:
    ld hl, $5061
    ld a, $05
    call BankSwitchCallHL
    call Call_007_4108
    call LoadCharacterTileIntoVRAM
    pop hl
    ret


Call_007_40f8:
    call Call_007_43fb
    call LoadCharacterTileIntoVRAM
    pop hl
    ret


Call_007_4100:
    call Call_007_4443
    call LoadCharacterTileIntoVRAM
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
    db $00, $00, $00, $00, $00, $00, $78, $70, $00, $00
    db "<DAY><SEASON>", $C8, $C9, $EE, $F0, $ED, $AB, "<A_OR_P>M ", $AC, $AD, $AE, $AF, $B0,
    db $F6, "   ", $B2, $B3, $B4, $B5, $B6, $06 
    done
Data_007_452c:
    db $00, $00, $00, $00, $00, $00, $78, $70, $00, $00
    db " Pet       Timer"
    db " Horse     Memo "
    done
Data_007_4557:
    db $00, $00, $00, $00, $00, $00, $78, $70, $00, $00
    db "Show the items  "
    db "that relate to ▽"
    prompt
    db $00, $00, $00, $00, $00, $00, $78, $70, $00, $00
    db "the A button?   "
    db " YES        NO  "
    done
Data_007_45ad:
    db $00, $00, $00, $00, $00, $00, $78, $70, $00, $00
    db $C8, $C9, $EE, $F0, $ED, $AB, $AA, $0C, $EF, $EF,
    db $EF, $EF, $EF, $EF, $EF, $EF, $D0, $D1, $D2, $D3, $D4, $D5, $D6, $D7, $D8, $F1,
    db $F2, $F3, $F4, $F5, $EF, $EF, $FF

INCLUDE "text/house.asm"

; Is this used in game? 
ElipsesText::
    db $00, $00, $00, $00, $00, $00, $78, $70, $00, $00
    db "…………………………………………"
    db "………………………………………."
    done

INCLUDE "text/farm.asm"

PicnicInvitationText::
    db $00, $00, $00, $00, $00, $00, $78, $70, $00, $00
    db "Hello. Tomorrow "
    db "morning we are ▽"
    prompt
    db $00, $00, $00, $00, $00, $00, $78, $70, $00, $00
    db "going on a      "
    db "picnic.        ▽"
    prompt
    db $00, $00, $00, $00, $00, $00, $78, $70, $00, $00
    db "Could we have it"
    db "here?          ▽"
    prompt
    db $01, $04, $06, $40, $4C, $00, $68, $71, $00, $00
    db "                "
    db " YES         NO "
    prompt

PicnicInvitationAcceptText::
    db $00, $00, $00, $00, $00, $00, $78, $70, $00, $00
    db "YEAH! That is   "
    db "great! We will ▽"
    prompt
    db $00, $00, $00, $00, $00, $00, $78, $70, $00, $00
    db "have lots of    "
    db "fun.            "
    done 

PicnicInvitationDeclineText::
    db $00, $00, $00, $00, $00, $00, $78, $70, $00, $00
    db "Really? Why...  "
    db "That's no fun!   "
    done 

MariaGoToPicnicText::
    db $00, $00, $00, $00, $00, $00, $78, $70, $00, $00
    db "Hello <PLAYER>.     "
    db "I hope you     ▽"
    prompt 
    db $00, $00, $00, $00, $00, $00, $78, $70, $00, $00
    db "weren't too     "
    db "busy.          ▽"
    prompt 
    db $00, $00, $00, $00, $00, $00, $79, $71, $00, $00
    db "Let's go on the  "
    db "picnic...       "
    prompt

EveJuicePicnicText::
    db $00, $00, $00, $00, $00, $00, $78, $70, $00, $00
    db "Hi <PLAYER>.        "
    db "This is        ▽"
    prompt
    db $00, $00, $00, $00, $00, $00, $78, $70, $00, $00
    db "Wild Grape      "
    db "Juice.         ▽"
    prompt 
    db $00, $00, $00, $00, $00, $00, $78, $70, $00, $00
    db "I know this is  "
    db "a little sweet,▽"
    prompt
    db $00, $00, $00, $00, $00, $00, $A8, $71, $00, $00
    db "but please have "
    db "some.           "
    prompt

    db $00, $00, $00, $00, $00, $00, $78, $70, $00, $00
    db "I made too many "
    db "cookies for the▽"
    prompt
    db $00, $00, $00, $00, $00, $00, $78, $70, $00, $00
    db "Harvest Festival"
    db "<PLAYER>,I would   ▽"
    prompt
    db $00, $00, $00, $00, $00, $00, $E2, $71, $00, $00
    db "like you to have"
    db "them.           "
    prompt 

    db $00, $00, $00, $00, $00, $00, $78, $70, $00, $00
    db "Oh No!          "
    db "Oh No! My bird ▽"
    prompt

    db $00, $00, $00, $00, $00, $00, $78, $70, $00, $00
    db "ran away.       "
    db "Please help me ▽"
    prompt

    db $01, $03, $05, $40, $4C, $00, $05, $72, $00, $00
    db "find him?       "
    db " YES         NO "
    prompt 
; Yes option
    db $00, $00, $00, $00, $00, $00, $78, $70, $00, $00
    db "Thank You.      "
    db "Please let me  ▽"
    prompt
    db $00, $00, $00, $00, $00, $00, $78, $70, $00, $00
    db "know as soon as "
    db "you find him.   "
    done
; No option
    db $00, $00, $00, $00, $00, $00, $78, $70, $00, $00
    db "Oh, I didn't    "
    db "know you were  ▽"
    prompt 
    db $00, $00, $00, $00, $00, $00, $78, $70, $00, $00
    db "busy.           "
    db "I am sorry.     "
    done 

    db $00, $00, $00, $00, $00, $00, $78, $70, $00, $00
    db "Oh I'm sorry... "
    db "Do you want to ▽"
    prompt
    db $00, $00, $00, $00, $00, $00, $78, $70, $00, $00
    db "be free?        "
    db "               ▽"
    prompt
    db $00, $00, $00, $00, $00, $00, $78, $70, $00, $00
    db "Well, thank you "
    db "for being with ▽"
    prompt
    db $00, $00, $00, $00, $00, $00, $3D, $72, $00, $00
    db "me, go and be   "
    db "free now...    ▽"
    prompt
    db $00, $00, $00, $00, $00, $00, $3E, $72, $00, $00
    db "Good bye...     "
    db "I'm not sad.   ▽"
    prompt
    db $00, $00, $00, $00, $00, $00, $49, $72, $00, $00
    db "I will be OK... "
    db "Thank you for  ▽"
    prompt
    db $00, $00, $00, $00, $00, $00, $78, $70, $00, $00
    db "helping me find "
    db "my bird...     ▽"
    prompt
    db $00, $00, $00, $00, $00, $00, $5C, $72, $00, $00
    db "Well, good bye. "
    db "                "
    prompt 



    db $00, $00, $00, $00, $00, $00, $78, $70, $00, $00
    db "<PLAYER>. The hurri-"
    db "cane yesterday ▽"
    prompt
    db $00, $00, $00, $00, $00, $00, $78, $70, $00, $00
    db "was strong.     "
    db "I lost my      ▽"
    prompt
    db $00, $00, $00, $00, $00, $00, $78, $70, $00, $00
    db "weather vain du-"
    db "ring the storm,▽"
    prompt
    db $00, $00, $00, $00, $00, $00, $78, $70, $00, $00
    db "did you see it? "
    db "It might have  ▽"
    prompt
    db $00, $00, $00, $00, $00, $00, $78, $70, $00, $00,
    db "been blown      "
    db "somewhere on   ▽"
    prompt
    db $00, $00, $00, $00, $00, $00, $78, $70, $00, $00
    db "your ranch...   "
    db "Could you help ▽"
    prompt
    db $01, $07, $09, $40, $4C, $00, $73, $72, $00, $00
    db "me find it?     "
    db " YES         NO "
    prompt 
    db $00, $00, $00, $00, $00, $00, $78, $70, $00, $00
    db "Thank you, <PLAYER> "
    db "That's why I    ▽"
    prompt 
    db $00, $00, $00, $00, $00, $00, $78, $70, $00, $00
    db "like you <PLAYER>.  "
    db "                "
    done 
    db $00, $00, $00, $00, $00, $00, $78, $70, $00, $00
    db "What!           "
    db "I was a fool   ▽"
    prompt 
    db $00, $00, $00, $00, $00, $00, $78, $70, $00, $00
    db "for asking you! "
    db "                "
    done 

    db $00, $00, $00, $00, $00, $00, $78, $70, $00, $00
    db "Oh, did you find"
    db "it? Good job.  ▽"
    prompt
    db $00, $00, $00, $00, $00, $00, $78, $70, $00, $00
    db $13, $21, $22, $2C, $EF, $30, $1E, $1A, $2D, $21, $1E, $2B, $2F, $1A, $27, $1E
    db $22, $2C, $EF, $1A, $EF, $26, $1E, $26, $1E, $27, $2D, $28, $EF, $EF, $EF, $E9
    prompt 
    db $00, $00, $00, $00, $00, $00, $78, $70, $00, $00
    db $1F, $2B, $28, $26, $EF, $26, $32, $EF, $26, $28, $2D, $21, $1E, $2B, $4C, $EF
    db $13, $21, $1A, $27, $24, $EF, $32, $28, $2E, $EF, $1F, $28, $2B, $EF, $EF, $E9
    prompt
    db $00, $00, $00, $00, $00, $00, $B0, $72, $00, $00
    db $1F, $1A, $22, $27, $1D, $22, $27, $20, $EF, $22, $2D, $4C, $EF, $EF, $EF, $EF
    db $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF
    prompt
    db $00, $00, $00, $00, $00, $00, $78, $70, $00, $00
    db $08, $EF, $26, $1A, $1D, $1E, $EF, $1A, $EF, $27, $1E, $30, $EF, $EF, $EF, $EF
    db $24, $22, $27, $1D, $EF, $28, $1F, $EF, $1F, $2B, $2E, $22, $2D, $EF, $EF, $E9
    prompt 
    db $00, $00, $00, $00, $00, $00,
    db $C5, $71, $00, $00, $23, $2E, $22, $1C, $1E, $4C, $EF, $16, $28, $2E, $25, $1D,
    db $EF, $32, $28, $2E, $25, $22, $24, $1E, $EF, $2D, $28, $EF, $2D, $2B, $32, $EF,
    db $22, $2D, $41, $E9, $FE, $00, $00, $00, $00, $00, $00, $78, $70, $00, $00, $08,
    db $2D, $EF, $22, $2C, $EF, $26, $1A, $1D, $1E, $EF, $1F, $2B, $28, $26, $EF, $30,
    db $22, $25, $1D, $EF, $20, $2B, $1A, $29, $1E, $2C, $8E, $EF, $EF, $EF, $E9, $FE,
    db $00, $00, $00, $00, $00, $00, $78, $70, $00, $00, $25, $1E, $26, $28, $27, $2C,
    db $8E, $EF, $21, $28, $27, $1E, $32, $8E, $EF, $EF, $1A, $29, $29, $25, $1E, $2C,
    db $8E, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $E9, $FE, $00, $00, $00, $00, $00,
    db $00, $78, $70, $00, $00, $1C, $2B, $1A, $27, $1B, $1E, $2B, $2B, $22, $1E, $2C,
    db $8E, $EF, $EF, $EF, $EF, $1F, $22, $20, $2C, $8E, $EF, $24, $22, $30, $22, $2C,
    db $8E, $EF, $EF, $EF, $E9, $FE, $00, $00, $00, $00, $00, $00, $78, $70, $00, $00,
    db $1A, $27, $1D, $EF, $25, $22, $26, $1E, $2C, $4C, $EF, $16, $28, $2E, $25, $1D,
    db $32, $28, $2E, $EF, $25, $22, $24, $1E, $EF, $1A, $EF, $EF, $EF, $EF, $EF, $E9,
    db $FE, $01, $05, $09, $40, $4C, $00, $CC, $72, $00, $00, $20, $25, $1A, $2C, $2C,
    db $EF, $28, $1F, $EF, $23, $2E, $22, $1C, $1E, $41, $EF, $EF, $18, $04, $12, $EF,
    db $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $0D, $0E, $EF, $FE, $00, $00, $00, $00,
    db $00, $00, $78, $70, $00, $00, $0E, $21, $EF, $13, $21, $1A, $27, $24, $EF, $32,
    db $28, $2E, $8E, $EF, $08, $EF, $30, $1A, $2C, $EF, $30, $28, $27, $1D, $1E, $2B,
    db $22, $27, $20, $EF, $EF, $E9, $FE, $00, $00, $00, $00, $00, $00, $78, $70, $00,
    db $00, $21, $28, $30, $EF, $22, $2D, $EF, $30, $28, $2E, $25, $1D, $EF, $EF, $EF,
    db $EF, $2D, $1A, $2C, $2D, $1E, $4C, $EF, $08, $2D, $EF, $30, $22, $25, $25, $EF,
    db $E9, $FE, $00, $00, $00, $00, $00, $00, $78, $70, $00, $00, $1B, $1E, $EF, $22,
    db $27, $EF, $2D, $21, $1E, $EF, $2C, $2D, $28, $2B, $1E, $2C, $2C, $28, $28, $27,
    db $8E, $EF, $29, $25, $1E, $1A, $2C, $1E, $EF, $EF, $EF, $E9, $FE, $00, $00, $00,
    db $00, $00, $00, $78, $70, $00, $00, $25, $28, $28, $24, $EF, $1F, $28, $2B, $EF,
    db $22, $2D, $4C, $EF, $EF, $EF, $EF, $07, $1A, $EF, $21, $1A, $EF, $21, $1A, $4C,
    db $EF, $EF, $EF, $EF, $EF, $EF, $EF, $FF, $00, $00, $00, $00, $00, $00, $78, $70,
    db $00, $00, $07, $2E, $21, $8E, $EF, $2B, $1E, $1A, $25, $25, $32, $41, $EF, $08,
    db $2C, $EF, $22, $2D, $EF, $2C, $2D, $2B, $1A, $27, $20, $1E, $4C, $4C, $4C, $EF,
    db $EF, $E9, $FE, $00, $00, $00, $00, $00, $00, $78, $70, $00, $00, $08, $EF, $2D,
    db $21, $28, $2E, $20, $21, $2D, $EF, $22, $2D, $EF, $EF, $EF, $EF, $30, $28, $2E,
    db $25, $1D, $EF, $2D, $1A, $2C, $2D, $1E, $EF, $EF, $EF, $EF, $E9, $FE, $00, $00,
    db $00, $00, $00, $00, $78, $70, $00, $00, $20, $28, $28, $1D, $54, $EF, $1B, $2E,
    db $2D, $EF, $2D, $21, $1A, $27, $24, $EF, $32, $28, $2E, $EF, $1A, $27, $32, $30,
    db $1A, $32, $4C, $EF, $EF, $EF, $EF, $E9, $FE, $00, $00, $00, $00, $00, $00, $78,
    db $70, $00, $00, $08, $EF, $30, $22, $25, $25, $EF, $2D, $2B, $32, $EF, $EF, $EF,
    db $EF, $EF, $EF, $1A, $20, $1A, $22, $27, $4C, $4C, $4C, $EF, $EF, $EF, $EF, $EF,
    db $EF, $EF, $EF, $FF, $00, $00, $00, $00, $00, $00, $78, $70, $00, $00, $18, $28,
    db $2E, $EF, $30, $28, $2B, $24, $EF, $21, $1A, $2B, $1D, $EF, $EF, $EF, $1E, $2F,
    db $1E, $2B, $32, $1D, $1A, $32, $8E, $EF, $A0, $A1, $A2, $A3, $4C, $E9, $FE, $00,
    db $00, $00, $00, $00, $00, $78, $70, $00, $00, $03, $28, $EF, $32, $28, $2E, $EF,
    db $21, $1A, $2F, $1E, $EF, $1A, $EF, $EF, $EF, $16, $1A, $2D, $1E, $2B, $EF, $02,
    db $1A, $27, $41, $EF, $EF, $EF, $EF, $EF, $E9, $FE, $00, $00, $00, $00, $00, $00,
    db $78, $70, $00, $00, $08, $EF, $1C, $1A, $27, $EF, $26, $1A, $24, $1E, $EF, $1A,
    db $EF, $EF, $EF, $EF, $12, $29, $2B, $22, $27, $24, $25, $1E, $2B, $EF, $1B, $32,
    db $EF, $EF, $EF, $E9, $FE, $00, $00, $00, $00, $00, $00, $78, $70, $00, $00, $26,
    db $28, $1D, $22, $1F, $32, $22, $27, $20, $EF, $1A, $EF, $EF, $EF, $EF, $EF, $30,
    db $1A, $2D, $1E, $2B, $EF, $1C, $1A, $27, $4C, $EF, $EF, $EF, $EF, $EF, $E9, $FE,
    db $00, $00, $00, $00, $00, $00, $78, $70, $00, $00, $08, $EF, $27, $1E, $1E, $1D,
    db $EF, $3B, $1D, $1A, $32, $2C, $EF, $2D, $28, $EF, $1C, $28, $26, $29, $25, $1E,
    db $2D, $1E, $EF, $2D, $21, $1E, $EF, $EF, $EF, $E9, $FE, $00, $00, $00, $00, $00,
    db $00, $78, $70, $00, $00, $2C, $29, $2B, $22, $27, $24, $25, $1E, $2B, $4C, $EF,
    db $0C, $1A, $24, $1E, $EF, $2C, $2E, $2B, $1E, $EF, $32, $28, $2E, $EF, $1C, $28,
    db $26, $1E, $EF, $EF, $E9, $FE, $00, $00, $00, $00, $00, $00, $78, $70, $00, $00,
    db $1A, $27, $1D, $EF, $1B, $2E, $32, $EF, $28, $27, $1E, $4C, $EF, $EF, $EF, $EF,
    db $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF,
    db $FF, $00, $00, $00, $00, $00, $00, $78, $70, $00, $00, $07, $1E, $32, $40, $40,
    db $EF, $A0, $A1, $A2, $A3, $4C, $EF, $EF, $EF, $EF, $EF, $12, $28, $EF, $2D, $21,
    db $22, $2C, $EF, $22, $2C, $EF, $2D, $21, $1E, $EF, $E9, $FE, $00, $00, $00, $00,
    db $00, $00, $78, $70, $00, $00, $21, $28, $2E, $2C, $1E, $EF, $32, $28, $2E, $EF,
    db $30, $1A, $27, $2D, $EF, $EF, $2D, $28, $EF, $1E, $31, $29, $1A, $27, $1D, $4C,
    db $4C, $4C, $EF, $EF, $EF, $E9, $FE, $00, $00, $00, $00, $00, $00, $78, $70, $00,
    db $00, $16, $1E, $25, $25, $4C, $4C, $4C, $32, $28, $2E, $EF, $27, $1E, $1E, $1D,
    db $EF, $E8, $FB, $EA, $EB, $06, $EF, $1A, $27, $1D, $EF, $EF, $EF, $EF, $EF, $EF,
    db $E9, $FE, $00, $00, $00, $00, $00, $00, $78, $70, $00, $00, $EF, $E5, $E6, $E7,
    db $EF, $26, $1A, $2D, $1E, $2B, $22, $1A, $25, $2C, $EF, $EF, $12, $21, $1A, $25,
    db $25, $EF, $08, $EF, $1E, $31, $29, $1A, $27, $1D, $EF, $E9, $FE, $01, $05, $0B,
    db $40, $4C, $00, $0C, $73, $00, $00, $2D, $21, $1E, $EF, $21, $28, $2E, $2C, $1E,
    db $41, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $18, $04, $12, $EF, $EF, $EF, $EF, $EF,
    db $EF, $EF, $EF, $EF, $0D, $0E, $EF, $FE, $00, $00, $00, $00, $00, $00, $78, $70,
    db $00, $00, $00, $25, $2B, $22, $20, $21, $2D, $40, $EF, $08, $2D, $EF, $30, $22,
    db $25, $25, $2D, $1A, $24, $1E, $EF, $26, $1E, $EF, $37, $EF, $1D, $1A, $32, $2C,
    db $EF, $E9, $FE, $00, $00, $00, $00, $00, $00, $78, $70, $00, $00, $2D, $28, $EF,
    db $1C, $28, $26, $29, $25, $1E, $2D, $1E, $8E, $EF, $EF, $EF, $EF, $2C, $2D, $1A,
    db $2B, $2D, $22, $27, $20, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $E9, $FE, $00, $00,
    db $00, $00, $00, $00, $78, $70, $00, $00, $2D, $28, $26, $28, $2B, $2B, $28, $30,
    db $4C, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF,
    db $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $FF, $00, $00, $00, $00, $00, $00, $78,
    db $70, $00, $00, $16, $1A, $22, $2D, $EF, $28, $27, $1E, $EF, $26, $22, $27, $2E,
    db $2D, $1E, $40, $18, $28, $2E, $EF, $1D, $28, $27, $4B, $2D, $EF, $21, $1A, $2F,
    db $1E, $EF, $E9, $FE, $00, $00, $00, $00, $00, $00, $78, $70, $00, $00, $1E, $27,
    db $28, $2E, $20, $21, $EF, $2D, $28, $EF, $1D, $28, $EF, $2D, $21, $1E, $23, $28,
    db $1B, $4C, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $E9, $FE, $00,
    db $00, $00, $00, $00, $00, $78, $70, $00, $00, $08, $2D, $EF, $1C, $1A, $27, $4B,
    db $2D, $EF, $1B, $1E, $EF, $1D, $28, $27, $1E, $27, $28, $30, $4C, $EF, $12, $1E,
    db $1E, $EF, $32, $1A, $4C, $EF, $EF, $EF, $EF, $FF, $00, $00, $00, $00, $00, $00,
    db $78, $70, $00, $00, $0E, $21, $8E, $EF, $08, $EF, $2C, $1E, $1E, $4C, $EF, $EF,
    db $EF, $EF, $EF, $EF, $01, $32, $1E, $EF, $2D, $21, $1E, $27, $4C, $EF, $EF, $EF,
    db $EF, $EF, $EF, $EF, $FF, $00, $00, $00, $00, $00, $00, $78, $70, $00, $00, $A0,
    db $A1, $A2, $A3, $4C, $4C, $4C, $EF, $07, $1A, $2F, $1E, $EF, $32, $28, $2E, $2C,
    db $1E, $1E, $27, $EF, $0D, $22, $27, $1A, $41, $EF, $EF, $EF, $EF, $EF, $E9, $FE,
    db $00, $00, $00, $00, $00, $00, $78, $70, $00, $00, $12, $21, $1E, $EF, $21, $1A,
    db $2C, $27, $4B, $2D, $EF, $1C, $28, $26, $1E, $EF, $1B, $1A, $1C, $24, $EF, $21,
    db $28, $26, $1E, $EF, $2C, $22, $27, $1C, $1E, $E9, $FE, $00, $00, $00, $00, $00,
    db $00, $78, $70, $00, $00, $32, $1E, $2C, $2D, $1E, $2B, $1D, $1A, $32, $4C, $4C,
    db $4C, $EF, $EF, $EF, $EF, $08, $EF, $24, $27, $28, $30, $EF, $32, $28, $2E, $EF,
    db $1A, $2B, $1E, $EF, $E9, $FE, $00, $00, $00, $00, $00, $00, $78, $70, $00, $00,
    db $1B, $2E, $2C, $32, $8E, $EF, $1B, $2E, $2D, $EF, $1C, $28, $2E, $25, $1D, $EF,
    db $32, $28, $2E, $EF, $29, $25, $1E, $1A, $2C, $1E, $EF, $21, $1E, $25, $29, $E9,
    db $FE, $01, $05, $08, $40, $4C, $00, $CA, $73, $00, $00, $1F, $22, $27, $1D, $EF,
    db $21, $1E, $2B, $4C, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $18, $04, $12, $EF,
    db $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $0D, $0E, $EF, $FE, $00, $00, $00, $00,
    db $00, $00, $78, $70, $00, $00, $08, $EF, $30, $22, $25, $25, $EF, $20, $28, $EF,
    db $1C, $21, $1E, $1C, $24, $EF, $21, $1E, $2B, $EF, $21, $28, $2E, $2C, $1E, $4C,
    db $EF, $EF, $EF, $EF, $EF, $E9, $FE, $00, $00, $00, $00, $00, $00, $78, $70, $00,
    db $00, $A0, $A1, $A2, $A3, $8E, $EF, $1C, $28, $2E, $25, $1D, $EF, $32, $28, $2E,
    db $EF, $1C, $21, $1E, $1C, $24, $EF, $1A, $2B, $28, $2E, $27, $1D, $EF, $EF, $EF,
    db $E9, $FE, $00, $00, $00, $00, $00, $00, $78, $70, $00, $00, $32, $28, $2E, $2B,
    db $EF, $2B, $1A, $27, $1C, $21, $4C, $4C, $4C, $EF, $EF, $EF, $EF, $EF, $EF, $EF,
    db $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $FF, $00, $00, $00,
    db $00, $00, $00, $78, $70, $00, $00, $A0, $A1, $A2, $A3, $8E, $EF, $22, $2C, $EF,
    db $32, $28, $2E, $2B, $EF, $EF, $EF, $2B, $1A, $27, $1C, $21, $EF, $30, $28, $2B,
    db $24, $EF, $26, $28, $2B, $1E, $E9, $FE, $00, $00, $00, $00, $00, $00, $78, $70,
    db $00, $00, $22, $26, $29, $28, $2B, $2D, $1A, $27, $2D, $41, $EF, $EF, $EF, $EF,
    db $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF,
    db $EF, $E9, $FE, $00, $00, $00, $00, $00, $00, $78, $70, $00, $00, $08, $EF, $2C,
    db $1E, $1E, $4C, $4C, $4C, $2D, $21, $1E, $27, $EF, $30, $21, $32, $1D, $28, $27,
    db $4B, $2D, $EF, $32, $28, $2E, $EF, $20, $28, $EF, $EF, $EF, $E9, $FE, $00, $00,
    db $00, $00, $00, $00, $78, $70, $00, $00, $25, $1A, $32, $EF, $1A, $27, $EF, $1E,
    db $20, $20, $40, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF,
    db $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $FF, $00, $00, $00, $00, $00, $00, $78,
    db $70, $00, $00, $A0, $A1, $A2, $A3, $4C, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF,
    db $EF, $EF, $EF, $1C, $1A, $27, $EF, $08, $EF, $29, $25, $1E, $1A, $2C, $1E, $EF,
    db $EF, $EF, $E9, $FE, $00, $00, $00, $00, $00, $00, $78, $70, $00, $00, $2C, $2D,
    db $1A, $32, $EF, $1A, $2D, $EF, $32, $28, $2E, $2B, $EF, $EF, $EF, $EF, $2B, $1A,
    db $27, $1C, $21, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $E9, $FE, $01,
    db $03, $05, $40, $4C, $00, $DB, $73, $00, $00, $1F, $28, $2B, $EF, $1A, $EF, $30,
    db $21, $22, $25, $1E, $41, $EF, $EF, $EF, $EF, $EF, $18, $04, $12, $EF, $EF, $EF,
    db $EF, $EF, $EF, $EF, $EF, $EF, $0D, $0E, $EF, $FE, $00, $00, $00, $00, $00, $00,
    db $78, $70, $00, $00, $13, $21, $1A, $27, $24, $EF, $32, $28, $2E, $EF, $2F, $1E,
    db $2B, $32, $EF, $EF, $26, $2E, $1C, $21, $EF, $1F, $28, $2B, $EF, $32, $28, $2E,
    db $2B, $EF, $EF, $E9, $FE, $00, $00, $00, $00, $00, $00, $78, $70, $00, $00, $24,
    db $22, $27, $1D, $27, $1E, $2C, $2C, $4C, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF,
    db $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $FF,
    db $00, $00, $00, $00, $00, $00, $78, $70, $00, $00, $11, $1E, $1A, $25, $25, $32,
    db $41, $EF, $08, $EF, $2C, $1E, $1E, $4C, $EF, $EF, $08, $4B, $26, $EF, $2C, $28,
    db $2B, $2B, $32, $8E, $EF, $EF, $EF, $EF, $EF, $E9, $FE, $00, $00, $00, $00, $00,
    db $00, $78, $70, $00, $00, $08, $EF, $1A, $2C, $24, $1E, $1D, $EF, $1F, $28, $2B,
    db $EF, $2D, $28, $28, $EF, $26, $2E, $1C, $21, $4C, $EF, $EF, $EF, $EF, $EF, $EF,
    db $EF, $EF, $EF, $EF, $EF, $FF, $00, $00, $00, $00, $00, $00, $78, $70, $00, $00,
    db $08, $EF, $24, $27, $28, $30, $EF, $2B, $1A, $27, $1C, $21, $EF, $EF, $EF, $EF,
    db $30, $28, $2B, $24, $EF, $22, $2C, $EF, $1D, $22, $1F, $1F, $22, $44, $EF, $E9,
    db $FE, $00, $00, $00, $00, $00, $00, $78, $70, $00, $00, $1C, $2E, $25, $2D, $EF,
    db $1B, $2E, $2D, $EF, $24, $1E, $1E, $29, $EF, $2E, $29, $2D, $21, $1E, $EF, $20,
    db $28, $28, $1D, $EF, $30, $28, $2B, $24, $4C, $EF, $EF, $FF, $00, $00, $00, $00,
    db $00, $00, $78, $70, $00, $00, $0C, $1A, $2B, $22, $1A, $8E, $EF, $EF, $EF, $EF,
    db $EF, $EF, $EF, $EF, $EF, $EF, $08, $EF, $1A, $26, $EF, $2C, $28, $2B, $2B, $32,
    db $4C, $EF, $EF, $EF, $EF, $E9, $FE, $00, $00, $00, $00, $00, $00, $78, $70, $00,
    db $00, $0F, $25, $1E, $1A, $2C, $1E, $EF, $1C, $28, $26, $1E, $EF, $EF, $EF, $EF,
    db $EF, $1B, $1A, $1C, $24, $4C, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF,
    db $E9, $FE, $00, $00, $00, $00, $00, $00, $78, $70, $00, $00, $0D, $28, $8E, $EF,
    db $08, $EF, $1A, $26, $EF, $27, $28, $2D, $EF, $EF, $EF, $EF, $2B, $1E, $1A, $1D,
    db $32, $EF, $2D, $28, $EF, $20, $1E, $2D, $EF, $EF, $EF, $E9, $FE, $00, $00, $00,
    db $00, $00, $00, $78, $70, $00, $00, $26, $1A, $2B, $2B, $22, $1E, $1D, $EF, $32,
    db $1E, $2D, $4C, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF,
    db $EF, $EF, $EF, $EF, $EF, $EF, $E9, $FE, $00, $00, $00, $00, $00, $00, $78, $70,
    db $00, $00, $16, $21, $32, $41, $EF, $13, $21, $1E, $2B, $1E, $EF, $22, $2C, $EF,
    db $EF, $EF, $27, $28, $EF, $28, $27, $1E, $EF, $1B, $1E, $2D, $2D, $1E, $2B, $EF,
    db $EF, $E9, $FE, $00, $00, $00, $00, $00, $00, $78, $70, $00, $00, $2D, $21, $1A,
    db $27, $EF, $21, $22, $26, $EF, $2D, $28, $EF, $EF, $EF, $EF, $EF, $26, $1A, $2B,
    db $2B, $32, $4C, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $E9, $FE, $00, $00,
    db $00, $00, $00, $00, $78, $70, $00, $00, $08, $EF, $1D, $28, $EF, $27, $28, $2D,
    db $EF, $25, $22, $24, $1E, $EF, $EF, $EF, $32, $28, $2E, $2B, $EF, $30, $1A, $32,
    db $EF, $28, $1F, $EF, $EF, $EF, $EF, $E9, $FE, $00, $00, $00, $00, $00, $00, $78,
    db $70, $00, $00, $2D, $21, $22, $27, $24, $22, $27, $20, $8E, $EF, $EF, $EF, $EF,
    db $EF, $EF, $EF, $1F, $1A, $2D, $21, $1E, $2B, $4C, $EF, $EF, $EF, $EF, $EF, $EF,
    db $EF, $EF, $E9, $FE, $00, $00, $00, $00, $00, $00, $78, $70, $00, $00, $0C, $1A,
    db $2B, $22, $1A, $8E, $EF, $1C, $28, $26, $1E, $EF, $1B, $1A, $1C, $24, $21, $28,
    db $26, $1E, $EF, $1A, $27, $1D, $EF, $30, $1E, $EF, $EF, $EF, $EF, $E9, $FE, $00,
    db $00, $00, $00, $00, $00, $F6, $73, $00, $00, $30, $22, $25, $25, $EF, $1D, $22,
    db $2C, $1C, $2E, $2C, $2C, $EF, $22, $2D, $4C, $EF, $EF, $EF, $EF, $EF, $EF, $EF,
    db $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $E9, $FF, $00, $00, $00, $00, $00, $00,
    db $78, $70, $00, $00, $A0, $A1, $A2, $A3, $8E, $EF, $08, $EF, $30, $22, $25, $25,
    db $EF, $1B, $1E, $EF, $20, $28, $22, $27, $20, $EF, $21, $28, $26, $1E, $EF, $27,
    db $28, $30, $4C, $E9, $FE, $00, $00, $00, $00, $00, $00, $78, $70, $00, $00, $13,
    db $21, $1A, $27, $24, $EF, $32, $28, $2E, $EF, $2F, $1E, $2B, $32, $EF, $EF, $26,
    db $2E, $1C, $21, $EF, $1F, $28, $2B, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $E9, $FE,
    db $00, $00, $00, $00, $00, $00, $16, $74, $00, $00, $25, $1E, $2D, $2D, $22, $27,
    db $20, $EF, $26, $1E, $EF, $2C, $2D, $1A, $32, $EF, $1A, $2D, $EF, $32, $28, $2E,
    db $2B, $EF, $2B, $1A, $27, $1C, $21, $4C, $EF, $EF, $FE, $00, $00, $00, $00, $00,
    db $00, $78, $70, $00, $00, $0C, $32, $EF, $20, $2B, $1A, $27, $1D, $26, $1A, $EF,
    db $2D, $28, $25, $1D, $EF, $26, $1E, $EF, $2D, $28, $EF, $1B, $2E, $32, $EF, $1A,
    db $27, $EF, $EF, $EF, $E9, $FE, $00, $00, $00, $00, $00, $00, $78, $70, $00, $00,
    db $1E, $20, $20, $4C, $EF, $02, $28, $2E, $25, $1D, $EF, $32, $28, $2E, $EF, $EF,
    db $29, $25, $1E, $1A, $2C, $1E, $EF, $2C, $1E, $25, $25, $EF, $26, $1E, $EF, $E9,
    db $FE, $01, $00, $03, $40, $4C, $00, $98, $74, $00, $00, $1A, $27, $EF, $1E, $20,
    db $20, $41, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $18, $04, $12, $EF,
    db $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $0D, $0E, $EF, $FE, $00, $00, $00, $00,
    db $00, $00, $78, $70, $00, $00, $0E, $21, $EF, $27, $28, $40, $EF, $EF, $EF, $EF,
    db $EF, $EF, $EF, $EF, $EF, $EF, $0C, $32, $EF, $20, $2B, $1A, $27, $1D, $26, $1A,
    db $EF, $30, $22, $25, $25, $E9, $FE, $00, $00, $00, $00, $00, $00, $78, $70, $00,
    db $00, $1B, $1E, $EF, $1A, $27, $20, $2B, $32, $EF, $30, $22, $2D, $21, $EF, $EF,
    db $EF, $26, $1E, $40, $40, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF,
    db $EF, $FF, $00, $00, $00, $00, $00, $00, $78, $70, $00, $00, $07, $1E, $2B, $1E,
    db $EF, $22, $2C, $EF, $3B, $39, $06, $EF, $1F, $28, $2B, $EF, $2D, $21, $1E, $EF,
    db $1E, $20, $20, $4C, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $E9, $FE, $00, $00, $00,
    db $00, $00, $00, $EB, $74, $00, $00, $13, $21, $1A, $27, $24, $EF, $32, $28, $2E,
    db $EF, $1A, $27, $1D, $EF, $EF, $EF, $2C, $1E, $1E, $EF, $32, $28, $2E, $EF, $25,
    db $1A, $2D, $1E, $2B, $4C, $EF, $EF, $FE, $00, $00, $00, $00, $00, $00, $78, $70,
    db $00, $00, $08, $EF, $1B, $1E, $25, $22, $1E, $2F, $1E, $EF, $08, $EF, $29, $1A,
    db $22, $1D, $2D, $28, $28, $EF, $26, $2E, $1C, $21, $EF, $1F, $28, $2B, $EF, $EF,
    db $EF, $E9, $FE, $00, $00, $00, $00, $00, $00, $78, $70, $00, $00, $2D, $21, $1E,
    db $EF, $1E, $20, $20, $4C, $EF, $16, $28, $2E, $25, $1D, $EF, $EF, $32, $28, $2E,
    db $EF, $29, $25, $1E, $1A, $2C, $1E, $EF, $20, $22, $2F, $1E, $E9, $FE, $01, $03,
    db $04, $40, $4C, $00, $F8, $74, $00, $00, $26, $1E, $EF, $26, $32, $EF, $1C, $21,
    db $1A, $27, $20, $1E, $41, $EF, $EF, $EF, $EF, $18, $04, $12, $EF, $EF, $EF, $EF,
    db $EF, $EF, $EF, $EF, $EF, $0D, $0E, $EF, $FE, $00, $00, $00, $00, $00, $00, $78,
    db $70, $00, $00, $13, $21, $1A, $27, $24, $EF, $32, $28, $2E, $4C, $EF, $EF, $EF,
    db $EF, $EF, $EF, $12, $1E, $1E, $EF, $32, $28, $2E, $EF, $25, $1A, $2D, $1E, $2B,
    db $4C, $EF, $EF, $FF, $00, $00, $00, $00, $00, $00, $78, $70, $00, $00, $0E, $21,
    db $EF, $27, $28, $40, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $16, $21,
    db $1A, $2D, $EF, $30, $22, $25, $25, $EF, $08, $EF, $1D, $28, $41, $E9, $FE, $00,
    db $00, $00, $00, $00, $00, $78, $70, $00, $00, $0C, $32, $EF, $20, $2B, $1A, $27,
    db $1D, $26, $1A, $EF, $EF, $EF, $EF, $EF, $EF, $30, $22, $25, $25, $EF, $1B, $1E,
    db $EF, $1A, $27, $20, $2B, $32, $EF, $EF, $E9, $FE, $00, $00, $00, $00, $00, $00,
    db $78, $70, $00, $00, $30, $22, $2D, $21, $EF, $26, $1E, $40, $40, $EF, $EF, $EF,
    db $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF,
    db $EF, $EF, $EF, $EF, $FF, $00, $00, $00, $00, $00, $00, $78, $70, $00, $00, $07,
    db $22, $EF, $A0, $A1, $A2, $A3, $4C, $EF, $04, $2F, $1E, $2B, $32, $1D, $44, $1A,
    db $32, $EF, $22, $2C, $EF, $2C, $28, $EF, $21, $28, $2D, $4C, $4C, $4C, $E9, $FE,
    db $00, $00, $00, $00, $00, $00, $78, $70, $00, $00, $08, $EF, $23, $2E, $2C, $2D,
    db $EF, $2C, $2D, $28, $29, $29, $1E, $1D, $EF, $EF, $1B, $32, $EF, $2D, $28, $EF,
    db $1E, $2C, $1C, $1A, $29, $1E, $EF, $EF, $EF, $E9, $FE, $00, $00, $00, $00, $00,
    db $00, $78, $70, $00, $00, $1F, $2B, $28, $26, $EF, $2D, $21, $1E, $EF, $21, $1E,
    db $1A, $2D, $4C, $EF, $EF, $0F, $25, $1E, $1A, $2C, $1E, $EF, $23, $28, $22, $27,
    db $EF, $26, $1E, $EF, $E9, $FE, $00, $00, $00, $00, $00, $00, $20, $75, $00, $00,
    db $A0, $A1, $A2, $A3, $4C, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF,
    db $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF,
    db $FE, $00, $00, $00, $00, $00, $00, $78, $70, $00, $00, $06, $28, $28, $1D, $EF,
    db $1E, $2F, $1E, $27, $22, $27, $20, $4C, $EF, $EF, $EF, $16, $21, $1A, $2D, $EF,
    db $1A, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $E9, $FE, $00, $00, $00, $00,
    db $00, $00, $78, $70, $00, $00, $1B, $1E, $1A, $2E, $2D, $22, $1F, $2E, $25, $EF,
    db $26, $28, $28, $27, $EF, $EF, $2D, $28, $27, $22, $20, $21, $2D, $4C, $EF, $EF,
    db $EF, $EF, $EF, $EF, $EF, $E9, $FE, $00, $00, $00, $00, $00, $00, $20, $75, $00,
    db $00, $04, $2F, $1E, $2B, $32, $28, $27, $1E, $EF, $22, $2C, $EF, $21, $1E, $2B,
    db $1E, $27, $28, $30, $8E, $EF, $25, $1E, $2D, $53, $EF, $20, $28, $4C, $EF, $EF,
    db $EF, $FE, $00, $00, $00, $00, $00, $00, $78, $70, $00, $00, $08, $2D, $53, 

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









;;;;;; REAL CODE BELOW HERE!



    ld a, [$cb72]
    or a
    ret nz

    ld a, $ff
    ld [wTextID], a

jr_007_7083:
    xor a
    ld [wTextNavigator], a
    ld [wTextCharacterCounter], a
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
    ld [wTextNavigator], a
    ld [wTextCharacterCounter], a
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
    ld [wTextNavigator], a
    ld [wTextCharacterCounter], a
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
    ld [wTextNavigator], a
    ld [wTextNavigator+1], a
    ld [wTextCharacterCounter], a
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
    ld [wTextNavigator], a
    ld [wTextNavigator+1], a
    ld [wTextCharacterCounter], a
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

    ld a, [sNumberOfFencePosts]
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

    ld a, [sNumberOfFencePosts]
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
    ld hl, wTextNavigator
    ld bc, $0081
    call AddBCtoWordAtHL
    xor a
    ld [wTextCharacterCounter], a
    ld [$b8fe], a
    ret


jr_007_7387:
    ld a, $02
    ld [$b8fe], a
    ld a, [sHouseExpansionFlag]
    cp $00
    jr z, jr_007_73ac

    ld hl, sNumberOfFencePosts
    ld bc, -300
    call AddBCtoWordAtHL
    ld hl, sPlayerMoney
    ld bc, -5000
    call AddSignedBCToHL
    call Call_000_0f73
    call UpdatePlayerMoneyTileData
    ret


jr_007_73ac:
    ld hl, sNumberOfFencePosts
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
    ld [wTextNavigator], a
    ld [wTextNavigator+1], a
    ld [wTextCharacterCounter], a
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
    ld hl, wTextNavigator
    ld bc, $0081
    call AddBCtoWordAtHL
    xor a
    ld [wTextCharacterCounter], a
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
    ld [wTextCharacterCounter], a
    ld [wTextNavigator], a
    ld [wTextNavigator+1], a
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
    ld [wTextNavigator], a
    ld [wTextNavigator+1], a
    ld [wTextCharacterCounter], a
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
