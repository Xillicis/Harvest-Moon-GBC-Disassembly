Call_00e_457b:
Jump_00e_457b:
    ld a, [wPlayerFacingDirection]
    rst $00
    add a
    ld b, l
    adc a
    ld b, l
    sub a
    ld b, l
    sbc a
    ld b, l
    call Call_000_14f9
    call Call_00e_52b9
    jr jr_00e_45a5

    call Call_000_150b
    call Call_00e_52c2
    jr jr_00e_45a5

    call Call_000_1514
    call Call_00e_52cb
    jr jr_00e_45a5

    call Call_000_1502
    call Call_00e_52d4

jr_00e_45a5:
    ld a, [wHeldObject]
    or a
    jr nz, .interactOrUseItem

    ld a, [wPlayerInteractingInTextFlag]
    cp 0
    jr nz, .interactOrUseItem

    ld a, [wCollisionNoMovement]
    or a
    jr nz, .interactOrUseItem

    ld a, [wDominantFacingTileID]
    cp $08
    jp z, PrintSignHotSpringText
    cp $09
    jp z, PrintSignDontThrowText
    cp $0a
    jp z, PrintSignPickAx

.interactOrUseItem
    ld a, [sItemSlot]
    ld hl, sInventory
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    cp NO_ITEM
    jr z, jr_00e_4631

    ld a, [sPlayerEnergy]
    or a
    jr nz, .useItem

    ld a, $01
    ld [wInputFreezeTimer], a
    ld b, $00
    call CheckForNoEnergyAnimation

.useItem
    ld a, [wPlayerInteractingInTextFlag]
    cp $00
    ret nz

    ld a, [sItemSlot]
    ld hl, sInventory
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    cp SICKLE
    jr z, .useItem_interaction
    cp HOE
    jr z, .useItem_interaction
    cp HAMMER
    jr z, .useItem_interaction
    cp AX
    jr z, .useItem_interaction
    cp SUPER_SICKLE
    jr z, .useItem_interaction
    cp SUPER_HOE
    jr z, .useItem_interaction
    cp SUPER_HAMMER
    jr z, .useItem_interaction
    cp SUPER_AX
    jr z, .useItem_interaction
    cp PICK_AX
    jr z, .useItem_interaction
    ld a, [wPlayerIsFacingSprite]
    or a
    jp nz, Jump_00e_4733
.useItem_interaction
    callfar PlayerInteraction_A_Pressed

jr_00e_4631:
    ld a, [wHeldObject]
    or a
    jp nz, Jump_00e_470e

    ld a, [wPlayerInteractingInTextFlag]
    cp 0
    ret nz

    ld a, [wCollisionNoMovement]
    or a
    jr nz, Cave_UseItem_SpriteInteraction

    ld a, [wPlayerIsFacingSprite]
    or a
    jr nz, Cave_UseItem_SpriteInteraction
    ret

; Checks if we are interacting with a sign in the caves or are using
; an item on an interactable object (like a harvest sprite or Mushroom berry thing).
Cave_UseItem_SpriteInteraction:
    ld a, [wDominantFacingTileID]
    cp $08
    jp z, PrintSignHotSpringText
    cp $09
    jp z, PrintSignDontThrowText
    cp $0a
    jp z, PrintSignPickAx

    ld a, [sItemSlot]
    ld hl, sInventory
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    cp NO_ITEM
    jp z, Jump_00e_48c7
    cp SICKLE
    jr z, .checkForHarvestSprite
    cp HOE
    jr z, .checkForHarvestSprite
    cp HAMMER
    jr z, .checkForHarvestSpriteOrBoulder
    cp AX
    jr z, .checkForHarvestSprite
    cp SUPER_SICKLE
    jr z, .checkForHarvestSprite
    cp SUPER_HOE
    jr z, .checkForHarvestSprite
    cp SUPER_HAMMER
    jr z, .checkForHarvestSpriteOrBoulder
    cp SUPER_AX
    jr z, .checkForHarvestSprite
    cp PICK_AX
    jr z, UsePickAx
    ret

.checkForHarvestSpriteOrBoulder
    ld a, [wPlayerIsFacingSprite]
    or a
    ret z

    ld a, [sSpriteEventFlags+1]
    bit EVENT_BOULDER_ON_SPRITE, a
    jr z, ManageSpriteAnger

    bit 2, a
    jr nz, ManageSpriteAnger

    bit 1, a
    jr nz, ManageSpriteAnger

    ld a, [$cc79]
    cp 0
    jr nz, ManageSpriteAnger

    ld a, [sSpriteTotalHappiness]
    add 10
    cp 100
    jr c, .happinessCap
    ld a, 99 ; cap the happiness at 99
.happinessCap
    ld [sSpriteTotalHappiness], a
    ld a, 10
    call Call_000_0f47
    ld a, 1
    ld [$ba0e], a
    ret

.checkForHarvestSprite
    ld a, [wPlayerIsFacingSprite]
    or a
    jr nz, ManageSpriteAnger
    ret

ManageSpriteAnger:
    ld a, 1
    ld [wPlayerAttackingSprite], a
    ld a, [sSpriteDailyAnger]
    inc a
    ld [sSpriteDailyAnger], a
    cp 5
    ret c
; subtract happiness if attacked too much
    xor a
    ld [sSpriteDailyAnger], a
    ld a, [sSpriteTotalHappiness]
    sub 10
    ld [sSpriteTotalHappiness], a
    ret nc
    xor a
    ld [sSpriteTotalHappiness], a
    ret

