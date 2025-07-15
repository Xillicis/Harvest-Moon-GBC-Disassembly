UseItem:
    push hl
    push af
    ld l, $f4
    ld h, $6d
    ld a, $20
; calls an almost identitcal function that does something with colors or graphics maybe?
    call BankSwitchCallHL
    pop af
    pop hl
    ld hl, sInventory
    ld a, [sItemSlot]
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    cp SICKLE
    jp z, UseSickle
    cp HOE
    jp z, UseHoe
    cp HAMMER
    jp z, UseHammer
    cp AX
    jp z, UseAx
    cp SUPER_SICKLE
    jp z, UseSuperSickle
    cp SUPER_HOE
    jp z, UseSuperHoe
    cp SUPER_HAMMER
    jp z, UseSuperHammer
    cp SUPER_AX
    jp z, UseSuperAx
    cp BRUSH
    jp z, UseBrush
    cp WATERING_CAN
    jp z, UseWateringCan
    cp MILKER
    jp z, UseMilker
    cp COW_MEDICINE
    jp z, UseMedicine
    cp P_MEDICINE
    jp z, UseMedicine
    cp M_POTION
    jp z, UseMedicine
    cp COW_BELL
    jp z, UseCowBell
    cp $53
    jp z, Jump_001_631d
    cp $54
    jp z, Jump_001_632d
    cp SPRINKLER
    jp z, UseSprinkler
    cp COW_FEED
    jp z, UseAnimalFeed
    cp CHICKEN_FEED
    jp z, UseAnimalFeed
    cp GRASS_SEEDS
    jp z, UseGrassSeeds
    cp TOMATO_SEEDS
    jp z, UseTomatoSeeds
    cp CORN_SEEDS
    jp z, UseCornSeeds
    cp TURNIP_SEEDS
    jp z, UseTurnipSeeds
    cp POTATO_SEEDS
    jp z, UsePotatoSeeds
    cp EGGPLANT_SEEDS
    jp z, UseEggplantSeeds
    cp PEANUT_SEEDS
    jp z, UsePeanutSeeds
    cp CARROT_SEEDS
    jp z, UseCarrotSeeds
    cp BROCOLLI_SEEDS
    jp z, UseBrocolliSeeds
    ret

UseSickle:
    ld b, MEDIUM_ENERGY
    call CheckForNoEnergyAnimation
    xor a
    ld [$cb45], a
    ld a, $06
    call RST_TableJumpBankSwitch
    ld a, $34
    ld [wInputFreezeTimer], a
    ld a, [wPlayerFacingDirection]
    call Call_000_191a
    ld a, [wPlayerFacingDirection]
    call Call_001_6524
    ld a, [$cb42]
    or a
    ret z

    ld a, [$cb41]
    cp $02
    jr z, jr_001_603a

    ld a, [$cb42]
    and $40
    ret z

    ld a, [$cb41]
    ld b, a
    and $f0
    cp $49
    jr z, jr_001_6040
    cp $50
    jr z, jr_001_6046
    cp $60
    jr z, jr_001_6046
    cp $70
    jr z, jr_001_6050
    cp $80
    jr z, jr_001_6050
    cp $90
    jr z, jr_001_605a
    cp $a0
    jr z, jr_001_6064
    cp $b0
    jr z, jr_001_606e
    cp $c0
    jr z, jr_001_6078
    cp $d0
    jr z, jr_001_6082
    cp $e0
    jr z, jr_001_608c
    ret

jr_001_603a:
    ld a, $01
    ld [$cb45], a
    ret

jr_001_6040:
    ld a, $02
    ld [$cb45], a
    ret

jr_001_6046:
    ld a, b
    cp $54
    ret c

    ld a, $03
    ld [$cb45], a
    ret

jr_001_6050:
    ld a, b
    cp $76
    ret c

    ld a, $04
    ld [$cb45], a
    ret

jr_001_605a:
    ld a, b
    cp $94
    ret c

    ld a, $05
    ld [$cb45], a
    ret

jr_001_6064:
    ld a, b
    cp $a6
    ret c

    ld a, $06
    ld [$cb45], a
    ret

