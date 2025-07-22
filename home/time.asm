; Advance game clock by one minute every ~30 frames, which eventually increments
; the hours, days, seasons, and years. 
; Pauses if some certain flags are set.
TickGameClock:
    ; In:  called every V‑Blank (or similar frame hook)
    ; Out: sCurrentMinute++ once threshold is reached,
    ;      sets BA40 when time == 5:14
    ; Clobbers: A, B, C, flags
    ld a, [wPlayerIsInsideOrAtTown]
    or a
    ret nz

    ld a, [wFreezePlayerWhenEnteringNewMap]
    or a
    ret nz

    ld a, [wFreezePlayerInTextWindowOrInTown]
    or a
    ret nz

    ld a, [sClockFrameCount]
    inc a
    ld [sClockFrameCount], a
    cp 30
    jr nc, .incrementMinute
    ret

.incrementMinute
    xor a
    ld [sClockFrameCount], a
    ld a, [sCurrentMinute]
    inc a
    ld [sCurrentMinute], a
    cp 15
    jr nc, .incrementHour

    cp 14
    ret nz

    ld a, [sCurrentHour]
    cp TIME_5_AM
    ret nz

    ld a, $01
    ld [s6AMFlag], a
    ret

.incrementHour
    xor a
    ld [sCurrentMinute], a
    ld a, [sCurrentHour]
    inc a
    ld [sCurrentHour], a
    cp TIME_12_AM
    jr nc, .incrementDay

    call UpdateHourTileData
    call UpdateHourTileData
    ret

.incrementDay
    xor a
    ld [sCurrentHour], a
    call UpdateHourTileData
    ld a, [sCurrentDayCounter]
    inc a
    ld [sCurrentDayCounter], a
    cp 30
    jr nc, .incrementSeason

    call UpdateDayOfTheWeekTileData
    call UpdateSeasonTileData
    ret

.incrementSeason
    xor a
    ld [sCurrentDayCounter], a
    ld a, [sCurrentSeason]
    inc a
    ld [sCurrentSeason], a
    call UpdateDayOfTheWeekTileData
    call UpdateSeasonTileData
    ld a, [sCurrentSeason]
    cp $04
    jr nc, .incrementYear
    ret

.incrementYear
    xor a
    ld [sCurrentSeason], a
    call UpdateSeasonTileData
    ld a, [sCurrentYear]
    inc a
    ld [sCurrentYear], a
    cp 99
    ret nz
    ld a, 98 ; maximum year?
    ld [sCurrentYear], a
    ret

UpdateHourTileData: ; 00x070b
    ld a, [sCurrentHour]
    ld l, a
    ld h, $00
    ld e, a
    ld d, $00
    add hl, hl
    add hl, de
    ld de, AMPMHourText
    add hl, de
    ld a, [hli]
    ld [sAMorPMTileIndex], a
    ld a, [hli]
    ld [$b917], a
    ld a, [hli]
    ld [$b918], a
    ld a, [wFreezePlayerInTextWindowOrInTown]
    or a
    ret nz

    ld a, [$b906]
    or a
    ret nz

    ld a, [$b917]
    ld c, a
    ld e, $84
    ld hl, TextFontTileset
    ld a, BANK(TextFontTileset)
    ld d, a
    call BankedSyncCopyTileToVRAM
    ld a, [$b918]
    ld c, a
    ld e, $85
    ld hl, TextFontTileset
    ld a, BANK(TextFontTileset)
    ld d, a
    call BankedSyncCopyTileToVRAM
    ld a, [sAMorPMTileIndex]
    ld c, a
    ld e, $86
    ld hl, TextFontTileset
    ld a, BANK(TextFontTileset)
    ld d, a
    call BankedSyncCopyTileToVRAM
    ld a, $01
    ld [$cb75], a
    ret

; A little bit weird, but 'A' and 'P' comes first in AM/PM. I wonder if some kind of Japanese hold over?
AMPMHourText:
    db "A00", "A01", "A02", "A03", "A04", "A05", "A06", "A07", "A08", "A09", "A10", "A11"
    db "P00", "P01", "P02", "P03", "P04", "P05", "P06", "P07", "P08", "P09", "P10", "P11"

UpdateDayOfTheWeekTileData:
    ld a, [sCurrentDayCounter]
    ld l, a
    ld h, 0
    add hl, hl
    ld de, DayOfTheMonthTileIndices
    add hl, de
    ld a, [hli]
    ld [sDayOfTheMonthSecondDigitTileIndex], a
    ld a, [hli]
    ld [$ba53], a
    ld a, [sCurrentSeason]
    ld c, 30
    call Multiply8Bit
