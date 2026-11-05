SECTION "WRAM 0", WRAM0

wShadowOAM:: ds 160 ; at $C000, holds up to 40×4 bytes of sprite attributes

ds 2

wLCDCTempStorage:: db ; 0xc0a2

ds 4

wSTAT_HandlerIndex:: db ; 0xc0a7

ds $10

ds 1 ; 0xc0b8

ds 1 ; 0xc0b9

ds 3 ; 0xc0ba

wSeasonPaletteID:: db ; 0xc0bd

ds 1090

wVRAMBlitCommandList:: db ; 0xc500

ds 257

; Seems like an ID used to determine which player sprite should be displayed;
; Walking, holding item, etc...
wPlayerSpriteID:: db ; 0xc602

; Number used to indicate which animation sprite to use (0 - Max Num Animations)
wPlayerAnimationIndex:: db ; 0xc603

ds 2

wPlayerXPosition:: dw ; 0xc606
wPlayerYPosition:: dw ; 0xc608


; The range seems to be the number of pixels in Gameboys resolution: 160 pixels (width)
wPlayerXPositionNearBoundary:: db ; 0xc60a

ds 1 ; 0xc60b
ds 1 ; 0xc60c

; 0 - Facing down
; 1 - Facing left
; 2 - Facing right
; 3 - Facing up
wPlayerFacingDirection:: db ; 0xc60d

ds $12

wPlayerIsCarryingItem:: db ; 0xc620

ds $70

ds $10f

wPetIsPresentOnMap:: db ; 0xc7a0

ds 1

; high nybble is location
; low nybble is the pose (facing left, sitting facing right, etc... need to document)
wPetLocationAndPose:: db ; 0xc7a2

ds 3

wPetXPosition:: dw ; 0xc7a6 - oxc7a7
wPetYPosition:: dw ; 0xc7a8 - oxc7a9

ds 3

wPetFacingDirection:: db ; 0xc7ad

ds $160

wCollisionNoMovement:: db ; 0xc90e

wDestinationWarpID:: db ; 0xc90f

ds 1

wMapChangeFreezeTimer:: db ; 0xc911

; Don't know if this actually freezes input, but functionally it stops you froming doing anything
wInputFreezeTimer:: db ; 0xc912

ds $21c


wCollisionSample1TileID:: db ; 0xcb2f
; Since the player is not locked to a grid, the play can be facing two different tiles at one.
; If the player is facing up/down, then this ram address indicates whether there is an object on the left side.
; If the player is facing left/right, then this ram address indicates there is an object on the "down" side.
wCollisionSample1Property:: db ; 0xcb30

;; This address is used to store the object ID that is in the respective space.
;; Need to catalog all the possible IDs here.
wCollisionSample2TileID:: db ; 0xcb31
;; Same as the above, but regarding the "right" or "up" side object
wCollisionSample2Property:: db ; 0xcb32

wDominantFacingTileID:: db ; 0xcb33
; Seems to be used to identify the different properties of the.
; It differentiates between say Signs, Rocks, and Doors.
wDominantFacingTileProperty:: db ; 0xcb34

wcb35:: db 
wcb36:: db
wcb37:: db
wcb38:: db
wcb39:: db
wcb3a:: db
wcb3b:: db
wcb3c:: db
wcb3d:: db
wcb3e:: db
wcb3f:: db
wcb40:: db

wInteractingMapObjectID:: dw ; 0xcb41

ds 5

wFarmTilemapCellPointer:: dw ; 0xcb48

;; The item you hold above your head
wHeldObject:: db ; 0xcb4a

ds 1 ; 0xcb4b

;; Either 1 or 0, for whether the textbox is displayed
wUnusedCB4C:: db ; 0xcb4c

wTempTextID:: db ; 0xcb4d

; Seems like these are probably used to stall the player while data loads.
wFreezePlayerWhenEnteringNewMap:: db ; 0xcb4e
wPlayerIdleWhenExitingCurrentMap:: db ; 0xcb4f