jr_001_606e:
    ld a, b
    cp $b4
    ret c

    ld a, $07
    ld [$cb45], a
    ret

jr_001_6078:
    ld a, b
    cp $c6
    ret c

    ld a, $08
    ld [$cb45], a
    ret

jr_001_6082:
    ld a, b
    cp $d6
    ret c

    ld a, $09
    ld [$cb45], a
    ret

jr_001_608c:
    ld a, b
    cp $e4
    ret c

    ld a, $0a
    ld [$cb45], a
    ret

UseHoe:
    ld b, MEDIUM_ENERGY
    call CheckForNoEnergyAnimation
    ld a, $07
    call RST_TableJumpBankSwitch
    ld a, $34
    ld [wInputFreezeTimer], a
    ld a, [wPlayerFacingDirection]
    call Call_000_191a
    ret

UseHammer:
    ld b, MEDIUM_ENERGY
    call CheckForNoEnergyAnimation
    xor a
    ld [$cb45], a
    ld a, $08
    call RST_TableJumpBankSwitch
    ld a, $34
    ld [wInputFreezeTimer], a
    ld a, [wPlayerFacingDirection]
    call Call_001_6524
    ld a, [$cb42]
    or a
    ret z

    ld a, [$cb41]
    cp $03
    jr nz, jr_001_60d7

    ld a, $01
    ld [$cb45], a
    ret


jr_001_60d7:
    ld a, [$cb41]
    cp $04
    jr z, jr_001_60eb
    cp $05
    jr z, jr_001_60f1
    cp $06
    jr z, jr_001_60f7
    cp $07
    jr z, jr_001_60fd
    ret

jr_001_60eb:
    ld a, $02
    ld [$cb45], a
    ret

jr_001_60f1:
    ld a, $03
    ld [$cb45], a
    ret

jr_001_60f7:
    ld a, $04
    ld [$cb45], a
    ret

jr_001_60fd:
    ld a, $05
    ld [$cb45], a
    ret

UseAx:
    ld b, MEDIUM_ENERGY
    call CheckForNoEnergyAnimation
    xor a
    ld [$cb45], a
    ld a, $09
    call RST_TableJumpBankSwitch
    ld a, $34
    ld [wInputFreezeTimer], a
    ld a, [wPlayerFacingDirection]
    call Call_001_6524
    ld a, [$cb42]
    or a
    ret z
    ld a, [$cb41]
    cp $08
    jr z, jr_001_6135
    cp $09
    jr z, jr_001_613b
    cp $0a
    jr z, jr_001_6141
    cp $0b
    jr z, jr_001_6147
    ret

jr_001_6135:
    ld a, $02
    ld [$cb45], a
    ret

jr_001_613b:
    ld a, $03
    ld [$cb45], a
    ret

jr_001_6141:
    ld a, $04
    ld [$cb45], a
    ret

jr_001_6147:
    ld a, $05
    ld [$cb45], a
    ret

UseSuperSickle:
    ld b, LARGE_ENERGY
    call CheckForNoEnergyAnimation
    xor a
    ld [$cb45], a
    ld a, $84
    call Call_000_151d
    ld a, $50
    ld [wInputFreezeTimer], a
    ld a, [wPlayerFacingDirection]
    call Call_000_191a
    ret

UseSuperHoe:
    ld b, LARGE_ENERGY
    call CheckForNoEnergyAnimation
    ld a, $0d
    call RST_TableJumpBankSwitch
    ld a, $44
    ld [wInputFreezeTimer], a
    ld a, [wPlayerFacingDirection]
    call Call_000_191a
    ret

UseSprinkler:
    ld b, LARGE_ENERGY
    call CheckForNoEnergyAnimation
    ld a, $85
    call Call_000_151d
    ld a, $56
    ld [wInputFreezeTimer], a
    ld a, [wPlayerFacingDirection]
    call Call_000_191a
    ret

