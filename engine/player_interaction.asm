JumpOnHorse:
    ld a, [wPlayerHoldingPet]
    or a
    ret nz

    ld a, [$b8ea]
    cp $01
    ret z

    call Call_001_4a92
    ld a, 1
    ld [wPlayerIsRidingHorse], a
    xor a
    ld [$cb82], a
    ld a, $10
    ld [wInputFreezeTimer], a
    ld [$cb86], a
    ld a, [wPlayerFacingDirection]
    add $0c
    call Call_000_151d
    ret

Call_001_4a92:
    ld a, [wPlayerFacingDirection]
    cp FACING_DOWN
    jr z, .jumpOnHorse_FacingDown
    cp FACING_LEFT
    jp z, .jumpOnHorse_FacingLeft
    cp FACING_RIGHT
    jp z, .jumpOnHorse_FacingRight
; fallthrough
    ld hl, wPlayerYPosition
    ld bc, $0015
    call AddBCtoWordAtHL
    call Call_001_69ca
    ld hl, wPlayerYPosition
    ld bc, $ffeb
    call AddBCtoWordAtHL
    ld a, [$cb38]
    and $01
    jp nz, Jump_001_4bc9

    ld a, [$cb3a]
    and $01
    jp nz, Jump_001_4bc9

    ld hl, wPlayerYPosition
    ld bc, $0008
    call AddBCtoWordAtHL
    call Call_001_69ca
    ld hl, wPlayerYPosition
    ld bc, $fff8
    call AddBCtoWordAtHL
    ld a, [$cb38]
    and $01
    jp nz, Jump_001_4bc9

    ld a, [$cb3a]
    and $01
    jp nz, Jump_001_4bc9
    ret

.jumpOnHorse_FacingDown
    ld hl, wPlayerYPosition
    ld bc, -$0014
    call AddBCtoWordAtHL
    call Call_001_69d3
    ld hl, wPlayerYPosition
    ld bc, $0014
    call AddBCtoWordAtHL
    ld a, [$cb38]
    and $01
    jp nz, Jump_001_4bc9

    ld a, [$cb3a]
    and $01
    jp nz, Jump_001_4bc9

    ld hl, wPlayerYPosition
    ld bc, -$0008
    call AddBCtoWordAtHL
    call Call_001_69d3
    ld hl, wPlayerYPosition
    ld bc, $0008
    call AddBCtoWordAtHL
    ld a, [$cb38]
    and $01
    jp nz, Jump_001_4bc9

    ld a, [$cb3a]
    and $01
    jp nz, Jump_001_4bc9
    ret

.jumpOnHorse_FacingLeft
    ld hl, wPlayerXPosition
    ld bc, $0014
    call AddBCtoWordAtHL
    call Call_001_69dc
    ld hl, wPlayerXPosition
    ld bc, $ffec
    call AddBCtoWordAtHL
    ld a, [$cb38]
    and $01
    jr nz, jr_001_4bc9

    ld a, [$cb3a]
    and $01
    jp nz, Jump_001_4bc9

    ld hl, wPlayerXPosition
    ld bc, $0008
    call AddBCtoWordAtHL
    call Call_001_69dc
    ld hl, wPlayerXPosition
    ld bc, $fff8
    call AddBCtoWordAtHL
    ld a, [$cb38]
    and $01
    jr nz, jr_001_4bc9

    ld a, [$cb3a]
    and $01
    jp nz, Jump_001_4bc9
    ret

.jumpOnHorse_FacingRight
    ld hl, wPlayerXPosition
    ld bc, $ffec
    call AddBCtoWordAtHL
    call Call_001_69e5
    ld hl, wPlayerXPosition
    ld bc, $0014
    call AddBCtoWordAtHL
    ld a, [$cb38]
    and $01
    jr nz, jr_001_4bc9

    ld a, [$cb3a]
    and $01
    jr nz, jr_001_4bc9

    ld hl, wPlayerXPosition
    ld bc, $fff8
    call AddBCtoWordAtHL
    call Call_001_69e5
    ld hl, wPlayerXPosition
    ld bc, $0008
    call AddBCtoWordAtHL
    ld a, [$cb38]
    and $01
    jr nz, jr_001_4bc9

    ld a, [$cb3a]
    and $01
    jr nz, jr_001_4bc9
    ret

Jump_001_4bc9:
jr_001_4bc9:
    pop hl
    ret

JumpOffHorse:
    ld a, [wPlayerFacingDirection]
    cp FACING_LEFT
    jr z, .jumpOffHorse_FacingLeftOrRight
    cp FACING_RIGHT
    jp z, .jumpOffHorse_FacingLeftOrRight
    cp FACING_DOWN
    jp z, Jump_001_4cf5
    cp FACING_UP
    jp z, Jump_001_4e03
    ret

