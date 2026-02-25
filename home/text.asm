MACRO text_pointer
    dw \1
    db BANK(\1)
ENDM

TextPointerTable: ; 00x3421
    text_pointer Data_007_4501
    text_pointer Data_007_452c
    text_pointer Data_007_4557
    text_pointer Data_007_4557
    text_pointer Data_007_45ad
    text_pointer GoToSleepText
    text_pointer ExchangeText
    text_pointer ExchangeText
    text_pointer StoveTopText
    text_pointer MoneyInDresserText
    text_pointer EmptyDresserText
    text_pointer Data_007_4786
    text_pointer SpringSunnyDayText
    text_pointer SpringRainyDayText
    text_pointer SummerSunnyDayText
    text_pointer SummerRainyDayText
    text_pointer AutumnSunnyDayText
    text_pointer AutumnRainyDayText
    text_pointer WinterSunnyDayText
    text_pointer WinterSnowyDayText
    text_pointer HurricaneText
    text_pointer HurricaneText
    text_pointer TooLateText1
    text_pointer TooLateText2
    text_pointer ShippingBoxText
    text_pointer FencePostShedText
    text_pointer FencePostShedText
    text_pointer StableSignText
    text_pointer SiloSignText
    text_pointer CalendarText
    text_pointer HorseIsLostText
    text_pointer ProduceShippedText
    text_pointer NoShipmentText
    text_pointer CarpenterEarthquakeText
    text_pointer PicnicInvitationText
    text_pointer MariaGoToPicnicText
    text_pointer EveJuicePicnicText
    text_pointer CookiesText
    text_pointer RescueBirdText
    text_pointer FoundBirdText
    text_pointer BirdFlewAwayThankYouText
    text_pointer FindWeatherVaneText
    text_pointer FoundWeatherVaneText
    text_pointer NewJuiceText
    text_pointer MakeSprinklerText
    text_pointer MakeSprinklerText
    text_pointer UpgradeHousePropositionText
    text_pointer FindNinaText
    text_pointer VisitorStayAtRanchText
    text_pointer RanchWorkIsToughText
    text_pointer MariaMarriageText
    text_pointer VisitorLeavingText
    text_pointer ChildBuyEggText
    text_pointer SellEggText
    text_pointer ChildGiveChangeText
    text_pointer HotDayVisitText
    text_pointer NameMe_Text
    text_pointer DeluxeWoodHouseCompleteText
    text_pointer UltraDeluxeWoodHouseCompleteText
    text_pointer HappyNewYearText
    text_pointer HarvestSpriteHelpText
    text_pointer Tutorial_ShippingBoxText1
    text_pointer Tutorial_ShippingBoxText2
    text_pointer Tutorial_SiloText1
    text_pointer Tutorial_SiloText2
    text_pointer Tutorial_ShedText1
    text_pointer Tutorial_ShedText2
    text_pointer Tutorial_ShedText3
    db $59, $4B, $07 ; this is between previous text chunks maybe forgotten pointer
    db $A1, $6F, $07
    db $22, $70, $07
    db $AF, $4B, $07
    text_pointer Tutorial_ShippingBoxText3
    text_pointer Tutorial_ChickenCoop
    text_pointer Tutorial_CowBarn
    db $9D, $6D, $07
    text_pointer Tutorial_TiredText
    text_pointer AtMyBook_Text
    db $1E, $6E, $07
    db $49, $6E, $07
    db $74, $6E, $07
    db $9F, $6E, $07
    text_pointer RanchMasterMarkText
    db $F4, $58, $07
    text_pointer BlankText_ret
    text_pointer BlankText_ret
    text_pointer BlankText_ret
    text_pointer BlankText_ret
    text_pointer BlankText_ret
    text_pointer BlankText_ret
    text_pointer BlankText_ret
    text_pointer BlankText_ret
    text_pointer BlankText_ret
    text_pointer BlankText_ret
    text_pointer BlankText_ret
    text_pointer BlankText_ret
    text_pointer BlankText_ret
    text_pointer BlankText_ret
    text_pointer BlankText_ret
    text_pointer BlankText_ret
    text_pointer BlankText_ret
    text_pointer BlankText_ret
    text_pointer BlankText_ret
    text_pointer BlankText_ret
    text_pointer BlankText_ret
    text_pointer BlankText_ret
    text_pointer BlankText_ret
    text_pointer BlankText_ret
    text_pointer BlankText_ret
    text_pointer BlankText_ret
    text_pointer BlankText_ret
    text_pointer BlankText_ret
    text_pointer BlankText_ret
    text_pointer BlankText_ret
    text_pointer BlankText_ret
    text_pointer BlankText_ret
    text_pointer BlankText_ret
    text_pointer BlankText_ret
    text_pointer BlankText_ret
    text_pointer BlankText_ret
    text_pointer BlankText_ret
    text_pointer BlankText_ret
    text_pointer BlankText_ret
    text_pointer BlankText_ret
    text_pointer BlankText_ret
    text_pointer BlankText_ret
    text_pointer BlankText_ret
    text_pointer BlankText_ret
    text_pointer BlankText_ret
    text_pointer BlankText_ret
    text_pointer BlankText_ret
    text_pointer BlankText_ret
    text_pointer BlankText_ret
    text_pointer BlankText_ret
    text_pointer BlankText_ret
    text_pointer BlankText_ret
    text_pointer BlankText_ret
    text_pointer BlankText_ret
    text_pointer BlankText_ret
    text_pointer BlankText_ret
    text_pointer BlankText_ret
    text_pointer BlankText_ret
    text_pointer BlankText_ret
    text_pointer BlankText_ret
    text_pointer BlankText_ret
    text_pointer BlankText_ret
    text_pointer BlankText_ret
    text_pointer BlankText_ret
    text_pointer BlankText_ret
    text_pointer BlankText_ret
    text_pointer BlankText_ret
    text_pointer BlankText_ret
    text_pointer BlankText_ret
    text_pointer BlankText_ret
    text_pointer BlankText_ret
    text_pointer BlankText_ret
    text_pointer BlankText_ret
    text_pointer BlankText_ret
    text_pointer BlankText_ret
    text_pointer BlankText_ret
    text_pointer Intro_ShippingMilkText
    text_pointer Intro_CowBirthText
    text_pointer Intro_FodderText
    text_pointer Intro_FeedingStallText
    text_pointer Intro_ShippingEggText
    text_pointer Intro_HatchEggText
    text_pointer HelloCowText
    text_pointer CowBirthDateText
    text_pointer CowIsSickText
    text_pointer BabyCowIsBornText
    text_pointer HellowCowText_duplicate
    text_pointer CowBirthDateText_duplicate
    text_pointer CowIsSickText_duplicate
    text_pointer BabyCowIsBornText_duplicate
    text_pointer Text_4781
    text_pointer DontThrowObjectsText
    text_pointer PickaxPassThroughText
    text_pointer HarvestSpriteIntroText
    text_pointer HarvestSpriteHowdyText
    text_pointer HarvestSpriteEarthquakeText
    text_pointer HarvestSpriteBeautifulGoddessText
    text_pointer HarvestSpriteGoodEveningText
    text_pointer HarvestSpriteEarthquake2Text
    text_pointer HarvestGoddessIsFriendlyText
    text_pointer HarvestSpriteFishingRodText
    text_pointer HarvestSpriteGoodMorningText
    text_pointer HarvestSpriteStillShakingText
    text_pointer HarvestSpriteSeeTheHarvestGoddessText
    text_pointer ThanksText
    db $B8, $4D, $0A,
    text_pointer AttackHarvestSpriteText
    text_pointer HarvestSpriteSickleQuestionText
    db $8D, $6D, $0C,
    db $E7, $6F, $0C,
    db $16, $72, $0C,
    db $6C, $72, $0C,
    db $ED, $72, $0C,
    db $70, $74, $0C,
    db $72, $75, $0C,
    db $22, $78, $0C,
    db $CE, $78, $0C,
    db $0A, $51, $0A,
    db $A5, $79, $0C,
    db $26, $7A, $0C,
    db $7C, $7A, $0C,
    db $D2, $7A, $0C,
    db $FD, $7A, $0C,
    db $53, $7B, $0C,
    db $A9, $7B, $0C,
    db $2A, $7C, $0C,
    db $80, $7C, $0C,
    db $B4, $50, $0A,
    db $9B, $57, $10,
    db $1C, $58, $10,
    db $72, $58, $10,
    db $F3, $58, $10,
    db $49, $59, $10,
    db $9F, $59, $10,
    db $F5, $59, $10,
    db $4B, $5A, $10,
    db $A1, $5A, $10,
    db $22, $5B, $10,
    db $A3, $5B, $10,
    db $24, $5C, $10,
    db $7A, $5C, $10,
    db $D0, $5C, $10,
    db $26, $5D, $10,
    db $7C, $5D, $10,
    db $D2, $5D, $10,
    db $28, $5E, $10,
    db $D4, $5E, $10,
    db $82, $60, $10,
    db $AD, $60, $10,
    db $D8, $60, $10,
    db $03, $61, $10,
    db $2E, $61, $10,
    db $5E, $50, $0A,
    db $89, $50, $0A,
    db $3B, $54, $0A,
    db $66, $54, $0A,
    db $59, $61, $10, 