UseSuperHammer:
    ld b, LARGE_ENERGY
    call CheckForNoEnergyAnimation
    xor a
    ld [$cb45], a
    ld a, $0f
    call RST_TableJumpBankSwitch
    ld a, $3e
    ld [wInputFreezeTimer], a
    ld a, [wPlayerFacingDirection]
    call Call_001_6524
    ld a, [$cb42]
    or a
    ret z

    ld a, [$cb41]
    cp $03
    jr nz, jr_001_61be
    ld a, $01
    ld [$cb45], a
    ret

jr_001_61be:
    ld a, [$cb41]
    cp $04
    jr z, jr_001_61d2
    cp $05
    jr z, jr_001_61d8
    cp $06
    jr z, jr_001_61de
    cp $07
    jr z, jr_001_61e4
    ret

jr_001_61d2:
    ld a, $02
    ld [$cb45], a
    ret

jr_001_61d8:
    ld a, $03
    ld [$cb45], a
    ret

jr_001_61de:
    ld a, $04
    ld [$cb45], a
    ret

jr_001_61e4:
    ld a, $05
    ld [$cb45], a
    ret

UseSuperAx:
    ld b, LARGE_ENERGY
    call CheckForNoEnergyAnimation
    xor a
    ld [$cb45], a
    ld a, $0e
    call RST_TableJumpBankSwitch
    ld a, $44
    ld [wInputFreezeTimer], a
    ld a, [wPlayerFacingDirection]
    call Call_001_6524
    ld a, [$cb42]
    or a
    ret z

    ld a, [$cb41]
    cp $08
    jr z, jr_001_621c

    cp $09
    jr z, jr_001_6222

    cp $0a
    jr z, jr_001_6228

    cp $0b
    jr z, jr_001_622e

    ret


jr_001_621c:
    ld a, $02
    ld [$cb45], a
    ret


jr_001_6222:
    ld a, $03
    ld [$cb45], a
    ret


jr_001_6228:
    ld a, $04
    ld [$cb45], a
    ret


jr_001_622e:
    ld a, $05
    ld [$cb45], a
    ret


UseBrush:
    ld b, MEDIUM_ENERGY
    call CheckForNoEnergyAnimation
    ld a, $0b
    call RST_TableJumpBankSwitch
    ld a, $64
    ld [wInputFreezeTimer], a
    ret


UseWateringCan:
    ld b, MEDIUM_ENERGY
    call CheckForNoEnergyAnimation
    ld a, $0c
    call RST_TableJumpBankSwitch
    ld a, [sCurrentWaterInWateringCan]
    or a
    jr z, .noWater

    ld a, $56 ; animation ID?
    ld [wInputFreezeTimer], a
    jr jr_001_6260

.noWater
    ld a, $10 ; no water animation ID?
    ld [wInputFreezeTimer], a

jr_001_6260:
    ld a, [wPlayerFacingDirection]
    call Call_000_191a
    ld a, [wPlayerFacingDirection]
    cp $00
    jr z, jr_001_6285

    cp $01
    jr z, jr_001_6294

    cp $02
    jp z, Jump_001_62a3

    ld a, [$cb48]
    ld h, a
    ld a, [$cb49]
    ld l, a
    ld bc, $ff80
    add hl, bc
    ld a, [hl]
    jr CheckForFillingWateringCan

jr_001_6285:
    ld a, [$cb48]
    ld h, a
    ld a, [$cb49]
    ld l, a
    ld bc, $0080
    add hl, bc
    ld a, [hl]
    jr CheckForFillingWateringCan

jr_001_6294:
    ld a, [$cb48]
    ld h, a
    ld a, [$cb49]
    ld l, a
    ld bc, $fffe
    add hl, bc
    ld a, [hl]
    jr CheckForFillingWateringCan

; Seems like it gets the tile type. Something like what we are watering...
Jump_001_62a3: ; 01x62a3
    ld a, [$cb48] ; contains the sram address for the tile we are looking at I think...
    ld h, a
    ld a, [$cb49]
    ld l, a
    ld bc, $0002
    add hl, bc
    ld a, [hl]

CheckForFillingWateringCan:
; look at tiles between $20 and $38 (probably all types of water tiles).
    cp $20
    ret c

    cp $39
    ret nc

    ld a, $19
    call RST_TableJumpBankSwitch
    ld a, $36
    ld [wInputFreezeTimer], a
    ret