.jumpOffHorse_FacingLeftOrRight
    ld d, $00
    ld e, $18
    xor a
    ld [wPlayerIsRidingHorse], a
    call Call_000_19aa
    ld a, 1
    ld [wPlayerIsRidingHorse], a
    ld a, [wPlayerInFrontOfPet]
    or a
    jr nz, jr_001_4c6e

    ld hl, wPlayerYPosition
    ld bc, $0008
    call AddBCtoWordAtHL
    call Call_000_14f9
    ld hl, wPlayerYPosition
    ld bc, -$0008
    call AddBCtoWordAtHL
    ld a, [wcb30]
    ld b, a
    ld a, [wcb32]
    or b
    and $01
    jr nz, jr_001_4c6e

    ld hl, wPlayerYPosition
    ld bc, $0010
    call AddBCtoWordAtHL
    call Call_000_14f9
    ld hl, wPlayerYPosition
    ld bc, $fff0
    call AddBCtoWordAtHL
    ld a, [wcb30]
    ld b, a
    ld a, [wcb32]
    or b
    and $01
    jr nz, jr_001_4c6e

    ld hl, wPlayerYPosition
    ld bc, $0018
    call AddBCtoWordAtHL
    call Call_000_14f9
    ld hl, wPlayerYPosition
    ld bc, $ffe8
    call AddBCtoWordAtHL
    ld a, [wcb30]
    ld b, a
    ld a, [wcb32]
    or b
    and $01
    jr nz, jr_001_4c6e

    ld a, [wPlayerFacingDirection]
    ld [$c78d], a
    add $00
    call Call_000_15fd
    ld a, FACING_DOWN
    ld [wPlayerFacingDirection], a
    jp Jump_001_4f0e

jr_001_4c6e:
    ld d, $00
    ld e, $e8
    xor a
    ld [wPlayerIsRidingHorse], a
    call Call_000_19aa
    ld a, $01
    ld [wPlayerIsRidingHorse], a
    ld a, [wPlayerInFrontOfPet]
    or a
    ret nz

    ld hl, wPlayerYPosition
    ld bc, $fff8
    call AddBCtoWordAtHL
    call Call_000_1502
    ld hl, wPlayerYPosition
    ld bc, $0008
    call AddBCtoWordAtHL
    ld a, [wcb30]
    ld b, a
    ld a, [wcb32]
    or b
    and $01
    ret nz

    ld hl, wPlayerYPosition
    ld bc, $fff0
    call AddBCtoWordAtHL
    call Call_000_1502
    ld hl, wPlayerYPosition
    ld bc, $0010
    call AddBCtoWordAtHL
    ld a, [wcb30]
    ld b, a
    ld a, [wcb32]
    or b
    and $01
    ret nz

    ld hl, wPlayerYPosition
    ld bc, $ffe8
    call AddBCtoWordAtHL
    call Call_000_1502
    ld hl, wPlayerYPosition
    ld bc, $0018
    call AddBCtoWordAtHL
    ld a, [wcb30]
    ld b, a
    ld a, [wcb32]
    or b
    and $01
    ret nz

    ld a, $00
    ld [$c78d], a
    add $00
    call Call_000_15fd
    ld a, FACING_UP
    ld [wPlayerFacingDirection], a
    jp Jump_001_4f0e

Jump_001_4cf5:
    ld d, $18
    ld e, $00
    xor a
    ld [wPlayerIsRidingHorse], a
    call Call_000_19aa
    ld a, $01
    ld [wPlayerIsRidingHorse], a
    ld a, [wPlayerInFrontOfPet]
    or a
    jr nz, jr_001_4d7e

    ld hl, wPlayerXPosition
    ld bc, $0008
    call AddBCtoWordAtHL
    call Call_000_1514
    ld hl, wPlayerXPosition
    ld bc, $fff8
    call AddBCtoWordAtHL
    ld a, [wcb30]
    ld b, a
    ld a, [wcb32]
    or b
    and $01
    jr nz, jr_001_4d7e

    ld hl, wPlayerXPosition
    ld bc, $0010
    call AddBCtoWordAtHL
    call Call_000_1514
    ld hl, wPlayerXPosition
    ld bc, $fff0
    call AddBCtoWordAtHL
    ld a, [wcb30]
    ld b, a
    ld a, [wcb32]
    or b
    and $01
    jr nz, jr_001_4d7e

    ld hl, wPlayerXPosition
    ld bc, $0018
    call AddBCtoWordAtHL
    call Call_000_1514
    ld hl, wPlayerXPosition
    ld bc, $ffe8
    call AddBCtoWordAtHL
    ld a, [wcb30]
    ld b, a
    ld a, [wcb32]
    or b
    and $01
    jr nz, jr_001_4d7e

    ld a, FACING_RIGHT
    ld [wPlayerFacingDirection], a
    ld [$c78d], a
    add $00
    call Call_000_15fd
    jp Jump_001_4f0e

