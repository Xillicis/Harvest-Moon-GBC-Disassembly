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
    call DrawMaskedClippedTile
    ld hl, $4001
    ld c, $0b
    ld de, $9000
    call DrawMaskedClippedTile
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
    call LoadPlayerSpriteID
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
    call LoadPlayerSpriteID
    ret


Jump_007_4203:
    ld a, $03
    ld [$c613], a
    xor a
    ld [$c611], a
    ld a, $00
    ld [wPlayerFacingDirection], a
    ld a, $4c
    call LoadPlayerSpriteID
    ret


Jump_007_4217:
    ld a, $04
    ld [$c613], a
    xor a
    ld [$c611], a
    ld a, $00
    ld [wPlayerFacingDirection], a
    ld a, $14
    call LoadPlayerSpriteID
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
    ld [wHeldObject], a
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
    ld hl, Data_007_4288
    ld de, $c600
    ld b, $10
    call CopyHLtoDE
    xor a
    ld [$c613], a
    ld [$c611], a
    ret

Data_007_4288:
    ld bc, rJOYP
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    and b
    jr z, $4295
    ld bc, $0001

Call_007_4298:
    push hl
    push af
    callfar2 UploadPetPalette
    pop af
    pop hl
    push hl
    push af
    callfar2 Label_01f_7819
    pop af
    pop hl
    ld hl, Label_007_75d2
    ld c, $07
    ld de, $9800
    call DrawMaskedClippedTile
    ld a, $a8
    ld [$cb5c], a
    ld a, $d9
    ld [$cb5d], a
    ld [$cb5e], a
; an unnecessary callfar (bank switch) since its calling the home bank
    callfar LoadTextBoxTilesIntoBGMap1
    ld a, $15
    call LoadPlayerSpriteID
    ld a, FACING_LEFT
    ld [wPlayerFacingDirection], a
    ld a, $e0
    ld [$c60a], a
    ld a, $28
    ld [$c60b], a
    ld a, $1f
    call Call_000_16d1
    ld a, 1
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
    call DrawMaskedClippedTile
    ld a, $a8
    ld [$cb5c], a
    ld a, $d9
    ld [$cb5d], a
    ld [$cb5e], a
    callfar LoadTextBoxTilesIntoBGMap1
    ld a, $4a
    call LoadPlayerSpriteID
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
    callfar2 Call_005_483e
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
    call DrawMaskedClippedTile
    ld hl, $6acc
    ld c, $05
    ld de, $9000
    call DrawMaskedClippedTile
    ld hl, $69ed
    ld c, $05
    ld de, $9800
    call DrawMaskedClippedTile
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
    callfar Call_005_44a2
    ld a, $4a
    call LoadPlayerSpriteID
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

INCLUDE "text/text_1.asm"

Text_DoNothing: ; 07x7078
    ret

Label_007_7079:
    ld a, [wYesOrNo]
    or a
    ret nz

    ld a, $ff
    ld [wTextID], a
    xor a
    ld [wTextNavigator], a
    ld [wTextCharacterCounter], a
    xor a
    ld [wFreezePlayerInTextWindowOrInTown], a
    ld [wTextBoxIsDisplayed], a
    call EnableDisplay_GameplayMode
    xor a
    ld [$cb58], a
    ld [$cb57], a
    ld a, $50
    ld [$cb73], a
    ld [wInputFreezeTimer], a
    call Call_000_0f0f
    ret

Text_GoToSleep:
    ld a, [wYesOrNo]
    or a
    jr nz, .noSleep

    ld a, $ff
    ld [wTextID], a
    xor a
    ld [wTextNavigator], a
    ld [wTextCharacterCounter], a
    xor a
    ld [wFreezePlayerInTextWindowOrInTown], a
    ld [wTextBoxIsDisplayed], a
    call EnableDisplay_GameplayMode
    xor a
    ld [$cb58], a
    ld [$cb57], a
    ld a, $50
    ld [$cb73], a
    ld [wInputFreezeTimer], a
    call Call_000_0f0f
    xor a
    ld [$b890], a
    ld [sFindWeatherVaneFlag], a
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

.noSleep
    call Call_000_3f26
    ret