LoadCharacterTileIntoVRAM:
    ld a, [$cb14]
    or a
    ret nz
    ld a, [$cb15]
    or a
    ret nz
    ld a, [$cb16]
    or a
    ret nz
    ld a, [$cb17]
    or a
    ret nz
    ld a, [$cb18]
    or a
    ret nz
    ld a, [$cb19]
    or a
    ret nz

    call Call_000_38fb
    ld a, [wTextID]
    cp $ff
    jp z, Jump_000_383d

    ld a, [wTextID]
    cp $3c
    call z, Call_000_38c1

    ld a, [wTextID]
    ld [wTempTextID], a
    ld l, a
    ld h, $00
    add hl, hl
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld de, TextPointerTable
    add hl, de
    ld a, [MBC3SRamBank]
    ldh [hROMBankTemp], a
    inc hl
    inc hl
    ld a, [hld]
    ld [MBC3RomBank], a
    dec hl
    ld a, [hl+]
    ld c, a
    ld a, [hl]
    ld h, a
    ld l, c
    ld a, [wTextNavigator+1]
    ld d, a
    ld a, [wTextNavigator]
    ld e, a
    add hl, de
    ld a, [wTextCharacterCounter]
    or a
    call z, InitializeTextData
    ld a, [hl]
    cp "<DONE>"
    jr z, jr_000_37d7
    cp "<PROMPT>"
    jp z, Jump_000_3804
    cp " "
    jr z, .loadCharacter
    cp "▽"
    jr z, .loadCharacter
    cp $a0
    jr c, .loadCharacter