jr_001_4d7e:
    ld d, $e8
    ld e, $00
    xor a
    ld [wPlayerIsRidingHorse], a
    call Call_000_19aa
    ld a, $01
    ld [wPlayerIsRidingHorse], a
    ld a, [wPlayerInFrontOfPet]
    or a
    ret nz

    ld hl, wPlayerXPosition
    ld bc, $fff8
    call AddBCtoWordAtHL
    call Call_000_150b
    ld hl, wPlayerXPosition
    ld bc, $0008
    call AddBCtoWordAtHL
    ld a, [wcb30]
    ld b, a
    ld a, [wcb32]
    or b
    and $01
    ret nz

    ld hl, wPlayerXPosition
    ld bc, $fff0
    call AddBCtoWordAtHL
    call Call_000_150b
    ld hl, wPlayerXPosition
    ld bc, $0010
    call AddBCtoWordAtHL
    ld a, [wcb30]
    ld b, a
    ld a, [wcb32]
    or b
    and $01
    ret nz

    ld hl, wPlayerXPosition
    ld bc, $ffe8
    call AddBCtoWordAtHL
    call Call_000_150b
    ld hl, wPlayerXPosition
    ld bc, $0018
    call AddBCtoWordAtHL
    ld a, [wcb30]
    ld b, a
    ld a, [wcb32]
    or b
    and $01
    ret nz

    ld a, FACING_LEFT
    ld [wPlayerFacingDirection], a
    ld [$c78d], a
    add $00
    call Call_000_15fd
    jp Jump_001_4f0e

Jump_001_4e03:
    ld d, $e8
    ld e, $00
    xor a
    ld [wPlayerIsRidingHorse], a
    call Call_000_19aa
    ld a, $01
    ld [wPlayerIsRidingHorse], a
    ld a, [wPlayerInFrontOfPet]
    or a
    jr nz, jr_001_4e8c

    ld hl, wPlayerXPosition
    ld bc, $fff8
    call AddBCtoWordAtHL
    call Call_000_150b
    ld hl, wPlayerXPosition
    ld bc, $0008
    call AddBCtoWordAtHL
    ld a, [wcb30]
    ld b, a
    ld a, [wcb32]
    or b
    and $01
    jr nz, jr_001_4e8c

    ld hl, wPlayerXPosition
    ld bc, $fff0
    call AddBCtoWordAtHL
    call Call_000_150b
    ld hl, wPlayerXPosition
    ld bc, $0010
    call AddBCtoWordAtHL
    ld a, [wcb30]
    ld b, a
    ld a, [wcb32]
    or b
    and $01
    jr nz, jr_001_4e8c

    ld hl, wPlayerXPosition
    ld bc, $ffe8
    call AddBCtoWordAtHL
    call Call_000_150b
    ld hl, wPlayerXPosition
    ld bc, $0018
    call AddBCtoWordAtHL
    ld a, [wcb30]
    ld b, a
    ld a, [wcb32]
    or b
    and $01
    jr nz, jr_001_4e8c

    ld a, FACING_LEFT
    ld [wPlayerFacingDirection], a
    ld [$c78d], a
    add $00
    call Call_000_15fd
    jp Jump_001_4f0e

jr_001_4e8c:
    ld d, $18
    ld e, $00
    xor a
    ld [wPlayerIsRidingHorse], a
    call Call_000_19aa
    ld a, $01
    ld [wPlayerIsRidingHorse], a
    ld a, [wPlayerInFrontOfPet]
    or a
    ret nz

    ld hl, wPlayerXPosition
    ld bc, $0008
    call AddBCtoWordAtHL
    call Call_000_1514
    ld hl, wPlayerXPosition
    ld bc, $fff8
    call AddBCtoWordAtHL
    ld a, [wcb30]
    ld b, a
    ld a, [wcb32]
    or b
    and $01
    ret nz

    ld hl, wPlayerXPosition
    ld bc, $0010
    call AddBCtoWordAtHL
    call Call_000_1514
    ld hl, wPlayerXPosition
    ld bc, $fff0
    call AddBCtoWordAtHL
    ld a, [wcb30]
    ld b, a
    ld a, [wcb32]
    or b
    and $01
    ret nz

    ld hl, wPlayerXPosition
    ld bc, $0018
    call AddBCtoWordAtHL
    call Call_000_1514
    ld hl, wPlayerXPosition
    ld bc, $ffe8
    call AddBCtoWordAtHL
    ld a, [wcb30]
    ld b, a
    ld a, [wcb32]
    or b
    and $01
    ret nz

    ld a, FACING_RIGHT
    ld [wPlayerFacingDirection], a
    ld [$c78d], a
    add $00
    call Call_000_15fd