ds 1 ; 0xcb50

ds 1 ; 0xcb51

wTextID:: db ; 0xcb52

; Seems to help navigate the text data and track which letter/number we're on.
wTextNavigator:: dw ; 0xcb53

; Tracks which charater in the text data is to be printed by counting.
; $10 characters per line, so $20 characters can fit in the text box.
wTextCharacterCounter:: db ; 0xcb55

wFreezePlayerInTextWindowOrInTown:: db ; 0xcb56
ds 1 ; 0xcb57
ds 1 ; 0xcb58
ds 1 ; 0xcb59
; 0   - Not moving
; 1   - walking left
; 2   - running left
; $ff - walking right
; $fe - running right
wPlayerMovementXType:: db ; 0xcb5a
wPlayerMovementYType:: db ; 0xcb5b
ds 1 ; 0xcb5c
ds 1 ; 0xcb5d
ds 1 ; 0xcb5e

wTextBoxIsDisplayed:: db ; 0xcb5f

ds 1 ; 0xcb60

ds 8 ; 

; This is 0 if it's a normal text box window and 1 if the player can pick YES/NO.
wPlayerTextInputFlag:: db ; 0xcb69
wYesTextBlockJump:: db ; 0xcb6a
wNoTextBlockJump:: db ; 0xcb6b

ds 1 ; 0xcb6c
ds 1 ; 0xcb6d
wTextPointer:: dw ; 0xcb6e

ds 1 ; 0xcb70

ds 1 ; 0xcb71

; 0 = YES, 1 = NO  ; Seems a bit backwards but whatever
wYesOrNo:: db ; 0xcb72

ds 3

; This starts a countdown for the animation of the weather girl moving
; then it gets into a small loop just for the animation of the blinking sun (or other weather thing)
wTVAnimationTimer:: db ; 0xcb76

; This flips between $01 and $ff when the fun is blinking
wTVBlinkingIndicator:: db ; 0xcb77

; A flag to indicate the TV is turned on
wTVIsTurnedOn:: db ; 0xcb78

ds 1

wPlayerIdleCounter:: dw ; 0xcb7a

ds 5

; This is zero if the player is outside at the farm.
; It is one if the player is inside or at town
wPlayerIsInsideOrAtTown:: db ; 0xcb81

ds 2

wPlayerIsRidingHorse:: db ; 0xcb84

; If 1 for these two memory addresses the the player auto moves, I haven't figured out why this happens though...
wcb85:: db ; 0xcb85
wcb86:: db ; 0xcb86

ds 2

wPlayerInFrontOfPet:: db ; 0xcb89

ds 1

; a flag to indicate the player is or is not holding a pet (0 or 1)
wPlayerHoldingPet:: db ; 0xcb8b

ds 1 ; 0xcb8c

ds 1 ; 0xcb8d

ds 1 ; 0xcb8e

wThrowingSeedsAnimationTimer:: db ; 0xcb8f
wcb90:: db ; 0xcb90
wcb91:: db ; 0xcb91
wcb92:: db ; 0xcb92
wcb93:: db ; 0xcb93
wcb94:: db ; 0xcb94
wcb95:: db ; 0xcb95
wcb96:: db ; 0xcb96
wcb97:: db ; 0xcb97
wcb98:: db ; 0xcb98
wcb99:: db ; 0xcb99
wcb9a:: db ; 0xcb9a
wcb9b:: db ; 0xcb9b
wcb9c:: db ; 0xcb9c
wcb9d:: db ; 0xcb9d
wcb9e:: db ; 0xcb9e
wcb9f:: db ; 0xcb9f
wcba0:: db ; 0xcba0
wcba1:: db ; 0xcba1
wcba2:: db ; 0xcba2
wcba3:: db ; 0xcba3
wcba4:: db ; 0xcba4
wcba5:: db ; 0xcba5
wcba6:: db ; 0xcba6
wcba7:: db ; 0xcba7
wcba8:: db ; 0xcba8
wcba9:: db ; 0xcba9
wcbaa:: db ; 0xcbaa
wcbab:: db ; 0xcbab
wcbac:: db ; 0xcbac
wcbad:: db ; 0xcbad
wcbae:: db ; 0xcbae
wcbaf:: db ; 0xcbaf

