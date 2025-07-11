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
    call Call_01d_521e
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