; This routine here loads the text byte from SRAM addresses for use in the text.
; So for example, printing the Player's name or the Pet's name, etc...
    push bc
    ld a, [hl]
    ld b, a
    push hl
    push af
    callfar2 GetSRAMText
    pop af
    pop hl
    ld a, c
    ld l, a
    ld a, b
    ld h, a
    pop bc

.loadCharacter
    ld a, [hl]
    cp " "
    jr z, .done

    ld c, a ; tile index (source)
    ld a, [wTextCharacterCounter]
    or $80
    ld e, a ; tile index (destination)
    push af
    ld hl, TextFontTileset
    ld a, BANK(TextFontTileset)
    ld d, a
    call BankedSyncCopyTileToVRAM
    pop af
    ld b, a
    ld [$cb63], a
    ld a, $ff
    ld [$cb64], a
    ld de, $cb63
    ld a, b
    and $10
    sla a
    sla a
    ld hl, vBGMap1 + $22
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, b
    and $0f
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    call Call_000_0a93

.done
    ld hl, wTextNavigator
    ld bc, $0001
    call AddBCtoWordAtHL
    ld hl, wTextCharacterCounter
    inc [hl]
    ldh a, [hROMBankTemp]
    ld [MBC3RomBank], a
    ret

jr_000_37d7:
    ld a, [wTextID]
    cp $04
    jr nz, .endText
    call Call_000_3e1a

