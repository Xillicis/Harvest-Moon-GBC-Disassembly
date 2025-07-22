const_def
const CAT ; 0
const DOG ; 1

; Items you can pickup
const_def 1
const BUSH       ; $01
const STONE      ; $02
const FENCE_POST ; $03
const_skip 14
const TURNIP     ; $12
const POTATO     ; $13
const MUSHROOM   ; $30

; Tile IDs in the farm
const_def 1
const FENCE_POST_TILE             ; $01
const BUSH_TILE                   ; $02
const STONE_TILE                  ; $03
const BIG_STONE_TOP_LEFT_TILE     ; $04
const BIG_STONE_TOP_RIGHT_TILE    ; $05
const BIG_STONE_BOTTOM_LEFT_TILE  ; $06
const BIG_STONE_BOTTOM_RIGHT_TILE ; $07
const BIG_LOG_TOP_LEFT_TILE       ; $08
const BIG_LOG_TOP_RIGHT_TILE      ; $09
const BIG_LOG_BOTTOM_LEFT_TILE    ; $0a
const BIG_LOG_BOTTOM_RIGHT_TILE   ; $0b
const_skip 2
const SOLID_FENCE_TILE            ; $0e
const_skip
const PATH_TILE                   ; $10
const PLOWED_LAND_TILE            ; $11
const WATERED_LAND_TILE           ; $12

DEF WATER_BOTTOM_LEFT_TILE   EQU $2a
DEF WATER_BOTTOM_CENTER_TILE EQU $2b
DEF WATER_BOTTOM_RIGHT_TILE  EQU $2c

DEF SHIPPING_BOX_SIGN_TILE EQU $42
DEF FENCE_POST_SIGN_TILE EQU $43
DEF STABLE_SIGN_TILE EQU $44
DEF SILO_SIGN_TILE EQU $45

DEF PLANTED_SEEDS_TILE EQU $90 ; might be different for different seeds planted...

DEF FULLY_GROWN_TURNIP_TILE EQU $98

DEF FULLY_GROWN_POTATO_TILE EQU $ac
