; 0 - Facing down
; 1 - Facing left
; 2 - Facing right
; 3 - Facing up
;DEF wPlayerFacingDirection EQU wPlayerFacingDirection
;
;DEF wCollisionNoMovement EQU $c90e

; Since the player is not locked to a grid, the play can be facing two different tiles at one.
; If the player is facing up/down, then this ram address indicates whether there is an object on the left side.
; If the player is facing left/right, then this ram address indicates there is an object on the "down" side.
;DEF wcb30   EQU $cb30
;; This address is used to store the object ID that is in the respective space.
;; Need to catalog all the possible IDs here.
;DEF wLeftOrDownSideFacingTileID EQU $cb31
; Same as the above, but regarding the "right" or "up" side object
;DEF wcb32    EQU $cb32
;DEF wRightOrUpSideFacingTileID  EQU $cb33

; The item you hold above your head
;DEF wHeldObject EQU $cb4a

;DEF wPlayerGenderSelection EQU $cd79

DEF wCatOrDogSelection EQU $cd7a

DEF wTempPlayerMoney EQU $ccca

DEF hROMBankTemp EQU $ffa4

DEF hff80 EQU $ff80
DEF hff8d EQU $ff8d
DEF hRandomNumber EQU $ff9c
