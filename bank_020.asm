; Disassembly of "harvest_moon.gbc"
; This file was created with:
; mgbdis v2.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $020", ROMX[$4000], BANK[$20]

; 20x4000
    db $20, $7C, $4E, $84, $00, $6F, $2D, $7F, $47, $7C, $4E, $84, $00, $6F, $2D, $7F
; 20x4010
    db $47, $7C, $4E, $84, $00, $76, $0D, $7F, $47, $7C, $4E, $84, $00, $BA, $02, $DF
; 20x4020
    db $17, $7C, $4E, $84, $00, $DF, $01, $BF, $4F, $7C, $4E, $84, $00, $55, $46, $BF
; 20x4030
    db $5F, $7C, $4E, $84, $00, $73, $0D, $7F, $47, $7C, $4E, $84, $00, $00, $1B, $F8
; 20x4040
    db $03
Data_020_4041:
    RGB 28,19,19, 5,5,0, 2,22,2, 29,0,0
Data_020_4049:
    db $7C, $4E, $A5, $00, $79, $1E, $7F, $3B
Data_020_4051:
    db $7C, $4E, $A5, $00, $1F, $00, $FF, $7F
Data_020_4059:
    db $7C, $4E, $A5, $00, $40, $7E, $FF, $7F
Data_020_4061:
    db $7C, $4E, $A5, $00, $D8, $42, $FF, $7F
Data_020_4069:
    db $7C, $4E, $84, $00, $2E, $01, $F7, $0D
Data_020_4071:
    db $7C, $4E, $A5, $00, $A5, $07, $5F, $00
MilkerOBJPalette: ; 20x4079
    db $7C, $4E, $A5, $00, $5F, $42, $FF, $7F
Data_020_4081:
    db $7C, $4E, $A5, $00, $D0, $29, $F8, $3E
CutAutumnGrassOBJPalette: ; 20x4089
    db $7C, $4E, $EC, $00, $96, $09, $BF, $06
Data_020_4091:
    db $7C, $4E, $A5, $00, $B4, $1D, $7F, $1B
Data_020_4099:
    db $7C, $4E, $A5, $00, $DF, $02, $FF, $53
Data_020_40a1:
    db $7C, $4E, $A5, $00, $14, $4C, $14, $7E
Data_020_40a9:
    db $7C, $4E, $A5, $00, $75, $09, $7D, $06
Data_020_40b1:
    db $7C, $4E, $A5, $00, $5F, $06, $7F, $E0
Data_020_40b9:
    db $7C, $4E, $A5, $00, $B3, $11, $9A, $0E
Data_020_40c1:
    db $7C, $4E, $A5, $00, $B3, $11, $9A, $0E
Data_020_40c9:
    db $7C, $4E, $A5, $00, $DB, $02, $9F, $1B
PickedUpTurnipPalette: ; 20x40d1
    db $7C, $4E, $A5, $00, $40, $0A, $FF, $7F
Data_020_40d9:
    db $7C, $4E, $A5, $00, $E1, $05, $AA, $07
Data_020_40e1:
    db $7C, $4E, $86, $00, $1F, $00, $DF, $3A
PickedUpGrassPalette: ; 20x40e9
    db $7C, $4E, $E2, $00, $E1, $05, $67, $07
PickedUpFencePostPalette: ; 20x40f1
    db $7C, $4E, $A6, $0C, $B4, $05, $BC, $2E
Data_020_40f9:
    db $7C, $4E, $A5, $00, $1F, $03, $FF, $7F
Data_020_4101:
    db $7C, $4E, $A5, $00, $DF, $02, $FF, $53
Data_020_4109:
    db $7C, $4E, $A5, $00, $C2, $0A, $5F, $13
Data_020_4111:
    db $7C, $4E, $A5, $00, $30, $11, $16, $12
Data_020_4119:
    db $7C, $4E, $A5, $00, $B4, $1D, $FF, $7F
Data_020_4121:
    db $7C, $4E, $C6, $00, $DB, $02, $FF, $03
Data_020_4129:
    db $7C, $4E, $A5, $00, $C7, $7F, $FF, $7F
PickedUpStonePalette: ; 20x4131
    db $7C, $4E, $A5, $00, $29, $25, $31, $46
PickedUpPotatoPalette: ; 20x4139
    db $7C, $4E, $A5, $00, $B3, $11, $9A, $0E
Data_020_4141:
    db $7C, $4E, $E7, $00, $17, $12, $FF, $7F
Data_020_4149: ; 20x4149
    db $00, $00, $1C, $00, $23, $1C, $5C, $23, $A3, $40, $45, $02, $05, $03, $0B, $07
    db $00, $00, $00, $00, $00, $00, $C0, $00, $60, $80, $D0, $A0, $D0, $60, $E8, $F0
Data_020_4169: ; 20x4169
    db $00, $00, $00, $00, $16, $00, $2D, $12, $14, $0B, $14, $0B, $0A, $05, $0B, $04
    db $00, $00, $00, $00, $30, $00, $50, $20, $90, $60, $10, $E0, $10, $E0, $50, $A0,
Data_020_4189: ; 20x4189
    db $06, $00, $05, $02, $04, $03, $04, $03, $0C, $03, $0C, $03, $0A, $05, $04, $03
    db $30, $00, $50, $20, $90, $60, $10, $E0, $18, $E0, $18, $E0, $28, $D0, $90, $60