wcbb0:: db ; 0xcbb0
wcbb1:: db ; 0xcbb1
wcbb2:: db ; 0xcbb2
wcbb3:: db ; 0xcbb3
wcbb4:: db ; 0xcbb4
wcbb5:: db ; 0xcbb5
wcbb6:: db ; 0xcbb6
wcbb7:: db ; 0xcbb7
wcbb8:: db ; 0xcbb8
wcbb9:: db ; 0xcbb9
wcbba:: db ; 0xcbba
wcbbb:: db ; 0xcbbb
wcbbc:: db ; 0xcbbc
wcbbd:: db ; 0xcbbd
wcbbe:: db ; 0xcbbe
wcbbf:: db ; 0xcbbf

wcbc0:: db ; 0xcbc0
wcbc1:: db ; 0xcbc1
wcbc2:: db ; 0xcbc2
wcbc3:: db ; 0xcbc3
wcbc4:: db ; 0xcbc4
wcbc5:: db ; 0xcbc5
wcbc6:: db ; 0xcbc6
wcbc7:: db ; 0xcbc7
wcbc8:: db ; 0xcbc8
wcbc9:: db ; 0xcbc9
wcbca:: db ; 0xcbca
wcbcb:: db ; 0xcbcb
wcbcc:: db ; 0xcbcc
wcbcd:: db ; 0xcbcd
wcbce:: db ; 0xcbce
wcbcf:: db ; 0xcbcf

wcbd0:: db ; 0xcbd0
wcbd1:: db ; 0xcbd1
wcbd2:: db ; 0xcbd2
wcbd3:: db ; 0xcbd3
wcbd4:: db ; 0xcbd4
wcbd5:: db ; 0xcbd5
wcbd6:: db ; 0xcbd6
wcbd7:: db ; 0xcbd7
wcbd8:: db ; 0xcbd8
wcbd9:: db ; 0xcbd9
wcbda:: db ; 0xcbda
wcbdb:: db ; 0xcbdb
wcbdc:: db ; 0xcbdc
wcbdd:: db ; 0xcbdd
wcbde:: db ; 0xcbde
wcbdf:: db ; 0xcbdf

wcbe0:: db ; 0xcbe0
wcbe1:: db ; 0xcbe1
wcbe2:: db ; 0xcbe2
wcbe3:: db ; 0xcbe3
wElapsedTimerHoursHi:: db ; 0xcbe4
wElapsedTimerHoursLo:: db ; 0xcbe5
wcbe6:: db ; 0xcbe6
wcbe7:: db ; 0xcbe7
wcbe8:: db ; 0xcbe8
wcbe9:: db ; 0xcbe9
wcbea:: db ; 0xcbea
wcbeb:: db ; 0xcbeb
wcbec:: db ; 0xcbec
wcbed:: db ; 0xcbed
wcbee:: db ; 0xcbee
wcbef:: db ; 0xcbef


ds $2b

; If the player is reading a sign, TV, etc... then this flag is used
; to indicate that. Doesn't seem enabled when in the town shops.
wPlayerInteractingInTextFlag:: db ; 0xcc1b
wcc1c:: db
wcc1d:: db
wcc1e:: db

wCurrentChickenIndex:: db ; 0xcc1f

ds $4c

ds 1 ; 0xcc6c

ds 1 ; 0xcc6d

; 1 if the player is attacking the Sprites and 0 otherwise.
wPlayerAttackingSprite:: db ; 0xcc6e

wPlayerIsInHotSpring:: db ; 0xcc6f

wHotSpringTransitionState:: db ; 0xcc70
wHotSpringTransitionCounter:: db ; 0xcc71


