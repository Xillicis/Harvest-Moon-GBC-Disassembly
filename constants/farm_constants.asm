; Items you can pickup
const_def 1
const BUSH       ; $01
const STONE      ; $02
const FENCE_POST ; $03
const MUSHROOM   ; $30

; Tile IDs
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

DEF SIGN_TILE EQU $44

DEF PLANTED_SEEDS_TILE EQU $90 ; might be different for different seeds planted...