Label_007_70f9:
    ld a, [wYesOrNo]
    or a
    jr nz, jr_007_712a

    ld a, $ff
    ld [wTextID], a
    xor a
    ld [wTextNavigator], a
    ld [wTextCharacterCounter], a
    xor a
    ld [wFreezePlayerInTextWindowOrInTown], a
    ld [wTextBoxIsDisplayed], a
    call EnableDisplay_GameplayMode
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

Label_007_712e:
    ld a, [wYesOrNo]
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
    ld [wTextBoxIsDisplayed], a
    call EnableDisplay_GameplayMode
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

Text_PicnicInvitation:
    ld a, [wYesOrNo]
    or a
    jr nz, .declineInvitation
    ld a, 1
    ld [sGoOnPicnicFlag], a
    ret

.declineInvitation
    xor a
    ld [sGoOnPicnicFlag], a
    ret

Text_HeadToPicnic:
    xor a
    ld [sGoOnPicnicFlag], a
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
    ld [wTextBoxIsDisplayed], a
    call EnableDisplay_GameplayMode
    xor a
    ld [$cb58], a
    ld [$cb57], a
    ret

Label_007_71a8:
    ld a, $3c
    ld [wInputFreezeTimer], a
    ld a, $ff
    ld [$cb8d], a
    ld a, $8e
    call LoadPlayerSpriteID
    call Call_000_3f26
    ld a, $01
    ld [$cbf6], a
    ld b, $1e
    call $1ae6
    ret

Label_007_71c5:
    ld a, $02
    ld [$cbf6], a
    ld a, $3c
    ld [wInputFreezeTimer], a
    ld a, $ff
    ld [$cb8d], a
    ld a, $8e
    call LoadPlayerSpriteID
    ld b, $1e
    call $1ae6
    call Call_000_3f26
    ret

Label_007_71e2:
    ld a, $60
    ld [wInputFreezeTimer], a
    ld a, $06
    ld [$cb8d], a
    ld a, $20
    call LoadPlayerSpriteID
    call Call_000_3f26
    ld a, $01
    ld [$cbf6], a
    ld a, [sPlayerMaxEnergy]
    srl a
    srl a
    ld b, a
    call $1ae6
    ret

Label_007_7205:
    ld a, [wYesOrNo]
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

Text_DoNothing2: ; 07x723d
    ret

Label_007_723e:
    ld a, $01
    ld [$c76c], a
    ld a, $ff
    ld [wInputFreezeTimer], a
    ret

Label_007_7249:
    ld a, $04
    ld [$c811], a
    ld a, $02
    ld [$c813], a
    ld a, $01
    ld [$c810], a
    call Call_000_3f26
    ret

Label_007_725c:
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

Text_FindWeatherVane: ; 07x7273
    ld a, [wYesOrNo]
    or a
    jr nz, jr_007_72ab

    ld a, 1
    ld [sFindWeatherVaneFlag], a
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
    ld [sFindWeatherVaneFlag], a
    ret

Label_007_72b0:
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


    ld a, [wYesOrNo]
    or a
    jr nz, jr_007_72d8

    ld a, $0a
    call Call_000_0f47
    ret

jr_007_72d8:
    ld a, $f6
    call Call_000_0f47
    ret

Label_007_72de:
    ld a, [wYesOrNo]
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

Text_HouseExpansion:
    ld a, [wYesOrNo]
    or a
    jp nz, DeclineHouseExpansion

    ld a, [sHouseExpansionFlag]
    cp 0
    jr z, .firstHouseExpansion

; Requires 300 materials for second house expansion
    ld a, [sNumberOfFencePosts+1]
    cp $02
    jr nc, .secondHouseExpansion
    cp $00
    jr z, .cantDoHouseExpansion
    ld a, [sNumberOfFencePosts]
    cp $2c
    jr nc, .secondHouseExpansion
    jr .cantDoHouseExpansion

.secondHouseExpansion
    ld a, [sPlayerMoney+2]
    cp $00
    jr nz, .doHouseExpansion
    ld a, [sPlayerMoney+1]
    cp $14
    jr nc, .doHouseExpansion
    cp $13
    jr c, .cantDoHouseExpansion
    ld a, [sPlayerMoney]
    cp $88
    jr nc, .doHouseExpansion
    jr .cantDoHouseExpansion

.firstHouseExpansion
    ld a, [sNumberOfFencePosts+1]
    or a
    jr nz, .checkFirstExpansionCost
    ld a, [sNumberOfFencePosts]
    cp 100
    jr nc, .checkFirstExpansionCost
    jr .cantDoHouseExpansion