UsePickAx:
    ld a, [wPlayerIsFacingSprite]
    or a
    jr nz, ManageSpriteAnger

    ld a, [wDominantFacingTileID]
    cp $62
    jp z, Jump_00e_4862

    cp $63
    jp z, Jump_00e_4880

    cp $64
    jp z, Jump_00e_488d

    cp $65
    jp z, Jump_00e_489a
    ret

Jump_00e_470e:
    call Call_00e_4954
    ret

PrintSignHotSpringText:
    ld a, TEXT_CAVE_SIGN_HOT_SPRING
    call InitializeTextIDAndDisplay
    ld a, $00
    call RST_TableJumpBankSwitch
    ret

PrintSignDontThrowText:
    ld a, TEXT_CAVE_SIGN_DONT_THROW
    call InitializeTextIDAndDisplay
    ld a, $00
    call RST_TableJumpBankSwitch
    ret

PrintSignPickAx:
    ld a, TEXT_CAVE_SIGN_PICKAX
    call InitializeTextIDAndDisplay
    ld a, $00
    call RST_TableJumpBankSwitch
    ret

Jump_00e_4733:
    ld a, [sSpriteEventFlags+1]
    bit 2, a
    jr nz, jr_00e_4741

    ld a, [sSpriteEventFlags+1]
    or a
    jp nz, Jump_00e_47d2

Jump_00e_4741:
jr_00e_4741:
    ld a, [sSpriteTotalHappiness]
    cp $0a
    jp nc, Jump_00e_47fd

TalkToHarvestSprite1:
    ld a, [sSpriteDailyHappiness]
    set 0, a
    ld [sSpriteDailyHappiness], a
    call Call_00e_5113
    ld a, [sSpriteEventFlags]
    bit EVENT_TALKED_TO_SPRITE_FIRST_TIME, a
    jr nz, jr_00e_4770

    set EVENT_TALKED_TO_SPRITE_FIRST_TIME, a
    ld [sSpriteEventFlags], a
    ld a, $01
    ld [sSpriteFirstInteractionFlag], a
    ld a, $b1
    call InitializeTextIDAndDisplay
    ld a, $00
    call RST_TableJumpBankSwitch
    ret

jr_00e_4770:
    ld a, [$cc79]
    cp $02
    jr z, jr_00e_4798

    cp $03
    jr z, jr_00e_47b5

    ld a, [sSpriteEventFlags]
    bit 5, a
    jr nz, jr_00e_478d

    ld a, $b2
    call InitializeTextIDAndDisplay
    ld a, $00
    call RST_TableJumpBankSwitch
    ret

jr_00e_478d:
    ld a, $b4
    call InitializeTextIDAndDisplay
    ld a, $00
    call RST_TableJumpBankSwitch
    ret

jr_00e_4798:
    ld a, [sSpriteEventFlags]
    bit 5, a
    jr nz, jr_00e_47aa

    ld a, TEXT_SPRITE_GOOD_EVENING
    call InitializeTextIDAndDisplay
    ld a, $00
    call RST_TableJumpBankSwitch
    ret

jr_00e_47aa:
    ld a, $b7
    call InitializeTextIDAndDisplay
    ld a, $00
    call RST_TableJumpBankSwitch
    ret

jr_00e_47b5:
    ld a, [sSpriteEventFlags]
    bit 5, a
    jr nz, jr_00e_47c7

    ld a, TEXT_SPRITE_GOOD_MORNING
    call InitializeTextIDAndDisplay
    ld a, $00
    call RST_TableJumpBankSwitch
    ret

jr_00e_47c7:
    ld a, $bb
    call InitializeTextIDAndDisplay
    ld a, $00
    call RST_TableJumpBankSwitch
    ret

Jump_00e_47d2:
    ld a, [$cc79]
    cp $00
    jp nz, Jump_00e_4741

    ld a, [sSpriteEventFlags+1]
    bit 1, a
    jp nz, Jump_00e_47ed

    ld a, $e0
    call InitializeTextIDAndDisplay
    ld a, $00
    call RST_TableJumpBankSwitch
    ret

Jump_00e_47ed:
    ld a, $e1
    call InitializeTextIDAndDisplay
    ld a, $00
    call RST_TableJumpBankSwitch
    ld a, $04
    call Call_000_18e6
    ret

Jump_00e_47fd:
    ld a, [sSpriteEventFlags]
    bit EVENT_SPRITE_GAVE_BERRY, a
    jr nz, ImproveSickleCheck

    set EVENT_SPRITE_GAVE_BERRY, a
    ld [sSpriteEventFlags], a
    ld a, $c2
    call InitializeTextIDAndDisplay
    ld a, $00
    call RST_TableJumpBankSwitch
    jp TalkToHarvestSprite1


    ret


ImproveSickleCheck:
    ld a, [sSpriteTotalHappiness]
    cp 30
    jp c, TalkToHarvestSprite1

    ld a, [sSpriteEventFlags]
    bit EVENT_IMPROVE_SICKLE, a
    jr nz, jr_00e_4839

    set EVENT_IMPROVE_SICKLE, a
    ld [sSpriteEventFlags], a
    ld a, TEXT_SPRITE_OFFER_SICKLE_UPGRADE 
    call InitializeTextIDAndDisplay
    ld a, $00
    call RST_TableJumpBankSwitch
    jp TalkToHarvestSprite1


    ret


jr_00e_4839:
    ld a, [sSpriteTotalHappiness]
    cp 50
    jp c, TalkToHarvestSprite1

    ld a, [sSpriteEventFlags]
    bit 6, a ; I think this is for improving the other tool
    jp nz, TalkToHarvestSprite1

    set 6, a
    ld [sSpriteEventFlags], a
    ld a, $c0
    call InitializeTextIDAndDisplay
    ld a, $00
    call RST_TableJumpBankSwitch
    jp TalkToHarvestSprite1


    ret