; padding
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00 
; end padding
    db $1B, $0E, $1E, $09, $0D, $02, $07, $02, $07, $02, $03, $00, $00, $00, $00, $00
    db $EC, $B8, $3C, $C8, $D8, $20, $70
    db $A0, $F0, $20, $60, $00, $00, $00, $00, $00, $05, $02, $06, $01, $05, $02, $05
    db $03, $05, $03, $07, $02, $0D, $06, $06, $00, $B0, $40, $50, $A0, $D0, $60, $D0
    db $E0, $D0, $60, $70, $20, $58, $30, $30, $00, $05, $02, $1D, $02, $66, $19, $99
    db $66, $6F, $01, $0D, $06, $0E, $04, $04, $00, $50, $A0, $50, $A0, $D0, $60, $C8
    db $F0, $F8, $60, $58, $30, $38, $10, $10, $00, $5F, $37, $23, $00, $72, $05, $79
    db $1E, $3A, $63, $A4, $04, $EF, $00, $B8, $25, $DF, $6F, $23, $0C, $0C, $0D, $34,
    db $52, $5F, $37, $84, $04, $0C, $0D, $14, $2E, $00, $34, $84, $04, $0C, $0D, $C4,
    db $69, $DF, $03, $05, $00, $0C, $0D, $5F, $4E, $7F, $47, $84, $04, $0C, $0D, $C4,
    db $69, $DF, $6F, $00, $00, $0C, $0D, $1F, $00, $5F, $37, $23, $00, $72, $05, $79,
    db $1E, $3A, $63, $A4, $04, $EF, $00, $B8, $25, $DF, $6F, $23, $0C, $0C, $0D, $34,
    db $52, $5F, $37, $84, $04, $0C, $0D, $14, $2E, $00, $34, $84, $04, $0C, $0D, $C4,
    db $69, $DF, $03, $05, $00, $0C, $0D, $5F, $4E, $7F, $47, $84, $04, $0C, $0D, $C4,
    db $69, $DF, $6F, $00, $00, $0C, $0D, $31, $46, $5F, $37, $23, $00, $72, $05, $79,
    db $1E, $3A, $63, $A4, $04, $EF, $00, $B8, $25, $DF, $6F, $23, $0C, $0C, $0D, $34,
    db $52, $5F, $37, $84, $04, $0C, $0D, $14, $2E, $00, $34, $84, $04, $0C, $0D, $C4,
    db $69, $DF, $03, $05, $00, $0C, $0D, $5F, $4E, $7F, $47, $84, $04, $0C, $0D, $C4,
    db $69, $73, $4E, $00, $00, $0C, $0D, $4A, $29, $7F, $3B, $60, $04, $6E, $11, $77,
    db $26, $7F, $3B, $44, $00, $0A, $0D, $12, $2E, $7F, $3B, $00, $00, $72, $05, $79,
    db $1E, $FF, $7F, $00, $00, $72, $05, $1F, $00, $1F, $03, $00, $00, $72, $05, $79,
    db $1E, $FF, $7F, $00, $00, $72, $05, $40, $7E, $EC, $03, $00, $00, $72, $05, $E1,
    db $05, $00, $00, $E0, $7F, $E0, $7F, $E0, $7F, $7C, $4E, $84, $00, $A0, $5D, $7F,
    db $47, $7C, $4E, $84, $00, $1F, $00, $7F, $47, $7C, $4E, $84, $00, $3F, $02, $7F,
    db $47, $00, $00, $E0, $7F, $E0, $7F, $E0, $7F, $7C, $4E, $84, $00, $79, $1E, $FF,
    db $7F, $00, $00, $E0, $7F, $E0, $7F, $E0, $7F, $7C, $4E, $84, $00, $E0, $60, $7F,
    db $47, $00, $00, $E0, $7F, $E0, $7F, $E0, $7F, $3F, $2B, $44, $00, $B0, $19, $38,
    db $16, $36, $2E, $24, $00, $CB, $04, $B0, $19, $3F, $2B, $03, $04, $0F, $01, $F7,
    db $0D, $B0, $19, $03, $04, $0F, $01, $F7, $0D, $FF, $7F, $44, $00, $B0, $19, $38,
    db $16, $7B, $6F, $44, $00, $B0, $19, $10, $42, $00, $00, $E0, $7F, $E0, $7F, $E0,
    db $7F, $00, $00, $E0, $7F, $E0, $7F, $E0, $7F, $00, $04, $01, $02, $1F, $00, $96,
    db $00, $0F, $02, $0F, $02, $6F, $01, $0F, $02, $1F, $00, $88, $0F, $02, $1F, $00,
    db $04, $02, $01, $14, $00, $F1, $01, $65, $00, $01, $A3, $01, $03, $10, $00, $09,
    db $02, $93, $04, $00, $62, $02, $00, $21, $00, $0F, $02, $04, $02, $64, $00, $0F,
    db $02, $01, $09, $02, $0A, $06, $03, $03, $03, $25, $02, $13, $13, $08, $09, $0F,
    db $02, $0F, $02, $0A, $0C, $00, $F3, $0E, $26, $07, $0F, $0A, $06, $0A, $0F, $02,
    db $07, $10, $01, $0C, $40, $0C, $00, $0A, $02, $03, $0C, $64, $06, $01, $11, $06,
    db $04, $05, $07, $B1, $16, $C5, $14, $00, $09, $06, $67, $01, $A7, $02, $52, $0E,
    db $04, $08, $A1, $14, $89, $03, $80, $15, $00, $B5, $1B, $0F, $02, $0F, $02, $06,
    db $02, $85, $12, $B8, $1F, $0D, $02, $F2, $13, $00, $0D, $02, $1F, $00, $0A, $24,
    db $1F, $00, $1F, $00, $1F, $00, $1F, $00, $1F, $00, $00, $1F, $00, $1F, $00, $1F,
    db $00, $1F, $00, $1F, $00, $1F, $00, $1F, $00, $1F, $00, $00, $1F, $00, $1F, $00,
    db $1F, $00, $1F, $00, $1B, $00, $7C, $4E, $84, $00, $A0, $5D, $7F, $47, $7C, $4E,
    db $84, $00, $1F, $00, $7F, $47, $7C, $4E, $84, $00, $3F, $02, $7F, $47, $00, $00,
    db $E0, $7F, $E0, $7F, $E0, $7F, $7C, $4E, $84, $00, $17, $12, $FF, $7F, $7C, $4E,
    db $84, $00, $9F, $5A, $FF, $7F, $7C, $4E, $84, $00, $31, $37, $FF, $7F, $00, $00,
    db $E0, $7F, $E0, $7F, $E0, $7F, $BF, $4B, $86, $00, $CF, $25, $98, $2E, $BF, $4B,
    db $45, $00, $0E, $01, $98, $2E, $E4, $7E, $86, $00, $CF, $25, $00, $40, $7F, $03,
    db $86, $00, $51, $05, $1F, $00, $6B, $7F, $86, $00, $CF, $25, $DD, $32, $1F, $00,
    db $86, $00, $CF, $25, $DF, $3A, $00, $00, $1F, $7C, $1F, $7C, $1F, $7C, $00, $00,
    db $1F, $7C, $1F, $7C, $1F, $7C, $00, $04, $31, $01, $1F, $00, $78, $00, $0A, $02,
    db $03, $03, $67, $00, $0F, $02, $60, $0F, $02, $0F, $02, $0F, $02, $04, $08, $B2,
    db $08, $03, $03, $67, $00, $04, $86, $01, $43, $09, $02, $10, $00, $47, $0B, $E1,
    db $00, $0F, $02, $0F, $02, $00, $0F, $02, $0F, $02, $07, $02, $43, $02, $A5, $00,
    db $0F, $02, $0F, $02, $0F, $02, $10, $0F, $02, $0D, $02, $15, $02, $0B, $12, $05,
    db $10, $00, $25, $19, $C3, $00, $30, $0F, $02, $0F, $02, $0F, $02, $05, $02, $05,
    db $05, $0F, $16, $69, $1F, $00, $0D, $02, $E1, $05, $25, $06, $C3, $00, $07, $1C,
    db $71, $1B, $0D, $02, $85, $01, $00, $07, $02, $27, $0A, $0F, $02, $81, $20, $07,
    db $0C, $85, $27, $07, $04, $67, $03, $00, $A9, $29, $05, $06, $4F, $2B, $C7, $2B,
    db $0F, $0E, $25, $12, $0F, $10, $0F, $02, $00, $0F, $02, $0F, $02, $0F, $02, $89,
    db $33, $0F, $34, $0F, $34, $1F, $00, $0F, $02, $00, $1F, $00, $0F, $02, $1F, $00,
    db $0F, $02, $0F, $02, $4F, $01, $0B, $02, $00, $04, $01, $01, $1F, $00, $78, $00,
    db $0F, $02, $0F, $02, $1F, $00, $0F, $02, $1F, $00, $00, $0F, $02, $1F, $00, $0F,
    db $02, $0F, $02, $4F, $01, $0F, $02, $1F, $00, $0F, $02, $18, $1F, $00, $0F, $02,
    db $01, $02, $03, $03, $89, $00, $0F, $02, $0F, $02, $18, $0F, $02, $0F, $02, $07,
    db $07, $03, $03, $83, $19, $80, $00, $06, $02, $08, $43, $03, $A1, $03, $21, $1B,
    db $04, $14, $00, $0F, $02, $0F, $02, $0F, $02, $18, $0F, $02, $45, $07, $A3, $07,
    db $01, $01, $0F, $02, $0B, $23, $0F, $06, $00, $2B, $13, $0F, $02, $0F, $02, $0F,
    db $02, $05, $17, $0F, $02, $0D, $02, $B9, $2B, $00, $0F, $06, $0F, $1C, $1F, $00,
    db $0F, $02, $1F, $00, $0F, $02, $1F, $00, $0F, $02, $00, $0F, $02, $1F, $00, $1F,
    db $00, $1F, $00, $1F, $00, $1F, $00, $1F, $00, $1F, $00, $00, $1F, $00, $1D, $00,
    db $00, $04, $65, $01, $10, $00, $02, $1F, $00, $F0, $00, $01, $01, $0F, $02, $00,
    db $0F, $02, $0F, $02, $0F, $02, $CF, $01, $0F, $02, $1F, $00, $0F, $02, $0F, $02,
    db $00, $0F, $02, $0F, $02, $07, $02, $A1, $02, $E9, $00, $0F, $02, $0F, $02, $0F,
    db $02, $00, $0F, $02, $F4, $00, $B0, $08, $03, $09, $15, $01, $0F, $02, $0F, $02,
    db $09, $02, $00, $26, $19, $0F, $02, $0F, $02, $0F, $02, $0F, $02, $0F, $02, $0F,
    db $02, $0F, $02, $00, $0F, $02, $0F, $02, $0F, $02, $08, $02, $0F, $12, $0F, $02,
    db $0F, $02, $0F, $02, $00, $0F, $02, $0F, $02, $0F, $02, $0F, $0A, $0F, $02, $0B,
    db $02, $1F, $00, $C3, $00, $00, $0F, $02, $0F, $02, $6F, $01, $0F, $02, $1F, $00,
    db $0F, $02, $1F, $00, $0F, $02, $00, $0F, $02, $0F, $02, $0F, $02, $1F, $00, $09,
    db $02, $00, $04, $31, $01, $1F, $00, $1F, $00, $D2, $00, $03, $03, $8B, $00, $0F,
    db $02, $30, $0F, $02, $0F, $02, $0F, $02, $A5, $08, $03, $03, $8B, $00, $C5, $09,
    db $00, $4F, $0B, $0F, $02, $1F, $00, $0F, $02, $1F, $00, $0F, $02, $0F, $02, $0F,
    db $02, $00, $0F, $02, $1F, $00, $0F, $02, $1F, $00, $0F, $02, $0F, $02, $0F, $02,
    db $0F, $02, $00, $8F, $01, $0F, $02, $1F, $00, $0F, $02, $1F, $00, $0F, $02, $0F,
    db $02, $0F, $02, $00, $0F, $02, $1F, $00, $0F, $02, $1F, $00, $0F, $02, $0F, $02,
    db $0F, $02, $AF, $2D, $00, $AF, $01, $0F, $02, $1F, $00, $E7, $31, $6F, $01, $4F,
    db $04, $1F, $00, $1F, $00, $00, $1F, $00, $1F, $00, $1F, $00, $1F, $00, $1F, $00,
    db $1F, $00, $1F, $00, $1F, $00, $00, $E3, $0F, $00, $04, $01, $01, $1F, $00, $78,
    db $00, $0F, $02, $0F, $02, $1F, $00, $0F, $02, $1F, $00, $00, $07, $02, $4F, $09,
    db $C7, $09, $0F, $02, $0F, $02, $8F, $01, $0F, $02, $1F, $00, $00, $0F, $02, $1F,
    db $00, $0F, $02, $0F, $02, $0F, $02, $0F, $02, $1F, $00, $0F, $02, $00, $1F, $00,
    db $0F, $02, $0F, $02, $0F, $02, $0F, $02, $8F, $01, $0F, $02, $1F, $00, $00, $0F,
    db $02, $1F, $00, $0F, $02, $0F, $02, $0F, $02, $0F, $02, $1F, $00, $0F, $02, $00,
    db $1F, $00, $0F, $02, $0F, $02, $0F, $02, $0F, $02, $8F, $01, $0F, $02, $1F, $00,
    db $00, $07, $02, $1F, $00, $0F, $30, $1F, $00, $0F, $02, $1F, $00, $0F, $02, $0F,
    db $02, $00, $4F, $01, $0F, $02, $1F, $00, $07, $02, $7C, $4E, $84, $00, $A0, $5D,
    db $7F, $47, $7C, $4E, $84, $00, $1F, $00, $7F, $47, $7C, $4E, $84, $00, $3F, $02,
    db $7F, $47, $7C, $4E, $84, $00, $73, $11, $7D, $43, $7C, $4E, $84, $00, $FF, $21,
    db $F2, $4B, $00, $00, $E0, $7F, $E0, $7F, $E0, $7F, $7C, $4E, $84, $00, $73, $11,
    db $7D, $43, $00, $00, $E0, $7F, $E0, $7F, $E0, $7F, $3F, $2B, $44, $00, $B0, $19,
    db $38, $16, $36, $2E, $24, $00, $CB, $04, $B0, $19, $3F, $2B, $03, $04, $0F, $01,
    db $F7, $0D, $B0, $19, $03, $04, $0F, $01, $F7, $0D, $FF, $7F, $24, $00, $0F, $01,
    db $F7, $0D, $36, $2E, $24, $00, $FF, $7F, $B0, $19, $7F, $03, $24, $00, $0F, $01,
    db $F7, $0D, $36, $2E, $24, $00, $7F, $03, $B0, $19, $00, $04, $05, $02, $1F, $00,
    db $02, $0F, $02, $0F, $02, $0F, $02, $0F, $02, $0F, $02, $F0, $0F, $02, $EF, $01,
    db $0F, $02, $24, $02, $01, $01, $02, $02, $C1, $03, $10, $00, $0F, $02, $0F, $02,
    db $0F, $02, $01, $02, $01, $01, $00, $0F, $02, $0F, $02, $0B, $02, $60, $01, $81,
    db $0A, $D0, $01, $23, $02, $60, $06, $00, $0A, $04, $A0, $01, $02, $02, $B1, $0C,
    db $0F, $02, $02, $02, $72, $01, $E2, $0E, $00, $62, $04, $0F, $02, $13, $06, $73,
    db $06, $0D, $10, $21, $09, $F6, $01, $0F, $02, $10, $22, $0F, $14, $06, $E3, $07,
    db $0F, $02, $03, $A5, $09, $0F, $02, $06, $02, $00, $44, $0E, $0F, $02, $1F, $00,
    db $0A, $02, $1F, $00, $1F, $00, $1F, $00, $1F, $00, $00, $1F, $00, $1F, $00, $1F,
    db $00, $1F, $00, $1F, $00, $1F, $00, $1F, $00, $1F, $00, $00, $1F, $00, $1F, $00,
    db $1F, $00, $1F, $00, $1F, $00, $1F, $00, $1F, $00, $1F, $00, $00, $1F, $00, $1F,
    db $00, $1F, $00, $1F, $00, $1D, $00, $7C, $4E, $84, $00, $A0, $5D, $7F, $47, $7C,
    db $4E, $84, $00, $1F, $00, $7F, $47, $7C, $4E, $84, $00, $3F, $02, $7F, $47, $00,
    db $00, $E0, $7F, $E0, $7F, $E0, $7F, $7C, $4E, $84, $00, $1F, $00, $FF, $7F, $7C,
    db $4E, $84, $00, $5F, $03, $FF, $7F, $7C, $4E, $84, $00, $DE, $01, $5F, $03, $00,
    db $00, $E0, $7F, $E0, $7F, $E0, $7F, $00, $04, $00, $2F, $01, $1F, $00, $1F, $00,
    db $1F, $00, $1F, $00, $1F, $00, $1F, $00, $1F, $00, $00, $1F, $00, $1F, $00, $1F,
    db $00, $1F, $00, $1F, $00, $1F, $00, $1F, $00, $1F, $00, $00, $1F, $00, $1F, $00,
    db $1F, $00, $1F, $00, $1F, $00, $1F, $00, $1F, $00, $1F, $00, $00, $1F, $00, $1F,
    db $00, $1F, $00, $1F, $00, $1F, $00, $1F, $00, $1F, $00, $1F, $00, $00, $1F, $00,
    db $1F, $00, $1F, $00, $1F, $00, $1F, $00, $1F, $00, $1F, $00, $1F, $00, $C0, $1F,
    db $00, $1F, $00, $1F, $00, $1F, $00, $1F, $00, $B4, $00, $01, $01, $05, $01, $59,
    db $01, $03, $77, $00, $A0, $01, $35, $00, $D4, $00, $08, $02, $44, $1F, $00, $B4,
    db $00, $04, $12, $00, $8F, $01, $A5, $00, $02, $12, $00, $00, $8F, $01, $FA, $01,
    db $1F, $00, $1F, $00, $1F, $00, $B1, $05, $FF, $7F, $60, $00, $FF, $3B, $0B, $7F,
    db $10, $5B, $60, $00, $4A, $3E, $0B, $7F, $3F, $1F, $A0, $10, $40, $02, $17, $12,
    db $C1, $1E, $03, $00, $D3, $15, $C0, $01, $FF, $7F, $03, $00, $57, $11, $40, $02,
    db $00, $00, $E0, $7F, $E0, $7F, $E0, $7F, $00, $00, $E0, $7F, $E0, $7F, $E0, $7F,
    db $FF, $7F, $60, $00, $FF, $3B, $0B, $7F, $FF, $0B, $67, $00, $B2, $0D, $FA, $2E,
    db $FF, $7F, $42, $08, $6B, $7E, $35, $7F, $AA, $06, $67, $00, $B2, $0D, $FA, $2E,
    db $AA, $06, $67, $00, $B2, $0D, $FF, $0B, $FF, $7F, $67, $00, $A9, $00, $8A, $06,
    db $00, $00, $E0, $7F, $E0, $7F, $E0, $7F, $00, $00, $E0, $7F, $E0, $7F, $E0, $7F,
    db $FF, $0B, $67, $00, $B2, $0D, $FA, $2E, $7C, $4E, $FF, $3B, $FF, $5F, $FF, $7F,
    db $7C, $4E, $E7, $00, $1F, $00, $7F, $47, $7C, $4E, $E7, $00, $3F, $02, $7F, $47,
    db $00, $00, $E0, $7F, $E0, $7F, $E0, $7F, $7C, $4E, $E7, $00, $3F, $02, $7F, $47,
    db $00, $00, $E0, $7F, $E0, $7F, $E0, $7F, $7C, $4E, $E7, $00, $E0, $60, $7F, $47,
    db $00, $00, $E0, $7F, $E0, $7F, $E0, $7F, $7C, $4E, $42, $08, $31, $46, $FF, $7F,
    db $7C, $4E, $E7, $00, $1F, $00, $7F, $47, $7C, $4E, $E7, $00, $3F, $02, $7F, $47,
    db $00, $00, $E0, $7F, $E0, $7F, $E0, $7F, $7C, $4E, $E7, $00, $3F, $02, $7F, $47,
    db $00, $00, $E0, $7F, $E0, $7F, $E0, $7F, $7C, $4E, $E7, $00, $E0, $60, $7F, $47,
    db $00, $00, $E0, $7F, $E0, $7F, $E0, $7F, $00, $04, $15, $02, $1F, $00, $02, $0B,
    db $02, $03, $FA, $02, $11, $03, $0F, $02, $00, $2B, $05, $EF, $00, $2F, $01, $EF,
    db $00, $2F, $01, $EF, $00, $2F, $01, $FC, $08, $00, $02, $0D, $0F, $0E, $FA, $0B,
    db $0F, $02, $44, $0D, $0F, $10, $0F, $12, $0D, $02, $01, $01, $1F, $00, $1F, $00,
    db $1F, $00, $1F, $00, $1F, $00, $1F, $00, $1F, $00, $14, $1F, $00, $3C, $00, $04,
    db $1F, $00, $04, $09, $0E, $EF, $01, $0B, $02, $01, $02, $FB, $01, $0E, $12, $1F,
    db $00, $1F, $00, $1F, $00, $1F, $00, $1F, $00, $00, $1F, $00, $1F, $00, $1F, $00,
    db $1F, $00, $1F, $00, $1F, $00, $1F, $00, $1F, $00, $00, $1F, $00, $1F, $00, $1F,
    db $00, $1F, $00, $1F, $00, $1F, $00, $1F, $00, $1F, $00, $00, $1F, $00, $1F, $00,
    db $1F, $00, $1D, $00, $00, $5C, $FD, $7F, $B3, $72, $4A, $69, $00, $00, $FD, $7F,
    db $B3, $56, $4A, $29, $7C, $4E, $E0, $7F, $E0, $7F, $E0, $7F, $7C, $4E, $E0, $7F,
    db $E0, $7F, $E0, $7F, $7C, $4E, $E0, $7F, $E0, $7F, $E0, $7F, $7C, $4E, $E0, $7F,
    db $E0, $7F, $E0, $7F, $7C, $4E, $E0, $7F, $E0, $7F, $E0, $7F, $7C, $4E, $E0, $7F,
    db $E0, $7F, $E0, $7F, $00, $04, $00, $2F, $01, $1F, $00, $1F, $00, $1F, $00, $1F,
    db $00, $1F, $00, $1F, $00, $1F, $00, $80, $1F, $00, $1F, $00, $1F, $00, $1F, $00,
    db $1F, $00, $1F, $00, $B4, $00, $01, $00, $19, $00, $FF, $01, $0F, $02, $0F, $02,
    db $0F, $02, $0F, $02, $FF, $01, $1F, $00, $00, $1F, $00, $1F, $00, $1F, $00, $1F,
    db $00, $1F, $00, $1F, $00, $EF, $09, $4F, $0A, $00, $1F, $00, $1F, $00, $1F, $00,
    db $1F, $00, $1F, $00, $1F, $00, $1F, $00, $1F, $00, $00, $1F, $00, $1F, $00, $1F,
    db $00, $1F, $00, $1F, $00, $1F, $00, $1F, $00, $1F, $00, $00, $1F, $00, $1F, $00,
    db $1F, $00, $1F, $00, $1F, $00, $1F, $00, $1F, $00, $1F, $00, $00, $1F, $00, $1F,
    db $00, $1B, $00, $7C, $4E, $84, $00, $A0, $5D, $7F, $47, $7C, $4E, $84, $00, $1F,
    db $00, $7F, $47, $7C, $4E, $84, $00, $00, $7E, $7F, $47, $7C, $4E, $84, $00, $1F,
    db $09, $7F, $47, $7C, $4E, $84, $00, $3F, $02, $7F, $47, $00, $00, $E0, $7F, $E0,
    db $7F, $E0, $7F, $00, $00, $E0, $7F, $E0, $7F, $E0, $7F, $00, $00, $E0, $7F, $E0,
    db $7F, $E0, $7F, $00, $04, $B2, $15, $00, $01, $11, $00, $FF, $01, $00, $03, $13,
    db $00, $04, $92, $01, $02, $04, $D4, $00, $0A, $02, $02, $12, $00, $03, $02, $05,
    db $D1, $04, $11, $00, $0A, $02, $82, $05, $01, $43, $03, $03, $05, $00, $E3, $00,
    db $0F, $02, $33, $05, $0F, $02, $82, $09, $C0, $09, $60, $08, $81, $06, $08, $74,
    db $02, $0A, $0A, $22, $0C, $05, $63, $08, $0F, $02, $04, $0C, $05, $02, $40, $70,
    db $04, $0F, $0C, $1E, $00, $89, $11, $EF, $01, $0B, $02, $03, $33, $0F, $40, $06,
    db $06, $0D, $12, $24, $0D, $94, $11, $0F, $0E, $03, $12, $01, $03, $16, $00, $D4,
    db $00, $0F, $0E, $04, $02, $39, $0F, $0B, $1A, $03, $16, $C1, $0D, $0F, $0E, $00,
    db $A7, $09, $69, $12, $0F, $10, $A5, $00, $0F, $06, $49, $05, $0C, $06, $1F, $00,
    db $00, $1F, $00, $1F, $00, $1F, $00, $1F, $00, $1F, $00, $1F, $00, $1F, $00, $1F,
    db $00, $00, $1F, $00, $1F, $00, $1F, $00, $1F, $00, $1F, $00, $1F, $00, $1F, $00,
    db $1F, $00, $00, $1F, $00, $1F, $00, $1F, $00, $1F, $00, $1F, $00, $1F, $00, $1F,
    db $00, $1D, $00, $7C, $4E, $84, $00, $A0, $5D, $7F, $47, $7C, $4E, $84, $00, $1F,
    db $00, $7F, $47, $00, $00, $E0, $7F, $E0, $7F, $E0, $7F, $7C, $4E, $84, $00, $B6,
    db $01, $FE, $7F, $00, $00, $E0, $7F, $E0, $7F, $E0, $7F, $00, $00, $E0, $7F, $E0,
    db $7F, $E0, $7F, $00, $00, $E0, $7F, $E0, $7F, $E0, $7F, $00, $00, $E0, $7F, $E0,
    db $7F, $E0, $7F, $BF, $53, $26, $04, $F4, $15, $79, $1E, $BF, $53, $26, $04, $F4,
    db $15, $DA, $04, $BF, $53, $F4, $15, $04, $0E, $02, $0B, $BF, $53, $26, $04, $F4,
    db $15, $04, $0E, $04, $0E, $26, $04, $F4, $15, $DA, $04, $04, $0E, $26, $04, $C2,
    db $0A, $DA, $04, $00, $00, $E0, $7F, $E0, $7F, $E0, $7F, $00, $00, $E0, $7F, $E0,
    db $7F, $E0, $7F, $00, $04, $05, $01, $10, $00, $04, $18, $00, $0F, $02, $0F, $02,
    db $0B, $02, $4F, $01, $00, $0F, $02, $1F, $00, $05, $06, $EF, $01, $2B, $01, $0F,
    db $02, $0F, $02, $0F, $02, $00, $EF, $00, $2F, $01, $EF, $00, $2F, $01, $0F, $02,
    db $0F, $02, $0F, $02, $EF, $00, $00, $2F, $01, $EF, $00, $05, $01, $0F, $02, $0F,
    db $02, $0B, $01, $49, $06, $0F, $02, $04, $0F, $02, $09, $1E, $03, $10, $00, $09,
    db $1E, $0F, $02, $0F, $02, $6F, $1C, $00, $1F, $00, $1F, $00, $1F, $00, $1F, $00,
    db $1F, $00, $1F, $00, $1F, $00, $1F, $00, $00, $1F, $00, $1F, $00, $1F, $00, $1F,
    db $00, $1F, $00, $1F, $00, $1F, $00, $1F, $00, $00, $1F, $00, $1F, $00, $1F, $00,
    db $1F, $00, $1F, $00, $1F, $00, $1F, $00, $1F, $00, $00, $17, $00, $FF, $7F, $84,
    db $00, $E0, $7F, $E0, $7F, $FF, $7F, $84, $00, $1F, $09, $BF, $02, $FF, $7F, $84,
    db $00, $FE, $01, $1F, $03, $FF, $7F, $84, $00, $B4, $0D, $5C, $5B, $FF, $7F, $84,
    db $00, $3F, $6A, $5C, $5B, $7C, $4E, $84, $00, $5F, $03, $FF, $7F, $7C, $4E, $E7,
    db $00, $DE, $01, $5F, $03, $FF, $7F, $84, $00, $E0, $7F, $E0, $7F, $BF, $53, $44,
    db $00, $71, $09, $59, $16, $02, $0A, $27, $04, $2E, $01, $40, $01, $02, $0A, $71,
    db $09, $59, $16, $40, $01, $BF, $53, $27, $04, $20, $6D, $F4, $15, $00, $00, $E0,
    db $7F, $E0, $7F, $E0, $7F, $00, $00, $E0, $7F, $E0, $7F, $E0, $7F, $00, $00, $E0,
    db $7F, $E0, $7F, $E0, $7F, $00, $00, $E0, $7F, $E0, $7F, $E0, $7F, $00, $04, $41,
    db $03, $12, $00, $8F, $01, $0F, $02, $1F, $00, $07, $02, $02, $06, $03, $71, $02,
    db $10, $00, $1F, $02, $08, $02, $01, $01, $01, $0F, $02, $00, $0F, $02, $0F, $02,
    db $06, $06, $0F, $02, $08, $08, $21, $04, $4F, $0A, $0F, $02, $00, $0F, $02, $0F,
    db $02, $0F, $02, $0F, $02, $0F, $02, $0D, $02, $21, $11, $0F, $02, $00, $08, $01,
    db $2C, $15, $0C, $0E, $FC, $14, $0F, $02, $ED, $08, $0F, $02, $0F, $02, $00, $0F,
    db $02, $0F, $02, $0F, $02, $0F, $02, $1F, $00, $1F, $00, $1F, $00, $1F, $00, $00,
    db $1F, $00, $1F, $00, $1F, $00, $1F, $00, $1F, $00, $1F, $00, $1F, $00, $1F, $00,
    db $00, $1F, $00, $1F, $00, $1F, $00, $1F, $00, $1F, $00, $1F, $00, $1F, $00, $1F, 
    db $00, $00, $1f, $00, $1f, $00, $1f, $00, $1f, $00, $1f, $00