; I think it costs 2500
.checkFirstExpansionCost
    ld a, [sPlayerMoney+2]
    cp $00
    jr nz, .doHouseExpansion
    ld a, [sPlayerMoney+1]
    cp $0a
    jr nc, .doHouseExpansion
    cp $09
    jr c, .cantDoHouseExpansion
    ld a, [sPlayerMoney]
    cp $c4
    jr nc, .doHouseExpansion
    jr .cantDoHouseExpansion

.cantDoHouseExpansion
    call ClearOldTextOnTextBox
    ld hl, wTextNavigator
    ld bc, 3 * TEXT_BLOCK_BYTE_LENGTH
    call AddBCtoWordAtHL
    xor a
    ld [wTextCharacterCounter], a
    ld [$b8fe], a
    ret

.doHouseExpansion
    ld a, $02
    ld [$b8fe], a
    ld a, [sHouseExpansionFlag]
    cp 0
    jr z, .doFirstHouseExpansion

    ld hl, sNumberOfFencePosts
    ld bc, -300
    call AddBCtoWordAtHL
    ld hl, sPlayerMoney
    ld bc, -5000
    call AddSignedBCToHL
    call Call_000_0f73
    call UpdatePlayerMoneyTileData
    ret

.doFirstHouseExpansion
    ld hl, sNumberOfFencePosts
    ld bc, -100
    call AddBCtoWordAtHL
    ld hl, sPlayerMoney
    ld bc, -2500
    call AddSignedBCToHL
    call Call_000_0f73
    call UpdatePlayerMoneyTileData
    ret

DeclineHouseExpansion:
    xor a
    ld [$b8fe], a
    ret

Label_007_73ca:
    ld a, [wYesOrNo]
    or a
    jr nz, .jr_007_73d6
    ld a, $01
    ld [$b899], a
    ret
.jr_007_73d6
    xor a
    ld [$b899], a
    ret

Label_007_73db:
    ld a, [wYesOrNo]
    or a
    jr nz, .jr_007_73ec
    ld a, $01
    ld [$b89a], a
    ld a, $0a
    call Call_000_0f47
    ret

.jr_007_73ec
    xor a
    ld [$b89a], a
    ld a, $f6
    call Call_000_0f47
    ret

Label_007_73f6:
    call Call_000_3f26
    ld a, [sHouseExpansionFlag]
    cp 0
    jr z, .jr_007_740a
    cp 1
    jr z, .jr_007_7410
    ld a, $72
    ld [$c831], a
    ret

.jr_007_740a
    ld a, $5a
    ld [$c831], a
    ret

.jr_007_7410
    ld a, $83
    ld [$c831], a
    ret

Label_007_7416:
    xor a
    ld [$b89a], a
    ld a, [sHouseExpansionFlag]
    cp 0
    jr z, jr_007_7447
    cp 1
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

Label_007_7498:
    ld a, [wYesOrNo]
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
    ld [wTextBoxIsDisplayed], a
    call EnableDisplay_GameplayMode
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

Label_007_74eb:
    call Call_000_3f26
    xor a
    ld [$c813], a
    ld a, $01
    ld [$cbf6], a
    ret

Label_007_74f8:
    ld a, [wYesOrNo]
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

Label_007_7520:
    call Call_000_3f26
    ld a, $02
    ld [$c813], a
    ret

Label_007_7529:
    xor a
    ld [wTextBoxIsDisplayed], a
    ld a, [wYesOrNo]
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

Label_007_7599:
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

Label_007_75ba:
    ld a, [wYesOrNo]
    or a
    jr nz, jr_007_75c5

    xor a
    ld [$ba41], a
    ret


jr_007_75c5:
    ld a, $01
    ld [$ba41], a
    ret

Label_007_75cb:
    ld a, $01
    ld [wFreezePlayerInTextWindowOrInTown], a
    ret

Label_007_75d1:
    ret

