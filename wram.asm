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

ds 3

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

ds $21d
;
; Since the player is not locked to a grid, the play can be facing two different tiles at one.
; If the player is facing up/down, then this ram address indicates whether there is an object on the left side.
; If the player is facing left/right, then this ram address indicates there is an object on the "down" side.
wcb30:: db
;; This address is used to store the object ID that is in the respective space.
;; Need to catalog all the possible IDs here.
wSubordinateFacingTileID:: db
;; Same as the above, but regarding the "right" or "up" side object
wcb32:: db ; 0xcb32
wDominantFacingTileID:: db ; 0xcb33

ds $16

;; The item you hold above your head
wHeldObject:: db ; 0xcb4a

ds 1 ; 0xcb4b

;; Either 1 or 0, for whether the textbox is displayed
wTextBoxIsDisplayed:: db ; 0xcb4c

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
ds 1 ; 0xcb5a
ds 1 ; 0xcb5b
ds 1 ; 0xcb5c
ds 1 ; 0xcb5d
ds 1 ; 0xcb5e
ds 1 ; 0xcb5f
ds 1 ; 0xcb60

ds 8 ; 

; This is 0 if it's a normal text box window and 1 if the player can pick YES/NO.
wPlayerTextInputFlag:: db ; 0xcb69
ds 1 ; 0xcb6a
ds 1 ; 0xcb6b
ds 1 ; 0xcb6c
ds 1 ; 0xcb6d
ds 1 ; 0xcb6e

ds 7

; This starts a countdown for the animation of the weather girl moving
; then it gets into a small loop just for the animation of the blinking sun (or other weather thing)
wTVAnimationTimer:: db ; 0xcb76

; This flips between $01 and $ff when the fun is blinking
wTVBlinkingIndicator:: db ; 0xcb77

; A flag to indicate the TV is turned on
wTVIsTurnedOn:: db ; 0xcb78

ds 8

; This is zero if the player is outside at the farm.
; It is one if the player is inside or at town
wPlayerIsInsideOrAtTown:: db ; 0xcb81

ds 2

wPlayerIsRidingHorse:: db ; 0xcb84

ds 4

wPlayerInFrontOfPet:: db ; 0xcb89

ds 1

; a flag to indicate the player is or is not holding a pet (0 or 1)
wPlayerHoldingPet:: db ; 0xcb8b

ds 1 ; 0xcb8c

ds 1 ; 0xcb8d

ds 1 ; 0xcb8e

wThrowingSeedsAnimationTimer:: db ; 0xcb8f

;ds $13e
ds $8b

; If the player is reading a sign, TV, etc... then this flag is used
; to indicate that. Doesn't seem enabled when in the town shops.
wPlayerInteractingInTextFlag:: db ; 0xcc1b

ds $ae

wTempPlayerMoney:: ds 3 ; 0xccca

wDecimalPlayerMoneyTileID:: ds 5 ; 0xcccd

ds $a3

wPlayerName:: ds 4 ; 0xcd75

wPlayerGenderSelection:: db ; 0xcd79

wCatOrDogSelection:: db ; 0xcd7a
wPetName:: ds 4 ; 0xcd7b



;DEF hROMBankTemp EQU $ffa4
;
;DEF hff80 EQU $ff80
;DEF hff8d EQU $ff8d
;DEF hRandomNumber EQU $ff9c