Label_020_4fac:
    ld hl, PickedUpGrassPalette
    call SyncLoadSpritePalette4
    ret

Label_020_4fb3:
    ld a, [sCurrentSeason]
    cp AUTUMN
    jr nc, jr_020_4fc1

Label_020_4fba:
    ld hl, PickedUpGrassPalette
    call SyncLoadSpritePalette4
    ret

jr_020_4fc1:
    ld hl, CutAutumnGrassOBJPalette
    call SyncLoadSpritePalette4
    ret

Label_020_4fc8:
    ld hl, PickedUpStonePalette
    call SyncLoadSpritePalette4
    ret

Label_020_4fcf:
    ld hl, PickedUpFencePostPalette
    call SyncLoadSpritePalette4
    ret


    ld hl, $4069
    call SyncLoadSpritePalette4
    ret


    ld hl, Data_020_4041
    call SyncLoadSpritePalette4
    ret


    ld hl, $4109
    call SyncLoadSpritePalette4
    ret


    ld hl, $40d1
    call SyncLoadSpritePalette4
    ret


    ld hl, $4139
    call SyncLoadSpritePalette4
    ret


    ld hl, $40a1
    call SyncLoadSpritePalette4
    ret


    ld hl, $4101
    call SyncLoadSpritePalette4
    ret


    ldh a, [$ff9c]
    and $0f
    cp $0f
    jr z, jr_020_5019

    cp $0e
    jr z, jr_020_5020

    cp $0d
    jp z, Jump_020_5027

    ret


jr_020_5019:
    ld hl, $4029
    call SyncLoadSpritePalette8
    ret


jr_020_5020:
    ld hl, $4021
    call SyncLoadSpritePalette8
    ret


Jump_020_5027:
    ld hl, $4031
    call SyncLoadSpritePalette8
    ret


    ld hl, $4001
    call SyncLoadSpritePalette8
    ld hl, $4009
    call SyncLoadSpritePalette4
    ret


    ld hl, $4011
    call SyncLoadSpritePalette8
    ret


    ld hl, $4039
    call SyncLoadSpritePalette8
    ret

; Data
    nop
    inc b
    ld [bc], a
    jr jr_020_504e

jr_020_504e:
    inc bc
    ld de, $2f00
    ld [bc], a
    rrca
    ld [bc], a
    rra
    nop
    or $01
    rrca
    ld [bc], a
    nop
    inc c
    ld [bc], a
    rra
    ld [bc], a
    rrca
    ld [bc], a
    rra
    nop
    rrca
    ld [bc], a
    rra
    nop
    rrca
    ld [bc], a
    db $d3
    dec bc
    ld l, l
    ld bc, $0014
    inc bc
    dec b
    stop
    inc bc
    inc bc
    ldh a, [rP1]
    ld d, b
    rrca
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc de
    ld [bc], a
    inc c
    ld [bc], a
    ld [bc], a
    rra
    nop
    ld [bc], a
    rrca
    ld [bc], a
    nop
    rrca
    ld [bc], a
    rrca
    ld [bc], a
    rrca
    ld [bc], a
    rrca
    ld [bc], a
    rrca
    ld [bc], a
    rra
    nop
    rra
    nop
    rra
    nop
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    dec de
    nop
    rst $38
    ld a, a
    ld h, b
    inc b
    jp z, $9004

    dec e
    rst $38
    ld a, a
    and h
    inc b
    daa
    dec c
    db $ec
    ld a, [de]
    rra
    nop
    and h
    inc b
    jp z, $9004

    dec e
    rst $38
    ld a, a
    and l
    inc d
    cp a
    ld b, h
    ld e, a
    ld d, e
    rst $38
    ld a, a
    and l
    inc d
    ld [hl], d
    ld hl, $535f
    rst $38
    ld a, a
    and l
    inc d
    nop
    ld a, a
    ld e, a
    ld d, e
    nop
    nop
    ldh [$ff7f], a
    ldh [$ff7f], a
    ldh [$ff7f], a
    nop
    nop
    ldh [$ff7f], a
    ldh [$ff7f], a
    ldh [$ff7f], a
    nop
    inc b
    ld [bc], a
    jr jr_020_511f

jr_020_511f:
    inc bc
    ld [de], a
    nop
    ccf
    ld [bc], a
    rrca
    ld [bc], a
    rra
    nop
    or $01
    rrca
    ld [bc], a
    jr jr_020_513d

    ld [bc], a
    rra
    nop
    inc b
    ld b, $04
    dec b
    rrca
    ld [bc], a
    add hl, de
    ld [$01f0], sp
    inc h
    rrca

jr_020_513d:
    ld [bc], a
    ld b, [hl]
    ld b, $05
    ld [de], a
    nop
    ld l, [hl]
    inc bc
    ld bc, $0013
    inc bc
    ld [bc], a
    add e
    inc bc
    inc bc
    or d
    nop
    rrca
    ld [bc], a
    db $10
    ld [bc], a
    rrca
    ld [bc], a
    ldh a, [$ff0b]
    ld [bc], a
    ld [bc], a
    rra
    nop
    ld [bc], a
    rrca
    ld [bc], a
    rrca
    ld [bc], a
    rrca
    ld [bc], a
    rrca
    ld [bc], a
    rrca
    ld [bc], a
    rrca
    ld [bc], a
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    nop
    rra
    nop
    dec de
    nop
    rst $38
    ld a, a
    ld h, b
    inc b
    jp z, $9004

    dec e
    rst $38
    ld a, a
    and h
    inc b
    daa
    dec c
    db $ec
    ld a, [de]
    rra
    nop
    and h
    inc b
    jp z, $9004

    dec e
    rst $38
    ld a, a
    and l
    inc d
    ld e, a
    inc bc
    ld e, a
    ld d, e
    rst $38
    ld a, a
    and l
    inc d
    ld [hl], d
    ld hl, $535f
    rst $38
    ld a, a
    and l
    inc d
    rra
    nop
    ld e, a
    ld d, e
    nop
    nop
    ldh [$ff7f], a
    ldh [$ff7f], a
    ldh [$ff7f], a
    nop
    nop
    ldh [$ff7f], a
    ldh [$ff7f], a
    ldh [$ff7f], a
    nop
    inc b
    ld [bc], a
    rla
    nop
    inc b
    inc de
    nop
    ccf
    ld [bc], a
    rrca
    ld [bc], a
    rra
    nop
    rrca
    ld [bc], a
    rrca
    ld [bc], a
    ret nz

    rrca
    ld [bc], a
    rrca
    ld [bc], a
    rrca
    ld [bc], a
    rrca
    ld [bc], a
    rra
    nop
    ld h, e
    ld [bc], a
    dec b
    dec b
    xor a
    inc b
    dec b
    dec b
    dec b
    adc [hl]
    inc bc
    ld bc, $0014
    nop
    ld b, e
    dec b
    inc b
    ld bc, $a102
    nop
    rrca
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    rrca
    ld [bc], a
    dec b
    ld [bc], a
    rra
    nop
    ld [bc], a
    rrca
    ld [bc], a
    rrca
    ld [bc], a
    rrca
    ld [bc], a
    rrca
    ld [bc], a
    rrca
    ld [bc], a
    nop
    rrca
    ld [bc], a
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    nop
    rra
    nop
    rra
    nop
    dec de
    nop
    rst $38
    ld a, a
    ld h, b
    inc b
    jp z, $9004

    dec e
    rst $38
    ld a, a
    and h
    inc b
    daa
    dec c
    db $ec
    ld a, [de]
    rra
    nop
    and h
    inc b
    jp z, $9004

    dec e
    rst $38
    ld a, a
    and l
    inc d
    sub e
    inc bc
    ld e, a
    ld d, e
    rst $38
    ld a, a
    and l
    inc d
    xor $10
    ld e, a
    ld d, e
    rst $38
    ld a, a
    and l
    inc d
    xor a
    ld c, h
    ld a, c
    ld a, d
    nop
    nop
    ldh [$ff7f], a
    ldh [$ff7f], a
    ldh [$ff7f], a
    nop
    nop
    ldh [$ff7f], a
    ldh [$ff7f], a
    ldh [$ff7f], a
    nop
    inc b
    sub [hl]
    rla
    nop
    ld bc, $1105
    nop
    ld bc, $023f
    ld a, [bc]
    ld [bc], a
    dec b
    add b
    sbc a
    ld bc, $020f
    rra
    nop
    add b
    ld b, $f3
    ld bc, $020f
    jr jr_020_52e5

    inc b
    ld [hl], b

jr_020_52e5:
    rrca
    ld [bc], a
    ld e, $04
    adc a
    ld bc, $0c45
    inc b
    inc b
    dec b
    jr nc, jr_020_52f2

jr_020_52f2:
    db $fc
    adc a
    add hl, bc
    inc d
    nop
    nop
    inc b
    inc bc
    inc bc
    inc b
    inc b
    and b
    pop af

Jump_020_52ff:
    nop
    rrca
    ld [bc], a
    inc bc
    ld [bc], a
    ld de, $0d00
    ld [bc], a
    ld [bc], a
    rra
    nop
    ld [bc], a
    nop
    rrca
    ld [bc], a
    rrca
    ld [bc], a
    rrca
    ld [bc], a
    rrca
    ld [bc], a
    rrca
    ld [bc], a
    rrca
    ld [bc], a
    rra
    nop
    rrca
    ld c, $00
    dec hl
    nop
    cpl
    ld [bc], a
    rra
    nop
    rrca
    inc b
    rrca
    inc b
    rra
    nop
    rra
    nop
    rra
    nop
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rst $38
    ld a, a
    ld h, b
    inc b
    jp z, $9004

    dec e
    rst $38
    ld a, a
    and h
    inc b
    daa
    dec c
    db $ec
    ld a, [de]
    rra
    nop
    and h
    inc b
    jp z, $9004

    dec e
    rst $38
    ld a, a
    and l
    inc d
    xor $10
    ret nc

    ld a, [hl]
    rst $38
    ld a, a
    and l
    inc d
    xor $10
    ld e, a
    ld d, e
    rst $38
    ld a, a
    and l
    inc d
    rst $18
    nop
    ld e, a
    ld d, e
    nop
    nop
    ldh [$ff7f], a
    ldh [$ff7f], a
    ldh [$ff7f], a
    nop
    nop
    ldh [$ff7f], a
    ldh [$ff7f], a
    ldh [$ff7f], a
    nop
    inc b
    ld a, [bc]
    rla
    nop
    inc b
    ld [de], a
    nop
    inc bc
    ccf
    ld [bc], a
    rrca
    ld [bc], a
    rra
    nop
    rrca
    ld [bc], a
    sbc b
    rrca
    ld [bc], a
    rrca
    ld [bc], a
    ld a, [bc]
    ld [bc], a
    inc bc
    inc bc
    rrca
    ld [bc], a
    dec bc
    ld [bc], a
    dec b
    rlca
    dec b
    dec b
    inc bc
    rrca
    ld [bc], a
    ld b, $04
    ldh a, [rSB]
    db $10
    ld [bc], a
    adc [hl]
    rlca
    dec d
    ld bc, $0014
    nop
    ldh a, [c]
    ld bc, $a103
    nop
    rrca
    ld [bc], a
    ld d, b
    ld [bc], a
    ld d, l
    inc bc
    ld de, $0500
    dec c
    ld [bc], a
    ld [bc], a
    rra
    nop
    ld [bc], a
    rrca
    ld [bc], a
    nop
    rrca
    ld [bc], a
    rrca
    ld [bc], a
    rrca
    ld [bc], a
    rrca
    ld [bc], a
    rrca
    ld [bc], a
    rra
    nop
    rra
    nop
    rra
    nop
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    dec de
    nop
    rst $38
    ld a, a
    ld h, b
    inc b
    jp z, $9004

    dec e
    rst $38
    ld a, a
    and h
    inc b
    daa
    dec c
    db $ec
    ld a, [de]
    rra
    nop
    and h
    inc b
    jp z, $9004

    dec e
    rst $38
    ld a, a
    and l
    inc d
    db $ec
    ld a, [de]
    ld e, a
    ld d, e
    rst $38
    ld a, a
    and l
    inc d
    rrca
    dec d
    ld e, a
    ld d, e
    rst $38
    ld a, a
    and l
    inc d
    rst $38
    ld [bc], a
    ld e, a
    ld d, e
    nop
    nop
    ldh [$ff7f], a
    ldh [$ff7f], a
    ldh [$ff7f], a
    nop
    nop
    ldh [$ff7f], a
    ldh [$ff7f], a
    ldh [$ff7f], a
    nop
    inc b
    ld d, $17
    nop
    ld bc, $1105
    nop
    ld bc, $023f
    rrca
    ld [bc], a
    rra
    nop
    ld [hl+], a
    ld bc, $0402
    stop
    rrca
    ld [bc], a
    dec bc
    ld [bc], a
    inc b
    rrca
    ld [bc], a
    dec [hl]
    ld b, $06
    ldh a, [c]
    ld bc, $0404
    sbc a
    ld bc, $021a
    rrca
    inc b
    rrca
    inc b
    adc h
    dec bc
    ldh [rNR14], a
    nop
    inc b
    ld [bc], a
    ldh a, [rP1]
    rrca
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    inc bc
    inc bc
    ld a, [bc]
    ld c, $02
    ld [bc], a
    rra
    nop
    ld [bc], a
    rrca
    ld [bc], a
    rrca
    ld [bc], a
    rrca
    ld [bc], a
    rrca
    ld [bc], a
    nop
    rrca
    ld [bc], a
    rrca
    ld [bc], a
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    nop
    rra
    nop
    rra
    nop
    rra
    nop

Jump_020_5501:
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    dec de
    nop
    rst $38
    ld a, a
    ld h, b
    inc b
    jp z, $9004

    dec e
    rst $38
    ld a, a
    and h
    inc b
    daa
    dec c
    db $ec
    ld a, [de]
    rra
    nop
    and h
    inc b
    jp z, $9004

    dec e
    rst $38
    ld a, a
    and l
    inc d
    ldh a, [$ff4c]
    ld e, a
    ld d, e
    rst $38
    ld a, a
    and l
    inc d
    inc c
    add hl, de
    ld e, a
    ld d, e
    rst $38
    ld a, a
    and l
    inc d
    rra
    ld bc, $4a52
    nop
    nop
    ldh [$ff7f], a
    ldh [$ff7f], a
    ldh [$ff7f], a
    nop
    nop
    ldh [$ff7f], a
    ldh [$ff7f], a
    ldh [$ff7f], a
    jp c, $b150

    ld d, c
    add l
    ld d, d
    ld h, c
    ld d, e
    inc a
    ld d, h
    inc d
    ld d, l
    ld c, c
    ld d, b
    ld a, [de]
    ld d, c
    pop af
    ld d, c
    push bc
    ld d, d
    and c
    ld d, e
    ld a, h
    ld d, h
    ld hl, $5554
    ldh a, [$ffa4]
    add $06
    call Call_000_0a3e
    ld c, $4f
    ld a, $01
    ldh [c], a
    ld c, $20
    ld de, $9800
    call Call_000_31a0
    ld c, $4f
    xor a
    ldh [c], a
    ldh a, [$ffa4]
    ld hl, $5554
    call Call_000_0a3e
    call CGBBackgroundPaletteUpload
    ret


    nop
    inc b
    add d
    inc d
    nop
    inc b
    ld [de], a
    nop
    rst $38
    ld bc, $020f
    rra
    nop
    pop de
    ld bc, $e505
    inc bc
    stop
    dec b
    ccf
    ld [bc], a
    ld [bc], a
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    inc bc
    ld [bc], a
    sub b
    nop
    rst $28
    ld bc, $05d0
    dec b
    ld [bc], a
    sub b
    nop
    rst $28
    ld bc, $060f
    sub [hl]
    rrca
    ld b, $02
    dec b
    db $10
    ld [bc], a
    dec b
    rrca
    ld b, $d5
    dec bc
    ld [bc], a
    rra
    dec b
    ld b, $03
    inc bc
    ld b, $00
    inc b
    rrca
    ld [bc], a
    inc hl
    ld c, $8b
    dec b
    ld b, $10
    nop
    dec b
    adc a
    ld bc, $020f
    call z, $0109
    ld [bc], a
    rra
    nop
    ld bc, $020f
    rrca
    ld [bc], a
    rrca
    ld [bc], a
    rrca
    ld [bc], a
    rra
    nop
    rra
    nop
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rst $38
    ld a, a
    ld b, h
    nop
    dec l
    dec b
    ld a, l
    ld [bc], a
    rst $38
    ld a, a
    and h
    inc b
    add hl, de
    nop
    rra
    nop
    rst $38
    ld a, a
    and h
    inc b
    ldh [c], a
    dec bc
    rra
    ld a, h
    rst $38
    ld a, a
    and h
    inc b
    ld h, h
    ld l, l
    ld e, a
    ld d, e
    rst $38
    ld a, a
    and h
    inc b
    ld h, h
    ld l, l
    db $dd
    ld a, [bc]
    rst $38
    ld a, a
    and l
    inc d
    ld h, h
    ld l, l
    ld e, a
    ld d, e
    rst $38
    ld a, a
    and h
    inc b
    dec l
    ld de, $3656
    nop
    nop
    ldh [$ff7f], a
    ldh [$ff7f], a
    ldh [$ff7f], a
    ld c, $4f
    ld a, $01