Jump_001_4f0e:
    xor a
    ld [wPlayerIsRidingHorse], a
    ld [$cb82], a
    ld a, $01
    ld [$c780], a
    xor a
    ld [$c78c], a
    ld [$c792], a
    ld a, $40
    ld [$c791], a
    ld a, [wPlayerXPosition]
    ld [$c786], a
    ld a, [wPlayerXPosition+1]
    ld [$c787], a
    ld a, [wPlayerYPosition]
    ld [$c788], a
    ld a, [wPlayerYPosition+1]
    ld [$c789], a
    ld a, $18
    ld [$cb85], a
    ld [wInputFreezeTimer], a
    ld a, [wPlayerFacingDirection]
    add $68
    call Call_000_151d
    pop hl
    ret

PickPetUp:
    ld a, 1
    ld [wPlayerHoldingPet], a
    xor a
    ld [wPetIsPresentOnMap], a
    ld [wPlayerInFrontOfPet], a
    ld hl, PickedUpDogPalette
    ld a, [sCatOrDog]
    cp DOG
    jr z, .loadPalette
    ld hl, PickedUpCatPalette
.loadPalette
    call SyncLoadSpritePalette2
    ret

PickedUpDogPalette:
    db $7C, $4E, $84, $00, $3F, $02, $7F, $47
PickedUpCatPalette:
    db $7C, $4E, $84, $00, $9C, $09, $7F, $47

PutPetDown:
    ld a, [wPlayerFacingDirection]
    cp FACING_LEFT
    jr z, .putPetDown_FacingLeft
    cp FACING_RIGHT
    jp z, .putPetDown_FacingRight
    cp FACING_DOWN
    jp z, .putPetDown_FacingDown
    cp FACING_UP
    jp z, .putPetDown_FacingUp
    ret

.putPetDown_FacingLeft
    ld hl, wPlayerXPosition
    ld bc, $fff8
    call AddBCtoWordAtHL
    call Call_000_150b
    ld hl, wPlayerXPosition
    ld bc, $0008
    call AddBCtoWordAtHL
    ld a, [wcb30]
    ld b, a
    ld a, [wcb32]
    or b
    and $01
    ret nz

    ld hl, wPlayerXPosition
    ld bc, $fff2
    call AddBCtoWordAtHL
    call Call_000_150b
    ld hl, wPlayerXPosition
    ld bc, $000e
    call AddBCtoWordAtHL
    ld a, [wcb30]
    ld b, a
    ld a, [wcb32]
    or b
    and $01
    ret nz

    ld a, [wPlayerFacingDirection]
    ld [wPetFacingDirection], a
    add $00
    call Call_000_1622
    ld a, [wPlayerXPosition]
    sub $10
    ld [wPetXPosition], a
    ld a, [wPlayerXPosition+1]
    sbc $00
    ld [wPetXPosition+1], a
    ld a, [wPlayerYPosition]
    ld [wPetYPosition], a
    ld a, [wPlayerYPosition+1]
    ld [wPetYPosition+1], a
    ld a, $3c
    ld [$c7b1], a
    xor a
    ld [$c7b2], a
    call SavePetPosition
    ld a, $01
    ld [wPetIsPresentOnMap], a
    xor a
    ld [wPlayerHoldingPet], a
    ld a, [sCatOrDog]
    cp CAT
    jp z, .Jump_001_5022

    ld a, [wPetFacingDirection]
    ld b, a
    add $20
    call Call_000_163d
    ret

.Jump_001_5022
    ld a, [wPetFacingDirection]
    ld b, a
    add $00
    call Call_000_163d
    ret

.putPetDown_FacingRight
    ld hl, wPlayerXPosition
    ld bc, $0008
    call AddBCtoWordAtHL
    call Call_000_1514
    ld hl, wPlayerXPosition
    ld bc, $fff8
    call AddBCtoWordAtHL
    ld a, [wcb30]
    ld b, a
    ld a, [wcb32]
    or b
    and $01
    ret nz

    ld hl, wPlayerXPosition
    ld bc, $000e
    call AddBCtoWordAtHL
    call Call_000_1514
    ld hl, wPlayerXPosition
    ld bc, $fff2
    call AddBCtoWordAtHL
    ld a, [wcb30]
    ld b, a
    ld a, [wcb32]
    or b
    and $01
    ret nz

    ld a, [wPlayerFacingDirection]
    ld [wPetFacingDirection], a
    add $00
    call Call_000_1622
    ld a, [wPlayerXPosition]
    add $10
    ld [wPetXPosition], a
    ld a, [wPlayerXPosition+1]
    adc $00
    ld [wPetXPosition+1], a
    ld a, [wPlayerYPosition]
    ld [wPetYPosition], a
    ld a, [wPlayerYPosition+1]
    ld [wPetYPosition+1], a
    ld a, $3c
    ld [$c7b1], a
    xor a
    ld [$c7b2], a
    call SavePetPosition
    ld a, $01
    ld [wPetIsPresentOnMap], a
    xor a
    ld [wPlayerHoldingPet], a
    ld a, [sCatOrDog]
    cp CAT
    jp z, .Jump_001_5022

    ld a, [wPetFacingDirection]
    ld b, a
    add $20
    call Call_000_163d
    ret