UseMilker:
    ld b, MEDIUM_ENERGY
    call CheckForNoEnergyAnimation
    ld a, $14
    call RST_TableJumpBankSwitch
    ld a, $32
    ld [wInputFreezeTimer], a
    ret

UseMedicine:
    ld a, $17
    call RST_TableJumpBankSwitch
    ld a, $40
    ld [wInputFreezeTimer], a
    ld a, $5a
    call $16d1
    ld hl, sInventory
    ld a, [sItemSlot]
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    cp COW_MEDICINE
    jr z, .usedUpCowMedicine
    cp M_POTION
    jr z, .usedUpMPotion
    xor a
    ld [sShedPMedicineFlag], a
    call Call_001_644c
    ret

.usedUpCowMedicine
    xor a
    ld [sShedCowMedicineFlag], a
    call Call_001_644c
    ret

.usedUpMPotion
    xor a
    ld [sShedMPotionFlag], a
    call Call_001_644c
    ret

UseCowBell:
    ld b, MEDIUM_ENERGY
    call CheckForNoEnergyAnimation
    ld a, $0a
    call RST_TableJumpBankSwitch
    ld a, $4c
    ld [wInputFreezeTimer], a
    ret

Jump_001_631d:
    ld b, LARGE_ENERGY
    call CheckForNoEnergyAnimation
    ld a, $16
    call RST_TableJumpBankSwitch
    ld a, $35
    ld [wInputFreezeTimer], a
    ret

Jump_001_632d:
    ld b, LARGE_ENERGY
    call CheckForNoEnergyAnimation
    ld a, $63
    call Call_000_151d
    ld a, $69
    ld [wInputFreezeTimer], a
    ld a, [sSeasonOfNextDay]
    cp WINTER
    jr z, jr_001_634f

    ld a, [sNextDayWeather]
    cp WINDY_DAY
    ret z

    ld a, RAINY_DAY
    ld [sNextDayWeather], a
    ret

jr_001_634f:
    ld a, SNOWY_DAY
    ld [sNextDayWeather], a
    ret


    ld b, MEDIUM_ENERGY
    call CheckForNoEnergyAnimation
    ld a, $63
    call Call_000_151d
    ld a, $60
    ld [wInputFreezeTimer], a
    ret

UseAnimalFeed:
    ld a, $18
    call RST_TableJumpBankSwitch
    ld a, $36
    call Call_000_25ce
    ld a, $5a
    ld [wInputFreezeTimer], a
    ld hl, sInventory
    ld a, [sItemSlot]
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    cp $10
    jr z, jr_001_6395

    ld a, [sNumChickenFeed]
    dec a
    ld [sNumChickenFeed], a
    ret nz

    xor a
    ld [sChickenFeedFlag], a
    call Call_001_644c
    ret

jr_001_6395:
    ld a, [sNumCowFeed]
    dec a
    ld [sNumCowFeed], a
    ret nz

    xor a
    ld [sCowFeedFlag], a
    call Call_001_644c
    ret


UseGrassSeeds:
    ld b, SMALL_ENERGY
    call CheckForNoEnergyAnimation
    ld a, $3e
    call Call_000_151d
    ld a, $55
    ld [wInputFreezeTimer], a
    ld a, [wPlayerFacingDirection]
    call Call_000_191a
    xor a
    ld [$cb74], a
    ld a, [sNumGrassSeeds]
    dec a
    ld [sNumGrassSeeds], a
    or a
    ret nz

    ld [sShedGrassSeedsFlag], a
    call Call_001_644c
    ret

UseTomatoSeeds:
    ld b, SMALL_ENERGY
    call CheckForNoEnergyAnimation
    ld a, $3e
    call Call_000_151d
    ld a, $55
    ld [wInputFreezeTimer], a
    ld a, [wPlayerFacingDirection]
    call Call_000_191a
    ld a, $01
    ld [$cb74], a
    ld a, [sNumTomatoSeeds]
    dec a
    ld [sNumTomatoSeeds], a
    or a
    ret nz

    ld [sShedTomatoSeedsFlag], a
    call Call_001_644c
    ret