Call_020_567f:
    ldh [c], a
    ld hl, $5593
    ld c, $20
    ld de, $9800
    call Call_000_31a0
    ld c, $4f
    xor a
    ldh [c], a
    ld hl, $563b
    call CGBBackgroundPaletteUpload
    ret


    rra
    nop
    and l
    nop
    jr nc, jr_020_56ad

    ld d, $12
    rra
    nop
    and l
    nop
    ld b, b
    ld a, [hl]
    rst $38
    ld a, a
    rra
    nop
    and l
    nop
    db $db
    ld [bc], a
    sbc a

jr_020_56ad:
    dec de
    rra
    nop
    and l
    nop
    rst $28
    dec a
    add hl, sp
    ld h, a
    rra
    nop
    and l
    nop
    db $db
    nop
    rst $38
    ld a, a
    rra
    nop
    and l
    nop
    rla
    ld [de], a
    rst $38
    ld a, a
    rra
    nop
    and l
    nop
    or h
    dec e
    rst $38
    ld a, a
    rra
    nop
    and l
    nop
    or h
    dec e
    ld a, a
    dec de
    rra
    nop
    and l
    nop
    pop hl
    dec b
    xor d
    rlca
    rra
    nop
    and l
    nop
    ld a, c
    ld e, $7f
    dec sp
    rra
    nop
    and l
    nop
    rst $18
    ld [bc], a
    rst $38
    ld d, e
    rra
    nop
    and l
    nop
    ret c

    ld b, d
    rst $38
    ld a, a
    rra
    nop
    and l
    nop
    ld [hl], l
    add hl, bc
    ld a, l
    ld b, $1f
    nop
    and l
    nop
    ld d, l
    inc a
    ld a, [hl-]
    ld h, [hl]
    rra
    nop
    and l
    nop
    inc a
    ld bc, $469d
    rra
    nop
    and [hl]
    inc c
    or h
    dec b
    cp h
    ld l, $43
    sbc c
    ld b, [hl]
    sbc c
    ld c, c
    sbc c
    ld c, h
    sbc c
    ld c, a
    sbc c
    ld c, $4f
    ld a, $01
    ldh [c], a
    ld a, [$cd32]
    ld b, a
    ldh a, [$ffab]
    cp b
    jr z, jr_020_5750

    cp $05
    jr nc, jr_020_5750

    ldh a, [$ffab]
    ld hl, $5716
    call Call_000_0a3e
    call SyncToBlankPeriod
    ld a, $02
    ld [hl+], a
    ld [hl], a
    call SyncToBlankPeriod
    ld a, $1f
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, $02
    ld [hl+], a
    ld [hl], a

jr_020_5750:
    ld a, [$cd32]
    ldh [$ffab], a
    ld hl, $5716
    call Call_000_0a3e
    call SyncToBlankPeriod
    ld a, $07
    ld [hl+], a
    ld [hl], a
    call SyncToBlankPeriod
    ld a, $1f
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, $07
    ld [hl+], a
    ld [hl], a
    ld c, $4f
    xor a
    ldh [c], a
    ld a, [$cd30]
    ld e, a
    add a
    add a
    add e
    ld de, $cd34
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld a, $04
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld a, [de]
    sub $50
    ld h, a
    ld a, $04
    call Call_000_09dc
    ld b, l
    ld a, [$c0a7]
    cp $14
    jr z, jr_020_57b3

    cp $15
    jr z, jr_020_57be

    cp $16
    jr z, jr_020_57c9

    cp $17
    jr z, jr_020_57d4

    cp $18
    jr z, jr_020_57df

    cp $19
    jr z, jr_020_57ea

    ret


jr_020_57b3:
    ld a, b
    ld hl, $57f5
    call Call_000_0a3e
    call Call_000_0401
    ret


jr_020_57be:
    ld a, b
    ld hl, $5807
    call Call_000_0a3e
    call Call_000_0401
    ret


jr_020_57c9:
    ld a, b
    ld hl, $5811
    call Call_000_0a3e
    call Call_000_0401
    ret


jr_020_57d4:
    ld a, b
    ld hl, $5815
    call Call_000_0a3e
    call Call_000_0401
    ret


jr_020_57df:
    ld a, b
    ld hl, $5823
    call Call_000_0a3e
    call Call_000_0401
    ret


jr_020_57ea:
    ld a, b
    ld hl, $582d
    call Call_000_0a3e

Jump_020_57f1:
    call Call_000_0401
    ret


    sub $56
    or [hl]
    ld d, [hl]
    sbc $56
    or [hl]
    ld d, [hl]
    and $56
    sbc [hl]
    ld d, [hl]
    sbc $56
    or [hl]
    ld d, [hl]
    sub $56
    ld b, $57
    and $56
    cp $56
    sub $56
    xor $56
    ld c, $57
    adc $56
    sub [hl]
    ld d, [hl]
    sbc [hl]
    ld d, [hl]
    sbc [hl]
    ld d, [hl]
    and [hl]
    ld d, [hl]
    xor [hl]
    ld d, [hl]
    xor [hl]
    ld d, [hl]
    xor [hl]
    ld d, [hl]
    xor $56
    and $56
    xor $56
    or $56
    sbc $56
    cp [hl]
    ld d, [hl]
    or [hl]
    ld d, [hl]
    add $56
    adc $56
    add $56
    sbc [hl]
    ld d, [hl]
    or [hl]
    ld d, [hl]
    cp [hl]
    ld d, [hl]
    or [hl]
    ld d, [hl]
    ld a, h
    ld c, [hl]
    add h
    nop
    ld [hl], a
    dec b
    ld a, a
    ld b, a
    ld a, h
    ld c, [hl]
    add h
    nop
    ld a, a
    dec b
    ld a, a
    ld b, a
    ld a, h
    ld c, [hl]
    add h
    nop
    inc d
    ld a, [de]
    ld a, a
    ld b, a
    ld a, h
    ld c, [hl]
    add h
    nop
    or d
    add hl, sp
    ld a, a
    ld b, a
    ld a, h
    ld c, [hl]
    add h
    nop
    rst $38
    ld h, b
    ld a, a
    ld b, a
    rst $38
    ld a, a
    add h
    nop
    sbc h
    ld [bc], a
    ld a, a
    ld b, a
    ld a, h
    ld c, [hl]
    pop hl
    inc e
    ldh [rHDMA2], a
    ld a, a
    ld b, a
    ld a, [$b88c]
    cp $01
    jp z, Jump_020_58f4

    cp $02
    jp z, Jump_020_5959
    cp $03
    jp z, Jump_020_58fb
    cp $04
    jp z, Jump_020_5902
    cp $05
    jp z, Jump_020_58d7
    cp $06
    jp z, Jump_020_5915
    cp $07
    jp z, Jump_020_5930
    cp $08
    jp z, Jump_020_5929
    cp $09
    jp z, Jump_020_593d
    cp $0a
    jp z, Jump_020_594b
    cp $0b
    jp z, Jump_020_58d0
    cp $0c
    jp z, Jump_020_5944
    cp $0d
    jp z, Jump_020_5944
    cp $0f
    jp z, Jump_020_5922
    cp $10
    jp z, Jump_020_5922
    cp $12
    jp z, Jump_020_5959
    cp $13
    jp z, Jump_020_5952
    ret


Jump_020_58d0:
    ld hl, $584f
    call SyncLoadSpritePalette7
    ret


Jump_020_58d7:
    ld a, [$b8ec]
    cp $00
    jr z, jr_020_58e5

    ld hl, $584f
    call SyncLoadSpritePalette7
    ret


jr_020_58e5:
    ld hl, $584f
    call SyncLoadSpritePalette7
    ret

; Data?
    ld [hl], h
    ld c, [hl]
    add h
    nop
    ldh [$ff6d], a
    ld a, a
    ld b, a

Jump_020_58f4:
    ld hl, $58ec
    call SyncLoadSpritePalette7
    ret


Jump_020_58fb:
    ld hl, $585f
    call SyncLoadSpritePalette3
    ret


Jump_020_5902:
    ld hl, $585f
    call SyncLoadSpritePalette3
    ld hl, $5857
    call SyncLoadSpritePalette6
    ld hl, $584f
    call SyncLoadSpritePalette7
    ret


Jump_020_5915:
    ld hl, $4011
    call SyncLoadSpritePalette8
    ld hl, $584f
    call SyncLoadSpritePalette7
    ret


Jump_020_5922:
    ld hl, $5847
    call SyncLoadSpritePalette4
    ret


Jump_020_5929:
    ld hl, $584f
    call SyncLoadSpritePalette7
    ret


Jump_020_5930:
    ld hl, $5857
    call SyncLoadSpritePalette6
    ld hl, $4011
    call SyncLoadSpritePalette8
    ret


Jump_020_593d:
    ld hl, $584f
    call SyncLoadSpritePalette7
    ret


Jump_020_5944:
    ld hl, $5857
    call SyncLoadSpritePalette6
    ret


Jump_020_594b:
    ld hl, $5847
    call SyncLoadSpritePalette4
    ret


Jump_020_5952:
    ld hl, $5857
    call SyncLoadSpritePalette6
    ret


Jump_020_5959:
    ld hl, $584f
    call SyncLoadSpritePalette7
    ret


    nop
    inc b
    push bc
    ld bc, $001f
    ld bc, $020f
    rrca
    ld [bc], a
    ld c, $02
    ld [bc], a
    ld [bc], a
    ldh [rIF], a
    ld [bc], a
    rrca
    ld [bc], a
    rrca
    ld [bc], a
    rrca
    ld [bc], a
    dec bc
    ld [bc], a
    inc bc
    inc bc
    ld [bc], a
    ld b, $12
    nop
    nop
    nop
    add e
    nop
    add b
    ld [bc], a
    rrca
    ld [bc], a
    rrca
    ld [bc], a
    ld b, $0c
    nop
    ccf
    rrca
    rrca
    ld [bc], a
    rrca
    ld [bc], a
    rlca
    ld a, [bc]
    ld h, l
    dec b
    rrca
    ld b, $0f
    ld [bc], a
    rrca
    ld [bc], a
    nop
    rrca
    ld b, $0f
    ld [$020f], sp
    rrca
    ld b, $0f
    ld b, $0f
    ld [bc], a
    rrca
    ld [bc], a
    rrca
    ld b, $00
    rrca
    ld b, $0f
    ld [bc], a
    rrca
    ld a, [de]
    rrca
    jr nz, jr_020_59d7

    nop
    rra
    nop
    rra
    nop
    rra
    nop
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    nop
    rra
    nop
    rra
    nop
    rra
    nop

jr_020_59d7:
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    inc d
    nop
    nop
    inc b
    dec b
    ld bc, $001f
    ld bc, $020f
    rrca
    ld [bc], a
    rrca
    ld [bc], a
    rrca
    ld [bc], a
    rrca
    ld [bc], a
    nop
    rrca
    ld [bc], a
    rst $28
    ld bc, $020f
    rrca
    ld [bc], a
    rrca
    ld [bc], a
    rrca
    ld [bc], a
    rrca
    ld [bc], a
    rrca
    ld [bc], a
    nop
    rrca
    ld [bc], a
    rrca
    ld [bc], a
    rra
    nop
    rrca
    ld [bc], a
    rrca
    ld [bc], a
    rrca
    ld [bc], a
    rrca
    ld [bc], a
    rrca
    ld [bc], a
    nop
    rrca
    ld [bc], a
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    nop
    rra
    nop
    rra
    nop
    dec de
    nop
    rst $38
    ld a, a
    nop
    nop
    rst $00
    ld [bc], a
    sbc e
    rra
    rst $38
    ld a, a
    ret nz

    ld c, $cb
    dec bc
    ei
    dec sp
    nop
    nop
    ldh [$ff7f], a
    ldh [$ff7f], a
    ldh [$ff7f], a
    nop
    nop
    ldh [$ff7f], a
    ldh [$ff7f], a
    ldh [$ff7f], a
    nop
    nop
    ldh [$ff7f], a
    ldh [$ff7f], a
    ldh [$ff7f], a
    nop
    nop
    ldh [$ff7f], a
    ldh [$ff7f], a
    ldh [$ff7f], a
    nop
    nop
    ldh [$ff7f], a
    ldh [$ff7f], a
    ldh [$ff7f], a
    nop
    nop
    ldh [$ff7f], a
    ldh [$ff7f], a
    ldh [$ff7f], a
    ld a, h
    ld c, [hl]
    add h
    nop
    ld e, a
    ld c, a
    rst $38
    ld a, a
    ld a, h
    ld c, [hl]
    ld e, a
    ld [bc], a
    ld e, a
    dec bc
    rst $38
    ld a, a
    nop
    nop
    ldh [$ff7f], a
    ldh [$ff7f], a
    ldh [$ff7f], a
    nop
    nop
    ldh [$ff7f], a
    ldh [$ff7f], a
    ldh [$ff7f], a
    nop
    nop
    ldh [$ff7f], a
    ldh [$ff7f], a
    ldh [$ff7f], a
    nop
    nop
    ldh [$ff7f], a
    ldh [$ff7f], a
    ldh [$ff7f], a
    nop
    nop
    ldh [$ff7f], a
    ldh [$ff7f], a
    ldh [$ff7f], a
    nop
    nop
    ldh [$ff7f], a
    ldh [$ff7f], a
    ldh [$ff7f], a
    ld a, h
    ld c, [hl]
    rst $20
    nop
    ret nz

    ld [hl], l
    ld a, a
    ld c, a
    ld a, h
    ld c, [hl]
    rst $20
    nop
    rra
    nop
    ld a, a
    ld c, a
    ld a, h
    ld c, [hl]
    rst $20
    nop
    ld [hl], c
    add hl, bc
    ld a, a
    ld c, a
    nop
    nop
    ldh [$ff7f], a
    ldh [$ff7f], a
    ldh [$ff7f], a
    ld a, h
    ld c, [hl]
    rst $20
    nop
    rla
    ld [de], a
    rst $38
    ld a, a
    ld a, h
    ld c, [hl]
    rst $20
    nop
    sbc a
    ld e, d
    rst $38
    ld a, a
    nop
    nop
    ldh [$ff7f], a
    ldh [$ff7f], a
    ldh [$ff7f], a
    nop
    nop
    ldh [$ff7f], a
    ldh [$ff7f], a
    ldh [$ff7f], a
    cp d
    ld a, a
    ld c, d
    ld a, $10
    ld e, e
    dec bc
    ld a, a
    cp d
    ld a, a
    inc bc
    nop
    db $d3
    dec d
    and c
    ld a, [de]
    jr nc, jr_020_5b4f

    and b
    db $10
    and b
    ld bc, $0281
    and c
    ld d, $03
    nop
    db $d3
    dec d
    ret nz

    dec b
    ccf
    rra
    inc bc

jr_020_5b4f:
    nop
    jr nc, @+$13

    rla
    ld [de], a
    nop
    nop
    ldh [$ff7f], a
    ldh [$ff7f], a
    ldh [$ff7f], a
    nop
    nop
    ldh [$ff7f], a
    ldh [$ff7f], a
    ldh [$ff7f], a
    nop
    nop
    ldh [$ff7f], a
    ldh [$ff7f], a
    ldh [$ff7f], a
    nop
    inc b
    ld b, b
    cpl
    ld bc, $001f
    rra
    nop
    rra
    nop
    rra
    nop
    jp Boot


    rra
    nop
    jp nz, $005a

    inc bc
    rra
    nop
    rra
    nop
    rra
    nop
    sub [hl]
    nop
    ld [bc], a
    inc bc
    ld hl, $1102
    nop
    ld h, d
    nop
    cp l
    nop
    or c
    ld bc, $1f04
    nop
    rra
    nop
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    nop
    rra
    nop
    sub [hl]
    nop
    cpl
    rra
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    nop
    rra
    nop
    rra
    nop
    dec e
    nop
    ld hl, $5aec
    call Call_000_03ab
    ld hl, $5b2c
    call CGBBackgroundPaletteUpload
    ld c, $4f
    ld a, $01
    ldh [c], a
    ld hl, $5b6c
    ld c, $20
    ld de, $9800
    call Call_000_31a0
    ld c, $4f
    xor a
    ldh [c], a
    ret


    ld c, $4f
    ld a, $01
    ldh [c], a
    ld de, $5c70
    ld a, [$cb78]
    cp $00
    jr nz, jr_020_5c2a

    ld de, $5c78

jr_020_5c2a:
    ld a, [$b8a0]
    cp $03
    jr z, jr_020_5c38

    ld a, [$b89f]
    cp $03
    jr nz, jr_020_5c3b

jr_020_5c38:
    ld de, $5c78

jr_020_5c3b:
    ld hl, $988f
    ld a, [$cbe8]
    cp $02
    jr nz, jr_020_5c48

    ld hl, $988d

jr_020_5c48:
    ld b, $04

jr_020_5c4a:
    call SyncToBlankPeriod
    ld a, [de]
    ld [hl+], a
    inc de
    dec b
    jr nz, jr_020_5c4a

    ld hl, $98af
    ld a, [$cbe8]
    cp $02
    jr nz, jr_020_5c60

    ld hl, $98ad

jr_020_5c60:
    ld b, $04

jr_020_5c62:
    call SyncToBlankPeriod
    ld a, [de]
    ld [hl+], a
    inc de
    dec b
    jr nz, jr_020_5c62

    ld c, $4f
    xor a
    ldh [c], a
    ret


    rlca
    rlca
    ld b, $06
    rlca
    rlca
    ld b, $06
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    rst $38
    ld a, a
    ld h, $04
    db $f4
    dec d
    cp e
    ld h, $12
    inc sp
    ld h, $04
    jr nz, jr_020_5c8f

    nop