.endText
    ld a, $ff
    ld [wTextID], a
    xor a
    ld [wTextNavigator], a
    ld [wTextNavigator+1], a
    ld [wTextCharacterCounter], a
    ld a, [wTextPointer]
    ld l, a
    ld a, [wTextPointer+1]
    ld h, a
    ld a, [MBC3SRamBank]
    call BankSwitchCallHL
    ldh a, [hROMBankTemp]
    ld [MBC3RomBank], a
    ret

Jump_000_3804:
    ld a, [wPlayerTextInputFlag]
    or a
    jr z, jr_000_3813

    call Call_000_396d
    ldh a, [hROMBankTemp]
    ld [MBC3RomBank], a
    ret

jr_000_3813:
    ldh a, [$ff8b]
    and $01
    jr z, jr_000_3837

    call ClearOldTextOnTextBox
    ld hl, wTextNavigator
    ld bc, $0001
    call AddBCtoWordAtHL
    xor a
    ld [wTextCharacterCounter], a
    ld a, [wTextPointer]
    ld l, a
    ld a, [wTextPointer+1]
    ld h, a
    ld a, [MBC3SRamBank]
    call BankSwitchCallHL

jr_000_3837:
    ldh a, [hROMBankTemp]
    ld [MBC3RomBank], a
    ret

Jump_000_383d:
    ld a, [wFreezePlayerInTextWindowOrInTown]
    or a
    ret z

    ld a, [wTVIsTurnedOn]
    or a
    ret nz

    ld a, [wTempTextID]
    cp $ff
    ret z

    ldh a, [$ff8b]
    and $02
    jr nz, jr_000_3854
    ret

jr_000_3854:
    ld a, [wTempTextID]
    cp $00
    jr z, jr_000_3871

    ld a, [wTempTextID]
    cp $01
    jr z, jr_000_387f

    ld a, [wTempTextID]
    cp $3c
    jr z, jr_000_389b

    ld a, [wTempTextID]
    cp $03
    jr z, jr_000_389b
    ret

jr_000_3871:
    call Call_000_3f26
    ld a, $ff
    ld [wTempTextID], a
    ld a, $51
    call Call_000_25cb
    ret

Call_000_387f:
jr_000_387f:
    call Call_000_3f26
    xor a
    call InitializeTextIDAndDisplay
    xor a
    ld [$cb58], a
    ld [$cb57], a
    ld [wTextBoxIsDisplayed], a
    ld a, $ff
    ld [wTempTextID], a
    ld a, $51
    call Call_000_25cb
    ret

jr_000_389b:
    ld a, $01
    call InitializeTextIDAndDisplay
    xor a
    ld [$cb58], a
    ld [wTextBoxIsDisplayed], a
    ld a, $ff
    ld [wTempTextID], a
    xor a
    ld [wTextBoxIsDisplayed], a
    ld a, $01
    ld [$cb57], a
    ld a, [$cbea]
    ld [$b906], a
    ld a, $51
    call Call_000_25cb
    ret

Call_000_38c1:
    ld a, [wTextCharacterCounter]
    cp $20
    ret nz

    ldh a, [$ff8b]
    and $02
    ret z

    ld a, $ff
    ld [wTextID], a
    ld a, $01
    call InitializeTextIDAndDisplay
    xor a
    ld [$cb58], a
    ld [wTextCharacterCounter], a
    ld [wTextNavigator], a
    ld [wTextNavigator+1], a
    ld [wTextBoxIsDisplayed], a
    ld a, $ff
    ld [wTempTextID], a
    xor a
    ld [wTextBoxIsDisplayed], a
    ld a, $01
    ld [$cb57], a
    pop hl
    ld a, $51
    call Call_000_25cb
    ret

Call_000_38fb:
    ld a, [$cbeb]
    or a
    ret z

    ld a, [$c0a8]
    and $01
    ret z

    ld a, [$cbeb]
    dec a
    ld [$cbeb], a
    or a
    ret nz

    call Call_000_3f26
    ret