UseCornSeeds:
    ld b, SMALL_ENERGY
    call CheckForNoEnergyAnimation
    ld a, $3e
    call Call_000_151d
    ld a, $55
    ld [wInputFreezeTimer], a
    ld a, [wPlayerFacingDirection]
    call Call_000_191a
    ld a, $02
    ld [$cb74], a
    ld a, [sNumCornSeeds]
    dec a
    ld [sNumCornSeeds], a
    or a
    ret nz

    ld [sShedCornSeedsFlag], a
    call Call_001_644c
    ret

UseTurnipSeeds:
    ld b, SMALL_ENERGY
    call CheckForNoEnergyAnimation
    ld a, $3e
    call Call_000_151d
    ld a, $55
    ld [wInputFreezeTimer], a
    ld a, [wPlayerFacingDirection]
    call Call_000_191a
    ld a, $03
    ld [$cb74], a
    ld a, [sNumTurnipSeeds]
    dec a
    ld [sNumTurnipSeeds], a
    or a
    ret nz

    ld [sShedTurnipSeedsFlag], a
    call Call_001_644c
    ret

Call_001_644c:
    ld a, $50
    ld [$cb8f], a
    ret

UsePotatoSeeds:
    ld b, SMALL_ENERGY
    call CheckForNoEnergyAnimation
    ld a, $3e
    call Call_000_151d
    ld a, $55
    ld [wInputFreezeTimer], a
    ld a, [wPlayerFacingDirection]
    call Call_000_191a
    ld a, $04
    ld [$cb74], a
    ld a, [sNumPotatoSeeds]
    dec a
    ld [sNumPotatoSeeds], a
    or a
    ret nz

    ld [sShedPotatoSeedsFlag], a
    call Call_001_644c
    ret


UseEggplantSeeds:
    ld b, SMALL_ENERGY
    call CheckForNoEnergyAnimation
    ld a, $3e
    call Call_000_151d
    ld a, $55
    ld [wInputFreezeTimer], a
    ld a, [wPlayerFacingDirection]
    call Call_000_191a
    ld a, $05
    ld [$cb74], a
    ld a, [sNumEggplantSeeds]
    dec a
    ld [sNumEggplantSeeds], a
    or a
    ret nz

    ld [sShedEggplantSeedsFlag], a
    call Call_001_644c
    ret

UsePeanutSeeds:
    ld b, SMALL_ENERGY
    call CheckForNoEnergyAnimation
    ld a, $3e
    call Call_000_151d
    ld a, $55
    ld [wInputFreezeTimer], a
    ld a, [wPlayerFacingDirection]
    call Call_000_191a
    ld a, $06
    ld [$cb74], a
    ld a, [sNumPeanutSeeds]
    dec a
    ld [sNumPeanutSeeds], a
    or a
    ret nz

    ld [sShedPeanutSeedsFlag], a
    call Call_001_644c
    ret

UseCarrotSeeds:
    ld b, SMALL_ENERGY
    call CheckForNoEnergyAnimation
    ld a, $3e
    call Call_000_151d
    ld a, $55
    ld [wInputFreezeTimer], a
    ld a, [wPlayerFacingDirection]
    call Call_000_191a
    ld a, $07
    ld [$cb74], a
    ld a, [sNumCarrotSeeds]
    dec a
    ld [sNumCarrotSeeds], a
    or a
    ret nz

    ld [$b8bb], a
    call Call_001_644c
    ret

UseBrocolliSeeds:
    ld b, SMALL_ENERGY
    call CheckForNoEnergyAnimation
    ld a, $3e
    call Call_000_151d
    ld a, $55
    ld [wInputFreezeTimer], a
    ld a, [wPlayerFacingDirection]
    call Call_000_191a
    ld a, $08
    ld [$cb74], a
    ld a, [sNumBrocolliSeeds]
    dec a
    ld [sNumBrocolliSeeds], a
    or a
    ret nz

    ld [$b8bc], a
    call Call_001_644c
    ret