jr_020_5c8f:
    ld [bc], a
    rst $38
    ld a, a
    nop
    nop
    ld a, c
    ld e, $7f
    dec sp
    rst $38
    ld a, a
    nop
    nop
    rra
    nop
    rst $38
    ld a, a
    rst $38
    ld a, a
    nop
    nop
    rra
    inc bc
    ld a, a
    dec sp
    rst $38
    ld a, a
    nop
    nop
    ld b, b
    ld a, [hl]
    rst $38
    ld a, a
    rst $38
    ld a, a
    nop
    nop
    pop hl
    dec b
    db $ec
    inc bc
    nop
    nop
    ldh [$ff7f], a
    ldh [$ff7f], a
    ldh [$ff7f], a
    nop
    db $10
    call nz, $012f
    ld c, e
    nop
    rst $38
    inc e
    nop
    rrca
    ld [bc], a
    rrca
    ld [bc], a
    ld b, h
    ld b, h
    ccf
    nop
    nop
    ld de, $4411
    ld b, h
    ld b, c
    nop
    dec c
    ld [bc], a
    rst $28
    xor d
    xor d
    ld d, l
    ld d, l
    ld b, l
    nop
    cp e
    cp e
    xor $bd
    xor $0d
    inc b
    cp e
    cp e
    rst $38
    rst $38
    ld l, l
    ld bc, $3bbb
    rst $38
    xor $40
    nop

jr_020_5cf5:
    ld d, l
    rst $38
    xor d
    ld b, b
    nop
    ld c, $07
    ld a, [$0022]
    inc bc
    add b
    nop
    ld a, $f1
    ld hl, sp+$07
    jr nc, jr_020_5cf5

    rst $08
    rlca
    add hl, bc
    ldh a, [$fff0]
    pop hl
    inc c
    rrca
    ld hl, sp+$1f
    rst $38
    ldh a, [$ff74]
    set 0, b
    ccf
    ld [hl], b
    rst $28
    nop

jr_020_5d1b:
    rst $38
    rst $38
    ret nz

    rst $38
    rlca
    ld hl, sp-$08
    ld hl, sp-$10

jr_020_5d24:
    rst $38
    ldh a, [$ffc0]
    ret nz

    nop
    nop
    ldh [$ffe0], a
    rlca
    db $fd
    rlca
    pop hl
    inc c
    add b
    ld a, a
    nop
    rst $38
    db $10
    rst $28
    ld a, [hl]
    ld h, c
    nop
    jr nz, jr_020_5d1b

    nop
    rst $38
    ldh a, [$ff7f]
    ld b, d
    inc bc
    ei
    rrca
    ld a, a
    add b
    nop
    ret nz

    ret nz

    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, a
    adc h
    ld [hl], a
    rra
    ldh [$ff82], a
    ld a, l

jr_020_5d54:
    ld [$f7ff], sp
    ld bc, $03fe
    db $fc
    jr c, jr_020_5d54

    add c
    rst $00
    ld a, [hl]
    rlca
    rlca
    ld b, c
    ld [de], a
    jp Jump_000_2105


    ld b, $27
    ld hl, sp-$01
    pop hl
    ld e, $78
    add a
    ldh a, [rIF]

jr_020_5d71:
    ret nz

    ccf
    rst $38
    add e
    ld a, h
    ld b, $f9
    adc b
    ld [hl], a
    ldh [$ffe0], a
    cp $4b
    inc d
    ld hl, sp+$07
    add c
    ld a, [hl]
    rra
    ldh [rNR23], a
    ccf
    rst $20
    jr jr_020_5d71

    db $10
    rst $28
    db $10
    ld b, b
    ld [$162d], sp
    ld a, e
    ld b, b
    cp a
    and c
    dec b
    rlca
    ld hl, sp+$0c
    di
    add c
    ld [$82fb], sp
    ld a, l
    dec hl
    jr jr_020_5d24

    add d
    dec b
    ld a, [$df83]
    ld a, h
    add d
    ld a, l
    ld bc, $83fe
    ld c, $04
    ei
    cp $2b
    ld a, [de]
    inc b
    inc b
    and b
    ld e, a
    ld b, b
    cp a
    add b
    rst $38

jr_020_5dbb:
    ld a, a
    ld b, b

jr_020_5dbd:
    cp a
    nop
    rst $38
    adc b
    ld [hl], a
    jr jr_020_5dbb

    rst $20
    inc d
    db $e3
    daa
    inc e
    ld [$1808], sp
    jr jr_020_5dbd

    inc e
    inc e
    inc bc
    db $fc
    inc hl
    ld [de], a
    nop
    rst $38
    ld de, $eedf
    cp a
    ld b, c
    rst $28
    inc b
    daa
    ld e, $11
    ld de, $beff
    cp a
    ei
    rst $38
    inc d
    db $eb
    ld [$fff7], sp
    db $10
    rst $28
    ld [bc], a
    db $fd
    add l
    ld a, b
    ld l, e
    ld [de], a
    rst $20
    ld a, d
    ld [$a05d], sp
    dec de
    ld b, c
    jr nz, jr_020_5dfe

    ld [bc], a
    add a

jr_020_5dfe:
    rst $08
    add a
    db $ed
    rst $28
    rst $30
    and b
    rla
    inc bc
    ld d, $05
    ld a, [$1dff]

jr_020_5e0b:
    ldh [c], a
    xor [hl]
    ld c, b
    rst $30
    nop
    db $dd
    add b
    ld a, [hl]
    inc hl
    ld [hl+], a
    dec b
    dec b
    dec e
    dec e
    or a
    cp a
    nop
    ld [de], a
    rst $38
    rst $38
    ld b, l
    jr c, jr_020_5e0b

    ld d, c
    dec a
    nop
    xor d
    cp a
    jr nz, jr_020_5e80

    inc b
    cp d
    nop
    ld [hl], l
    ret nc

    jr @-$37

    rst $38
    rst $00
    xor [hl]
    rst $28
    rst $38
    rst $38
    rst $18
    rst $38
    ei
    cp $94
    ld hl, $639c
    rst $28
    ld [$00d4], sp
    rst $38
    rst $18
    ld b, d
    ld d, [hl]
    nop
    rst $38
    sub b
    pop de
    ld a, [de]
    sbc h
    sbc h
    push de
    rst $30
    jr nc, jr_020_5e74

    cp l
    ld [hl], b
    inc hl
    ld l, a
    or d
    inc hl
    db $ed
    ld [$aa5f], sp
    nop
    sub a
    nop
    halt
    ld d, l
    ld a, [bc]
    nop
    pop hl
    ld bc, $49fe
    dec h
    ld e, d
    ld d, b
    and d
    jr nz, jr_020_5edb

    ld a, [bc]
    add $a8
    ld [hl], b
    ld e, $f0
    add hl, de
    ret nc

jr_020_5e74:
    ld e, $af
    ret nz

    dec b
    push af
    ld e, b
    daa
    rst $10
    rst $38
    ld [bc], a
    cp e
    add b

jr_020_5e80:
    xor l
    inc b
    rst $30
    nop
    db $fd
    ldh [c], a
    ld [hl], h
    ld c, $fd
    ld b, b
    add hl, bc
    push bc
    rlca
    pop bc
    add hl, hl
    ld [hl], $12
    db $ec
    cp a
    nop
    rst $10
    nop
    ld [$f700], a
    sub d
    ld [hl+], a
    cp l
    db $db
    nop
    db $ed
    rra
    inc h
    nop
    db $dd
    nop
    ld [bc], a
    ld d, l
    nop
    cp c
    xor d
    rrca
    dec l
    ret nc

    dec l
    ld [hl], a
    nop
    xor e
    jp nz, $5501

    inc l
    rrca
    cpl
    inc bc
    ld [$ee00], sp
    jp nz, $4003

    rrca
    ld [bc], a
    or d
    ld sp, $f6e7
    nop
    cp e
    add $05
    rrca
    ld [bc], a
    rst $38
    rst $38
    push de
    ldh [$ffc8], a
    dec b
    rrca
    ld [bc], a
    ld bc, $0f06
    ld [bc], a
    ld c, c
    scf
    dec c
    ldh a, [c]
    add hl, de
    rst $38

jr_020_5edb:
    and $23
    call c, $974b
    sub [hl]
    dec hl
    dec [hl]
    rra
    ld c, e
    adc a
    ld a, a
    xor [hl]
    inc de
    inc hl
    inc a
    ld d, b
    dec l
    ld [hl], h
    rra
    rst $38
    call nz, $873f
    ld a, b
    dec c
    ldh a, [c]
    ld a, [bc]
    push af
    rst $38
    sub l
    ld [$fd42], a
    push bc
    ld a, [$f54a]
    adc h
    inc bc
    inc l
    add b
    cpl
    nop
    ret nz

    ld [hl+], a
    nop

Jump_020_5f0a:
    rra
    nop
    ld c, e
    nop
    inc bc
    ld a, a
    rst $38
    sub a
    ld c, c
    inc bc
    rst $38
    xor [hl]
    inc de
    add l
    nop
    db $fc
    add l
    ld a, [de]
    dec b
    dec de
    call nc, $49eb
    and $c1
    rst $38
    rst $38
    ld c, d
    push af
    push bc
    ld [$f74a], a
    push bc
    ld [$48e3], a
    rst $30
    ld h, e
    ld a, [de]
    ld h, a
    ld [bc], a
    ld bc, $c03a
    rst $38
    ld b, b
    ld c, h
    jr nz, jr_020_5f3c

jr_020_5f3c:
    ld h, c
    nop
    ld e, h
    and e
    add l
    rlca
    db $e3
    rlca
    db $fc
    ld b, $06
    rst $10
    ld bc, $96ff
    add b
    ld b, $ec
    ld c, $06
    call nz, $ffeb
    ld b, c
    cp $c2
    db $ed
    pop bc
    cp $d5
    ld [$cbbf], a
    cp $d3
    xor $e7
    sbc $0c
    ld [$ff20], sp
    xor [hl]
    ld d, c
    ld d, a
    adc b
    adc e
    inc b
    inc b
    inc bc
    rst $38
    inc bc
    nop
    ld [hl], c
    nop
    ld [hl], c
    jr nc, @+$73

jr_020_5f76:
    jr nc, jr_020_5f76

    dec c

jr_020_5f79:
    ld a, [bc]
    scf
    ldh a, [$ff1f]
    db $fc
    xor a
    ld a, [hl]
    rra
    rst $38
    rst $38
    rst $08
    ccf
    add hl, sp
    add $3d
    jp nc, Jump_020_57f1

    ld e, $ef
    rra
    ret nc

    ld b, d
    ld bc, $4372
    ld bc, $0021
    ld a, a
    rlca
    rst $38
    sbc c
    ld h, a
    rst $00
    ccf
    ld e, a
    ld h, $1a
    ldh a, [c]
    db $10
    ld b, l
    add b
    sub b
    ld b, d
    ld [hl], a
    ld c, l
    ret nz

    push af
    add b
    ei
    cp c
    nop
    ld h, c
    ld a, [de]
    inc b
    jr jr_020_5ff1

    rst $38
    ld a, [hl]
    ld c, c
    ld c, a
    ld [hl], c
    adc a
    jr nc, jr_020_5f79

jr_020_5fbb:
    ld [hl], c
    rst $38
    jr z, jr_020_5fd9

    ld [de], a
    ld c, c
    ld e, b
    ld d, c
    rrca
    xor a
    ldh a, [rIE]
    nop
    ld a, [$25e0]
    ld [bc], a
    dec b
    inc e
    rrca

jr_020_5fcf:
    ld hl, sp+$0f
    ld d, e
    rrca
    ld d, l
    ld [$1502], sp
    nop
    ld a, [hl+]

jr_020_5fd9:
    ld [$fd10], sp
    nop
    ld hl, $1d00
    nop
    jr nz, jr_020_5ff2

    jr nz, jr_020_5fcf

    ld [$4c60], a
    ldh [rNR50], a
    nop
    ret nz

    ld hl, $784d
    ld b, b
    sub b

jr_020_5ff1:
    rst $38

jr_020_5ff2:
    ld b, e
    jr nz, jr_020_5ff9

    inc hl
    db $10
    daa
    nop

jr_020_5ff9:
    rst $30
    rst $18
    dec b
    ld [hl-], a
    sub b
    ld [hl+], a
    add b
    dec e
    ld a, [de]
    ret nz

    ld b, b
    rst $38
    jr nz, jr_020_6007

jr_020_6007:
    db $10
    sub b
    ld [$c800], sp
    adc b
    rst $38
    inc b
    inc b
    ld a, [bc]
    db $10
    ld a, [bc]
    ccf
    rst $38
    rra
    ldh a, [c]
    jr nc, jr_020_6021

    rlca
    jr nz, jr_020_601c

jr_020_601c:
    ld [hl], c
    db $10
    ld bc, $80ff

jr_020_6021:
    ld a, d
    rst $38
    ld [$0825], sp
    db $10
    add b
    db $10
    jr nz, jr_020_5fbb

    ld a, a
    nop
    cp [hl]
    add b
    jr nc, @+$29

    db $10
    dec b
    dec e
    ld e, $f7
    and b
    nop
    ld d, b
    jr nz, jr_020_603f

    jr nz, @+$03

    jr nz, jr_020_6046

jr_020_603f:
    cp a
    ldh [rIF], a
    inc de
    rst $18
    rrca
    ld e, a

jr_020_6046:
    db $10
    inc c

jr_020_6048:
    rra
    cp $40
    inc b
    ld e, $fe
    jr jr_020_6048

    inc bc
    di
    rrca
    dec a
    rst $28
    inc hl
    inc hl
    ld a, $01
    rst $38
    jr nc, jr_020_6090

    add hl, bc
    ld d, e
    inc de
    rst $28
    ret nz

    jr nc, jr_020_6093

    ldh [rNR10], a
    nop
    ret nz

    ret nz

    rrca
    rst $38
    stop
    rrca
    rlca
    nop
    add hl, de
    ldh [rTAC], a
    rst $38
    ld hl, sp-$7f
    ld a, [hl]
    add b
    ld a, a
    ret nz

    ccf
    ldh [$fffb], a
    rst $38
    ldh a, [rWave_0]
    ld h, e
    rra
    rra
    rlca
    rlca
    ld bc, $01fd
    pop hl
    ld h, $a1
    ld b, d
    ld c, [hl]
    sub c
    add c
    ld a, [hl]
    rst $30

jr_020_6090:
    rst $38
    nop
    ccf

jr_020_6093:
    nop
    add hl, hl
    ldh a, [rP1]
    ld a, b
    add b
    ldh a, [c]
    ld bc, $815d
    ld d, [hl]
    ld h, l
    add b
    ld e, b
    dec e
    sub l
    ld a, [bc]
    ld c, $d3
    ldh a, [$fffc]
    ret nz

    ld bc, $1215
    dec b
    ld a, [hl-]
    inc d
    rla
    ld [$c8ff], sp
    daa
    rlca
    ld hl, sp-$03
    nop
    pop af
    nop
    cp a
    inc bc
    ld bc, $4143
    sub a
    inc bc
    ld bc, $0761
    ei
    rst $38
    cp $10
    nop
    db $fd
    db $fd
    cp l
    db $fd
    ei
    ld e, a
    ei
    rst $38
    rra
    ld a, a
    or a
    or b
    ld b, [hl]
    rst $28
    jr nc, @+$4b

    rst $38
    rst $18
    rst $38
    sbc a
    rst $38
    sbc a
    rra
    rst $18
    scf
    cp a
    or a
    ld l, a
    ld l, a
    rst $28
    rst $28
    rst $18
    stop
    sbc a
    db $fc
    stop
    ld d, d
    inc d
    add b
    rst $38
    add b
    ld hl, sp-$79
    ret nz

    cp a
    ccf
    add b
    ld a, a
    add c
    ld a, [hl]
    ret nz

    stop
    add b
    ld l, [hl]
    stop
    add a
    add b
    ccf
    ld h, b
    inc [hl]
    ld a, a
    ld bc, $0b20
    db $fd
    rra
    ld hl, $0400
    ei
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld a, c
    cp $42
    dec bc
    ld h, c
    ld [hl-], a
    db $fc
    inc b
    cp $02
    jr nz, jr_020_6123

jr_020_6123:
    rst $18
    cp $3c
    ret nz

    ld a, $c0
    ld [de], a
    ld [bc], a
    ldh [rIF], a
    ld d, l
    ldh a, [rNR42]
    nop
    ccf
    stop
    rra
    ld [de], a
    nop
    rrca
    ld [de], a
    nop
    ld e, a
    inc d
    db $10
    and l
    add h
    dec bc
    and b
    ld c, $80
    inc h
    scf
    rst $18
    rst $28
    rst $38
    ld a, e
    rst $38
    cp $58
    ld [hl], e
    rst $08
    adc e
    rst $38
    rlca
    inc bc
    rlca
    inc bc
    rrca
    rlca
    ld e, a
    ld d, [hl]
    cp e
    xor a
    and [hl]
    ld b, b
    nop
    and h
    ld [hl], e
    ei
    ld de, $f700
    rst $38
    rst $30
    and [hl]
    or $56
    or $a6
    or $54
    db $fd
    db $f4
    ld b, b
    dec bc
    inc e
    cp [hl]
    ld e, c
    cp [hl]
    ld d, c
    ld a, $ff
    pop bc
    ld a, $c1
    inc [hl]
    jp z, $e618

    sbc a
    rst $38
    sbc a
    inc e
    inc e
    jr @+$1a

    db $10
    db $10
    ld bc, $00ff
    inc bc
    ld [bc], a
    rlca
    inc b
    rra
    jr @-$60

    rst $38
    ld h, c
    ldh [$ff1f], a
    add b
    ld a, a
    ld bc, $3afe
    rst $38
    call nz, $04c0
    inc b
    nop
    ld l, b
    db $10
    ld a, [hl]
    rst $38
    ld e, $e0
    ldh [rSVBK], a
    nop
    adc c
    ld bc, $793f
    ld a, [hl-]
    ldh a, [$ff6e]
    inc b
    jr c, jr_020_61b3