.putPetDown_FacingUp
    ld hl, wPlayerYPosition
    ld bc, $fff8
    call AddBCtoWordAtHL
    call Call_000_1502
    ld hl, wPlayerYPosition
    ld bc, $0008
    call AddBCtoWordAtHL
    ld a, [wcb30]
    ld b, a
    ld a, [wcb32]
    or b
    and $01
    ret nz

    ld a, [wcb30]
    ld b, a
    ld a, [wcb32]
    or b
    and $02
    ret nz

    ld hl, wPlayerYPosition
    ld bc, $fff2
    call AddBCtoWordAtHL
    call Call_000_1502
    ld hl, wPlayerYPosition
    ld bc, $000e
    call AddBCtoWordAtHL
    ld a, [wcb30]
    ld b, a
    ld a, [wcb32]
    or b
    and $01
    ret nz

    ld a, [wcb30]
    ld b, a
    ld a, [wcb32]
    or b
    and $02
    ret nz

    ld hl, wPlayerYPosition
    ld bc, $ffe8
    call AddBCtoWordAtHL
    call Call_000_1502
    ld hl, wPlayerYPosition
    ld bc, $0018
    call AddBCtoWordAtHL
    ld a, [wcb30]
    ld b, a
    ld a, [wcb32]
    or b
    and $01
    ret nz

    ld a, [wcb30]
    ld b, a
    ld a, [wcb32]
    or b
    and $02
    ret nz

    ld a, [wPlayerFacingDirection]
    ld [wPetFacingDirection], a
    add $00
    call Call_000_1622
    ld a, [wPlayerYPosition]
    sub $18
    ld [wPetYPosition], a
    ld a, [wPlayerYPosition+1]
    sbc $00
    ld [wPetYPosition+1], a
    ld a, [wPlayerXPosition]
    ld [wPetXPosition], a
    ld a, [wPlayerXPosition+1]
    ld [wPetXPosition+1], a
    ld a, $3c
    ld [$c7b1], a
    xor a
    ld [$c7b2], a
    call SavePetPosition
    ld a, $01
    ld [wPetIsPresentOnMap], a
    xor a
    ld [wPlayerHoldingPet], a
    ld a, [sCatOrDog]
    cp CAT
    jp z, .Jump_001_5022

    ld a, [wPetFacingDirection]
    ld b, a
    add $20
    call Call_000_163d
    ret

.putPetDown_FacingDown
    ld hl, wPlayerYPosition
    ld bc, $0004
    call AddBCtoWordAtHL
    call Call_000_14f9
    ld hl, wPlayerYPosition
    ld bc, $fffc
    call AddBCtoWordAtHL
    ld a, [wcb30]
    ld b, a
    ld a, [wcb32]
    or b
    and $01
    ret nz

    ld a, [$cb35]
    cp $d9
    jr nz, .jr_001_51b8

    ld a, [$cb36]
    cp $3c
    jr nz, .jr_001_51b8
    ret

.jr_001_51b8
    ld hl, wPlayerYPosition
    ld bc, $0008
    call AddBCtoWordAtHL
    call Call_000_14f9
    ld hl, wPlayerYPosition
    ld bc, $fff8
    call AddBCtoWordAtHL
    ld a, [wcb30]
    ld b, a
    ld a, [wcb32]
    or b
    and $01
    ret nz

    ld a, [$cb35]
    cp $d9
    jr nz, .jr_001_51e7

    ld a, [$cb36]
    cp $3c
    jr nz, .jr_001_51e7
    ret

.jr_001_51e7:
    ld hl, wPlayerYPosition
    ld bc, $000e
    call AddBCtoWordAtHL
    call Call_000_14f9
    ld hl, wPlayerYPosition
    ld bc, $fff2
    call AddBCtoWordAtHL
    ld a, [wcb30]
    ld b, a
    ld a, [wcb32]
    or b
    and $01
    ret nz

    ld a, [$cb35]
    cp $d9
    jr nz, .jr_001_5216

    ld a, [$cb36]
    cp $3c
    jr nz, .jr_001_5216
    ret