;;; Compute the day of the week
    ld a, [sCurrentDayCounter]
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, $07
    call DivideHLByA_16bit
    add a
    add a
    ld hl, DayOfTheWeekTileIndices
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
;;; Store the tile indices for the day of the week from the font graphics
    ld a, [hli]
    ld [sDayOfTheWeekTileIndex1], a
    ld a, [hli]
    ld [sDayOfTheWeekTileIndex2], a
    ld a, [hli]
    ld [sDayOfTheWeekTileIndex3], a
    ld a, [hl]
    ld [sDayOfTheWeekTileIndex4], a
    ld a, [wFreezePlayerInTextWindowOrInTown]
    or a
    ret nz

    ld a, [$b906]
    or a
    ret nz

    ld a, [sDayOfTheWeekTileIndex1]
    ld c, a
    ld e, $80
    ld a, [wSTAT_HandlerIndex]
    cp $28
    jr nz, jr_000_0808

    ld e, $59

jr_000_0808:
    ld hl, TextFontTileset
    ld a, BANK(TextFontTileset)
    ld d, a
    call BankedSyncCopyTileToVRAM
    ld a, [sDayOfTheWeekTileIndex2]
    ld c, a
    ld e, $81
    ld a, [wSTAT_HandlerIndex]
    cp $28
    jr nz, jr_000_0820

    ld e, $5a

jr_000_0820:
    ld hl, TextFontTileset
    ld a, BANK(TextFontTileset)
    ld d, a
    call BankedSyncCopyTileToVRAM
    ld a, [sDayOfTheWeekTileIndex3]
    ld c, a
    ld e, $82
    ld a, [wSTAT_HandlerIndex]
    cp $28
    jr nz, jr_000_0838

    ld e, $5b

jr_000_0838:
    ld hl, TextFontTileset
    ld a, BANK(TextFontTileset)
    ld d, a
    call BankedSyncCopyTileToVRAM
    ld a, [sDayOfTheWeekTileIndex4]
    ld c, a
    ld e, $83
    ld a, [wSTAT_HandlerIndex]
    cp $28
    jr nz, jr_000_0850

    ld e, $58

jr_000_0850:
    ld hl, TextFontTileset
    ld a, BANK(TextFontTileset)
    ld d, a
    call BankedSyncCopyTileToVRAM
    ld a, $01
    ld [$cb75], a
    ret

DayOfTheWeekTileIndices: ; 0x085f
    db $58, $59, $5A, $57 ; Monday
    db $5B, $5C, $5D, $5E ; Tuesday
    db $5F, $60, $61, $62 ; Wednesday
    db $5B, $63, $64, $65 ; Thursday
    db $66, $67, $68, $69 ; Friday
    db $54, $6A, $6B, $6C ; Saturday
    db $54, $55, $56, $57 ; Sunday

DayOfTheMonthTileIndices:
    db "01", "02", "03", "04", "05", "06", "07", "08", "09", "10"
    db "11", "12", "13", "14", "15", "16", "17", "18", "19", "20"
    db "21", "22", "23", "24", "25", "26", "27", "28", "29", "30"

; Not seeing where these sram values are actually used...
UpdateSeasonTileData:
    ld a, [sCurrentSeason]
    ld l, a
    ld h, $00
    add hl, hl
    ld a, l
    ld e, a
    ld a, h
    ld d, a
    add hl, hl
    add hl, de
    ld de, SeasonTileData
    add hl, de
    ld a, [hli]
    ld [sSeasonTileIDPart1], a
    ld a, [hli]
    ld [sSeasonTileIDPart1+1], a
    ld a, [hli]
    ld [sSeasonTileIDPart2], a
    ld a, [hli]
    ld [sSeasonTileIDPart2+1], a
    ld a, [hli]
    ld [sSeasonTileIDPart2+2], a
    ld a, [hl]
    ld [sSeasonTileIDPart2+3], a
    ret

SeasonTileData:
    db $6D, $6E, $6F, $70, $71, $72 ; SPRING
    db $73, $74, $75, $76, $77, $78 ; SUMMER
    db $EF, $79, $7A, $7B, $7C, $EF ; FALL ($EF Buffer???)
    db $7D, $7E, $7F, $80, $81, $82 ; WINTER