jr_020_61b3:
    rst $38
    ei
    inc b
    or b
    ld h, d
    rrca
    nop
    ld bc, $0200
    ld b, b
    rla
    ld h, b
    nop
    db $10
    ld bc, $5705
    ei
    rlca
    ld hl, sp+$21
    nop
    add a
    ld a, b
    ld l, a
    db $10
    rlca
    rst $28
    ld [$816a], sp
    ld de, $7160
    rst $00
    rlca
    daa
    rst $20
    rlca
    sub a
    add a
    ldh a, [$ff59]
    ld d, c
    ld [hl], l
    nop
    push de
    dec d
    rst $38
    ld [$e10a], a
    dec e
    ldh [$ff1f], a
    ld hl, sp+$1f

jr_020_61ed:
    ld a, a
    cp $0f
    rst $38
    rrca
    ccf
    rst $08
    ld [$57e0], a
    db $eb
    cp $e3
    ld [hl-], a
    jr z, jr_020_61ed

    or b
    inc e
    jr nc, jr_020_625f

    ld d, l
    rst $38
    xor [hl]
    and l
    ld e, l
    ld d, [hl]
    xor d
    and l
    ld d, h
    ld e, e
    rst $38
    cp b
    and a
    ld l, b
    ld d, a
    call z, $a4f3
    db $f4
    rst $38
    ld d, h
    db $f4
    and l
    push af
    ld d, e
    ldh a, [c]
    and a
    db $f4
    rst $38
    ld c, a
    add sp, -$71
    ret z

    ld c, a
    call z, $9862
    ld a, a
    adc b
    ld [hl], b
    ld bc, $10f0
    pop hl
    nop
    jr nz, jr_020_6230

jr_020_6230:
    ccf
    ld hl, $01c0
    ret nz

    ld a, a
    ld h, b
    nop

jr_020_6238:
    ld [hl], $48
    ld b, h
    rst $38
    add h

jr_020_623d:
    ld a, b
    ld b, b
    cp h

jr_020_6240:
    nop
    db $fc
    sub b
    ld l, h
    rst $08
    jr @-$1a

    jr jr_020_623d

    ld hl, $1000
    ld a, l
    jr nc, @+$01

    cp c
    ld h, b
    ldh a, [c]
    ld b, d
    pop af
    dec l
    ldh [rP1], a
    inc bc
    sub b
    dec e
    ld [bc], a
    jp z, RST_20

    inc bc

jr_020_625f:
    ld [hl+], a
    nop
    ld [bc], a
    ld a, [bc]
    ld c, b
    ldh [rP1], a
    jr nz, jr_020_6238

    rst $38
    ld [$10f0], sp
    add sp, -$80
    ld a, b
    add b
    ld a, b
    cp a
    adc b
    ld [hl], b
    adc b
    ld [hl], b
    add b
    ld [hl], b
    ld d, b
    ld a, [hl]
    ld h, b
    di
    rst $38
    jr nz, jr_020_625f

    jr z, jr_020_62a5

    nop
    rra
    rst $28
    adc a
    ld a, a
    rst $38
    ld c, a
    ccf
    ld l, d
    ld e, $45
    ccf
    ld b, [hl]
    ccf
    cp a
    di
    rrca
    ret


    inc bc
    rst $38
    db $10
    ld h, d
    ld h, d
    inc bc
    db $fd
    cp $43
    ld b, b
    inc b
    rst $18
    and b
    cp b
    ld b, b
    ld a, e
    xor a
    add b

jr_020_62a5:
    ldh a, [$ff03]
    db $f4
    jr nz, jr_020_62aa

jr_020_62aa:
    ldh a, [c]
    jr nz, jr_020_62d5

    sbc a
    rst $18
    sbc b
    ccf
    jr nc, @+$81

    ld [hl], b
    ld [hl], $36
    ldh [rP1], a
    rst $38
    ret nz

    add b
    ld b, b
    ld h, b
    nop
    jr nz, jr_020_6240

    jr nz, @+$81

    add b
    db $10
    add b
    sub b
    ld b, b
    sub c
    ld h, b
    dec c
    ld d, b
    rst $28
    jr @-$1a

    db $10
    db $ec
    ret nc

    jr nz, jr_020_634b

    sbc b
    ld h, b

jr_020_62d5:
    push bc
    nop
    or b
    ld [hl-], a
    ld d, e
    ld d, c
    add [hl]
    ld [hl], c
    add hl, sp
    add [hl]
    ld [bc], a
    ld bc, $fe02
    sub b
    ld a, [de]
    ld hl, $6011
    db $10
    jr nz, jr_020_62eb

jr_020_62eb:
    nop
    ld c, a
    rra
    nop
    ldh [rTMA], a
    ld h, e
    ld c, e
    ld b, $02
    ld b, $50
    cpl
    rst $38
    ldh [rP1], a
    ldh [$ff91], a
    ld h, b
    ld bc, $5100
    adc a
    nop
    dec hl
    nop
    sub l
    pop hl
    rrca
    rst $20
    ld bc, $8dd0
    and h
    rst $38
    ld bc, $6296
    sub l
    ld h, c
    sub [hl]
    ld h, d
    ld h, l
    rst $38
    add c
    ld h, $82
    adc l
    dec b
    ld a, [de]
    ld a, [bc]
    rst $38
    push af
    ld [bc], a
    ret nz

    dec bc
    inc bc
    ld b, e
    nop
    ld a, [$f507]
    rrca
    rst $38
    ret c

    ld de, $28ac
    ld a, a
    ld a, b
    ld a, [$ffea]
    db $eb
    ld b, b
    or a
    and d
    ld e, l
    ld e, l
    xor d
    xor d
    rst $38
    rst $28
    pop af
    rst $10
    ld hl, sp-$79
    db $fc
    dec d
    rst $38
    rst $18
    cp a
    rst $38
    ld e, l
    rst $38
    and d

jr_020_634b:
    ld b, b
    sub e
    ld c, d
    nop
    rst $38
    ld [$08e0], sp
    nop
    ld hl, sp+$00
    db $f4
    ld [hl], b
    db $d3
    db $eb
    add sp, -$5f
    sub a
    db $10
    sub e
    ldh [rHDMA1], a
    sub e
    adc a
    ld hl, sp-$05
    rla
    db $fc
    ld bc, $8495
    ld bc, $0700
    nop
    rst $28
    rlca
    inc b
    ld [bc], a
    ld [bc], a
    ldh a, [rWave_8]
    ldh [rP1], a
    sbc [hl]
    ld sp, hl
    ldh [$ffc3], a
    ld d, c
    db $e4
    ld de, $7f00
    add b
    nop
    ei
    rst $38
    nop
    add a
    ld a, b
    inc bc
    db $fc
    ld bc, $0279
    ld a, a
    add d
    ld c, h
    ld c, b
    jr nc, jr_020_6399

    nop
    rst $38
    ret nz

    ld [hl+], a
    db $f4
    ldh a, [rP1]

jr_020_6399:
    ldh [$ff90], a
    rst $08
    jp nz, $0156

    add b
    ld bc, $fd80
    add c
    add b
    dec h
    inc c
    inc bc
    inc [hl]
    ld bc, $39c2
    ei
    ld [bc], a
    push de
    rlca
    ld h, d
    pop af
    ld c, $f9
    ld b, $d5
    rst $38
    ld a, [hl+]
    dec [hl]
    dec d
    ret nz

    ccf
    ld bc, $02e5
    rst $38
    adc [hl]
    dec b
    ld [hl], l
    ld a, [hl+]
    xor d
    dec d
    push de
    ld a, [bc]
    rst $38
    ld a, [$1fea]
    rst $38
    nop
    and $1b
    adc l
    rst $38
    ld [hl], e
    ld a, d
    adc a
    push de
    ld a, a
    ld [$f53f], a
    pop bc
    rrca
    rst $20
    and b
    and c
    and c
    nop
    and d
    add h
    sbc [hl]
    add e
    nop
    nop
    rst $38
    rst $38
    ld d, l
    ld b, l
    ld hl, sp-$5d
    or b
    rra
    add sp, -$41
    rst $18
    ld d, b
    ld e, a
    cp e
    cp a
    db $fd
    add b
    and b
    cp d
    rst $38
    rst $38
    ld e, h
    db $fc
    db $e3
    di
    ld c, a
    rst $28
    or a
    rst $30
    rst $38
    ld e, e
    ei
    dec e
    db $fd
    ld a, $fe
    ld bc, $bffe
    add b
    db $e3
    ld b, [hl]
    ldh a, [$ffc3]
    ld hl, sp-$80
    ld b, l
    db $fc
    rst $38
    ldh [rIE], a
    pop hl
    rst $38
    ld a, a
    nop
    db $e3
    sbc h
    rst $38
    ldh a, [$ffcf]
    ld hl, sp-$39
    rst $18
    ret nz

    call z, $fdc3
    jp $3cd0


    ld hl, sp+$07
    inc bc
    ld hl, sp+$0c
    pop hl
    rst $38
    add b
    inc e
    rrca
    ldh [$fffe], a
    nop
    nop
    add c
    db $fd
    ld bc, $5710
    ld hl, sp+$07
    pop hl
    ld e, $1c
    db $e3
    ei
    ldh [$ff1f], a
    add b
    ld b, [hl]
    ld a, [hl]
    rst $38
    ld bc, $3388
    rst $38
    nop
    ld c, a
    jr nz, jr_020_6474

    ret z

    rra
    sbc l
    ccf
    rst $38
    ld a, $7f
    ld e, [hl]
    rst $38
    ld c, a
    rst $38
    inc sp
    call z, $4eff
    or b
    db $10
    ldh [rNR10], a
    ldh [rNR42], a
    pop bc
    ei
    ld b, b
    add b
    ld b, b
    dec sp
    add b
    ld bc, $201d

jr_020_6474:
    adc [hl]
    rst $30
    ld de, $00c7
    ldh [$ff99], a
    rst $00
    rst $38
    ld [hl], a
    rst $38
    rst $38
    ld h, e
    rst $38
    ld e, $e3
    adc a
    ld [hl], c
    ld b, [hl]
    add hl, sp
    rst $38
    inc sp
    inc c
    rrca
    nop
    ret nz

    rst $00
    ld [hl], b
    ld [hl], a
    rst $38
    ld a, b
    ld a, e
    db $fd
    db $fd
    db $db
    db $db
    ld a, [$fff0]
    rst $30
    or $df
    rst $18
    ld [hl], l
    ld [hl], l
    rst $18
    rst $18
    ld e, a
    db $fd
    db $fd
    ld [bc], a
    rst $38
    ld h, $20
    ld d, [hl]
    add hl, bc
    jr nc, jr_020_64d6

    rst $30
    adc d
    rst $38
    ld hl, $a980
    db $e4
    rst $38
    db $e4
    ld a, a
    rst $38
    call nz, Call_020_567f
    ld a, a
    jp nc, Jump_020_52ff

    ld a, a
    db $fd
    inc hl
    add b
    ld [hl], b
    inc a
    db $fc
    cp h
    db $fc
    db $fc
    db $fc
    rst $30
    cp $fe
    ld a, [hl]
    jr nc, jr_020_651b

    cpl
    cpl
    rst $08
    rst $08
    rst $30

jr_020_64d6:
    ld b, c
    rst $38
    ld b, e
    ld [hl+], a
    nop
    add e
    rst $38
    xor d
    rst $18
    adc a
    call nc, $b4af
    rst $08
    nop
    ld a, [hl-]
    ld [de], a
    nop
    and b
    ld a, b
    db $10
    ld a, a
    jr nz, jr_020_6516

    nop
    ld c, b
    ld b, $ff
    ld [$0020], sp
    rst $30
    rst $38
    rst $38
    ld hl, sp-$5e
    xor [hl]
    rra
    rst $38
    rst $30
    rst $30
    halt
    ld de, $f842
    ld hl, sp-$5b
    ld a, d
    ld b, a
    rst $38
    db $e3
    ld h, b
    rrca
    ld a, a
    push hl
    ei
    ld a, [de]
    push af
    ld d, $f9
    add hl, de
    ld [hl], b
    ld c, [hl]
    ei

jr_020_6516:
    add b
    add b
    ld hl, $004c

jr_020_651b:
    ld [bc], a
    inc b
    dec b
    nop
    rst $38
    add hl, bc
    nop
    ld b, $00
    nop
    ld h, e
    rst $38
    halt
    cp a
    cp $a7
    rst $38
    and e
    ei
    and a
    jr nz, jr_020_6537

    add c
    rst $38
    rst $38
    and c
    rst $38
    ld a, b

jr_020_6537:
    ld a, e
    ld [hl], c
    ld [hl], a
    jr nc, @+$01

    scf
    inc [hl]
    scf
    jr nc, jr_020_6578

    nop
    inc bc
    inc c
    rst $38
    dec c
    inc a
    dec a
    rst $30
    rst $30
    cp [hl]
    cp a
    xor $ff
    rst $28
    ld a, d
    dec sp
    cp $d7
    rst $38
    dec sp
    cp e
    xor a
    sub d
    rst $38
    ld a, [hl]
    add hl, bc
    nop
    add hl, bc
    inc de
    ret nz

    ld c, $ab
    rst $38
    rst $38
    push de
    rst $38
    ld l, l
    cp $81
    cp $12
    rst $28
    rst $38
    inc b
    rst $38
    add hl, de
    ld b, d
    ld d, l
    jp $f0ff


    rst $38
    ccf
    ld a, h
    inc bc

jr_020_6578:
    di
    di

jr_020_657a:
    db $fc
    db $fc
    rst $18
    rst $30
    rst $18
    ldh [$ffe0], a

jr_020_6581:
    ld [hl+], a
    or [hl]
    jr nc, jr_020_6581

    nop
    adc a
    rst $38
    rst $38
    ld a, [$87ff]
    rst $38
    add d
    rst $38
    ld b, c
    ld a, [de]
    ret nz

    inc de
    ld [hl], b
    jr nz, jr_020_6596

jr_020_6596:
    nop
    jr nc, jr_020_657a

    and c
    ld h, e
    or h
    and d
    or d
    rst $38
    rst $38
    ld sp, $c8ff
    rst $38
    ld b, $ff
    pop bc
    rst $28
    rst $38
    ld h, [hl]
    rst $38
    sbc b
    nop
    and e
    nop
    nop
    ccf
    rst $30
    ccf
    ld hl, sp-$08
    pop bc
    or a
    ld h, a
    ld h, a
    ld e, $1e
    ld e, a
    nop
    nop
    rla
    rst $38
    ret nc

    add b
    inc bc
    ld [hl], $00
    and e
    sbc a
    ccf
    rst $38
    db $fd
    rst $38
    or $00
    ld [hl], c
    pop hl
    cp c
    or $ff
    or $f8
    ld hl, sp-$20
    ldh [rSB], a
    ld bc, rTMA
    ld b, $a9
    rst $38
    or c
    rst $38
    ld d, e
    rst $38
    rst $00
    rst $38
    ei
    rst $38
    jp $e15f


    rst $18
    pop hl
    rst $38
    rst $38
    pop bc
    jr c, jr_020_6629

    inc [hl]
    dec [hl]
    jr jr_020_660f

    inc b
    rst $38
    inc bc
    inc a
    inc bc
    ld e, [hl]

jr_020_65fa:
    ld b, c
    sbc $c1
    ld a, $ff
    ld bc, $dedf
    ld a, d
    ld a, b
    xor $ec
    cp $ff
    db $fc
    or [hl]
    or h
    rst $38
    ldh [$ffe3], a
    ret nz

jr_020_660f:
    jp nz, $81ff

    ld hl, $87fe
    db $fc
    inc de
    db $fc
    inc bc
    rst $38
    db $fc
    ld c, e
    db $fc
    rra
    ldh [rWave_f], a
    ret nz

    ld a, a
    rst $38
    add b
    ccf
    ld bc, $011f
    dec e

jr_020_6629:
    ld bc, $ff1f
    inc bc
    rra
    inc bc
    ld a, $87
    jr c, jr_020_65fa

    ld d, $d1
    rst $28
    db $10
    inc hl
    or c
    cp h
    jr nz, jr_020_663c

jr_020_663c:
    ld sp, hl
    ld d, c
    ld [hl], b
    rrca
    ld a, l
    jp hl


    ld a, a
    jp nz, Jump_020_70c2

    call z, $f00e
    ld b, h
    ld sp, hl
    rst $38
    add c
    reti


    add c
    or b
    sub c
    ld [hl], b
    sub b
    ld bc, $6101
    ld a, [de]
    ei
    ei
    rst $20
    rst $18
    rst $38
    or e
    add e
    ld a, h
    add b
    ld d, $30
    rst $38
    dec bc
    db $fc
    and d
    ld l, l
    ld h, e
    sub d
    ldh [$ffe0], a
    jr nc, jr_020_669d

    ld [$fe08], sp
    dec d
    rst $00
    cp $ff
    cp h
    rst $38
    sbc h
    rst $38
    sbc d
    xor [hl]
    ld c, $7d
    db $f4
    rst $08
    add sp, $70
    ld h, a
    ld sp, $1200
    add d
    cp $32
    add a
    scf
    rlca
    rrca
    rrca
    rra
    rra
    ld sp, $31df
    ld b, c
    ld b, c
    add d
    add d
    pop hl
    sub [hl]
    dec sp
    ei
    xor $e1
    ld a, b
    db $d3