; Fishing States:
;  0 - Inactive
;  1 - Waiting for bite
;  2 - Begin reeling
;  3 - Bite window active
;  4 - Finish reeling and deliver the result
wFishingState:: db ; 0xcc72
wFishingCatchType:: db ; 0xcc73
wFishingBiteTimer:: db ; 0xcc74

wPlayerIsFacingSprite:: db ; 0xcc75

wcc76:: db ; 0xcc76
wcc77:: db ; 0xcc77
wcc78:: db ; 0xcc78
wcc79:: db ; 0xcc79
wcc7a:: db ; 0xcc7a
wcc7b:: db ; 0xcc7b
wcc7c:: db ; 0xcc7c
wcc7d:: db ; 0xcc7d
wcc7e:: db ; 0xcc7e
wcc7f:: db ; 0xcc7f

wcc80:: db ; 0xcc80
wcc81:: db ; 0xcc81
wcc82:: db ; 0xcc82
wcc83:: db ; 0xcc83
wcc84:: db ; 0xcc84
wcc85:: db ; 0xcc85
wcc86:: db ; 0xcc86
wcc87:: db ; 0xcc87
wcc88:: db ; 0xcc88
wcc89:: db ; 0xcc89
wcc8a:: db ; 0xcc8a
wcc8b:: db ; 0xcc8b
wcc8c:: db ; 0xcc8c
wcc8d:: db ; 0xcc8d
wcc8e:: db ; 0xcc8e
wcc8f:: db ; 0xcc8f

wcc90:: db ; 0xcc90
wcc91:: db ; 0xcc91
wcc92:: db ; 0xcc92
wcc93:: db ; 0xcc93
wFacingCaveTileX:: db ; 0xcc94
wFacingCaveTileY:: db ; 0xcc95

wCaveRewardDelay:: db
wCaveRewardType:: db

wcc98:: db ; 0xcc98
wcc99:: db ; 0xcc99
wcc9a:: db ; 0xcc9a
wcc9b:: db ; 0xcc9b
wcc9c:: db ; 0xcc9c
wcc9d:: db ; 0xcc9d
wcc9e:: db ; 0xcc9e
wcc9f:: db ; 0xcc9f

wcca0:: db ; 0xcca0
wcca1:: db ; 0xcca1
wcca2:: db ; 0xcca2
wcca3:: db ; 0xcca3
wcca4:: db ; 0xcca4
wcca5:: db ; 0xcca5

wRanchEvaluationState:: db ; 0xcca6
wRanchEvaluationCounter:: db ; 0xcca7
wRanchEvaluationGrades:: ds 5 ; 0xcca8

wccad:: db ; 0xccad
wccae:: db ; 0xccae
wccaf:: db ; 0xccaf


ds $1a

wTempPlayerMoney:: ds 3 ; 0xccca

wDecimalDigitTileID:: ds 5 ; 0xcccd

ds $9a

wcd6c:: db
wcd6d:: db

wcd6e::
wVillageTextCharacterCounter:: db
wVillageTextTileNumber:: db ; 0xcd6f
; Stores a pointer to the specific character in wVillageTextBuffer
wVillageCharacterPointer:: dw ; 0xcd70

; This WRAM address spans 32 bytes for storing one menu of text (2 lines, 16 characters each line)
UNION
wVillageTextBuffer:: ds $20 ; 0xcd72
NEXTU
wcd72:: db
wcd73:: db
wcd74:: db

wPlayerName:: ds 4 ; 0xcd75

wPlayerGenderSelection:: db ; 0xcd79

wCatOrDogSelection:: db ; 0xcd7a
wPetName:: ds 4 ; 0xcd7b
ENDU

ds 7

; 0 - first option
; 1 - second option
wVillageCursorPositionFlag:: db 

;DEF hROMBankTemp EQU $ffa4
;
;DEF hff80 EQU $ff80
;DEF hff8d EQU $ff8d
;DEF hRandomNumber EQU $ff9c
