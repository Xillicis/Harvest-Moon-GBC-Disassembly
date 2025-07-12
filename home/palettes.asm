; hl points to a list of palette data
CGBBackgroundPaletteUpload:
    ld c, rBGPI_c
    ld a, 1 << rBGPI_AUTO_INCREMENT
    ldh [c], a
    inc c
    ld b, 32
.loop
    ld a, [hli]
    ldh [c], a
    ld a, [hli]
    ldh [c], a
    dec b
    jr nz, .loop
    ret

BGPBackgroundPaletteUpload: ; 00x03ab
    ld c, rOBPI_c
    ld a, 1 << rBGPI_AUTO_INCREMENT
    ldh [c], a
    inc c
    ld b, 32
.loop
    ld a, [hli]
    ldh [c], a
    ld a, [hli]
    ldh [c], a
    dec b
    jr nz, .loop
    ret

Call_000_03bb:
    ld de, $dd02
    ld b, $40
    call CopyHLtoDE
    xor a
    ld [$cd22], a
    inc a
    ld [$cd23], a
    ld c, rBGPI_c
    ld a, $80
    ldh [c], a
    inc c
    ld b, $20
.loop
    ld a, $ff
    ldh [c], a
    ld a, $7f
    ldh [c], a
    dec b
    jr nz, .loop
    ret


SyncLoadSpritePalette3:
    ld b, %10011000 ; address for start of 3rd palette
    call SyncLoadOBJPalette
    ret

SyncLoadSpritePalette2:
    ld b, %10010000 ; address for start of 2nd palette
    call SyncLoadOBJPalette
    ret

SyncLoadSpritePalette5:
    ld b, %10101000 ; address for start of 5th palette
    call SyncLoadOBJPalette
    ret

SyncLoadSpritePalette7:
    ld b, %10111000 ; address for start of 7th palette
    call SyncLoadOBJPalette
    ret

SyncLoadSpritePalette4:
    ld b, %10100000 ; address for start of 4th palette
    call SyncLoadOBJPalette
    ret

SyncLoadSpritePalette6:
    ld b, %10110000 ; address for start of 6th palette
    call SyncLoadOBJPalette
    ret

Call_000_0401:
    ld b, $b8
    call SyncLoadBGPPalette
    ret

; b contains some kind of palette address
; hl points to palette data
SyncLoadOBJPalette:
    ld c, rOBPI_c
    ld a, b
    ldh [c], a
    ld c, rOBPD_c
    ld d, $08
.loop
    call SyncToBlankPeriod
    ld a, [hli]
    ldh [c], a
    dec d
    jr nz, .loop
    ret

SyncLoadBGPPalette:
    ld c, rBGPI_c
    ld a, b
    ldh [c], a
    ld c, rBGPD_c
    ld d, $08
.loop
    call SyncToBlankPeriod
    ld a, [hli]
    ldh [c], a
    dec d
    jr nz, .loop
    ret