Label_007_75d2:
    db $00, $04, $E6, $13, $00, $01, $01, $AF, $01, $B3, $01, $A6, $A6, $01, $7A, $12,
    db $00, $A6, $10, $00, $00, $00, $05, $06, $AD, $03, $EB, $A7, $A7, $03, $02, $A7,
    db $10, $00, $00, $00, $15, $01, $16, $AF, $05, $25, $00, $01, $04, $1F, $00, $07,
    db $02, $01, $04, $1F, $00, $00, $0F, $04, $4B, $08, $0F, $04, $4B, $08, $0D, $04,
    db $21, $0C, $69, $0C, $0D, $04, $F8, $21, $0C, $69, $0C, $E3, $0F, $21, $22, $23,
    db $60, $A6, $E7, $A6, $03, $04, $0F, $0A, $E3, $11, $31, $32, $33, $DF, $70, $A7,
    db $A7, $13, $14, $0F, $02, $01, $01, $FF, $07, $08, $01, $01, $41, $42, $43, $2F,
    db $FC, $01, $14, $2F, $04, $01, $01, $17, $18, $01, $01, $0F, $BA, $BB, $C9, $3F,
    db $01, $14, $2F, $04, $81, $17, $45, $00, $63, $20, $40, $27, $00, $07, $18, $27,
    db $00, $30, $50, $27, $00, $00, $0B, $1E, $87, $1B, $2F, $1C, $4B, $13, $2F, $1C,
    db $1F, $00, $1F, $00, $1F, $00, $00, $1F, $00, $1F, $00, $1F, $00, $1F, $00, $1F,
    db $00, $1F, $00, $1F, $00, $1F, $00, $00, $1F, $00, $1F, $00, $1F, $00, $1F, $00,
    db $1F, $00, $1F, $00, $1F, $00, $1F, $00, $00, $1F, $00, $1F, $00, $1F, $00, $1F,
    db $00, $1F, $00, $1F, $00, $1F, $00, $17, $00, $00, $04, $FD, $BD, $12, $00, $5A,
    db $F0, $F1, $F2, $F3, $F4, $BC, $52, $00, $13, $01, $BD, $5A, $20, $40, $02, $02,
    db $AA, $6A, $12, $00, $7D, $07, $02, $7C, $24, $01, $30, $50, $02, $04, $8F, $B0,
    db $B1, $B1, $B2, $0B, $02, $24, $01, $04, $04, $E9, $BF, $69, $6A, $F8, $E8, $E8,
    db $6D, $07, $06, $6C, $BC, $24, $01, $04, $04, $B3, $79, $7A, $B4, $00, $06, $C6,
    db $2F, $C7, $C8, $E6, $E7, $52, $00, $7C, $24, $01, $04, $08, $FF, $B7, $6B, $7B,
    db $B8, $B6, $B6, $B9, $D6, $2F, $D7, $D8, $F6, $F7, $52, $00, $B5, $24, $01, $04,
    db $08, $37, $00, $01, $01, $B5, $0C, $07, $08, $29, $01, $04, $0C, $26, $08, $02,
    db $17, $18, $29, $03, $04, $0C, $01, $1F, $00, $0A, $04, $00, $DF, $01, $04, $02,
    db $05, $08, $29, $08, $99, $15, $05, $08, $0F, $02, $93, $17, $5A, $04, $14, $04,
    db $23, $0C, $AB, $AC, $14, $00, $AD, $51, $19, $AF, $05, $06, $05, $06, $04, $18,
    db $14, $23, $0E, $BC, $7A, $15, $00, $59, $51, $1B, $15, $16, $15, $16, $0B, $08,
    db $E0, $0B, $02, $21, $04, $0B, $08, $0D, $02, $07, $04, $05, $06, $01, $87, $01,
    db $05, $06, $70, $20, $31, $06, $A0, $20, $0D, $0C, $15, $1F, $16, $01, $01, $15,
    db $16, $60, $1F, $A1, $22, $A0, $20, $0C, $0C, $0C, $02, $04, $00, $00, $60, $21,
    db $A4, $20, $0F, $04, $04, $02, $27, $B3, $69, $6A, $A1, $1E, $0C, $10, $09, $23,
    db $1C, $01, $02, $74, $A3, $20, $0C, $0C, $0A, $23, $1E, $B5, $B6, $B6, $A4, $20,
    db $22, $0C, $0C, $0B, $27, $20, $89, $16, $06, $14, $1C, $0F, $02, $0B, $10, $00,
    db $39, $1E, $E9, $03, $09, $1C, $0D, $02, $E1, $17, $04, $30, $80, $02, $2F, $00,
    db $3F, $20, $40, 

Label_007_77d5:
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

;;;; Not sure where the real code is...

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