InitializeTextData: ; 00x3913
    ld a, [wTextNavigator]
    add 10 ;
    ld [wTextNavigator], a
    ld a, [wTextNavigator+1]
    adc $00
    ld [wTextNavigator+1], a
    ld a, [hl+]
    ld [wPlayerTextInputFlag], a
    ld a, [hl+]
    ld [wYesTextBlockJump], a
    ld a, [hl+]
    ld [wNoTextBlockJump], a
    ld a, [hl+]
    ld [$cb6c], a
    ld a, [hl+]
    ld [$cb6d], a
    inc hl
    ld a, [hl+]
    ld [wTextPointer], a
    ld a, [hl+]
    ld [wTextPointer+1], a
    inc hl
    inc hl
    xor a
    ld [wYesOrNo], a
    ld a, [$cb6d]
    ld de, vBGMap1 + $22
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    call SyncToBlankPeriod
    ld a, [$cb5c]
    ld [de], a
    ld a, [$cb6c]
    ld de, vBGMap1 + $22
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    call SyncToBlankPeriod
    ld a, [$cb5c]
    ld [de], a
    ret

Call_000_396d:
    ld a, [wYesOrNo]
    cp YES
    jr z, jr_000_39a9

    ld a, [$cb6d]
    ld de, vBGMap1 + $22
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    call SyncToBlankPeriod
    ld a, [$cb5d]
    ld [de], a
    ld a, [$cb6c]
    ld de, vBGMap1 + $22
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    call SyncToBlankPeriod
    ld a, [$cb5c]
    ld [de], a
    ldh a, [$ff8b]
    and $20
    jr z, jr_000_39dd
    call Call_000_3fae
    xor a
    ld [wYesOrNo], a
    jr jr_000_39dd

jr_000_39a9:
    ld a, [$cb6c]
    ld de, vBGMap1 + $22
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    call SyncToBlankPeriod
    ld a, [$cb5d]
    ld [de], a
    ld a, [$cb6d]
    ld de, vBGMap1 + $22
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    call SyncToBlankPeriod
    ld a, [$cb5c]
    ld [de], a
    ldh a, [$ff8b]
    and $10
    jr z, jr_000_39dd

    ld a, NO
    ld [wYesOrNo], a
    call Call_000_3fae

jr_000_39dd:
    ldh a, [$ff8b]
    and $01
    ret z

    call Call_000_3fa2
    ld hl, wYesTextBlockJump
    ld a, [wYesOrNo]
    add l
    ld l, a
    ld a, 0
    adc h
    ld h, a
    ld a, [hl]
    or a
    jr z, .callTextScript

; Each text block is 43 bytes of data, so if [hl] is nonzero, then this tells how many blocks to jump
; from the beginning of the initial text (very first text of the dialog).
    ld c, 43
    call Multiply8Bit
    ld a, l
    ld [wTextNavigator], a
    ld a, h
    ld [wTextNavigator+1], a
    call ClearOldTextOnTextBox
    xor a
    ld [wTextCharacterCounter], a

.callTextScript
    ld a, [wTextPointer]
    ld l, a
    ld a, [wTextPointer+1]
    ld h, a
    ld a, [MBC3SRamBank]
    call BankSwitchCallHL
    ret

ClearOldTextOnTextBox:
    ld a, [$cb5c]
    ld c, a
    ld hl, vBGMap1 + $22
    ld b, 4
.loop
    call SyncToBlankPeriod
    ld a, c
    ld [hli], a
    ld [hli], a
    call SyncToBlankPeriod
    ld a, c
    ld [hli], a
    ld [hli], a
    dec b
    jr nz, .loop

    ld hl, vBGMap1 + $62
    ld b, 4
.loop2
    call SyncToBlankPeriod
    ld a, c
    ld [hli], a
    ld [hli], a
    call SyncToBlankPeriod
    ld a, c
    ld [hli], a
    ld [hli], a
    dec b
    jr nz, .loop2

    ld hl, vBGMap1 + $32
    call SyncToBlankPeriod
    ld a, c
    ld [hl], a
    ld hl, vBGMap1 + $50
    call SyncToBlankPeriod
    ld a, c
    ld [hli], a
    call SyncToBlankPeriod
    ld a, c
    ld [hli], a
    call SyncToBlankPeriod
    ld a, c
    ld [hli], a
    ld hl, vBGMap1 + $72
    call SyncToBlankPeriod
    ld a, c
    ld [hli], a
    ret

