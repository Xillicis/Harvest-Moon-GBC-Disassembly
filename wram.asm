SECTION "WRAM 0", WRAM0

wShadowOAM:: ds 160 ; at $C000, holds up to 40×4 bytes of sprite attributes

ds 2

wLCDCTempStorage:: db ; 0xc0a2

ds 4

wSTAT_HandlerIndex:: db ; 0xc0a7

ds 1112

wVRAMBlitCommandList:: db ; 0xc500

ds 257

; Seems like an ID used to determine which player sprite should be displayed;
; Walking, holding item, etc...
wPlayerSpriteID:: db ; 0xc602

; Number used to indicate which animation sprite to use (0 - Max Num Animations)
wPlayerAnimationIndex:: db ; 0xc603

ds 9

; 0 - Facing down
; 1 - Facing left
; 2 - Facing right
; 3 - Facing up
wPlayerFacingDirection:: db ; 0xc60d

ds $12

wPlayerIsCarryingItem:: db ; 0xc620

ds $20

ds $2cd

wCollisionNoMovement:: db ; 0xc90e

wDestinationWarpID:: db ; 0xc90f

ds 2

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
wLeftOrDownSideFacingTileID:: db
;; Same as the above, but regarding the "right" or "up" side object
wcb32:: db ; 0xcb32
wRightOrUpSideFacingTileID:: db ; 0xcb33

ds $16

;; The item you hold above your head
wHeldObject:: db ; 0xcb4a

ds 1 ; 0xcb4b

;; Either 1 or 0, for whether the textbox is displayed
wTextBoxIsDisplayed:: db ; 0xcb4c

ds 1 ; 0xcb4d

ds 1 ; 0xcb4e

ds 1 ; 0xcb4f

ds 1 ; 0xcb50

ds 1 ; 0xcb51

wTextID:: db ; 0xcb52

ds 46

; This is zero if the player is outside at the farm.
; It is one if the player is inside or at town
wPlayerIsInsideOrAtTown:: db ; 0xcb81

ds 2

wPlayerIsRidingHorse:: db ; 0xcb84

ds 6


; a flag to indicate the player is or is not holding a pet (0 or 1)
wPlayerHoldingPet:: db ; 0xcb8b

ds $13e ; $17f

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