.jr_001_5216:
    ld a, [wPlayerFacingDirection]
    ld [wPetFacingDirection], a
    add $00
    call Call_000_1622
    ld a, [wPlayerYPosition]
    add $10
    ld [wPetYPosition], a
    ld a, [wPlayerYPosition+1]
    adc $00
    ld [wPetYPosition+1], a
    ld a, [wPlayerXPosition]
    ld [wPetXPosition], a
    ld a, [wPlayerXPosition+1]
    ld [wPetXPosition+1], a
    ld a, $3c
    ld [$c7b1], a
    xor a
    ld [$c7b2], a
    call SavePetPosition
    ld a, $01
    ld [wPetIsPresentOnMap], a
    xor a
    ld [wPlayerHoldingPet], a
    ld a, [sCatOrDog]
    cp CAT
    jp z, .Jump_001_5022

    ld a, [wPetFacingDirection]
    ld b, a
    add $20
    call Call_000_163d
    ret

SavePetPosition:
    ld a, [wPetXPosition]
    ld [sPetXPosition], a
    ld a, [wPetXPosition+1]
    ld [sPetXPosition+1], a
    ld a, [wPetYPosition]
    ld [sPetYPosition], a
    ld a, [wPetYPosition+1]
    ld [sPetYPosition+1], a
    ret

PlayerInteraction_A_Pressed:
    ld a, [wHeldObject]
    or a
    jr nz, .useHeldObject

    ld a, [$cb82]
    or a
    jp nz, JumpOnHorse

    ld a, [wPlayerIsRidingHorse]
    or a
    jp nz, JumpOffHorse

    ld a, [wPlayerInFrontOfPet]
    or a
    jp nz, PickPetUp

    ld a, [wPlayerHoldingPet]
    or a
    jp nz, PutPetDown

.useHeldObject
    ld a, [sItemSlot]
    ld hl, sInventory
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    cp NO_ITEM
    jp nz, UseItem

    ld a, [wSTAT_HandlerIndex]
    cp $02
    ret z

    ld a, [wHeldObject]
    or a
    jp nz, Jump_001_56a2

    ld a, [wCollisionNoMovement]
    or a
    ret z

    ld a, [wDominantFacingTileID]
    cp $6a
    jr c, .checkForBushTile

    cp $70
    jr nc, .checkForBushTile

    ld a, [$cb34]
    cp $81
    jr nz, .checkForBushTile
    jp Jump_001_5517

.checkForBushTile
    ld a, [wDominantFacingTileID]
    cp BUSH_TILE
    jr nz, .checkForStoneTile

    push hl
    push af
    ld l, $b3
    ld h, $4f
    ld a, $20
    call BankSwitchCallHL
    pop af
    pop hl
    ld a, BUSH
    ld [wHeldObject], a
    ld a, $18
    call Call_000_16d1
    xor a
    ld [wCollisionNoMovement], a
    ldh [$ffa4], a
    jp Jump_001_5458

.checkForStoneTile
    cp STONE_TILE
    jr nz, .checkForFencePostTile

    push hl
    push af
    ld l, $c8
    ld h, $4f
    ld a, $20
    call BankSwitchCallHL
    pop af
    pop hl
    ld a, STONE
    ld [wHeldObject], a
    ld a, $0f
    call $16d1
    xor a
    ldh [$ffa4], a
    jp Jump_001_5458

.checkForFencePostTile
    cp FENCE_POST_TILE
    jr nz, .checkForFullyGrownCrop

    push hl
    push af
    ld l, $cf
    ld h, $4f
    ld a, $20
    call BankSwitchCallHL
    pop af
    pop hl
    ld a, FENCE_POST
    ld [wHeldObject], a
    ld a, $17
    call $16d1
    xor a
    ldh [$ffa4], a
    jp Jump_001_5458

.checkForFullyGrownCrop
    ld a, [$cb34]
    and $40
    ret z

    ld a, [wDominantFacingTileID]
    cp $60
    jr z, jr_001_536f
    cp $88
    jr z, jr_001_538d
    cp FULLY_GROWN_TURNIP_TILE
    jr z, PickUpTurnip
    cp FULLY_GROWN_POTATO_TILE
    jr z, PickUpPotato
    cp $b8
    jp z, Jump_001_53e6
    cp $cc
    jp z, Jump_001_5403
    cp $dc
    jp z, Jump_001_5420
    cp $f0
    jp z, Jump_001_543d
    ret

jr_001_536f:
    push hl
    push af
    ld l, $dd
    ld h, $4f
    ld a, $20
    call BankSwitchCallHL
    pop af
    pop hl
    ld a, $10
    ld [wHeldObject], a
    ld a, $1b
    call $16d1
    ld a, $02
    ldh [$ffa4], a
    jp Jump_001_5458

jr_001_538d:
    push hl
    push af
    ld l, $e4
    ld h, $4f
    ld a, $20
    call BankSwitchCallHL
    pop af
    pop hl
    ld a, $11
    ld [wHeldObject], a
    ld a, $1a
    call $16d1
    ld a, $04
    ldh [$ffa4], a
    jp Jump_001_5458