Data_000_3a67:
    db $22, $9c, $2c, $9c, $62, $9c, $6c, $9c

Call_000_3a6f:
    ld a, [$cb57]
    cp $01
    jp z, Jump_000_3b88

    cp $02
    jp z, Jump_000_3aed

    ldh a, [$ff8b]
    and $01
    jr nz, jr_000_3ab9

    ldh a, [$ff8b]
    cp $20
    jr z, jr_000_3acf

    cp $10
    jr z, jr_000_3ade

    ld a, [$b906]
    cp $00
    jr z, jr_000_3aa6

    call SyncToBlankPeriod
    ld a, [$cb5d]
    ld [$9c6d], a
    call SyncToBlankPeriod
    ld a, [$cb5c]
    ld [$9c62], a
    ret

jr_000_3aa6:
    call SyncToBlankPeriod
    ld a, [$cb5d]
    ld [$9c62], a
    call SyncToBlankPeriod
    ld a, [$cb5c]
    ld [$9c6d], a
    ret

jr_000_3ab9:
    call EnableDisplay_GameplayMode
    ld a, $01
    ld [wTextID], a
    ld [$cb57], a
    call Call_000_3f0b
    xor a
    ld [$cb58], a
    call Call_000_3fa2
    ret

jr_000_3acf:
    ld a, [$b906]
    cp $01
    ret nz

    ld a, $00
    ld [$b906], a
    call Call_000_3fae
    ret

jr_000_3ade:
    ld a, [$b906]
    cp $00
    ret nz

Jump_000_3ae4:
    ld a, $01
    ld [$b906], a
    call Call_000_3fae
    ret


Jump_000_3aed:
    ret


    ldh a, [$ff8b]
    and $01
    jr nz, jr_000_3b2c

    ldh a, [$ff8b]
    cp $20
    jr z, jr_000_3b6a

    cp $10
    jp z, Jump_000_3b79

    ld a, [$b905]
    cp $00
    jr z, jr_000_3b19

    call SyncToBlankPeriod
    ld a, [$cb5d]
    ld [$9c6d], a
    call SyncToBlankPeriod
    ld a, [$cb5c]
    ld [$9c62], a
    ret


jr_000_3b19:
    call SyncToBlankPeriod
    ld a, [$cb5d]
    ld [$9c62], a
    call SyncToBlankPeriod
    ld a, [$cb5c]

Call_000_3b28:
    ld [$9c6d], a
    ret


jr_000_3b2c:
    ld a, [$b905]
    or a
    jr nz, jr_000_3b54

Call_000_3b32:
    xor a
    ld [wFreezePlayerInTextWindowOrInTown], a
    ld [$cb57], a
    call EnableDisplay_GameplayMode
    ld a, [$b906]
    or a
    ret nz

    ld a, $04
    ld [wTextID], a
    call Call_000_3f0b
    xor a
    ld [$cb58], a
    ld [$cb57], a
    call Call_000_3fa2
    ret


jr_000_3b54:
    call EnableDisplay_GameplayMode
    ld a, $01
    ld [wTextID], a
    ld [$cb57], a
    call Call_000_3f0b
    xor a
    ld [$cb58], a
    call Call_000_3fa2
    ret


jr_000_3b6a:
    ld a, [$b905]
    cp $01
    ret nz

    ld a, $00
    ld [$b905], a
    call Call_000_3fae

Jump_000_3b78:
    ret


Jump_000_3b79:
    ld a, [$b905]
    cp $00
    ret nz

    ld a, $01
    ld [$b905], a
    call Call_000_3fae
    ret