jr_020_669d:
    rst $38
    ld a, b
    db $10
    ld [hl], h
    add c
    rst $38
    adc $fb
    pop af
    call nz, Call_000_1ea0
    db $fc
    rst $38
    di
    di
    ld a, b
    rst $28
    ld a, b
    jr nc, jr_020_66e2

    ld c, $20
    ld b, e
    rst $38
    db $fc
    ld e, h
    rst $38
    ld e, b
    ld hl, sp-$10
    ret c

    ret nc

    ld [hl], b
    ldh [$fff1], a
    rst $38
    ldh [$ffd3], a
    ldh [$ffdf], a
    ldh [$ff03], a
    db $fc
    and a
    rst $38
    ld hl, sp+$0f
    ldh a, [$ff2f]
    ldh a, [$ff1f]
    ld h, b
    rra
    ei
    jr nz, jr_020_6715

    ld h, b
    ld [hl], e
    db $eb
    rla
    ld d, a
    cpl
    cpl
    rst $38
    ld e, a
    cp a
    ld e, a
    rst $18

jr_020_66e2:
    ccf
    rst $38
    ccf
    cp a
    ld sp, hl
    ld a, a
    ld de, $2c16
    sbc d
    rst $38
    rst $18
    rst $18
    push af
    push de
    rst $38
    jp z, $ddc0

    call z, $caee
    or a
    or a
    ld a, a
    db $db
    db $db
    nop
    rst $38
    and b
    ld a, a
    db $eb
    ret nz

    ld [bc], a
    rst $38
    rst $30
    ccf
    push af
    ccf
    ret z

    ld a, a
    and h
    ld a, a
    rst $38
    call nz, $ff83
    nop
    rst $28
    rra
    cp a

jr_020_6715:
    ld a, a
    add sp, $72
    db $10
    ld hl, $1c77
    add h
    ld [$d620], sp
    ld b, a
    cp a
    add a
    cp $00
    inc e
    and $f9
    and $f9
    db $f4
    ei
    ld hl, sp-$25
    ld [$80f0], sp
    ld a, d
    ld hl, sp+$00
    inc d
    ret


    nop
    ld sp, hl
    xor a
    rst $38
    inc a
    rst $38
    inc e
    ld [hl-], a
    sub e
    ld hl, sp+$40
    inc c
    ld [hl], b
    ld a, a
    rst $38
    ld sp, hl
    ld sp, hl
    inc a
    inc a
    inc e
    inc e
    ld b, l
    and [hl]
    rst $10
    add b
    nop
    add c
    ldh a, [$ff94]
    ld e, h
    add b
    dec [hl]
    rlca
    rst $38
    push af
    dec de
    add b
    nop
    ld e, a
    nop
    ld a, [hl+]
    add b
    add b
    ld d, b
    ld d, b
    rst $20
    ld c, b
    ld c, b
    inc b
    jr nc, jr_020_67b0

    pop hl
    and [hl]
    adc h
    rst $38
    res 5, a
    rst $38
    ld b, [hl]
    rst $38
    ld c, l
    ld h, b
    nop
    rst $08
    jr nz, jr_020_6778

jr_020_6778:
    ld c, a
    ld a, [hl+]
    ld c, $91
    pop hl
    ld b, b
    dec hl
    pop af
    jr nz, jr_020_6782

jr_020_6782:
    ld sp, hl
    ldh [rNR42], a
    rrca
    sub e
    rst $38
    nop
    nop
    rst $10
    ldh [$ffb1], a
    ret nz

    or b
    ret nz

    pop hl
    jr c, jr_020_67f5

    ld a, b
    add c
    ld c, c
    ld h, d
    ld a, e
    ld c, b
    xor d
    ccf
    ret nz

    cpl
    ccf
    ret nz

    ld c, a
    add b
    rst $08
    nop
    adc $e2
    sbc [hl]
    and h
    sbc a
    sbc h
    ld c, b
    xor h
    add l
    rrca
    rst $38
    rst $38
    db $fd

jr_020_67b0:
    stop
    dec d
    push hl
    cp $bb
    ld bc, $e0fc
    ld d, l
    ld a, [$f007]
    ldh [$ff9a], a
    ld a, l
    rst $38
    ld a, l
    rst $38
    rst $38
    rst $28
    rst $28
    ld a, e
    ld a, e
    db $dd
    db $ed
    db $dd
    pop bc
    xor $80
    ld a, a
    add c
    inc e
    db $10
    rst $38
    add h
    ei
    rst $38
    ld [hl+], a
    cp d
    sbc [hl]
    rst $18
    rst $18
    ld a, a
    ld a, a
    db $ec
    db $e3
    rst $28
    db $fc
    nop
    inc d
    ld b, b
    daa
    jr nz, @-$7d

    cpl
    ldh a, [$ff8f]
    dec de
    ldh a, [rNR22]
    ret nz

    ld [hl], l
    db $f4
    ei
    ld b, b
    inc de
    ldh [rWave_b], a

jr_020_67f5:
    ld b, c
    nop
    adc c
    inc b
    ret nz

    inc [hl]
    dec c
    or h
    jr nc, jr_020_67ff

jr_020_67ff:
    ld [hl-], a
    or b
    dec de
    ld b, h
    nop
    ld a, h
    cp l
    db $fc
    jp hl


    or c
    ret nz

    nop
    add e
    inc bc
    rst $20
    db $ec
    add c
    ld b, $c0
    rst $10
    inc sp
    ld de, $ba25
    ld b, c
    ld [$f2a0], a
    ld [hl], d
    adc l
    push bc
    xor $8f
    inc de
    ld bc, $226a
    push hl
    ld bc, $2943
    ld [hl-], a
    dec bc
    rst $38
    ld a, e
    rrca
    rrca
    pop bc
    sub [hl]
    inc hl
    ld [bc], a
    dec c
    add hl, bc
    jr nc, $6883

    ld [hl-], a
    ldh [c], a
    db $eb
    cp $30
    adc b
    pop hl
    ld [hl], $7f
    rst $38
    nop
    inc b
    dec c
    inc bc
    ld d, $00
    ld bc, $c501
    nop
    rrca
    ld [bc], a
    rrca
    ld [bc], a
    rrca
    ld [bc], a
    ld h, [hl]
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    rrca
    ld [bc], a
    rst $30
    inc bc
    ld bc, $0f01
    ld [bc], a
    ld d, $05
    ld b, $02
    ld [bc], a
    inc bc
    ld [bc], a
    inc b
    stop
    rrca
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc de
    nop
    nop
    rrca
    ld [bc], a
    nop
    ld a, [bc]
    ld [bc], a
    stop
    dec b
    ld b, $0f
    ld a, [bc]
    nop
    inc bc
    ld [bc], a
    sub c
    inc c
    ld bc, $3408
    dec bc
    rrca

jr_020_6883:
    ld [bc], a
    dec b
    ld [bc], a
    jp nz, Jump_000_0f09

    ld [$d900], sp
    ld c, $0f
    ld [bc], a
    rrca
    ld [bc], a
    dec bc
    inc c
    db $db
    db $10
    rrca
    ld [bc], a
    rrca
    ld [bc], a
    rrca
    ld [bc], a
    nop
    ld a, [hl-]
    ld de, $020f
    rrca
    ld [bc], a
    rrca
    ld [bc], a
    ld b, h
    db $10
    ld [hl], b
    inc e
    rrca
    ld [bc], a
    rrca
    ld [bc], a
    nop
    rrca
    ld e, $a7
    jr nz, @+$71

    inc h
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rla
    nop
    nop
    inc b
    adc l
    inc bc
    ld d, $00
    ld bc, $c701
    nop
    ld h, e
    ld bc, $0206
    ld [bc], a
    inc bc
    ld [bc], a
    ld [bc], a
    rrca
    ld [bc], a
    rrca
    ld [bc], a
    add $04
    pop af
    ld [bc], a
    add hl, bc
    ld [bc], a
    di
    dec b
    inc l
    rla
    inc b
    rrca
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    ld [bc], a
    inc b
    stop
    rrca
    ld [bc], a
    ld b, $02
    ld [bc], a
    nop
    nop
    rrca
    ld [bc], a
    nop
    inc c
    ret nz

    add hl, bc
    ldh [c], a
    ld b, $03
    ld b, $00
    ld a, [hl-]
    dec c
    ld b, $02
    dec a
    rrca
    pop bc
    ld [$0cf0], sp
    ld c, $02
    dec [hl]
    dec c
    add hl, bc
    ld [bc], a
    nop
    sub l
    ld c, $b5
    ld [de], a
    ld d, c
    inc de
    rrca
    ld [bc], a
    rrca
    ld [bc], a
    rlca
    ld [bc], a
    cp e
    ld d, $0f
    ld [bc], a
    nop
    rrca
    ld [bc], a
    rrca
    ld [bc], a
    ld e, e
    dec de
    rrca
    ld [bc], a
    ld e, a
    dec e
    rlca
    ld a, [de]
    rrca
    ld [bc], a
    or h
    rra
    nop
    rrca
    ld [bc], a
    rrca
    ld [bc], a
    ld c, l
    rra
    dec c
    jr nz, jr_020_697f

    nop
    rra
    nop
    rra
    nop
    rra
    nop
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    nop
    rra
    nop
    rra
    nop
    rra
    nop

jr_020_697f:
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    dec e
    nop
    nop
    inc b
    dec c
    inc bc
    inc d
    nop
    ld bc, $a501
    nop
    rra
    nop
    rrca
    ld [bc], a
    ld [de], a
    ld bc, $2706
    inc bc

jr_020_69a7:
    ld [bc], a
    ld [bc], a
    rrca
    ld [bc], a
    dec bc
    ld [bc], a
    ldh [rSC], a
    rra
    ld b, $0e
    ld [bc], a
    ld sp, $1004
    nop
    rst $28
    ld bc, $0402
    nop
    nop
    rrca
    ld [bc], a
    db $eb
    ld b, $02
    ld [$0206], sp
    stop
    sub l
    dec bc
    or a
    ld c, $41
    ld [$0883], sp
    ld bc, $0002
    or l
    rrca
    ld [hl], l
    db $10
    rrca
    ld [bc], a
    rlca
    inc b
    ld b, a
    ld b, $87
    inc c
    push bc
    ld [bc], a
    rrca
    ld [bc], a
    jr jr_020_69a7

    rlca
    rst $00
    ld [bc], a
    xor e
    ld b, $00
    nop
    pop bc
    rlca
    push hl
    ld b, $0f
    ld [bc], a
    nop
    jp $0b08


    ld [bc], a
    ld b, l
    ld bc, $1b99
    rrca
    ld [bc], a
    dec h
    inc c
    rrca
    ld [bc], a
    dec hl
    stop
    rrca
    ld [bc], a
    rrca
    ld [bc], a
    sub a
    ld hl, $001f
    ld e, d
    nop
    cpl
    dec h
    rra
    nop
    rra
    nop
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    dec e
    nop
    nop
    inc b
    rst $38
    inc bc
    inc b
    dec b
    ld bc, $1817
    add hl, de
    ld a, [de]
    db $fd
    ld [bc], a
    stop
    dec de
    inc e
    dec e
    ld e, $01
    ld [$09bb], sp
    ld a, [bc]
    add hl, bc
    ld [bc], a
    ld b, $01
    ld bc, $020b
    ld bc, $012b
    dec bc
    add hl, bc
    inc b
    rlca
    rrca
    ld [bc], a
    inc c
    add hl, bc
    ld b, $f0
    ld bc, $0d02
    inc b
    ld bc, $020f
    rrca
    ld [bc], a
    rrca
    ld [bc], a
    rrca
    ld [bc], a
    rrca
    ld [bc], a
    rrca
    ld [bc], a
    ld b, b
    rrca
    ld [bc], a
    rrca
    ld [bc], a
    rrca
    ld [bc], a
    rrca
    ld [bc], a
    rrca
    ld [bc], a
    inc bc
    inc d
    dec c
    rrca
    ld [bc], a
    push de
    ld [de], a
    add hl, bc
    ld d, $0e
    rrca
    ld [bc], a
    inc de
    add hl, bc
    jr jr_020_6aa9

    db $10
    db $dd
    ld de, $180b
    inc d
    dec d
    ld d, $09
    ld a, [de]
    ld a, b
    ld a, c
    ld a, [$001e]

jr_020_6aa9:
    ld a, d
    add hl, bc
    inc e
    ld a, [hl]
    nop
    add b
    add c
    add d
    rst $38
    add e
    add h
    add l
    add [hl]
    add a
    adc b
    adc c
    adc d
    ld a, a
    adc e
    adc h
    adc l
    adc [hl]
    adc a
    nop
    ld a, a
    dec bc
    ld [bc], a
    db $fc
    ld a, $1f
    inc c
    ld [bc], a
    sub b
    sub c
    sub d
    sub e
    sub h
    sub l
    rst $38
    sub [hl]
    sub a
    sbc b
    sbc c
    sbc d
    sbc e
    sbc h
    sbc l
    ld e, e
    sbc [hl]
    sbc a
    dec bc
    inc b
    ld a, e
    ld a, h
    ld e, $00
    ld a, l
    ccf
    dec b
    add b
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    dec bc
    inc l
    ld h, b
    rst $38
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    ld a, a
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a
    dec c
    ld bc, $70ff
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    halt
    ld [hl], a
    rst $38
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, a
    ldh [$ff0d], a
    ld bc, $13ed
    db $ed
    inc d
    db $ed
    ld de, $12ed
    and b
    and c
    and d
    rst $38
    and e
    and h
    and l
    and [hl]
    and a
    xor b
    xor c
    xor d
    rst $18
    xor e
    xor h
    xor l
    xor [hl]
    xor a
    dec c
    ld bc, $b1b0
    rst $38
    or d
    or e
    or h
    or l
    or [hl]
    or a
    cp b
    cp c
    cp a
    cp d
    cp e
    cp h
    cp l
    cp [hl]
    cp a
    dec c
    ld bc, $ffc0
    pop bc
    jp nz, $c4c3

    push bc
    add $c7
    ret z

    ld a, a
    ret


    jp z, $cccb

    call $cfce
    dec c
    ld bc, $d0ff
    pop de
    jp nc, $d4d3

    push de
    sub $d7
    rst $38
    ret c

    reti


    jp c, $dcdb

    db $dd
    sbc $df
    cp $0d
    ld bc, $e1e0
    ldh [c], a
    db $e3
    db $e4
    push hl
    and $ff
    rst $20
    add sp, -$17
    ld [$eceb], a
    db $ed
    xor $fd
    rst $28
    dec c
    ld bc, $f1f0
    ldh a, [c]
    di
    db $f4
    push af
    rst $38
    or $f7
    ld hl, sp-$07
    ld a, [$fcfb]
    db $fd
    inc bc
    cp $ff
    dec c
    ld bc, $a121
    ld a, c
    ld c, $13
    ld de, $85a0
    call Call_000_31a0
    ld hl, Data_020_4149
    ld de, $8ae0
    ld b, $20
    call CopyHLtoDE
    ld hl, $4249
    ld de, $8be0
    ld b, $20
    call CopyHLtoDE
    ld hl, Data_020_4169
    ld de, $8ce0
    ld b, $20
    call CopyHLtoDE
    ld hl, $4269
    ld de, $8de0
    ld b, $20
    call CopyHLtoDE
    ld hl, $4189
    ld de, $8ee0
    ld b, $20
    call CopyHLtoDE
    ld hl, $4289
    ld de, $8fe0
    ld b, $20
    call CopyHLtoDE
    ret


    ld a, [$b89f]
    ld hl, $42a9
    cp $00
    jr z, jr_020_6c07

    ld hl, $42e9
    cp $01
    jr z, jr_020_6c07

    cp $02
    jr z, jr_020_6c07

    cp $04
    jr z, jr_020_6c07

    ld hl, $4329