PickUpTurnip:
    push hl
    push af
    ld l, $eb
    ld h, $4f
    ld a, $20
    call BankSwitchCallHL
    pop af
    pop hl
    ld a, TURNIP
    ld [wHeldObject], a
    ld a, $1f
    call $16d1
    ld a, $01
    ldh [$ffa4], a
    jp Jump_001_5458

PickUpPotato:
    push hl
    push af
    ld l, $f2
    ld h, $4f
    ld a, $20
    call BankSwitchCallHL
    pop af
    pop hl
    ld a, POTATO
    ld [wHeldObject], a
    ld a, $21
    call $16d1
    ld a, $01
    ldh [$ffa4], a
    jr jr_001_5458

Jump_001_53e6:
    push hl
    push af
    ld l, $f9
    ld h, $4f
    ld a, $20
    call BankSwitchCallHL
    pop af
    pop hl
    ld a, $14
    ld [wHeldObject], a
    ld a, $6a
    call $16d1
    ld a, $01
    ldh [$ffa4], a
    jr jr_001_5458

Jump_001_5403:
    push hl
    push af
    ld l, $00
    ld h, $50
    ld a, $20
    call BankSwitchCallHL
    pop af
    pop hl
    ld a, $15
    ld [wHeldObject], a
    ld a, $6b
    call $16d1
    ld a, $01
    ldh [$ffa4], a
    jr jr_001_5458

Jump_001_5420:
    push hl
    push af
    ld l, $dd
    ld h, $4f
    ld a, $20
    call BankSwitchCallHL
    pop af
    pop hl
    ld a, $16
    ld [wHeldObject], a
    ld a, $6c
    call $16d1
    ld a, $01
    ldh [$ffa4], a
    jr jr_001_5458

Jump_001_543d:
    push hl
    push af
    ld l, $ac
    ld h, $4f
    ld a, $20
    call BankSwitchCallHL
    pop af
    pop hl
    ld a, $17
    ld [wHeldObject], a
    ld a, $69
    call $16d1
    ld a, $03
    ldh [$ffa4], a

Jump_001_5458:
jr_001_5458:
    ld a, $35
    call Call_000_25ce
    ldh a, [$ffa4]
    ld h, $00
    ld l, a
    add hl, hl
    add hl, hl
    add hl, hl
    ld bc, $5557
    add hl, bc
    ld a, [hl+]
    ldh [$ffa4], a
    ld a, [hl+]
    ldh [$ffa5], a
    ld a, [hl+]
    ldh [$ffa6], a
    ld a, [hl+]
    ldh [$ffa7], a
    ld a, [hl+]
    ldh [$ffa8], a
    ld a, [hl+]
    ldh [$ffa9], a
    ld a, [$cb35]
    ld h, a
    ld a, [$cb36]
    ld l, a
    ldh a, [$ffa4]
    call Call_000_1fb5
    ld [hl+], a
    ldh a, [$ffa5]
    call Call_000_1fb5
    ld [hl+], a
    ld a, [wPlayerFacingDirection]
    cp FACING_DOWN
    jr nz, jr_001_54a5

    ld a, [wPlayerXPosition]
    and $08
    cpl
    inc a
    ld b, a
    ld c, $04
    call Call_000_195e
    jr jr_001_54e0

jr_001_54a5:
    cp $01
    jr nz, jr_001_54bc

    ld a, [wPlayerYPosition]
    sub $08
    and $08
    add $08
    cpl
    inc a
    ld c, a
    ld b, $ec
    call Call_000_195e
    jr jr_001_54e0

jr_001_54bc:
    cp $02
    jr nz, jr_001_54d3

    ld a, [wPlayerYPosition]
    sub $08
    and $08
    add $08
    cpl
    inc a
    ld c, a
    ld b, $0c
    call Call_000_195e
    jr jr_001_54e0

jr_001_54d3:
    ld a, [wPlayerXPosition]
    and $08
    cpl
    inc a
    ld b, a
    ld c, $e8
    call Call_000_195e

jr_001_54e0:
    call SyncToBlankPeriod
    ldh a, [$ffa6]
    call Call_000_1fb5
    ld [hl+], a
    call SyncToBlankPeriod
    ldh a, [$ffa7]
    call Call_000_1fb5
    ld [hl], a
    ld a, $1f
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    call SyncToBlankPeriod
    ldh a, [$ffa8]
    call Call_000_1fb5
    ld [hl+], a
    call SyncToBlankPeriod
    ldh a, [$ffa9]
    call Call_000_1fb5
    ld [hl], a
    ld a, $03
    call RST_TableJumpBankSwitch
    ld a, $1a
    ld [wInputFreezeTimer], a
    ret