Jump_000_3b88:
    ldh a, [$ff8b]
    and $04
    jp nz, Jump_000_3c10

    ldh a, [$ff8b]
    and $01
    jr nz, jr_000_3bc2

    ld hl, $3a67
    ld a, [$cb58]
    sla a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld e, a
    ld a, [hl]
    ld h, a
    ld l, e
    call SyncToBlankPeriod
    ld a, [$cb5d]
    ld [hl], a
    ldh a, [$ff8b]
    cp $20
    jr z, jr_000_3bca

    cp $10
    jr z, jr_000_3bdb

    cp $40
    jr z, jr_000_3bec

    cp $80
    jr z, jr_000_3bfe
    ret


jr_000_3bc2:
    ld hl, $cb57
    inc [hl]
    call Call_000_3c44
    ret

jr_000_3bca:
    ld a, [$cb58]
    and $01
    ret z

    call Call_000_3c29
    ld hl, $cb58
    dec [hl]
    call Call_000_3fae
    ret

jr_000_3bdb:
    ld a, [$cb58]
    and $01
    ret nz

    call Call_000_3c29
    ld hl, $cb58
    inc [hl]
    call Call_000_3fae
    ret

jr_000_3bec:
    ld a, [$cb58]
    and $02
    ret z

    call Call_000_3c29
    ld hl, $cb58
    dec [hl]
    dec [hl]
    call Call_000_3fae
    ret

Call_000_3bfe:
jr_000_3bfe:
    ld a, [$cb58]
    and $02
    ret nz

    call Call_000_3c29
    ld hl, $cb58
    inc [hl]
    inc [hl]
    call Call_000_3fae
    ret

Jump_000_3c10:
    xor a
    ld [$cb58], a
    ld [$cb57], a
    ld [wTextNavigator], a
    ld [wTextNavigator+1], a
    ld [wTextCharacterCounter], a
    ld a, $ff
    ld [wTextID], a
    call Call_000_3f26
    ret

Call_000_3c29:
    ld hl, $3a67
    ld a, [$cb58]
    sla a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld e, a
    ld a, [hl]
    ld h, a
    ld l, e
    call SyncToBlankPeriod
    ld a, [$cb5c]
    ld [hl], a
    ret

Call_000_3c44:
    ld a, [$cb58]
    cp $00
    jr z, jr_000_3c6d

    cp $01
    jp z, Jump_000_3cf2

    cp $02
    jr z, jr_000_3cb2

    ld a, [$b906]
    ld [$cbea], a
    call EnableDisplay_GameplayMode
    ld a, $03
    ld [wTextID], a
    ld [$cb57], a
    call Call_000_3f0b
    xor a
    ld [$cb58], a
    ret

jr_000_3c6d:
    call Call_000_3fa2
    xor a
    ld [wFreezePlayerInTextWindowOrInTown], a
    ld [$cb57], a
    call EnableDisplay_GameplayMode
    ld a, $01
    ld [$cbff], a
    ld a, $3c
    ld [$c906], a
    xor a
    ld [$c908], a
    ld a, $13
    call RST_TableJumpBankSwitch
    ld a, $3e
    ld [wInputFreezeTimer], a
    ld a, [wPlayerIsCarryingItem]
    ld [$cb87], a
    ld a, 0
    ld [wPlayerIsCarryingItem], a
    ld a, [$b906]
    or a
    ret nz

    ld a, $04
    ld [wTextID], a
    call Call_000_3f0b
    xor a
    ld [$cb58], a
    ld [$cb57], a
    ret

jr_000_3cb2:
    call Call_000_3fa2
    xor a
    ld [wFreezePlayerInTextWindowOrInTown], a
    ld [$cb57], a
    call EnableDisplay_GameplayMode
    ld a, $50
    ld [$cbfe], a
    xor a
    ld [$c908], a
    ld a, $13
    call RST_TableJumpBankSwitch
    ld a, $3e
    ld [wInputFreezeTimer], a
    ld a, [wPlayerIsCarryingItem]
    ld [$cb87], a
    ld a, $00
    ld [wPlayerIsCarryingItem], a
    ld a, [$b906]
    or a
    ret nz

    ld a, $04
    ld [wTextID], a
    call Call_000_3f0b
    xor a
    ld [$cb58], a
    ld [$cb57], a
    ret

Call_000_3cf2:
Jump_000_3cf2:
    ld a, $3c
    call InitializeTextIDAndDisplay
    ret

