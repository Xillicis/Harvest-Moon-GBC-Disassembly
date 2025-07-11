; Inside Bank 0x1D

; This subroutine copys the data when setting up a new game.
; Like: player name, boy/girl, pet, pet name, etc...
SetupNewGameData: ; 1dx5192
    call ClearBGMap0
    call ClearBGMap1
    call ClearShadowOAMBuffer
    ld hl, $9000
; zero out first 16 bytes of `hl`
.loop
    xor a
    ld [hli], a
    ld a, l
    cp 16
    jr nz, .loop
    call InitializeMoreGameData
    ld hl, Data_01d_4438
    ld a, $1d
    ld de, $bff0
    ld bc, $0010
    call BankedCopyHLtoDEBig
    ld hl, wPlayerName
    ld de, sPlayerName
    call CopyHLToDE4Bytes
    ld a, [wPlayerGenderSelection]
    ld [sPlayerGender], a
    or a
    jr z, .genderSelected
; Start with watering can and some seeds if chose Girl
    ld a, 1
    ld [sShedTurnipSeedsFlag], a
    ld [sNumTurnipSeeds], a
    ld [sShedPotatoSeedsFlag], a
    ld [sNumPotatoSeeds], a
    ld [sShedGrassSeedsFlag], a
    ld [sNumGrassSeeds], a
    ld [sShedWateringCanFlag], a
.genderSelected
    ld a, [wCatOrDogSelection]
    ld [sCatOrDog], a
    ld hl, wPetName
    ld de, sPetName
    call CopyHLToDE4Bytes
; Initialize the food and drink (10x for each)
; This is actually redundent, because the food/drink gets updated in Call_01d_521e
    ld a, 10
    ld hl, sNumCroissant
    ld [hli], a
    ld [hli], a
    ld [hli], a
    inc hl
    inc hl
    ld [hli], a
    ld [hli], a
; player begins with first 4 basic tools tools
    ld a, 1
    ld [sShedSickleFlag], a
    ld [sShedHoeFlag], a
    ld [sShedHammerFlag], a
    ld [sShedAxFlag], a
    ld h, b
    ld l, c
    xor a
    ld [$cb56], a
    inc a
    ld [$c910], a
    ld a, $0e
    ld [$cb50], a
    ld a, $02
    ld [$cb4f], a
    ret

    ret

; Looks like some initialization
InitializeMoreGameData: ; 1dx521e
    di
    call InitRealTimeClock
    di
    ld hl, sMapObjectLocation
    ld bc, $1fff
    call ZeroOutHL
    ld hl, $762a
    ld a, $03
    call BankSwitchCallHL
    ld a, $ff
    ld [wTextID], a
    ld [$cb4d], a
    xor a
    ld [$cb53], a
    ld [$cb54], a
    ld [$cb55], a
    ld [$cb5f], a
    call InitializeFarmMap
    ld a, 1
    ld [wPlayerIsInsideOrAtTown], a
    ld [$c910], a
    ld a, TIME_6_AM
    ld [sCurrentHour], a
    ld a, $ff
    ld [sCurrentDayCounter], a
    ld a, $80
    ld [$b892], a
    ld [$b89b], a
    ld a, $ff
    ld [$b8a1], a
    ld [$b8a2], a
    ld [$ba4c], a
    ld [$ba4d], a
    ld a, $0a
    ld [sNumCroissant], a
    ld [sNumRiceBall], a
    ld [sNumMeatDumpling], a
    ld [sNumWildGrapeJuice], a
    ld [sNumGreenTea], a
    xor a
    ld [$b8cc], a ; a drink consumable, not sure which one
    ld a, $80
    ld [$b8eb], a
    ld a, MAX_ENERGY
    ld [sPlayerEnergy], a
    ld [sPlayerMaxEnergy], a
    ld a, $01
    ld [$b906], a
    xor a
    ld [$b907], a
    ld [sNumPowerBerriesEaten], a
    ld a, NO_ITEM
    ld [sInventory], a
    ld [sInventory+1], a
    ld a, $ff
    ld [sInventory+2], a
    ld a, $02
    ld [sItemSlot], a
    ld a, 0
    ld [sDayOfPreviousSleep], a
    ld a, TIME_10_PM
    ld [sHourOfPreviousSleep], a
    ld a, 0
    ld [sMinuteOfPreviousSleep], a
    ; loads 500 money
    ld a, $f4
    ld [sPlayerMoney], a
    ld a, $01
    ld [sPlayerMoney+1], a
    xor a
    ld [$b8f1], a
    call UpdatePlayerMoneyTileData
    call UpdateHourTileData
    call UpdateDayOfTheWeekTileData
    call Call_000_08b7
    call Call_000_1002
    call Call_000_0f73
    ld hl, $456e
    ld a, $08
    call BankSwitchCallHL
    call Call_000_0fc7
    ld a, SUNNY_DAY
    ld [sNextDayWeather], a
    ld [sCurrentWeather], a
    ld a, $50
    ld [$b924], a
    ld a, $83
    ld [$b925], a
    ld a, $af
    ld [$b926], a
    ld [$b927], a
    ld a, $02
    ld [$ba43], a
    ret

