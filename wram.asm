SECTION "WRAM 0", WRAM0

wShadowOAM:: ds 160 ; at $C000, holds up to 40×4 bytes of sprite attributes

ds 7

wSTAT_HandlerIndex:: db

ds 1381

; 0 - Facing down
; 1 - Facing left
; 2 - Facing right
; 3 - Facing up
wPlayerFacingDirection:: db ; 0xc60d

ds $300

wCollisionNoMovement:: db ; 0xc90e

ds $221
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

ds 54

; This is zero if the player is outside at the farm.
; It is one if the player is inside or at town
wPlayerIsInsideOrAtTown:: db ; 0xcb81

ds $148 ; $17f

wTempPlayerMoney:: ds 3 ; 0xccca

ds $ac

wPlayerGenderSelection:: db ; 0xcd79
wCatOrDogSelection:: db ; 0xcd7a



;DEF hROMBankTemp EQU $ffa4
;
;DEF hff80 EQU $ff80
;DEF hff8d EQU $ff8d
;DEF hRandomNumber EQU $ff9c