jr_020_6c07:
    call CGBBackgroundPaletteUpload
    ret


    ld hl, $4369
    call CGBBackgroundPaletteUpload
    ld hl, $43a9
    call Call_000_03ab
    ld c, $4f
    ld a, $01
    ldh [c], a
    ld hl, $5960
    ld c, $20
    ld de, $9800
    call Call_000_31a0
    ld c, $4f
    xor a
    ldh [c], a
    ret


    ld c, $4f
    ld a, $01
    ldh [c], a
    ld hl, $4429
    ld c, $20
    ld de, $9800
    call Call_000_31a0
    ld c, $4f
    xor a
    ldh [c], a
    ld hl, $43e9
    call CGBBackgroundPaletteUpload
    ld hl, $44e6
    call Call_000_03ab
    ret


    ld c, $4f
    ld a, $01
    ldh [c], a
    ld hl, $4566
    ld c, $20
    ld de, $9800
    call Call_000_31a0
    ld c, $4f
    xor a
    ldh [c], a
    ld hl, $4526
    call CGBBackgroundPaletteUpload
    ld hl, $585f
    call SyncLoadSpritePalette3
    ret


    ld c, $4f
    ld a, $01
    ldh [c], a
    ld hl, $4618
    ld c, $20
    ld de, $9800
    call Call_000_31a0
    ld c, $4f
    xor a
    ldh [c], a
    ld hl, $4526
    call CGBBackgroundPaletteUpload
    ret


    ld c, $4f
    ld a, $01
    ldh [c], a
    ld hl, $46b0
    ld c, $20
    ld de, $9800
    call Call_000_31a0
    ld c, $4f
    xor a
    ldh [c], a
    ld hl, $4526
    call CGBBackgroundPaletteUpload
    ret


    ld c, $4f
    ld a, $01
    ldh [c], a
    ld hl, $4741
    ld c, $20
    ld de, $9800
    call Call_000_31a0
    ld c, $4f
    xor a
    ldh [c], a
    ld hl, $4526
    call CGBBackgroundPaletteUpload
    ret


    ld c, $4f
    ld a, $01
    ldh [c], a
    ld hl, $47c9
    ld c, $20
    ld de, $9800
    call Call_000_31a0
    ld c, $4f
    xor a
    ldh [c], a
    ld hl, $4526
    call CGBBackgroundPaletteUpload
    ret


    ld c, $4f
    ld a, $01
    ldh [c], a
    ld hl, $48ca
    ld c, $20
    ld de, $9800
    call Call_000_31a0
    ld c, $4f
    xor a
    ldh [c], a
    ld hl, $488a
    call CGBBackgroundPaletteUpload
    ld hl, $4977
    call Call_000_03ab
    ret


    ld c, $4f
    ld a, $01
    ldh [c], a
    ld hl, $4b48
    ld c, $20
    ld de, $9800
    call Call_000_31a0
    ld c, $4f
    xor a
    ldh [c], a
    ld hl, $4a88
    call CGBBackgroundPaletteUpload
    ld hl, $4b08
    call Call_000_03ab
    ret


    ld c, $4f
    ld a, $01
    ldh [c], a
    ld hl, $49b7
    ld c, $20
    ld de, $9800
    call Call_000_31a0
    ld hl, $49b7
    ld c, $20
    ld de, $9c00
    call Call_000_31a0
    ld c, $4f
    xor a
    ldh [c], a
    ld hl, $4a48
    call CGBBackgroundPaletteUpload
    ld hl, $4ac8
    call Call_000_03ab
    ret


    ld c, $4f
    ld a, $01
    ldh [c], a
    ld hl, $4c14
    ld c, $20
    ld de, $9800
    call Call_000_31a0
    ld c, $4f
    xor a
    ldh [c], a
    ld hl, $4bd4
    call Call_000_03bb
    ret


    ld hl, $6d70
    call CGBBackgroundPaletteUpload
    ld hl, $4c93
    call Call_000_03ab
    ret


    rst $38
    ld a, a
    ld h, $04
    cp e
    ld h, $00
    ld [bc], a
    ld c, $4f
    ld a, $01
    ldh [c], a
    ld hl, $4cd3
    ld c, $20
    ld de, $9800
    call Call_000_31a0
    ld c, $4f
    xor a
    ldh [c], a
    ld hl, $4d93
    call Call_000_03ab
    ld hl, $4dd3
    call CGBBackgroundPaletteUpload
    ret


    ld c, $4f
    ld a, $01
    ldh [c], a
    ld hl, $4e13
    ld c, $20
    ld de, $9800
    call Call_000_31a0
    ld c, $4f
    xor a
    ldh [c], a
    ld hl, $584f
    call SyncLoadSpritePalette7
    ld hl, $585f
    call SyncLoadSpritePalette3
    ld hl, $5857
    call SyncLoadSpritePalette6
    ld hl, $5847
    call SyncLoadSpritePalette4
    ret


    ld hl, $5c80
    call CGBBackgroundPaletteUpload
    ld hl, $4e9d
    call Call_000_03ab
    ret


    ld c, $4f
    ld a, $01
    ldh [c], a
    ld hl, $4f1d
    ld c, $20
    ld de, $9800
    call Call_000_31a0
    ld c, $4f
    xor a
    ldh [c], a
    ld hl, $4edd
    call CGBBackgroundPaletteUpload
    ld hl, $584f
    call SyncLoadSpritePalette7
    ret

LoadUsedItemOBJPalette:
    ld a, [$c0bb]
    or a
    ret z

    ld hl, sInventory
    ld a, [sItemSlot]
; make `hl` point to currently held item
    add l ; a + l
    ld l, a ; l = a + l
    ld a, $00
    adc h 
    ld h, a
    ld a, [hl] 
    cp SICKLE
    jp z, .loadSickleAndGrassOBJPalette
    cp HOE
    jp z, .loadHoeOrAxOBJPalette
    cp HAMMER
    jp z, .loadHammerOBJPalette
    cp AX
    jp z, .loadHoeOrAxOBJPalette
    cp SUPER_SICKLE
    jp z, .loadSuperSickleAndGrassOBJPalette
    cp SUPER_HOE
    jp z, .Jump_020_6f03
    cp SUPER_HAMMER
    jp z, .Jump_020_6f03
    cp SUPER_AX
    jp z, .loadSuperAxOBJPalette
    cp BRUSH
    jp z, .loadBrushOBJPalette
    cp WATERING_CAN
    jp z, .loadWateringCanOBJPalette
    cp MILKER
    jp z, .loadMilkerOBJPalette
    cp COW_MEDICINE
    jp z, .loadMedicineOBJPalette
    cp P_MEDICINE
    jp z, .loadMedicineOBJPalette
    cp M_POTION
    jp z, .loadMedicineOBJPalette
    cp COW_BELL
    jp z, .Jump_020_6f32
    cp $53
    jp z, .Jump_020_6ed0
    cp SPRINKLER
    jp z, .loadSprinklerOBJPalette
    cp $10
    jp z, .Jump_020_6f46
    cp $11
    jp z, .Jump_020_6f46
    cp GRASS_SEEDS
    jp z, .Jump_020_6f4d
    cp TOMATO_SEEDS
    jp z, .Jump_020_6f6b
    cp CORN_SEEDS
    jp z, .Jump_020_6f72
    cp TURNIP_SEEDS
    jp z, .Jump_020_6f79
    cp POTATO_SEEDS
    jp z, .Jump_020_6ed0
    cp EGGPLANT_SEEDS
    jp z, .Jump_020_6f6b
    cp PEANUT_SEEDS
    jp z, .Jump_020_6f72
    cp CARROT_SEEDS
    jp z, .loadCarrotSeedsOBJPalette
    cp BROCOLLI_SEEDS
    jp z, .Jump_020_6f87
    cp $54
    jp z, .loadSickleAndGrassOBJPalette
    ret

.loadSickleAndGrassOBJPalette
    ld hl, $4049
    call SyncLoadSpritePalette3
    ld a, [sCurrentSeason]
    cp AUTUMN
    jr z, .loadAutumnGrassOBJPalette
    jr nc, .loadWinterGrassOBJPalette
    ld hl, PickedUpGrassPalette
    call SyncLoadSpritePalette4
    ret
.loadAutumnGrassOBJPalette
    ld hl, CutAutumnGrassOBJPalette
    call SyncLoadSpritePalette4
    ret
.loadWinterGrassOBJPalette
    ld hl, $4081
    call SyncLoadSpritePalette4
    ret

.loadHoeOrAxOBJPalette
    ld hl, $4049
    call SyncLoadSpritePalette3
    ret

.loadHammerOBJPalette
    ld hl, $4049
    call SyncLoadSpritePalette3
    ld hl, $40f9
    call SyncLoadSpritePalette4
    ret

.Jump_020_6ed0
    ld hl, $4049
    call SyncLoadSpritePalette4
    ret

.loadSuperSickleAndGrassOBJPalette
    ld hl, $4121
    call SyncLoadSpritePalette3
    ld a, [sCurrentSeason]
    cp AUTUMN
    jr z, .loadAutumnGrassOBJPalette2
    jr nc, .loadWinterGrassOBJPalette2
    ld hl, PickedUpGrassPalette
    call SyncLoadSpritePalette4
    ret

.loadAutumnGrassOBJPalette2
    ld hl, CutAutumnGrassOBJPalette
    call SyncLoadSpritePalette4
    ret

.loadWinterGrassOBJPalette2
    ld hl, $4081
    call SyncLoadSpritePalette4
    ret

    ret

.loadSuperAxOBJPalette
    ld hl, $4121
    call SyncLoadSpritePalette3
    ret

.Jump_020_6f03
    ld hl, $4121
    call SyncLoadSpritePalette3
    ld hl, $40f9
    call SyncLoadSpritePalette4
    ret

.loadBrushOBJPalette
    ld hl, $4111
    call SyncLoadSpritePalette4
    ret

.loadWateringCanOBJPalette
    ld hl, $4059
    call SyncLoadSpritePalette3
    ld hl, $4129
    call SyncLoadSpritePalette4
    ret

.loadMedicineOBJPalette
    ld hl, $4119
    call SyncLoadSpritePalette4
    ret

.loadMilkerOBJPalette
    ld hl, MilkerOBJPalette
    call SyncLoadSpritePalette4
    ret

.Jump_020_6f32
    ld hl, $4119
    call SyncLoadSpritePalette4
    ret

.loadSprinklerOBJPalette
    ld hl, $40c9
    call SyncLoadSpritePalette3
    ld hl, $4129
    call SyncLoadSpritePalette4
    ret

.Jump_020_6f46
    ld hl, $4069
    call SyncLoadSpritePalette4
    ret

.Jump_020_6f4d
    ld a, [sCurrentSeason]
    cp AUTUMN
    jr z, .jr_020_6f5d
    jr nc, .jr_020_6f64
    ld hl, PickedUpGrassPalette
    call SyncLoadSpritePalette4
    ret

.jr_020_6f5d
    ld hl, CutAutumnGrassOBJPalette
    call SyncLoadSpritePalette4
    ret

.jr_020_6f64
    ld hl, $4081
    call SyncLoadSpritePalette4
    ret

.Jump_020_6f6b
    ld hl, $40e1
    call SyncLoadSpritePalette4
    ret

.Jump_020_6f72
    ld hl, $4101
    call SyncLoadSpritePalette4
    ret

.Jump_020_6f79
    ld hl, PickedUpFencePostPalette
    call SyncLoadSpritePalette4
    ret

.loadCarrotSeedsOBJPalette
    ld hl, Data_020_4041
    call SyncLoadSpritePalette4
    ret

.Jump_020_6f87
    ld hl, $40d9
    call SyncLoadSpritePalette4
    ret

Label_020_6f8e:
    ld a, [$b93c]
    rst $00



    adc e
    ld [hl], b
    add h
    ld [hl], b
    jp z, $9970

    ld [hl], b
    and b
    ld [hl], b
    and a
    ld [hl], b
    xor [hl]
    ld [hl], b
    or l
    ld [hl], b
    cp h
    ld [hl], b
    jp $8b70


    ld [hl], b
    and a
    ld [hl], b
    and a
    ld [hl], b
    and a
    ld [hl], b
    and a
    ld [hl], b
    di
    ld [hl], b
    db $ec
    ld [hl], b
    db $ec
    ld [hl], b
    sbc $70
    push hl
    ld [hl], b
    push hl
    ld [hl], b
    push hl
    ld [hl], b
    push hl
    ld [hl], b
    di
    ld [hl], b
    add b
    ld [hl], c
    db $ec
    ld [hl], b
    di
    ld [hl], b
    di
    ld [hl], b
    db $ec
    ld [hl], b
    di
    ld [hl], b
    di
    ld [hl], b
    di
    ld [hl], b
    di
    ld [hl], b
    di
    ld [hl], b
    di
    ld [hl], b
    db $f4
    ld [hl], b
    db $f4
    ld [hl], b
    db $f4
    ld [hl], b
    db $f4
    ld [hl], b
    db $f4
    ld [hl], b
    db $f4
    ld [hl], b
    ei
    ld [hl], b
    ei
    ld [hl], b
    di
    ld [hl], b
    di
    ld [hl], b
    di
    ld [hl], b
    di
    ld [hl], b
    di
    ld [hl], b
    pop de
    ld [hl], b
    pop de
    ld [hl], b
    adc e
    ld [hl], b
    add b
    ld [hl], c
    dec h
    ld [hl], c
    adc e
    ld [hl], b
    adc e
    ld [hl], b
    and l
    ld [hl], c
    add hl, bc
    ld [hl], c
    add hl, bc
    ld [hl], c
    ld [bc], a
    ld [hl], c
    ld [bc], a
    ld [hl], c
    sbc [hl]
    ld [hl], c
    sbc [hl]
    ld [hl], c
    ld [hl], d
    ld [hl], c
    xor h
    ld [hl], c
    xor h
    ld [hl], c
    xor h
    ld [hl], c
    ld c, a
    ld [hl], c
    ld d, [hl]
    ld [hl], c
    ld e, l
    ld [hl], c
    inc l
    ld [hl], c
    inc l
    ld [hl], c
    inc l
    ld [hl], c
    ld a, [hl-]
    ld [hl], c
    ld a, [hl-]
    ld [hl], c
    ld [bc], a
    ld [hl], c
    add hl, bc
    ld [hl], c
    xor h
    ld [hl], c
    ld [hl], d
    ld [hl], c
    ld h, h
    ld [hl], c
    ld e, l
    ld [hl], c
    ld l, e
    ld [hl], c
    ld b, c
    ld [hl], c
    rla
    ld [hl], c
    xor h
    ld [hl], c
    ld e, $71
    inc sp
    ld [hl], c
    ld [bc], a
    ld [hl], c
    add hl, bc
    ld [hl], c
    xor h
    ld [hl], c
    xor h
    ld [hl], c
    ld e, $71
    ld c, b
    ld [hl], c
    ld c, b
    ld [hl], c
    ld c, b
    ld [hl], c
    xor h
    ld [hl], c
    xor h
    ld [hl], c
    xor h
    ld [hl], c
    ld c, b
    ld [hl], c
    ld c, b
    ld [hl], c
    ld c, b
    ld [hl], c
    xor h
    ld [hl], c
    xor h
    ld [hl], c
    xor h
    ld [hl], c
    di
    ld [hl], b
    di
    ld [hl], b
    di
    ld [hl], b
    di
    ld [hl], b
    di
    ld [hl], b
    di
    ld [hl], b
    di
    ld [hl], b
    di
    ld [hl], b
    di
    ld [hl], b
    di
    ld [hl], b
    db $10
    ld [hl], c
    db $10
    ld [hl], c
    xor h
    ld [hl], c
    ld a, c
    ld [hl], c
    ld a, c
    ld [hl], c
    xor h
    ld [hl], c
    xor h
    ld [hl], c
    xor h
    ld [hl], c
    ld hl, $4119
    call SyncLoadSpritePalette4
    ret


    ld hl, $4129
    call SyncLoadSpritePalette4
    ret


    ld hl, $4119
    call SyncLoadSpritePalette4
    ret


    ld hl, PickedUpGrassPalette
    call SyncLoadSpritePalette4
    ret


    ld hl, $4051
    call SyncLoadSpritePalette4
    ret


    ld hl, $4049
    call SyncLoadSpritePalette4
    ret


    ld hl, $40e1
    call SyncLoadSpritePalette4
    ret


    ld hl, $4101
    call SyncLoadSpritePalette4
    ret


    ld hl, $4059
    call SyncLoadSpritePalette4

Jump_020_70c2:
    ret


    ld hl, $4111
    call SyncLoadSpritePalette4
    ret


    ld hl, $4119
    call SyncLoadSpritePalette4
    ret


    ld a, [$c0a7]
    cp $08
    ret z

    ld hl, PickedUpStonePalette
    call SyncLoadSpritePalette4
    ret


    ld hl, $40c9
    call SyncLoadSpritePalette4
    ret


    ld hl, $4121
    call SyncLoadSpritePalette4
    ret


    ld hl, $4069
    call SyncLoadSpritePalette4
    ret


    ret


    ld hl, MilkerOBJPalette
    call SyncLoadSpritePalette4
    ret


    ld hl, $40f9
    call SyncLoadSpritePalette4
    ret


    ld hl, $40c1
    call SyncLoadSpritePalette8
    ret


    ld hl, $4099
    call SyncLoadSpritePalette8
    ret


    ld hl, $4101
    call SyncLoadSpritePalette4
    ret


    ld hl, $4051
    call SyncLoadSpritePalette4
    ret


    ld hl, $4059
    call SyncLoadSpritePalette4
    ret


    ld hl, PickedUpFencePostPalette
    call SyncLoadSpritePalette4
    ret


    ld hl, $4049
    call SyncLoadSpritePalette3
    ret


    ld hl, $4049
    call SyncLoadSpritePalette4
    ret


    ld hl, $4109
    call SyncLoadSpritePalette4
    ret


    ld hl, $40d9
    call SyncLoadSpritePalette4
    ret


    ld hl, $40b1
    call SyncLoadSpritePalette4
    ret


    ld hl, $4061
    call SyncLoadSpritePalette3
    ret


    ld hl, $40a9
    call SyncLoadSpritePalette3
    ret


    ld hl, $4101
    call SyncLoadSpritePalette4
    ret


    ld hl, $4059
    call SyncLoadSpritePalette4
    ret


    ld hl, Data_020_4041
    call SyncLoadSpritePalette4
    ret


    ld hl, $40e1
    call SyncLoadSpritePalette4
    ret


    ld hl, $4141
    call SyncLoadSpritePalette4
    ret

    ld a, [sCurrentSeason]
    cp AUTUMN
    jr z, jr_020_7190
    jr nc, jr_020_7197
    ld hl, PickedUpGrassPalette
    call SyncLoadSpritePalette4
    ret

jr_020_7190:
    ld hl, $4111
    call SyncLoadSpritePalette4
    ret


jr_020_7197:
    ld hl, $4081
    call SyncLoadSpritePalette4
    ret


    ld hl, $40e1
    call SyncLoadSpritePalette4
    ret


    ld hl, $4071
    call SyncLoadSpritePalette4
    ret


    ld hl, $4121
    call SyncLoadSpritePalette4
    ret


    ld hl, $5aac
    call Call_000_03ab
    ld hl, $5a6c
    call CGBBackgroundPaletteUpload
    ld c, $4f
    ld a, $01
    ldh [c], a
    ld hl, $59ee
    ld c, $20
    ld de, $9800
    call Call_000_31a0
    ld c, $4f
    xor a
    ldh [c], a
    ret

; padding
    REPT 3628
       db $ff
    ENDR