Call_000_3cf8:
    ld a, [wThrowingSeedsAnimationTimer]
    or a
    jr z, .notThrowingSeeds

    callfar Label_008_4341
    ret

.notThrowingSeeds
    ld a, [wTextID]
    cp $ff
    ret nz

    ld a, [$cb57]
    or a
    jr z, jr_000_3d17

    call Call_000_3a6f
    ret

jr_000_3d17:
    ld a, [wFreezePlayerInTextWindowOrInTown]
    cp $00
    jr z, jr_000_3d7b

    ldh a, [$ff8b]
    cp $04
    jr nz, jr_000_3d41

    ld a, [wTextBoxIsDisplayed]
    or a
    ret nz

    call EnableDisplay_GameplayMode
    ld a, $01
    ld [wFreezePlayerInTextWindowOrInTown], a
    ld a, $01
    ld [wTextID], a
    ld [$cb57], a
    xor a
    ld [$cb58], a
    call Call_000_3f0b
    ret

jr_000_3d41:
    call Call_000_3ded
    ldh a, [$ff8b]
    and $01
    ret z

    xor a
    ldh [$ff8b], a
    ld a, $01
    ld [$cbf6], a
    xor a
    ld [wFreezePlayerInTextWindowOrInTown], a
    ld [$cbeb], a
    ld [wTVIsTurnedOn], a
    ld [wTextBoxIsDisplayed], a
    ld a, [$b88c]
    or a
    ret nz

    call EnableDisplay_GameplayMode
    ld a, [$b906]
    or a
    ret nz

    ld a, $04
    ld [wTextID], a
    call Call_000_3f0b
    xor a
    ld [$cb58], a
    ld [$cb57], a
    ret

jr_000_3d7b:
    xor a
    ld [wPlayerInteractingInTextFlag], a
    ldh a, [$ff8b]
    and $04
    ret z

    ld a, [wFreezePlayerWhenEnteringNewMap]
    or a
    ret nz

    ld a, [wPlayerIdleWhenExitingCurrentMap]
    or a
    ret nz

    call Call_000_3db3
    xor a
    ld [$cb14], a
    ld [$cb15], a
    ld [$cb16], a
    ld a, $00
    call RST_TableJumpBankSwitch
    call Call_000_3f0b
    ld a, $00
    ld [wTextID], a
    ld a, $03
    ld [wInputFreezeTimer], a
    ld a, $01
    ld [wFreezePlayerInTextWindowOrInTown], a
    ret

Call_000_3db3:
    ld a, [wInputFreezeTimer]
    or a
    jr nz, jr_000_3deb

    ld a, [$c90d]
    or a
    jr nz, jr_000_3deb

    ld a, [wPlayerIsCarryingItem]
    or a
    jr nz, jr_000_3deb

    ld a, [$c640]
    or a
    jr nz, jr_000_3deb

    ld a, [wPlayerIsRidingHorse]
    or a
    jr nz, jr_000_3deb

    ld a, [wPlayerHoldingPet]
    or a
    jr nz, jr_000_3deb

    ld a, [wPlayerSpriteID]
    cp PLAYER_SPRINTING_DOWN_POSE
    jr z, jr_000_3deb

    cp PLAYER_SPRINTING_LEFT_POSE
    jr z, jr_000_3deb

    cp PLAYER_SPRINTING_RIGHT_POSE
    jr z, jr_000_3deb

    cp PLAYER_SPRINTING_UP_POSE
    jr z, jr_000_3deb
    ret

jr_000_3deb:
    pop hl
    ret

Call_000_3ded:
    ld a, [$b88c]
    or a
    ret z

    ld a, [$cbf6]
    or a
    ret nz

    ld a, $b4
    ld [$cbf6], a
    ret

Call_000_3dfd:
    ld a, [$b906]
    or a
    ret nz

    ld a, $04
    ld [wTextID], a
    call Call_000_3f0b
    ld a, $01
    ld [wPlayerInteractingInTextFlag], a
    xor a
    ld [$cb58], a
    ld [$cb57], a
    ld [wTextBoxIsDisplayed], a
    ret