Jump_001_5517:
    ld a, [sNumberOfFencePosts]
    ld b, a
    ld a, [$b939]
    or b
    ret z

    push hl
    push af
    ld l, $cf
    ld h, $4f
    ld a, $20
    call BankSwitchCallHL
    pop af
    pop hl
    ld a, $03
    ld [wHeldObject], a
    ld a, $17
    call $16d1
    xor a
    ld [wCollisionNoMovement], a
    ld a, $03
    call RST_TableJumpBankSwitch
    ld a, $1a
    ld [wInputFreezeTimer], a
    ld hl, sNumberOfFencePosts
    ld bc, $fffe
    call AddBCtoWordAtHL
    call Call_000_0f73
    ld a, $35
    call Call_000_25ce
    ret


    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld de, $1000
    db $10
    db $10
    stop
    nop
    ld e, h
    ld b, c
    daa
    jr z, $55a3

    jr c, jr_001_556e

jr_001_556e:
    nop
    db $ec
    ld b, c
    dec l
    ld l, $3d
    ld a, $00
    nop
    add d
    ld b, c
    dec l
    ld l, $3d
    ld a, $00
    nop

Call_001_557f:
    ld a, [wHeldObject]
    or a
    ret nz

    ld a, [wPlayerIsRidingHorse]
    or a
    ret nz

    ld a, [wPlayerHoldingPet]
    or a
    ret nz

    ld a, [wCollisionNoMovement]
    or a
    ret z

    ld a, [wFreezePlayerInTextWindowOrInTown]
    or a
    ret nz

    ldh a, [$ff8b]
    and $01
    ret z

    ld a, [$cb34]
    cp $81
    ret nz

    ld a, [wDominantFacingTileID]
    cp $41
    jr z, .jr_001_55c0
    cp SHIPPING_BOX_SIGN_TILE
    jr z, .printShippingBoxSignText
    cp FENCE_POST_SIGN_TILE
    jr z, .printFencePostSignText
    cp STABLE_SIGN_TILE
    jr z, jr_001_55e1
    cp SILO_SIGN_TILE
    jr z, jr_001_55ec
    cp $d6
    jp z, Jump_001_5647
    ret

.jr_001_55c0
    ld a, $19
    call InitializeTextIDAndDisplay
    ld a, $00
    call RST_TableJumpBankSwitch
    ret

.printShippingBoxSignText
    ld a, TEXT_SHIPPING_BOX_SIGN
    call InitializeTextIDAndDisplay
    ld a, 0
    call RST_TableJumpBankSwitch
    ret

.printFencePostSignText
    ld a, TEXT_FENCE_POST_SIGN
    call InitializeTextIDAndDisplay
    ld a, $00
    call RST_TableJumpBankSwitch
    ret

jr_001_55e1:
    ld a, $1b
    call InitializeTextIDAndDisplay
    ld a, $00
    call RST_TableJumpBankSwitch
    ret


jr_001_55ec:
    ld a, [$b890]
    cp $01
    jr z, jr_001_5603

    ld a, [$c800]
    or a
    ret nz

    ld a, $1c
    call InitializeTextIDAndDisplay
    ld a, $00
    call RST_TableJumpBankSwitch
    ret


jr_001_5603:
    xor a
    ld [$b890], a
    ld a, $32
    call Call_000_152a
    ld a, $02
    ld [$c80d], a
    ld a, [wPlayerXPosition]
    sub $60
    ld [$c806], a
    ld a, [wPlayerXPosition+1]
    sbc $00
    ld [$c807], a
    ld a, [wPlayerYPosition]
    ld [$c808], a
    ld a, [wPlayerYPosition+1]
    sbc $00
    ld [$c809], a
    ld a, $01
    ld [$c810], a
    ld a, $01
    ld [$c80c], a
    ld a, $40
    ld [$c811], a
    ld [wInputFreezeTimer], a
    ld a, $00
    ld [$c813], a
    ret


Jump_001_5647:
    ld a, [$b891]
    or a
    ret z

    xor a
    ld [$b891], a
    ld [$c760], a
    ld a, $10
    ld [$ae30], a
    ld a, $00
    ld [$ae31], a
    ld a, $1a
    call Call_000_152a
    ld a, $02
    ld [$c80d], a
    ld a, [wPlayerXPosition]
    sub $60
    ld [$c806], a
    ld a, [wPlayerXPosition+1]
    sbc $00
    ld [$c807], a
    ld a, [wPlayerYPosition]
    ld [$c808], a
    ld a, [wPlayerYPosition+1]
    sbc $00
    ld [$c809], a
    ld a, $02
    ld [$c810], a
    ld a, $01
    ld [$c80c], a
    ld a, $40
    ld [$c811], a
    ld [wInputFreezeTimer], a
    ld a, $00
    ld [$c813], a
    ld a, $0a
    call Call_000_0f47
    ret


Jump_001_56a2:
    call Call_001_56a6
    ret

Call_001_56a6:
    ld a, [wHeldObject]
    rst $00

