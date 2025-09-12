; Disassembly of "harvest_moon.gbc"
; This file was created with:
; mgbdis v2.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $00a", ROMX[$4000], BANK[$a]

    db $0a ; bank number

    db $03, $F8, $2D, $40, $03, $F8, $2F, $40, $03, $F8, $31, $40, $03, $F8, $33, $40,
    db $03, $F8, $35, $40, $03, $F8, $3D, $40, $03, $F8, $45, $40, $03, $F8, $4D, $40,
    db $03, $F8, $55, $40, $03, $F8, $59, $40, $03, $F8, $5B, $40, $DC, $41, $42, $42,
    db $75, $42, $0F, $42, $ED, $41, $DC, $41, $FE, $41, $DC, $41, $53, $42, $42, $42,
    db $64, $42, $42, $42, $86, $42, $75, $42, $97, $42, $75, $42, $20, $42, $0F, $42,
    db $31, $42, $0F, $42, $CA, $42, $E3, $42, $A8, $42, $B9, $42, $FC, $08, $2C, $13,
    db $FC, $00, $2B, $13, $FC, $F8, $2A, $13, $FC, $F0, $29, $13, $F4, $08, $28, $13,
    db $F4, $00, $27, $13, $F4, $F8, $26, $13, $F4, $F0, $25, $13, $EC, $08, $24, $13,
    db $EC, $00, $23, $13, $EC, $F8, $22, $13, $E4, $00, $21, $13, $E4, $F8, $20, $13,
    db $DC, $00, $1F, $13, $DC, $F8, $1E, $13, $80, $FC, $08, $3B, $13, $FC, $00, $3A,
    db $13, $FC, $F8, $39, $13, $FC, $F0, $38, $13, $F4, $08, $37, $13, $F4, $00, $36,
    db $13, $F4, $F8, $35, $13, $F4, $F0, $34, $13, $EC, $03, $33, $13, $EC, $FB, $32,
    db $13, $EC, $F3, $31, $13, $E4, $03, $30, $13, $E4, $FB, $2F, $13, $E4, $F3, $2E,
    db $13, $DC, $F8, $2D, $13, $80, $FE, $08, $47, $13, $FE, $00, $46, $13, $FE, $F8,
    db $45, $13, $FE, $F0, $44, $13, $F6, $08, $43, $13, $F6, $00, $42, $13, $F6, $F8,
    db $41, $13, $F6, $F0, $40, $13, $EE, $08, $3F, $13, $EE, $00, $3E, $13, $EE, $F8,
    db $3D, $13, $EE, $F0, $3C, $13, $80, $FD, $08, $4F, $13, $FD, $00, $4E, $13, $FD,
    db $F8, $4D, $13, $FD, $F0, $4C, $13, $F5, $08, $4B, $13, $F5, $00, $4A, $13, $F5,
    db $F8, $49, $13, $F5, $F0, $48, $13, $80, $F0, $F8, $19, $73, $ED, $F8, $16, $13,
    db $F8, $02, $17, $13, $F1, $00, $17, $33, $E9, $02, $1A, $53, $EA, $F8, $1D, $13,
    db $EE, $FC, $1B, $33, $F2, $FB, $1C, $33, $FB, $00, $18, $33, $F6, $FD, $1D, $33,
    db $F8, $F8, $1C, $13, $F9, $F8, $1B, $53, $80, $FC, $FB, $1C, $33, $F3, $03, $16,
    db $13, $F6, $FD, $1A, $33, $F4, $F9, $1B, $13, $F6, $F6, $17, $33, $FA, $F6, $18,
    db $13, $FA, $04, $1D, $33, $80, $FB, $01, $18, $13, $FB, $05, $17, $33, $FB, $F9,
    db $1C, $33, $FE, $FE, $1B, $13, $FD, $F4, $1A, $13, $80, $F8, $00, $15, $13, $80,
    db $F4, $F7, $19, $13, $F6, $01, $1D, $13, $F3, $01, $1C, $13, $F9, $F8, $18, $13,
    db $F4, $FC, $1A, $13, $F8, $FF, $16, $13, $80, $F9, $F5, $1A, $53, $F3, $F5, $1A,
    db $13, $EE, $FB, $17, $13, $F5, $03, $18, $13, $F0, $00, $1C, $33, $FE, $01, $1B,
    db $33, $80, $FC, $02, $1B, $73, $FB, $F4, $1C, $53, $F3, $F2, $1A, $53, $EC, $03,
    db $1C, $73, $EA, $F7, $17, $53, $F8, $06, $1A, $33, $80, $F8, $00, $53, $14, $F8,
    db $F8, $52, $14, $F0, $00, $51, $14, $F0, $F8, $50, $14, $80, $F8, $00, $57, $14,
    db $F8, $F8, $56, $14, $F0, $00, $55, $14, $F0, $F8, $54, $14, $80, $F8, $00, $59,
    db $14, $F8, $F8, $58, $14, $F0, $00, $55, $14, $F0, $F8, $54, $14, $80, $F8, $00,
    db $5D, $14, $F8, $F8, $5C, $14, $F0, $00, $5B, $14, $F0, $F8, $5A, $14, $80, $F8,
    db $00, $61, $14, $F8, $F8, $60, $14, $F0, $00, $5F, $14, $F0, $F8, $5E, $14, $80,
    db $F8, $00, $63, $14, $F8, $F8, $62, $14, $F0, $00, $5F, $14, $F0, $F8, $5E, $14,
    db $80, $F8, $00, $67, $14, $F8, $F8, $66, $14, $F0, $00, $65, $14, $F0, $F8, $64,
    db $14, $80, $F8, $00, $6B, $14, $F8, $F8, $6A, $14, $F0, $00, $69, $14, $F0, $F8,
    db $68, $14, $80, $F8, $00, $6D, $14, $F8, $F8, $6C, $14, $F0, $00, $69, $14, $F0,
    db $F8, $68, $14, $80, $F8, $F9, $67, $34, $F8, $01, $66, $34, $F0, $F9, $65, $34,
    db $F0, $01, $64, $34, $80, $F8, $F9, $6B, $34, $F8, $01, $6A, $34, $F0, $F9, $69,
    db $34, $F0, $01, $68, $34, $80, $F8, $F9, $6D, $34, $F8, $01, $6C, $34, $F0, $F9,
    db $69, $34, $F0, $01, $68, $34, $80, $F8, $00, $71, $14, $F8, $F8, $70, $14, $F0,
    db $00, $6F, $14, $F0, $F8, $6E, $14, $80, $F8, $00, $75, $14, $F8, $F8, $74, $14,
    db $F0, $00, $73, $14, $F0, $F8, $72, $14, $80, $FB, $01, $7B, $16, $FB, $F9, $7A,
    db $16, $FB, $F1, $79, $14, $F3, $01, $78, $16, $F3, $F9, $77, $16, $F3, $F1, $76,
    db $14, $80, $FB, $01, $7B, $16, $F3, $01, $78, $16, $FB, $F9, $7F, $16, $FB, $F1,
    db $7E, $14, $F3, $F9, $7D, $16, $F3, $F1, $7C, $14, $80, $12, $43, $12, $43, $12,
    db $43, $12, $43, $15, $43, $15, $43, $15, $43, $15, $43, $1E, $43, $12, $43, $12,
    db $43, $F0, $00, $FF, $0F, $00, $0F, $01, $0F, $02, $0F, $03, $FF, $0F, $00, $0F,
    db $01, $FF, $00, $00, $00, $00, $00, $00, $BC, $54, $00, $00, $EF, $3E, $12, $21,
    db $22, $29, $29, $22, $27, $20, $EF, $01, $28, $31, $3F, $EF, $EF, $EF, $EF, $3E,
    db $1F, $28, $2B, $EF, $0C, $22, $25, $24, $3F, $EF, $EF, $E9, $FE, $00, $00, $00,
    db $00, $00, $00, $BC, $54, $00, $00, $12, $21, $22, $29, $EF, $26, $22, $25, $24,
    db $EF, $1F, $2B, $28, $26, $EF, $EF, $21, $1E, $2B, $1E, $4C, $EF, $EF, $EF, $EF,
    db $EF, $EF, $EF, $EF, $EF, $EF, $EF, 
    db $FF
    db $00, $00, $00, $00, $00, $00, $BC, $54, $00, $00
    db $0F, $2E, $2D, $EF, $2D, $21, $1E, $EF, $26, $1A, $2D, $1E, $1D, $EF, $EF, $EF,
    db $1C, $28, $30, $2C, $EF, $22, $27, $EF, $21, $1E, $2B, $1E, $EF, $EF, $EF, $E9,
    prompt
    db $00, $00, $00, $00, $00, $00, $BC, $54, $00, $00
    db $2E, $27, $2D, $22, $25, $EF, $2D, $21, $1E, $32, $EF, $20, $22, $2F, $1E, $EF,
    db $1B, $22, $2B, $2D, $21, $40, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF,
    done
    db $00, $00, $00, $00, $00, $00, $BC, $54, $00, $00
    db $EF, $3E, $13, $1A, $24, $1E, $EF, $1F, $28, $1D, $1D, $1E, $2B, $3F, $EF, $EF,
    db $EF, $EF, $3E, $1F, $2B, $28, $26, $EF, $21, $1E, $2B, $1E, $3F, $EF, $EF, $E9,
    prompt 
    db $00, $00, $00, $00, $00, $00, $BC, $54, $00, $00
    db $13, $21, $1E, $EF, $1F, $28, $1D, $1D, $1E, $2B, $EF, $1C, $28, $26, $1E, $2C,
    db $1F, $2B, $28, $26, $EF, $2D, $21, $1E, $EF, $12, $22, $25, $28, $4C, $EF, $EF,
    done
    db $00, $00, $00, $00, $00, $00, $BC, $54, $00, $00
    db $3E, $05, $1E, $1E, $1D, $22, $27, $20, $EF, $12, $2D, $1A, $25, $25, $3F, $EF,
    db $0F, $2E, $2D, $EF, $1F, $1E, $1E, $1D, $EF, $21, $1E, $2B, $1E, $EF, $EF, $E9,
    prompt
    db $00, $00, $00, $00, $00, $00, $BC, $54, $00, $00
    db $1E, $2F, $1E, $2B, $32, $1D, $1A, $32, $40, $40, $EF, $EF, $EF, $EF, $EF, $EF,
    db $EF, $EF, $EF, $EF, $EF, $EF, $EF,
    db $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $FF, $00, $00, $00, $00, $00, $00,
    db $BC, $54, $00, $00, $EF, $3E, $12, $21, $22, $29, $29, $22, $27, $20, $EF, $01,
db $28, $31, $3F, $EF, $EF, $EF, $EF, $3E, $1F, $28, $2B, $EF, $04, $20, $20, $3F,
db $EF, $EF, $EF, $E9, $FE, $00, $00, $00, $00, $00, $00, $BC, $54, $00, $00, $12,
db $21, $22, $29, $EF, $1E, $20, $20, $2C, $EF, $1F, $2B, $28, $26, $EF, $EF, $21,
db $1E, $2B, $1E, $4C, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $FF,
db $00, $00, $00, $00, $00, $00, $BC, $54, $00, $00, $0F, $25, $1A, $1C, $1E, $EF,
db $2D, $28, $EF, $21, $1A, $2D, $1C, $21, $EF, $EF, $04, $20, $20, $2C, $4C, $EF,
db $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $FE, $00, $00, $00, $00, $00,
db $00, $BC, $54, $00, $00, $0F, $25, $1E, $1A, $2C, $1E, $EF, $29, $25, $1A, $1C,
db $1E, $EF, $EF, $EF, $EF, $1E, $20, $20, $2C, $EF, $21, $1E, $2B, $1E, $4C, $EF,
db $EF, $EF, $EF, $EF, $EF, $FF, $00, $00, $00, $00, $00, $00, $BC, $54, $00, $00,
db $07, $1E, $25, $25, $28, $EF, $C4, $C5, $C6, $C7, $4C, $EF, $18, $28, $2E, $EF,
db $25, $28, $28, $24, $EF, $1F, $22, $27, $1E, $EF, $2D, $28, $1D, $1A, $32, $4C,
done

    text text_do_nothing
    db $C2, $C3, " more days    "
    db "until your     ▽"
    prompt
    text text_do_nothing 
    db "delivery!!      "
    db "Come on, ", $C4, $C5, $C6, $C7, ".  " 
    done 
    text text_do_nothing 
    db $13, $21, $22, $2C, $EF, $22, $2C, $EF, $2D, $1E, $2B, $2B, $22, $1B, $25, $1E,
    db $C4, $C5, $C6, $C7, $EF, $22, $2C, $EF, $2C, $22, $1C, $24, $4C, $EF, $EF, $E9,
    prompt
    text text_do_nothing
    db $0B, $1E, $2D, $53, $EF, $1C, $2E, $2B, $1E, $EF, $22, $2D, $EF, $EF, $EF, $EF,
    db $30, $22, $2D, $21, $EF, $26, $1E, $1D, $22, $1C, $22, $27, $1E, $40, $EF, $EF, 
    done
    text text_do_nothing
    db $18, $1E, $1A, $21, $40, $EF, $00, $EF, $1B, $1A, $1B, $32, $EF, $1C, $28, $30,
    db $22, $2C, $EF, $1B, $28, $2B, $27, $4C, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $E9,
    prompt 
    text text_do_nothing
    db "Let's name it.   "
    db "                "
    done
    text text_do_nothing
    db "Hello ", $C4, $C5, $C6, $C7, ". You " 
    db "look fine today."
    done
    text text_do_nothing
    db $C2, $C3, " more days    "
    db "until your     ▽"
    prompt
    text text_do_nothing
    db "deliverly!! You "
    db "can do it, ", $C4, $C5, $C6, $C7, "."
    done
    text text_do_nothing
    db "This is awful!! "
    db $C4, $C5, $C6, $C7, " is sick.  ▽"
    prompt
    text text_do_nothing
    db "Let's cure it    "
    db "with medicine!! "
    done
    text text_do_nothing
    db $18, $1E, $1A, $21, $40, $EF, $00, $EF, $1B, $1A, $1B, $32, $EF, $1C, $28, $30,
    db $22, $2C, $EF, $1B, $28, $2B, $27, $4C, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $E9,
    prompt 
    text text_do_nothing
    db $0B, $1E, $2D, $53, $EF, $27, $1A, $26, $1E, $EF, $22, $2D, $4C, $EF, $EF, $EF,
    db $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF,
    done
    text text_do_nothing
    db $06, $28, $28, $1D, $EF, $1F, $28, $2B, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF,
    db $26, $2E, $2C, $1C, $25, $1E, $EF, $29, $1A, $22, $27, $2C, $EF, $EF, $EF, $E9,
    prompt
    text text_do_nothing
    db $1A, $27, $1D, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF,
    db $2C, $2D, $1A, $26, $22, $27, $1A, $EF, $2B, $1E, $1C, $28, $2F, $1E, $2B, $32,
    done 
    text text_do_nothing
    db $03, $28, $27, $4B, $2D, $EF, $2D, $21, $2B, $28, $30, $EF, $EF, $EF, $EF, $EF,
    db $28, $1B, $23, $1E, $1C, $2D, $2C, $EF, $22, $27, $EF, $EF, $EF, $EF, $EF, $E9,
    prompt
    text text_do_nothing
    db $2D, $21, $1E, $EF, $12, $29, $2B, $22, $27, $20, $4C, $EF, $05, $2B, $28, $26,
    db $07, $1A, $2B, $2F, $1E, $2C, $2D, $EF, $06, $28, $1D, $1D, $1E, $2C, $2C, $4C,
    done 
    text text_do_nothing

Call_00a_4837:
    inc d
    inc l

jr_00a_4839:
    ld e, $ef
    dec l
    ld hl, $ef1e
    rrca
    ld [hl+], a
    inc e

jr_00a_4842:
    inc h
    ld a, [de]
    ld sp, $efef
    dec l
    jr z, jr_00a_4839

    add hl, hl
    ld a, [de]
    inc l
    inc l
    rst $28
    dec l
    ld hl, $282b
    ld l, $20
    ld hl, $fee9
    nop
    nop
    nop
    nop
    nop
    nop
    cp h
    ld d, h
    nop
    nop
    ld hl, $2b1e
    ld e, $4c
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    cp h
    ld d, h
    nop
    nop
    rlca
    ld [hl+], a
    ld b, b
    rst $28
    nop
    dec hl
    ld e, $ef
    ld [hl-], a
    jr z, jr_00a_48c6

    rst $28
    dec l
    ld hl, $ef1e
    jr z, jr_00a_48c6

    ld e, $ef
    dec l
    ld hl, $2d1a
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    cp h
    ld d, h
    nop
    nop
    ld [hl+], a
    daa
    ld hl, $2b1e
    ld [hl+], a
    dec l
    ld e, $1d
    rst $28
    ld [hl-], a
    jr z, jr_00a_48f3

    dec hl

jr_00a_48c6:
    rst $28
    rst $28
    jr nz, jr_00a_48f5

    ld a, [de]
    daa
    dec e
    add hl, hl
    ld a, [de]
    ld d, e
    rst $28
    dec hl
    ld a, [de]
    daa
    inc e
    ld hl, $e941
    cp $00
    nop
    nop
    nop
    nop
    nop
    cp h
    ld d, h
    nop
    nop
    ld d, $1e
    rst $28
    ld a, [de]
    dec hl
    ld e, $ef
    rlca
    ld a, [de]
    dec hl
    cpl
    ld e, $2c
    dec l
    rst $28
    rst $28

jr_00a_48f3:
    ld [de], a
    add hl, hl

jr_00a_48f5:
    dec hl
    ld [hl+], a
    dec l
    ld e, $2c
    ld c, h
    rst $28
    ld d, $1e
    rst $28
    ld a, [de]
    dec hl
    ld e, $e9
    cp $00
    nop
    nop
    nop
    nop
    nop
    cp h
    ld d, h
    nop
    nop
    ld hl, $2b1e
    ld e, $ef
    rra
    jr z, jr_00a_4941

    rst $28
    ld a, [de]
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    dec hl
    ld e, $1a
    inc l
    jr z, @+$29

    ld c, h
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    cp h
    ld d, h
    nop
    nop
    add hl, hl
    dec h
    ld e, $1a
    inc l
    ld e, $ef
    inc e

jr_00a_4941:
    jr z, jr_00a_4969

    ld e, $ef
    ld a, [de]
    daa
    dec e
    rst $28
    inc l
    ld e, $1e
    rst $28
    ld l, $2c
    ld c, h
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    cp h
    ld d, h
    nop
    nop
    ld [$ef27], sp
    ld e, $31

jr_00a_4969:
    inc e
    ld hl, $271a
    jr nz, jr_00a_498d

    adc [hl]
    rst $28

jr_00a_4971:
    jr nc, @+$20

    rst $28
    jr nc, jr_00a_499e

    ld l, $25
    dec e
    rst $28
    dec h
    ld [hl+], a
    inc h
    ld e, $ef
    dec l
    jr z, jr_00a_4971

    rst $28
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    cp h
    ld d, h

jr_00a_498d:
    nop
    nop
    ld hl, $2f1a
    ld e, $ef
    inc l
    jr z, @+$28

    ld e, $2d
    ld hl, $2722
    jr nz, jr_00a_498d

jr_00a_499e:
    rst $28
    dec l
    jr z, @-$0f

    ld e, $1a
    dec l
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    cp h
    ld d, h
    nop
    nop
    ld e, $2f
    ld e, $2b
    ld [hl-], a
    dec e
    ld a, [de]
    ld [hl-], a
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    ld a, $06
    ld [hl+], a
    cpl
    ld e, $ef
    ld a, [de]
    daa
    dec e
    rst $28
    inc de
    ld a, [de]
    inc h
    ld e, $3f
    rst $28
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    cp h
    ld d, h
    nop
    nop
    rlca
    jr z, jr_00a_4a18

    dec e
    ld [hl-], a
    ld c, h
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rlca
    ld l, $26
    ld a, [de]
    daa
    inc l
    rst $28
    jr nz, jr_00a_4a29

    ld e, $1e
    dec l
    rst $28
    rst $28
    rst $28
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    cp h
    ld d, h
    nop
    nop
    dec l
    ld hl, $2c22
    rst $28
    jr nc, jr_00a_4a31

    ld [hl-], a

jr_00a_4a18:
    adc [hl]
    rst $28
    dec e
    jr z, jr_00a_4a44

    ld c, e
    dec l
    rst $28
    dec l
    ld hl, $321e
    ld c, h
    ld c, h
    ld c, h
    rst $28
    rst $28

jr_00a_4a29:
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $38

jr_00a_4a31:
    nop
    nop
    nop
    nop
    nop
    nop
    cp h
    ld d, h
    nop
    nop
    ld [$ef2d], sp
    jr nc, jr_00a_4a5a

    inc l
    rst $28
    ld a, [de]
    rst $28

jr_00a_4a44:
    dec l
    ld e, $2b
    dec hl
    ld [hl+], a
    dec de
    ld b, h
    dec h
    ld e, $ef
    ld e, $1a
    dec hl
    dec l
    ld hl, $2e2a
    ld a, [de]
    inc h
    ld e, $4c
    rst $28

jr_00a_4a5a:
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    cp h
    ld d, h
    nop
    nop
    inc de
    ld hl, $ef1e
    ld e, $1a
    dec hl
    dec l
    ld hl, $2e2a
    ld a, [de]
    inc h
    ld e, $ef
    rst $28
    dec e
    ld e, $2c
    dec l
    dec hl
    jr z, jr_00a_4aaf

    ld e, $1d
    rst $28
    dec e
    ld e, $1e
    add hl, hl
    rst $28
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    cp h
    ld d, h
    nop
    nop
    ld [hl+], a
    daa
    inc l
    ld [hl+], a
    dec e
    ld e, $ef
    ld hl, $2b1e
    ld e, $4c
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28

jr_00a_4aaf:
    rst $28
    rst $28
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    cp h
    ld d, h
    nop
    nop
    inc de
    ld hl, $ef1e
    rlca
    ld a, [de]
    dec hl
    cpl
    ld e, $2c
    dec l
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    ld b, $28
    dec e
    dec e
    ld e, $2c
    inc l
    rst $28
    ld [hl+], a
    inc l
    rst $28
    cpl
    ld e, $2b
    ld [hl-], a
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    cp h
    ld d, h
    nop
    nop
    dec de
    ld e, $1a
    ld l, $2d
    ld [hl+], a
    rra
    ld l, $25
    adc [hl]
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    ld [hl+], a
    inc l
    daa
    ld c, e
    dec l
    rst $28
    inc l
    ld hl, $4c1e
    ld c, h
    ld c, h
    rst $28
    rst $28
    rst $28
    rst $28
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    cp h
    ld d, h
    nop
    nop
    ld b, $28
    jr z, @+$1f

    rst $28
    inc b
    cpl
    ld e, $27
    ld [hl+], a
    daa
    jr nz, jr_00a_4b6b

    rst $28
    rst $28
    rst $28
    rlca
    ld l, $26
    ld a, [de]
    daa
    inc l
    rst $28
    jr nz, jr_00a_4b56

    ld e, $1e
    dec l
    rst $28
    rst $28
    rst $28
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    cp h
    ld d, h
    nop
    nop
    dec l
    ld hl, $2c22
    rst $28
    jr nc, jr_00a_4b5e

    ld [hl-], a
    adc [hl]
    rst $28
    dec e
    jr z, jr_00a_4b71

    ld c, e
    dec l
    rst $28
    dec l
    ld hl, $321e
    ld c, h
    ld c, h
    ld c, h
    rst $28
    rst $28

jr_00a_4b56:
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $38

jr_00a_4b5e:
    nop
    nop
    nop
    nop
    nop
    nop
    cp h
    ld d, h
    nop
    nop
    ld [$ef2d], sp

jr_00a_4b6b:
    dec hl
    ld e, $1a
    dec h
    dec h
    ld [hl-], a

jr_00a_4b71:
    rst $28
    inc l
    ld hl, $2828
    inc h
    ld c, h
    ld [$ef2d], sp
    jr nc, jr_00a_4b97

    inc l
    rst $28
    dec l
    ld e, $2b
    dec hl
    ld [hl+], a
    dec de
    dec h
    ld e, $e9
    cp $00
    nop
    nop
    nop
    nop
    nop
    cp h
    ld d, h
    nop
    nop
    ld de, $1c28
    inc h

jr_00a_4b97:
    inc l
    rst $28
    inc e
    dec hl
    ld l, $26
    dec de
    dec h
    ld e, $1d
    rst $28
    rst $28
    ld a, [de]
    dec h
    dec h
    rst $28
    ld a, [de]
    dec hl
    jr z, jr_00a_4bd9

    daa
    dec e
    ld c, h
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    cp h
    ld d, h
    nop
    nop
    inc de
    ld hl, $ef1e
    rlca
    ld a, [de]
    dec hl
    cpl
    ld e, $2c
    dec l
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    ld b, $28
    dec e
    dec e
    ld e, $2c
    inc l
    rst $28
    ld [hl+], a
    inc l
    rst $28

jr_00a_4bd9:
    cpl
    ld e, $2b
    ld [hl-], a
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    cp h
    ld d, h
    nop
    nop
    rra
    dec hl
    ld [hl+], a
    ld e, $27
    dec e
    dec h
    ld [hl-], a
    adc [hl]
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    ld [hl+], a
    inc l
    daa
    ld c, e
    dec l
    rst $28
    inc l
    ld hl, $4c1e
    ld c, h
    ld c, h
    rst $28
    rst $28
    rst $28
    rst $28
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    cp h
    ld d, h
    nop
    nop
    ld c, $21
    adc [hl]
    rst $28
    dec l
    ld hl, $2d1a
    rst $28
    ld [hl+], a
    inc l
    rst $28
    ld a, [de]
    rst $28
    rst $28
    rst $28
    rra
    ld [hl+], a
    inc l
    ld hl, $2722
    jr nz, @-$0f

    dec hl
    jr z, jr_00a_4c4c

    ld c, h
    rst $28
    rst $28
    rst $28
    jp hl


    cp $00
    nop
    nop
    nop

jr_00a_4c39:
    nop
    nop
    cp h
    ld d, h
    nop
    nop
    ld bc, $ef1e
    inc l
    ld l, $2b
    ld e, $ef
    dec l
    jr z, jr_00a_4c39

    inc e
    ld a, [de]

jr_00a_4c4c:
    inc l
    dec l
    rst $28
    rra
    dec hl
    jr z, jr_00a_4c79

    rst $28
    ld [hl-], a
    jr z, jr_00a_4c85

    dec hl
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    cp h
    ld d, h
    nop
    nop
    dec hl
    ld [hl+], a
    jr nz, jr_00a_4c8f

    dec l
    rst $28
    inc l
    ld [hl+], a
    dec e
    ld e, $4c
    rst $28
    rst $28
    rst $28
    rst $28

jr_00a_4c79:
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28

jr_00a_4c85:
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $38
    nop
    nop
    nop
    nop

jr_00a_4c8f:
    nop
    nop
    cp h
    ld d, h
    nop
    nop
    ld b, $28
    jr z, @+$1f

    rst $28
    inc c
    jr z, jr_00a_4cc8

    daa
    ld [hl+], a
    daa
    jr nz, jr_00a_4cee

    rst $28
    rst $28
    rst $28
    rlca
    ld l, $26
    ld a, [de]
    daa
    inc l
    rst $28
    jr nz, @+$2d

    ld e, $1e
    dec l
    rst $28
    rst $28
    rst $28
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    cp h
    ld d, h
    nop
    nop
    dec l
    ld hl, $2c22
    rst $28
    jr nc, jr_00a_4ce1

    ld [hl-], a

jr_00a_4cc8:
    adc [hl]
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    dec e
    jr z, jr_00a_4cfa

    ld c, e
    dec l
    rst $28
    inc de
    ld hl, $321e
    ld c, h
    ld c, h
    ld c, h
    rst $28
    rst $28
    rst $28
    rst $38

jr_00a_4ce1:
    nop
    nop
    nop
    nop
    nop
    nop
    cp h
    ld d, h
    nop
    nop
    ld d, $28
    ld a, [de]

jr_00a_4cee:
    ld hl, $4c4c
    ld c, h
    ld d, $28
    ld a, [de]
    ld hl, $4c4c
    ld c, h
    ld c, h

jr_00a_4cfa:
    rst $28
    ld [$1fef], sp
    ld e, $1e
    dec h
    rst $28
    dec h
    ld [hl+], a
    inc h
    ld e, $ef
    ld [hl+], a
    dec l
    rst $28
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    cp h
    ld d, h
    nop
    nop
    ld [hl+], a
    inc l
    rst $28
    inc l
    dec l
    ld [hl+], a
    dec h
    dec h
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    inc l
    ld hl, $241a
    ld [hl+], a
    daa
    jr nz, jr_00a_4d7a

    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    cp h
    ld d, h
    nop
    nop
    ld [$30ef], sp
    ld [hl+], a
    inc l
    ld hl, $08ef
    rst $28
    inc e
    jr z, jr_00a_4d7b

    dec h
    dec e
    rst $28
    rst $28
    inc l
    ld e, $1e
    rst $28
    dec l
    ld hl, $ef1e
    rlca
    ld a, [de]
    dec hl
    cpl
    ld e, $2c
    dec l
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    cp h
    ld d, h
    nop
    nop
    ld b, $28
    dec e
    dec e
    ld e, $2c
    inc l
    ld c, h
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28

jr_00a_4d7a:
    rst $28

jr_00a_4d7b:
    rst $28
    inc bc
    ld a, [de]
    dec hl
    daa
    rst $28
    ld [hl+], a
    dec l
    ld c, h
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    cp h
    ld d, h
    nop
    nop
    inc de
    ld hl, $271a
    inc h
    inc l
    ld c, h
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    cp h
    ld d, h
    nop
    nop
    inc d
    nop
    sub h
    nop
    ld b, b
    nop
    ld b, h
    nop
    reti


    nop
    ld bc, $8000
    nop
    ld b, b
    nop
    ld bc, $4400
    nop
    ld a, d
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    cp h
    ld d, h
    nop
    nop
    ld c, $2e
    inc e
    ld hl, $ef40
    ld d, $21
    ld a, [de]
    dec l
    rst $28
    ld a, [de]
    dec hl
    ld e, $ef
    rst $28
    ld [hl-], a
    jr z, jr_00a_4e4f

    rst $28
    dec e
    jr z, jr_00a_4e47

    daa
    jr nz, jr_00a_4e68

    ld b, b
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    cp h
    ld d, h
    nop
    nop
    rlca
    ld e, $32
    rst $28
    and b
    and c
    and d
    and e
    ld c, h
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28

jr_00a_4e47:
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28

jr_00a_4e4f:
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    cp h
    ld d, h
    nop
    nop
    ld [$ef2c], sp
    dec l

jr_00a_4e68:
    ld hl, $ef1e
    ld [de], a
    ld [hl+], a
    inc e
    inc h
    dec h
    ld e, $ef
    rst $28
    rst $28
    ld [hl-], a
    jr z, jr_00a_4ea5

    rst $28
    ld a, [de]
    dec hl
    ld e, $ef
    ld l, $2c
    ld [hl+], a
    daa
    jr nz, @-$0f

    rst $28
    jp hl


    cp $01
    inc bc
    ld a, [bc]
    ld b, b
    ld c, h
    nop
    cp l
    ld d, h
    nop
    nop
    inc l
    ld hl, $2b1a
    add hl, hl
    rst $28
    ld e, $27
    jr z, jr_00a_4ec7

    jr nz, @+$23

    ld b, c
    rst $28
    rst $28
    rst $28
    rst $28
    jr jr_00a_4ea6

    ld [de], a
    rst $28
    rst $28

jr_00a_4ea5:
    rst $28

jr_00a_4ea6:
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    dec c
    ld c, $ef
    cp $00
    nop
    nop
    nop
    nop
    nop
    cp h
    ld d, h
    nop
    nop
    rlca
    ld e, $ef
    ld hl, $ef1e
    ld hl, $8e1e
    rst $28
    ld [$26ef], sp

jr_00a_4ec7:
    ld a, [de]
    dec e
    ld e, $22
    dec l
    ld b, b
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    cp h
    ld d, h
    nop
    nop
    ld [$1aef], sp
    ld h, $ef
    jr nz, jr_00a_4f11

    ld a, [de]
    dec e
    rst $28
    ld [hl+], a
    dec l
    rst $28
    ld [hl+], a
    inc l
    rst $28
    jr nc, jr_00a_4f1f

    dec hl
    inc h
    ld [hl+], a
    daa
    jr nz, jr_00a_4f49

    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    cp h
    ld d, h
    nop
    nop
    rrca

jr_00a_4f11:
    dec h
    ld e, $1a
    inc l
    ld e, $ef
    dec h
    ld e, $2d
    rst $28
    ld h, $1e
    rst $28
    rst $28

jr_00a_4f1f:
    rst $28
    dec de
    jr z, @+$2d

    dec hl
    jr z, @+$32

    rst $28
    ld [hl+], a
    dec l
    rst $28
    ld a, [de]
    daa
    dec e
    rst $28
    rst $28
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    cp h
    ld d, h
    nop
    nop
    ld [$30ef], sp
    ld [hl+], a
    dec h
    dec h
    rst $28
    ld h, $1a
    inc h
    ld e, $ef
    ld [hl+], a
    dec l

jr_00a_4f49:
    rst $28
    rst $28
    ld e, $2f
    ld e, $27
    rst $28
    inc l
    ld hl, $2b1a
    add hl, hl
    ld e, $2b
    ld b, b
    rst $28
    rst $28
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    cp h
    ld d, h
    nop
    nop
    rrca
    dec h
    ld e, $1a
    inc l
    ld e, $ef
    inc e
    jr z, jr_00a_4f96

    ld e, $ef
    dec de
    ld a, [de]
    inc e
    inc h
    ld [hl+], a
    daa
    rst $28
    dec [hl]
    ld [hl], $ef
    ld hl, $2e28
    dec hl
    inc l
    ld c, h
    rst $28
    rst $28
    rst $28
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    cp h
    ld d, h
    nop
    nop
    ld c, $21
    adc [hl]
    rst $28
    dec l

jr_00a_4f96:
    ld hl, $2d1a
    rst $28
    ld h, $1e
    ld a, [de]
    daa
    inc l
    rst $28
    rst $28
    dec [hl]
    ld [hl], $ef
    ld hl, $2e28
    dec hl
    inc l
    rst $28
    ld a, [de]
    rra
    dec l
    ld e, $2b
    rst $28
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    cp h
    ld d, h
    nop

jr_00a_4fbb:
    nop
    ld [$2cef], sp
    dec l
    ld a, [de]
    dec hl
    dec l
    rst $28
    ld hl, $251e
    add hl, hl
    ld [hl+], a
    daa
    jr nz, jr_00a_4fbb

    ld [hl-], a
    jr z, jr_00a_4ffd

    ld c, h
    rst $28
    ld [de], a
    ld e, $1e
    rst $28
    ld [hl-], a
    jr z, jr_00a_5006

    ld c, h
    rst $28
    rst $28
    rst $28
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    cp h
    ld d, h
    nop
    nop
    ld de, $1a1e
    dec h
    dec h
    ld [hl-], a
    ld b, c
    ld b, b
    ld b, c
    rst $28
    inc c
    ld [hl-], a
    rst $28
    rst $28
    rst $28
    rst $28
    inc l
    inc h
    ld [hl+], a
    dec h
    dec h
    inc l

jr_00a_4ffd:
    rst $28
    ld h, $2e
    inc l
    dec l
    rst $28
    rst $28
    rst $28
    rst $28

jr_00a_5006:
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    cp h
    ld d, h
    nop
    nop
    ld hl, $2f1a
    ld e, $ef
    dec de
    ld e, $1c
    jr z, jr_00a_5042

    ld e, $ef
    rst $28
    rst $28
    rst $28
    rst $28
    dec hl
    ld l, $2c
    dec l
    ld [hl-], a
    rst $28
    jr z, @+$2d

    rst $28
    ld [hl-], a
    jr z, jr_00a_505c

    rst $28
    rst $28
    rst $28
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    cp h
    ld d, h
    nop
    nop
    dec e
    jr z, jr_00a_5067

    ld c, e
    dec l

jr_00a_5042:
    rst $28

jr_00a_5043:
    inc h
    daa
    jr z, jr_00a_5077

    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    ld hl, $3028
    rst $28
    dec l
    jr z, jr_00a_5043

    ld l, $2c
    ld e, $ef
    ld [hl+], a
    dec l
    ld b, b
    rst $28

jr_00a_505c:
    rst $28
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    cp h
    ld d, h
    nop

jr_00a_5067:
    nop
    inc c
    ld a, [de]
    inc h
    ld e, $ef
    inc l
    ld l, $2b
    ld e, $ef
    dec l
    ld hl, $2d1a
    rst $28

jr_00a_5077:
    rst $28
    ld [hl-], a
    jr z, @+$30

    rst $28
    rra
    ld e, $1e
    dec e
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    cp h
    ld d, h
    nop
    nop
    dec l
    ld hl, $261e
    rst $28
    ld e, $2f
    ld e, $2b
    ld [hl-], a
    dec e
    ld a, [de]
    ld [hl-], a
    ld c, h
    rst $28
    rst $28
    ld c, $2d
    ld hl, $2b1e
    jr nc, jr_00a_50cc

    inc l
    ld e, $8e
    rst $28
    ld [hl-], a
    jr z, @+$30

    dec hl
    rst $28
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    cp h
    ld d, h
    nop
    nop
    ld d, $1e
    dec h
    dec h
    adc [hl]
    rst $28
    ld [hl+], a
    dec l
    rst $28
    inc l
    ld e, $1e
    ld h, $2c

jr_00a_50cc:
    rst $28
    rst $28
    ld [$21ef], sp
    ld a, [de]
    cpl
    ld e, $ef
    inc l
    dec l
    ld a, [de]
    ld [hl-], a
    ld e, $1d

jr_00a_50db:
    rst $28
    rst $28
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    cp h
    ld d, h
    nop
    nop
    dec l
    jr z, jr_00a_50db

    dec h
    jr z, jr_00a_5116

    jr nz, jr_00a_513d

    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    ld b, $28
    jr z, jr_00a_511a

    rst $28
    daa
    ld [hl+], a
    jr nz, jr_00a_5123

    dec l
    ld c, h
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    cp h
    ld d, h
    nop
    nop
    and b
    and c

jr_00a_5116:
    and d
    and e
    ld c, h
    ld c, h

jr_00a_511a:
    ld c, h
    ld d, $1a
    inc h
    ld e, $ef
    ld l, $29
    adc [hl]

jr_00a_5123:
    rst $28
    and b
    and c
    and d
    and e
    ld c, h
    rst $28
    ld [$21ef], sp
    ld a, [de]
    cpl
    ld e, $ef
    ld a, [de]
    rst $28
    jp hl


    cp $00
    nop

jr_00a_5137:
    nop
    nop
    nop
    nop
    cp h
    ld d, h

jr_00a_513d:
    nop
    nop
    rra
    ld a, [de]

jr_00a_5141:
    cpl
    jr z, jr_00a_516f

    rst $28
    dec l
    jr z, jr_00a_5137

    ld a, [de]
    inc l
    inc h
    rst $28
    jr z, jr_00a_516d

    rst $28
    ld [hl-], a
    jr z, @+$30

    ld c, h
    rst $28
    inc c
    ld [hl-], a
    rst $28
    dec hl
    ld a, [de]
    daa
    inc e
    ld hl, $efef
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    cp h
    ld d, h
    nop
    nop
    ld hl, $2c1a

jr_00a_516d:
    rst $28
    dec de

jr_00a_516f:
    ld e, $1e
    daa
    rst $28
    daa
    ld e, $44
    rst $28
    rst $28
    rst $28
    rst $28
    jr nz, @+$27

    ld e, $1c
    dec l
    ld e, $1d
    rst $28
    dec de
    ld e, $1c
    ld a, [de]
    ld l, $2c
    ld e, $e9
    cp $00
    nop
    nop
    nop
    nop
    nop
    cp h
    ld d, h
    nop
    nop
    ld [$1def], sp
    ld [hl+], a
    dec e
    rst $28
    daa
    jr z, jr_00a_51cb

    rst $28
    ld hl, $2f1a
    ld e, $ef
    ld a, [de]
    inc l
    ld l, $1c
    inc e
    ld e, $2c
    inc l
    jr z, jr_00a_51d9

    ld b, b
    rst $28
    ld [de], a
    jr z, jr_00a_5141

    rst $28
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    cp h

jr_00a_51bd:
    ld d, h
    nop
    nop
    ld [$30ef], sp
    ld a, [de]
    daa
    dec l
    rst $28
    ld [hl-], a
    jr z, jr_00a_51f8

    rst $28

jr_00a_51cb:
    dec l
    jr z, jr_00a_51bd

    rst $28
    rst $28
    dec l
    ld a, [de]
    inc h
    ld e, $ef
    ld h, $32
    rst $28
    add hl, hl

jr_00a_51d9:
    dec h
    ld a, [de]
    inc e
    ld e, $ef
    rst $28
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    cp h
    ld d, h
    nop
    nop
    dec l
    jr z, @-$0f

    dec hl
    ld e, $2c
    dec l
    jr z, @+$2d

    ld e, $ef
    ld h, $32

jr_00a_51f8:
    rst $28
    rst $28
    rst $28
    dec hl
    ld a, [de]
    daa
    inc e
    ld hl, $efef
    rst $28
    ld a, [de]
    daa
    dec e
    rst $28
    rst $28
    rst $28
    rst $28
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    cp h
    ld d, h
    nop
    nop
    inc l
    ld l, $2b
    add hl, hl
    ld a, [de]
    inc l
    inc l
    rst $28
    ld h, $1e
    rst $28
    ld a, [de]
    inc l
    rst $28
    rst $28
    rst $28
    ld de, $271a
    inc e
    ld hl, $0cef
    ld a, [de]
    inc l
    dec l
    ld e, $2b
    ld b, b
    ld b, b
    rst $28
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    cp h
    ld d, h
    nop
    nop
    inc d
    daa
    rra
    jr z, jr_00a_5271

    dec l
    ld l, $27
    ld a, [de]
    dec l
    ld e, $25
    ld [hl-], a
    adc [hl]
    rst $28
    ld [$1a1c], sp
    daa
    rst $28
    daa
    jr z, jr_00a_5285

    rst $28
    ld hl, $251e
    add hl, hl
    rst $28
    rst $28
    rst $28
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    cp h
    ld d, h
    nop
    nop
    ld [hl-], a
    jr z, @+$30

    rst $28
    dec de

jr_00a_5271:
    ld e, $1c
    ld a, [de]
    ld l, $2c
    ld e, $ef
    ld [$1aef], sp
    ld h, $1a

Jump_00a_527d:
    rst $28
    inc l
    add hl, hl
    ld [hl+], a
    dec hl
    ld [hl+], a
    dec l
    ld c, h

jr_00a_5285:
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    cp h
    ld d, h
    nop
    nop
    nop
    dec l
    rst $28
    dec l
    ld hl, $ef1e
    ld e, $27
    dec e
    rst $28
    jr z, jr_00a_52c3

    rst $28
    rst $28
    rst $28
    jr nc, jr_00a_52cb

    daa
    dec l
    ld e, $2b
    adc [hl]
    rst $28
    ld [$1cef], sp
    ld a, [de]
    daa
    rst $28
    rst $28
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    cp h
    ld d, h
    nop
    nop
    inc e

jr_00a_52c3:
    jr z, jr_00a_52eb

    ld e, $ef
    ld a, [de]
    daa
    dec e
    rst $28

jr_00a_52cb:
    inc e
    ld hl, $1c1e
    inc h
    rst $28
    rst $28
    ld l, $29
    rst $28
    jr z, jr_00a_52fe

    rst $28
    ld [hl-], a
    jr z, @+$30

    ld c, h
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    cp h
    ld d, h

jr_00a_52eb:
    nop

jr_00a_52ec:
    nop
    ld [$26ef], sp
    ld l, $2c
    dec l
    rst $28
    dec de
    ld e, $ef
    jr nz, @+$2a

    ld [hl+], a
    daa
    jr nz, jr_00a_52ec

    daa

jr_00a_52fe:
    jr z, jr_00a_5330

    ld c, h
    rst $28
    ld b, $28
    jr z, jr_00a_5323

    rst $28
    dec bc
    ld l, $1c
    inc h
    rst $28
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    cp h
    ld d, h
    nop
    nop
    rra
    ld l, $2d
    ld l, $2b
    ld e, $ef
    ld de, $271a
    inc e

jr_00a_5323:
    ld hl, $efef
    rst $28
    rst $28
    inc c
    ld a, [de]
    inc l
    dec l
    ld e, $2b
    ld b, b
    rst $28

jr_00a_5330:
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    cp h
    ld d, h

Call_00a_5341:
    nop

jr_00a_5342:
    nop
    ld c, $21
    adc [hl]
    rst $28
    ld [$1fef], sp
    jr z, jr_00a_5377

    jr nz, jr_00a_5376

    dec l
    rst $28
    dec l
    jr z, jr_00a_5342

    dec l
    ld e, $25
    dec h
    rst $28
    ld [hl-], a
    jr z, @+$30

    rst $28
    dec l
    ld hl, $2d1a
    rst $28
    rst $28
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    cp h
    ld d, h
    nop
    nop
    dec l
    ld hl, $ef1e
    inc e
    dec hl
    jr z, jr_00a_539f

jr_00a_5376:
    inc l

jr_00a_5377:
    rst $28
    jr nc, jr_00a_539c

    dec h
    dec h
    rst $28
    rst $28
    dec e
    ld [hl+], a
    ld e, $ef
    jr nc, jr_00a_53a5

    ld e, $27
    rst $28
    dec l
    ld hl, $ef1e
    rst $28
    rst $28
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    cp h
    ld d, h
    nop
    nop
    inc l
    ld e, $1a

jr_00a_539c:
    inc l
    jr z, @+$29

jr_00a_539f:
    inc l
    rst $28
    inc e
    ld hl, $271a

jr_00a_53a5:
    jr nz, jr_00a_53c5

    ld b, b
    rst $28
    ld bc, $ef1e
    inc l
    ld l, $2b
    ld e, $ef
    dec l
    jr z, @-$0f

    rst $28
    rst $28
    rst $28
    rst $28
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    cp h
    ld d, h
    nop
    nop
    inc e

jr_00a_53c5:
    ld hl, $1c1e
    inc h
    rst $28
    dec l
    ld hl, $ef1e
    dec e
    ld a, [de]
    dec l
    ld e, $ef
    rst $28
    jr z, jr_00a_53fd

    rst $28
    dec l
    ld hl, $ef1e
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    cp h
    ld d, h
    nop
    nop
    inc e
    ld a, [de]
    dec h
    ld e, $27
    dec e
    ld a, [de]
    dec hl
    ld b, b
    ld b, b
    rst $28
    ld [$ef2d], sp

jr_00a_53fd:
    ld [hl+], a
    inc l
    ld e, $2c
    inc l
    ld e, $27
    dec l
    ld [hl+], a
    ld a, [de]
    dec h
    rst $28
    rra
    jr z, jr_00a_5437

    rst $28
    rst $28
    jp hl


    cp $00

jr_00a_5411:
    nop
    nop
    nop
    nop
    nop
    cp h
    ld d, h
    nop
    nop
    jr nz, @+$2d

    jr z, jr_00a_544e

    ld [hl+], a
    daa
    jr nz, jr_00a_5411

    inc e
    dec hl
    jr z, jr_00a_544f

    inc l
    ld b, b
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28

jr_00a_5437:
    rst $28
    rst $28
    rst $28
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    cp h
    ld d, h
    nop
    nop
    inc de
    ld hl, $271a
    inc h
    rst $28
    ld [hl-], a
    jr z, @+$30

jr_00a_544e:
    ld c, h

jr_00a_544f:
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    cp h
    ld d, h
    nop
    nop
    inc de
    ld hl, $271a
    inc h
    rst $28
    ld [hl-], a
    jr z, @+$30

    rst $28
    cpl
    ld e, $2b
    ld [hl-], a
    rst $28
    rst $28
    ld h, $2e
    inc e
    ld hl, $4040
    ld b, b
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop

jr_00a_5497:
    cp h
    ld d, h
    nop
    nop
    ld d, $1e

jr_00a_549d:
    rst $28
    jr nc, @+$24

    dec h
    dec h
    rst $28
    ld a, [de]
    dec h
    inc l
    jr z, jr_00a_5497

    dec l
    dec hl
    ld [hl-], a
    dec l
    jr z, jr_00a_549d

    ld hl, $251e
    add hl, hl
    rst $28
    ld [hl-], a
    jr z, jr_00a_54e4

    ld c, h
    rst $28
    rst $28
    rst $28
    rst $28
    rst $38

text_do_nothing:
    ret


    ld a, [wYesOrNo]
    or a
    jr nz, jr_00a_54df

    ld hl, sInventory
    ld a, [hl]
    cp SICKLE
    jr z, jr_00a_54d1

    inc hl
    ld a, [hl]
    cp SICKLE
    jr nz, jr_00a_54d7

jr_00a_54d1:
    ld a, $ff
    ld [hl], a
    ld [$cc9a], a

jr_00a_54d7:
    xor a
    ld [sShedItemFlagList], a
    ld [$ba38], a
    ret


jr_00a_54df:
    ld a, $ff
    ld [$ba38], a

jr_00a_54e4:
    ret


    nop
    inc b
    xor [hl]
    ld de, $3000
    inc bc
    ld [bc], a
    cpl
    nop
    ld sp, $0207
    inc d
    rst $30
    dec d
    ld [de], a
    inc de
    jr nz, jr_00a_54f9

jr_00a_54f9:
    ld [$1309], sp
    and [hl]
    reti


    and a
    ld h, c
    nop
    pop hl
    nop
    inc [hl]
    dec [hl]
    rlca
    inc b
    inc b
    dec b
    ei
    ld [hl+], a
    inc hl
    jr nz, jr_00a_550e

jr_00a_550e:
    jr jr_00a_5529

    inc hl
    or [hl]
    or a
    ld l, h
    ld h, c
    nop
    pop hl
    nop
    inc h
    dec h
    add hl, bc
    inc b
    ld [hl-], a
    inc sp
    jr nz, jr_00a_5520

jr_00a_5520:
    rra
    jr z, jr_00a_554c

    inc sp
    add $c7
    ld h, c
    nop
    pop hl

jr_00a_5529:
    nop
    dec bc
    inc b
    rst $38
    ld h, h
    ld h, e
    ld h, h
    ld h, l
    db $10
    jr c, jr_00a_556d

    ld de, $107b
    ld de, $0061
    ld h, d
    ld h, e
    ld h, h
    ld h, e
    dec bc
    inc b
    cp a
    ld [hl], h
    ld [hl], e
    ld [hl], h
    ld [hl], l
    jr nz, @+$23

    dec h
    nop
    ld [hl], d
    rst $30
    ld [hl], e

jr_00a_554c:
    ld [hl], h
    ld [hl], e
    dec bc
    ld [$6766], sp
    ld h, [hl]
    and l
    cp h
    ret nz

    inc bc
    inc h
    nop
    and d
    ld h, a
    ld h, [hl]
    ld h, a
    dec bc
    ld [$f776], sp
    ld [hl], a
    halt
    or l
    ld b, c
    ld b, $20
    ld hl, $6362
    cp a
    ld h, e
    ld h, h

jr_00a_556d:
    or d
    ld [hl], a
    halt
    ld [hl], a
    ld c, $04
    inc l
    cp $41
    ld b, $10
    ld de, $7372
    ld [hl], e
    ld [hl], h
    dec l
    jr c, @+$11

    inc b
    jr nz, @+$05

    ld b, c
    inc b
    jr nz, @+$64

    and d
    and e
    nop
    rrca
    inc b
    ld h, h
    ld hl, $4000
    ld [$a3b2], sp
    nop
    inc c
    inc b
    call nz, $22c3
    nop
    xor a
    push bc
    jr nz, jr_00a_55bf

    jp nz, $00a3

    jp $140b


    ldh a, [c]
    scf
    di
    ldh a, [c]
    di
    dec b
    inc c
    and $e7
    pop bc
    nop
    dec bc
    inc d
    rst $28
    cp e
    cp h
    db $e4
    push hl

jr_00a_55b6:
    dec b
    db $10
    or $f7
    cp e
    rst $30
    cp h
    jr nz, jr_00a_55e0

jr_00a_55bf:
    dec bc
    jr jr_00a_55b6

    push af
    db $f4
    push af
    db $ec
    dec b
    db $10
    pop bc
    nop
    ldh a, [c]
    di
    ld [$3018], sp
    inc d
    dec d
    cp h
    rst $00
    inc de
    ld h, e
    inc d
    set 4, l
    inc [hl]
    dec [hl]
    inc de
    ld e, $30
    ldh [$ffb1], a

jr_00a_55df:
    rra

jr_00a_55e0:
    nop
    ld [$0781], sp
    inc hl
    inc d
    and c
    ld [$f5f4], sp
    inc h
    ld l, h
    ld sp, $4021
    jr nz, jr_00a_55f5

    dec b
    ld [hl], b
    rra
    rla

jr_00a_55f5:
    set 4, b
    rlca
    ld [hl], e
    or $f7
    inc hl
    jr jr_00a_55df

    rlca
    jr nz, jr_00a_5622

    ld d, $f0
    jr nz, jr_00a_561b

    ld b, c
    ld e, $14
    dec d
    ld [hl], b
    rra
    daa
    ld hl, $2507
    ld [$08a3], sp
    reti


    ld h, $f0
    jr nz, jr_00a_5658

    ld [hl+], a
    inc b
    dec b
    ld [hl], b

jr_00a_561b:
    rra
    scf
    jr nz, @-$35

    ld hl, $0c07

jr_00a_5622:
    add e
    inc e
    ld [hl], $f0
    jr nz, jr_00a_562b

    inc b
    jr c, jr_00a_5664

jr_00a_562b:
    ld l, h
    ld h, a
    inc bc

jr_00a_562e:
    ld c, c
    nop
    jr c, @+$3b

    inc bc
    inc b
    ld c, h
    ld c, l
    db $ed
    dec bc
    or $a3
    jr nz, jr_00a_5698

    ld e, l
    ld b, c
    ld h, $40
    rlca
    ld b, $07
    ccf
    ld b, $05
    add sp, -$17
    ld [$07eb], a
    jr nz, jr_00a_562e

    inc d
    push af
    inc h
    add c
    ld bc, $f241
    dec l
    ld b, b
    inc d
    dec d

jr_00a_5658:
    ld hl, sp+$37
    ld sp, hl
    ld a, [$07fb]
    inc h
    cp e
    cp h
    ld bc, $d310

jr_00a_5664:
    ld bc, $03de
    inc l
    db $ec
    db $ed
    xor $ef
    ret nz

    daa
    ld c, b
    ld c, c
    di
    ld c, d
    ld c, e
    inc h
    inc d
    dec bc
    inc l
    db $fc
    db $fd
    cp $ff
    ld e, $00
    jr z, jr_00a_56d7

    ld e, c
    ld e, d
    ld e, e
    ld h, h
    jr z, jr_00a_568e

    jr nc, jr_00a_56c9

    ld [$811e], sp
    ld [$5352], sp
    ld d, h

jr_00a_568e:
    ld d, l
    push bc
    nop
    rst $30
    dec b
    xor b
    ld [hl], $03
    ld d, b
    ld d, c

jr_00a_5698:
    ld c, a
    ld bc, $001f
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
    nop
    inc b
    nop
    cpl
    ld bc, $001f
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop

jr_00a_56b8:
    rra
    nop
    rra
    nop
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

jr_00a_56c9:
    dec l
    nop
    jr nc, jr_00a_56b8

    ld [bc], a
    inc bc
    ld a, [hl+]
    nop
    ld sp, $023c
    inc d
    dec d
    inc de

jr_00a_56d7:
    sbc a
    ld [de], a
    ld [$1309], sp
    ld [de], a
    ld hl, $8000
    nop
    inc [hl]
    db $fd
    dec [hl]
    inc a
    inc b
    inc b
    dec b
    inc hl
    ld [hl+], a
    jr jr_00a_5705

    or e
    inc hl
    ld [hl+], a
    ld hl, $8000
    nop
    inc h
    dec h
    db $fc
    dec b
    inc d
    ld a, a
    dec d
    inc sp
    ld [hl-], a
    jr z, jr_00a_5727

    inc sp
    ld [hl-], a
    ld hl, $f800
    add b
    nop

jr_00a_5705:
    ld [bc], a
    inc b
    ld c, d
    rlca
    dec b
    db $10
    ld de, $3938
    ld h, e
    db $10
    ld de, $0021
    add b
    nop
    ld [bc], a
    inc b
    inc b
    dec b
    ld b, l
    rlca
    cp $a0
    rlca
    rla
    jr nz, jr_00a_5742

    jr nz, jr_00a_5744

    ld l, b
    ld l, c
    ld a, a
    ld l, d

jr_00a_5727:
    ld l, e
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a
    jr nz, @+$04

    ld [$14f3], sp
    dec d
    ld b, l
    rlca
    and b
    rlca
    daa
    db $10
    ld de, $ff4e
    ld c, a
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    ld a, h
    ld a, l

jr_00a_5742:
    ld a, [hl]
    pop af

jr_00a_5744:
    ld a, a
    dec b
    inc b
    ld b, l
    rlca
    and b
    rlca
    scf
    jr nz, jr_00a_576f

    ld e, [hl]
    rst $38
    ld e, a
    xor b
    xor c
    xor d
    xor e
    xor h
    xor l
    xor [hl]
    pop af
    xor a
    dec b
    inc b
    ld b, l
    rlca
    and e
    rlca
    ret nc

    pop de
    cp b
    cp c
    cp a
    cp d
    dec a
    dec a

jr_00a_5768:
    cp l
    cp [hl]
    cp a
    dec b
    ld [$f94c], sp

jr_00a_576f:
    ld c, l
    ld h, c
    rlca
    ld b, l
    nop
    ldh [$ffe1], a
    ret z

    ret


    jp z, $3ddf

    call z, $cecd
    rst $08
    inc bc
    ld [$0640], sp
    db $fd
    rlca
    daa
    nop
    dec b
    ld b, [hl]
    ld b, a
    ldh a, [$fff1]
    ret c

    ld a, a
    reti


    jp c, $dcdb

    db $dd
    sbc $df
    inc bc
    inc c
    cp $68
    ld d, $40
    inc d
    dec d
    ld d, [hl]
    ld d, a
    db $10
    ld de, $e8ff
    jp hl


    ld [$eceb], a
    db $ed
    xor $ef
    ld hl, sp+$03
    inc c
    dec bc
    inc d
    pop bc
    rrca
    ld hl, sp-$07
    ld a, [$fcfb]
    add a
    db $fd
    cp $ff
    ld c, $04
    nop
    jr jr_00a_5768

    ld [$040f], sp
    ld b, b
    inc b
    cp b
    ld [$0971], sp
    ld b, c
    ccf
    ld e, $1f
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
    stop
    nop
    inc b
    ld a, a
    nop
    nop
    inc d
    dec d
    and d
    ld [hl], a
    halt
    cpl
    nop
    rst $30
    and l
    inc [hl]
    dec [hl]
    inc bc
    ld [bc], a
    inc b
    dec b
    or d
    ld h, a
    dec e
    ld h, [hl]
    cpl
    nop
    or l
    inc h
    dec h
    rrca
    inc b
    rrca
    inc b
    rrca
    inc b
    add b
    rrca
    inc b
    rrca
    inc b
    rrca
    inc b
    rrca
    inc b
    rrca
    inc b
    rrca
    inc b
    dec bc
    inc b
    ld h, b
    ld sp, $4361
    nop
    rrca
    inc b
    inc bc
    inc b
    ld [hl], b
    ld [hl], c
    ld b, e
    nop
    rrca
    inc b
    cp $02
    ld [$a00c], sp
    and c
    jp $a0c4


    and c
    ld sp, hl
    dec c
    rrca
    inc b
    pop hl
    rlca
    inc h
    rlca
    dec b
    or b
    or c
    ld a, a
    db $10
    ld de, $b1b0
    inc h
    ld b, $05
    rrca
    inc b
    rst $38
    ld h, a
    ld h, [hl]
    inc [hl]
    dec h
    dec d
    ret nz

    pop bc
    jr nz, jr_00a_5896

    ld hl, $c1c0
    inc [hl]
    inc b
    dec d
    rrca
    inc b
    nop
    inc b
    ld l, a
    inc b
    dec b
    db $10
    ld de, $0021
    inc h
    dec h
    rrca
    inc b
    ld b, $03
    inc b
    jr nz, jr_00a_5892

    ld hl, $0f00
    inc b
    rrca

jr_00a_5876:
    inc b
    rrca
    inc b
    ld [$3904], sp
    ld [bc], a
    rrca
    inc b
    add hl, bc
    inc b
    ld h, $22
    daa
    rrca
    inc b
    ld [$6708], sp
    ld [hl], $32
    scf
    rrca
    inc b
    ld [$4608], sp
    ld b, a

jr_00a_5892:
    ld [bc], a
    add hl, de
    adc h
    rrca

jr_00a_5896:
    inc b
    inc b
    inc c
    ld d, [hl]
    ld d, a
    ld [bc], a
    dec e
    rrca
    inc b
    inc b
    inc c
    ld c, [hl]
    add hl, de
    ld c, a
    rrca
    inc b
    add hl, bc
    db $10
    ld e, [hl]
    ld e, a
    rrca
    inc b
    ld a, [bc]
    db $10
    rrca
    jr @-$20

    dec b
    inc d
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld c, $14
    ld b, b
    ld b, $7b
    ld b, $07
    inc h
    nop
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    pop bc
    nop
    ld a, [de]
    inc de
    ld bc, $ef41
    ld [hl-], a
    ld d, b
    ld d, c
    ld c, a
    ld bc, $001f
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

jr_00a_58e0:
    nop
    rra
    nop
    rra
    nop
    nop
    rla
    nop
    nop
    ld [$005f], sp
    nop
    stop
    ld a, h
    ld b, b
    nop
    jr c, jr_00a_5876

    nop
    nop

jr_00a_58f6:
    rrca
    ld bc, $010f
    rrca
    ld bc, $010f
    rrca
    ld bc, $010f

jr_00a_5902:
    rrca
    ld bc, $010f
    nop
    rrca
    ld bc, $010f
    rrca
    ld bc, $010f
    rrca
    ld bc, $010f
    rrca
    ld bc, $010f
    ld hl, sp+$0f
    ld bc, $010f

jr_00a_591c:
    db $eb
    dec d
    jr jr_00a_5920

jr_00a_5920:
    jr z, jr_00a_5932

    inc [hl]
    rst $38
    jr jr_00a_597a

    jr c, jr_00a_5970

    jr nc, jr_00a_5902

    jr nz, jr_00a_591c

    ei
    nop
    ld [hl], b
    add b
    inc bc
    ld l, h

jr_00a_5932:
    db $10
    call nz, $e838
    ei
    db $10
    ld [hl], b
    db $e4
    rla
    inc e
    nop
    ld h, [hl]
    jr jr_00a_58f6

    cp a
    ld a, b
    adc h
    ld [hl], b
    ld hl, sp+$00
    ld a, b

jr_00a_5947:
    inc b
    ld bc, $ff13

jr_00a_594b:
    inc c
    ld a, l
    ld e, $77
    jr c, jr_00a_58e0

    ld [hl], b
    cp $fe
    ret nz

    inc bc
    nop
    nop

jr_00a_5958:
    inc a
    nop
    ld h, h
    jr c, @-$36

    rst $28
    jr nc, jr_00a_5958

    nop
    jr nc, jr_00a_5947

    ld a, [de]
    ld a, $00
    ld h, [hl]
    ld sp, hl
    jr c, jr_00a_594b

    ld [bc], a
    push hl
    dec de
    ldh a, [rP1]
    adc h

jr_00a_5970:
    ld [hl], b
    sbc h
    push af
    ld h, b
    push hl
    inc b
    nop
    jr nz, jr_00a_597f

    sbc [hl]

jr_00a_597a:
    ld h, b
    adc a
    ld a, h
    ld a, a
    db $ed

jr_00a_597f:
    ld e, $71
    ld c, $3f
    nop
    ld e, $02
    inc bc
    rst $38
    ld d, c
    ld l, $b2
    ld l, l
    call $cc73
    ld [hl], e
    rst $38
    sbc e
    ld h, h
    rst $38
    nop
    rst $28
    jr nc, jr_00a_5a14

    nop
    rst $38
    sub d
    ld l, h
    sbc l
    ld l, [hl]
    ld l, l
    sbc [hl]
    and a
    ld e, b
    rst $38

Call_00a_59a3:
    ld sp, hl
    ld b, $ef
    db $10
    db $fd
    ld b, $bf
    ld [hl], b
    rst $38
    rst $08
    ld [hl], b
    sbc a
    ld h, b
    rst $30
    ld [$1ceb], sp
    rst $38
    or c
    ld c, [hl]
    xor c
    halt
    sbc a
    ld h, b
    pop af
    ld c, $ff
    db $fd
    ld [bc], a
    ei
    inc b
    dec [hl]
    adc $33
    call z, $fdff
    ld b, $e9
    halt
    adc a
    ld [hl], b
    and e
    ld e, h
    rst $38
    rst $38
    nop
    swap h
    rst $18
    ld l, h
    rst $10
    ld l, h
    rst $38
    cp d
    ld d, l
    adc $31
    reti


    ld h, $75
    ld a, [$a7ff]
    ld a, b
    ei
    ld b, $6b
    or $7a
    rst $20
    cp a
    and [hl]
    db $db
    sub $b9
    db $fd
    ld [hl+], a
    ld h, l
    inc h
    add b
    adc $22
    nop
    nop
    nop
    ld bc, $0020
    ld h, c
    ld de, $0001
    rst $38
    ld [bc], a
    ld bc, $0c0f
    rrca
    inc c
    scf
    adc $ff
    ld [hl], $cd
    cp h
    ld b, e

jr_00a_5a0e:
    sub $39
    push de
    ld a, [hl-]
    rst $38
    ld l, a

jr_00a_5a14:
    sub b
    ld h, a
    sbc e
    or $6f
    rst $10
    ld a, [hl+]
    rst $38
    ld [hl], e
    adc [hl]
    adc $b1
    call $bcb3
    jp Jump_00a_73bf


    adc h
    rst $38
    ld l, h
    db $d3
    ld l, l
    and c
    inc bc
    ld b, b
    rst $38
    add b
    ld b, b
    add b
    ldh [$ff60], a
    ldh a, [$fff0]
    ld a, b
    rst $28
    ld hl, sp-$28
    ld hl, sp+$03
    stop
    ld b, $07
    ld b, $f7
    rlca
    nop
    inc bc
    db $e3
    add hl, hl
    db $db
    ld h, h
    rst $38
    db $e3
    rst $38

jr_00a_5a4c:
    db $fd
    rst $28
    ld a, a
    rst $38
    cp $ff
    rst $20
    rst $38
    rst $38
    ld c, $1e
    inc c
    ld c, $df
    inc hl
    rst $38
    rra
    rst $30
    ld a, [$ffdf]
    stop
    db $db
    rst $38
    ld a, b
    ld a, h
    db $fd
    ld h, b
    ld h, b
    inc bc
    and b
    ldh a, [$ff60]
    ldh a, [rP1]
    ldh [$ffcf], a
    jr jr_00a_5a4c

    jr jr_00a_5a0e

    ld [de], a
    ld [$2dca], sp
    ld c, $00
    rst $38
    ld b, $00
    add hl, bc
    ld b, $15
    ld c, $17
    ld c, $ff
    add hl, de
    ld b, $0b
    inc b
    rrca
    nop
    dec b
    ld [bc], a
    rst $38
    adc a
    ld [hl], b
    sub h
    ld l, e
    db $eb
    inc e
    push hl
    ld a, [de]
    rst $10
    rst $18
    jr nz, jr_00a_5b18

    ret nz

    dec d
    cp [hl]
    add b
    inc e
    call z, $ff30
    sub d
    ld l, h
    cp d
    ld e, h
    ld [$7c1c], a

jr_00a_5aaa:
    add b
    rst $38
    cp $00
    jp hl


    ld b, $0a
    rlca
    ld d, $0f
    cp $c1
    ld [bc], a
    dec c
    ld [bc], a
    dec c
    inc bc
    inc c
    inc bc
    dec b
    rst $38
    ld [bc], a
    rst $20
    jr jr_00a_5aaa

    jr @-$45

    ld b, [hl]
    ld e, c
    rst $38
    and $8f
    ld [hl], b
    ld c, a
    or e
    db $fc
    inc bc
    sbc l
    rst $38
    ld h, e
    db $fd
    ld b, $d3

jr_00a_5ad5:
    inc l
    and [hl]
    ld a, b
    sbc h
    rst $38
    ld h, b
    db $ec
    jr nc, jr_00a_5b26

    or b
    ld hl, sp+$00
    xor b
    db $fd
    ret nc

    ld hl, $030f
    ld bc, $0d0f
    ld c, $0d
    rst $38
    inc bc
    ld [bc], a
    ld [bc], a
    rlca
    ld c, $0f
    and a
    ld e, b
    rst $38
    rst $38
    nop
    di
    adc h
    ldh [c], a
    sbc l
    ld h, [hl]
    sbc c
    rst $38
    ccf
    ret nz

    rst $30
    ld l, [hl]
    db $fd
    ld h, [hl]
    or a
    ld a, b
    rst $38
    xor $11
    ld a, d
    push bc
    db $fd
    jp nz, $99f6

    rst $38
    halt
    cp c
    ld d, a
    xor d
    rst $18
    inc hl
    add b

jr_00a_5b18:
    nop
    rst $38
    ret nz

    add b
    ret nz

    add b
    adc h
    inc c
    inc c
    adc h
    db $fd
    ldh [rNR10], a
    nop

jr_00a_5b26:
    ret nc

    ldh a, [rNR31]
    rra
    dec de
    rra
    cp a
    inc bc
    rrca
    ld [bc], a
    rlca
    nop
    ld [bc], a
    db $e3
    jr c, jr_00a_5ad5

    rst $38
    ld h, a
    rst $28
    sbc a
    ld a, l
    rst $38
    ei
    rst $38
    pop de
    rst $38
    rst $38
    or e
    di
    ld h, e
    ld h, e
    nop
    nop
    rst $10
    rst $38
    xor a
    rst $28
    sbc a
    cp $ff
    or $ff
    and h
    rst $38
    rst $38
    sbc a
    cp a
    sbc b
    sbc h
    nop
    jr @-$66

    rst $38
    ld hl, sp-$10
    ldh a, [$ffc0]
    ret nz

    ret z

    ret z

    nop
    di
    nop
    ld h, b
    stop
    inc hl
    inc a
    jr nc, jr_00a_5b6c

jr_00a_5b6c:
    ld e, l

jr_00a_5b6d:
    jr nc, @+$01

    ld b, a
    jr c, jr_00a_5ba5

    inc c
    ld c, $01
    ld a, a
    ld h, b
    rst $38
    ld c, $00
    ld de, $1b0e
    inc b
    xor $00
    ld a, a
    ld [hl], a
    add b
    db $fc
    inc bc
    ld a, a
    add e
    or a
    add b
    ld [bc], a
    rst $38
    jr jr_00a_5b8d

jr_00a_5b8d:
    inc h
    jr jr_00a_5c0f

    nop
    ei
    nop
    db $fd
    rst $38
    jr nz, jr_00a_5b97

jr_00a_5b97:
    scf
    call z, RST_18
    inc [hl]
    jr @+$01

    ld [hl], h
    jr c, jr_00a_5b6d

    jr nc, @+$58

    xor h
    db $fc

jr_00a_5ba5:
    nop
    cp a
    ld [hl], b
    add b
    ld hl, sp+$18
    ld [hl], a
    ld l, b
    nop
    inc bc
    dec b
    rst $38
    ccf
    inc sp
    ccf
    ccf
    rra
    rra
    ld l, [hl]
    ld a, a
    rst $38
    ld h, [hl]
    ld a, a
    dec sp
    call z, Call_000_0ef1
    jp hl


    sub [hl]
    rst $38
    rst $38
    call z, $eefd
    ld sp, hl
    cp $7f
    cp $7f
    ld a, [hl]
    rst $38
    di
    db $ec
    db $fd
    and $e9
    add b
    ld hl, $b5ff
    ld a, d
    cp h
    ld a, a
    rst $28
    rra

jr_00a_5bdc:
    rst $18
    rst $38
    rst $38
    sbc h
    ld a, h
    ret z

    jr c, jr_00a_5bdc

    nop
    ld a, h
    db $fc
    rst $38
    sub $fe
    ldh [c], a
    cp $e8
    ld hl, sp-$34
    cp $bf
    rra
    ccf
    rrca
    rra
    ld b, l
    ld b, a
    ld [hl], b
    ld d, $00
    db $fd
    ld b, $10
    nop
    nop
    nop
    or $ff
    db $e3
    rst $38
    rst $08
    rst $00
    rst $30
    ld h, e
    ld h, e
    ret nz

    add hl, bc
    ldh [c], a
    add hl, bc
    ld a, l
    rst $38

jr_00a_5c0f:
    rst $38
    ld sp, hl
    rst $38
    rst $18
    rst $38
    add e
    db $e3
    inc b
    inc b
    rst $38
    ld b, b
    ld b, b
    ret nz

    ret nz

    nop
    nop
    inc c
    cp $ff
    ret nz

    db $ec
    add b
    add b
    call z, $0ccc
    inc c
    cp $05
    ld c, b
    inc c
    inc c
    jr jr_00a_5c49

    inc bc
    inc bc
    dec e
    cp a
    ld bc, $1d2a
    dec sp
    dec b
    rlca
    ret nc

    inc hl
    ld c, $ff
    ld c, $18
    ld a, $e0
    db $fc
    add b
    ldh [rNR32], a
    rst $18
    ret nz

jr_00a_5c49:
    db $e4
    ret c

    db $fd
    pop bc
    ld h, d
    ld c, $03
    ld h, b
    pop af
    rlca
    or c
    ld c, $e1
    inc e
    ld hl, $0437
    add h
    inc c
    call z, $c0ff
    ldh a, [$fff0]
    ret z

    inc a
    call z, $3c1c
    rst $38
    ld sp, $3331
    scf
    inc bc
    rlca
    ld bc, $ef03
    jr jr_00a_5c8e

    jr @+$20

    ldh a, [rNR34]
    nop
    add e
    ret nz

    rst $38
    inc b
    jp $8182


    add a
    adc h
    inc c
    inc e
    rst $38
    nop
    inc e
    ld bc, $1101
    ld de, $0003
    ld a, a
    db $dd
    inc e

jr_00a_5c8e:
    ld e, l
    sbc [hl]
    adc h
    ld e, $00
    nop
    rlca
    rst $38
    sub b
    sub c
    add b
    add b
    db $ec
    inc e
    ld h, b
    sbc b
    rst $38
    ret nz

    ld b, $00
    inc c
    jr jr_00a_5cdd

    jr jr_00a_5d1f

    db $fd
    add b
    ld b, $23
    inc bc
    nop
    inc b
    inc bc
    ld [$fc07], sp
    ld h, b
    rra
    ld h, b
    daa
    inc a
    nop
    sbc $2c
    ld e, $ec
    rst $38
    inc c
    ldh a, [$ff08]
    ldh a, [$ffe8]
    db $10
    ret c

    ldh [rIE], a

jr_00a_5cc6:
    dec de
    ld c, $0b
    ld b, $07
    ld bc, $0205
    rst $18
    ld c, $05
    inc b
    inc bc
    rrca
    db $10
    ld c, $ec
    cp b
    rst $38
    add sp, -$50
    ldh a, [$ffc0]

jr_00a_5cdd:
    ret nc

    jr nz, jr_00a_5d18

    ret nc

    rst $08
    sbc b
    ld h, b
    ld a, b
    jr nc, jr_00a_5d4a

    add hl, sp
    rst $20
    inc bc
    dec de
    ld c, $f6
    db $eb
    inc bc
    db $ec
    cp b
    pop hl
    inc bc
    dec c
    ld b, $06
    ld bc, $e1fa
    inc bc
    add hl, bc
    db $10
    ld [de], a
    add sp, -$50
    ld hl, sp-$40
    call c, Call_000_387f
    jr c, jr_00a_5cc6

    sub b
    ld h, b
    xor b
    ld [hl], b
    ld b, c
    ld b, b
    ld a, a
    dec bc
    ld b, $0f
    ld bc, $0e1d
    ld c, $00
    ld [bc], a
    rst $20
    ld a, [bc]

jr_00a_5d18:
    rlca
    rlca
    ldh [rLY], a
    pop hl
    dec b
    ret c

jr_00a_5d1f:
    jr nc, jr_00a_5d51

    xor $00
    ld [bc], a
    ld hl, sp+$30
    ld c, b
    ld [bc], a
    ld b, $1e
    nop
    dec a
    ccf
    ld a, [de]
    inc a
    dec de
    jr jr_00a_5d39

    ld [$0022], sp
    jp $df36


    ld h, b

jr_00a_5d39:
    add b
    db $10
    ldh [$ff08], a
    jr nz, jr_00a_5d49

    ld [$e7f0], sp
    inc e
    dec bc
    rrca
    nop
    jr z, @+$09

    ld a, [bc]

jr_00a_5d49:
    inc e

jr_00a_5d4a:
    add sp, -$08
    rlc b
    ldh [rSC], a
    ld a, [bc]

jr_00a_5d51:
    sub b
    ld [bc], a
    ld a, [bc]
    db $eb
    inc bc
    inc e
    dec bc
    ld a, $ec
    inc bc
    add sp, $0f
    inc b
    rlca
    ld bc, $0980
    ld b, $0a
    inc sp
    ld hl, sp+$10
    dec b
    ld a, [bc]
    db $e3
    rlca
    rrca
    inc b
    dec b
    ld a, [bc]
    pop hl
    dec bc
    db $dd
    nop
    nop
    ld [bc], a
    ldh a, [$ffc0]
    ret z

    ld [bc], a
    ld a, [bc]
    cp b
    ld [hl], b
    db $f4
    inc bc
    ld a, [bc]
    add hl, bc
    inc d
    rlca
    ld a, [bc]
    inc d
    ret z

    jr nc, @-$4e

    ret nz

    ccf
    rlca
    ld [bc], a
    rlca
    ld [bc], a

jr_00a_5d8d:
    inc bc
    ld bc, $40e1
    add c
    ld [hl-], a
    ld a, a
    inc bc
    nop
    ret c

    ldh a, [$ffd0]
    ldh [$ffa0], a
    nop
    inc d
    ld h, a
    ldh a, [rLCDC]
    ld d, b
    sub d
    dec sp
    db $eb
    inc bc
    rlca
    ld [bc], a
    db $eb
    inc bc
    inc sp
    ret c

    ldh a, [$ffe3]
    inc bc
    and c
    inc bc
    dec b
    ld [bc], a
    ld b, c
    inc b
    db $e3
    inc bc
    rst $38
    sbc b
    ld h, b
    db $10
    ldh [$ffb8], a
    ld d, b
    add sp, $30
    db $eb
    or b
    nop
    pop hl
    dec b
    inc bc
    ld h, b
    nop
    ld [bc], a
    ld bc, $ef07
    ld [bc], a
    dec b
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    ldh a, [rP1]
    jr c, @+$01

jr_00a_5dd5:
    ret nc

    db $10
    ldh [$ffa8], a
    ld d, b
    ret nc

    jr nz, jr_00a_5d8d

    cp $66
    ld l, [hl]
    ld bc, $0600
    ld bc, $0718
    jr nz, jr_00a_5dd5

    rra
    ld h, l
    ld l, a
    ldh [rP1], a

jr_00a_5ded:
    ld [hl], b
    ld b, e
    ld h, b
    ld h, b
    add b
    rst $38
    ld b, b
    ccf
    ld e, h
    inc hl
    dec sp
    inc e
    dec a
    ld d, $7f
    dec a
    ld d, $1b
    inc c
    ld c, $03
    rlca
    jp nz, $fe48

    ld b, c
    ld a, [hl-]
    jr z, @-$3e

    inc e
    add sp, -$6a
    ld l, h
    xor $f0
    adc b
    ld [hl], d
    inc hl
    inc b
    add a
    ld [hl], e
    inc hl
    inc b
    jr nz, jr_00a_5e39

    ld b, b
    ccf
    rst $38
    ld b, b
    ccf
    ld e, a
    jr nz, jr_00a_5e4e

    rra
    ccf
    db $10
    db $fd
    ld d, $c0
    jr jr_00a_5e8a

    add b
    jr nz, jr_00a_5ded

    ld b, b
    add b
    cp a
    ret nz

    nop
    add sp, -$80
    sbc h
    ld l, b
    rlca
    inc b
    inc bc

jr_00a_5e39:
    rst $38
    nop
    dec c
    ld [bc], a
    ld sp, $400e
    ccf
    add c
    rst $38
    ld a, [hl]
    rrca
    nop
    jr nc, jr_00a_5e57

    ld b, a
    ccf
    rst $18
    ld a, l
    ccf
    ld d, b

jr_00a_5e4e:
    ld sp, $efdf
    ccf
    ld b, a
    rst $38
    pop bc
    inc e
    rst $38

jr_00a_5e57:
    sub b
    ldh [rWave_8], a
    ret nz

    add sp, -$10
    db $e4
    ld hl, sp-$01
    jp nz, $c2fc

    db $fc
    cp l
    ld b, d
    ld a, e
    inc a
    rst $38
    ld a, l
    ccf
    ld a, a
    inc h
    ld a, [$7d5d]
    ld [bc], a
    cp $80
    inc hl
    nop
    dec bc
    rst $38
    and b
    ld e, a
    ldh a, [rIF]
    rst $30
    inc a
    jp $e4ef


    ld a, d
    sub d
    db $ec
    inc h
    ret c

    adc a
    ld a, b
    add b
    ldh a, [rP1]

jr_00a_5e8a:
    or b
    inc [hl]
    ld h, $7c
    nop
    db $10
    inc bc
    cp a
    rra
    inc bc
    inc hl
    inc e
    ld b, c
    ld a, $07
    ld b, $bf
    rst $38
    ld a, a
    cp a
    ld a, a
    xor a
    ld a, a
    ld b, a
    rst $38
    sbc a
    rst $38
    ld h, b
    ld sp, hl
    ld e, $7d
    ccf
    ld a, l
    ld h, $ba
    ccf
    ld e, l
    db $fc
    ld b, e
    ld b, a
    ld [bc], a
    ld [bc], a
    ld [$d305], sp
    ld d, d
    nop
    ld [$fffd], sp
    inc l
    nop
    nop
    nop
    add b
    nop
    ldh [rP1], a
    rst $10
    ld hl, sp+$00
    cp $40
    nop
    ldh [$ffc0], a
    nop
    rst $38
    nop
    rst $38
    call $cf32
    jr nc, jr_00a_5f4c

    adc b
    ld a, l
    sbc [hl]
    cp a
    call nc, Call_00a_4837
    cp a
    inc hl
    call c, $0301
    rst $18
    rst $38
    jr nz, @-$12

    inc de
    and [hl]
    reti


    and l
    and $6c
    rst $38
    xor a
    ld a, [$fa1d]
    ld b, $f3
    rrca
    ld hl, sp-$01
    rlca
    sbc l
    ld h, d
    rst $18
    jr nz, @-$0b

    rrca
    di
    rst $38
    rrca
    cp $01
    and d
    ld e, l
    ld h, d
    sub c
    add hl, sp
    rst $38
    ret z

    rla
    xor $bf
    ld h, a
    sbc h
    ld h, [hl]
    ld a, [de]
    rst $38
    and $db
    and l
    dec c
    set 1, c
    adc [hl]
    ld d, l
    rst $38
    cp [hl]
    db $eb
    inc d
    ld a, h
    add e
    ld e, l

jr_00a_5f1f:
    and d
    rst $08
    rst $38
    jr nc, jr_00a_5f1f

    inc b
    ld l, h
    xor e
    ld a, [de]
    db $fc
    ld h, a
    rst $38
    ei
    call z, $fb73
    inc c
    ldh [c], a
    dec e
    cp $ff
    ld bc, $40bf
    ld bc, $50ff

jr_00a_5f3a:
    sbc a
    ret nc

    rst $38
    inc e
    or d
    ld a, e
    jr z, jr_00a_5f3a

    ld d, $f7
    jr nc, @+$01

    ldh a, [$ff61]
    pop hl
    sbc e
    db $fc
    ld h, e

jr_00a_5f4c:
    db $e4
    and e
    rst $38
    db $e4
    ld e, c
    cp $b9
    cp [hl]
    ld e, c
    sbc $0c
    rst $38
    cpl
    add $c7
    ld bc, $60ff
    cp a
    ret nc

    rst $38
    inc e
    jp nc, $a81b

    ld a, b
    add [hl]
    ld [hl], a
    db $10
    rst $38
    ldh a, [rWave_1]
    pop af
    sbc e
    db $fc
    ld l, e
    db $ec
    and e
    rst $38
    db $e4
    ld d, e
    db $f4
    cp c
    cp [hl]
    ld d, c
    sbc $09
    cp a
    ld l, $cc
    rst $08
    rst $38
    ld a, a
    rst $38
    ld de, $fd00
    rst $38
    rst $38
    ldh [$fffc], a
    db $e3
    ldh a, [c]
    call $cff0
    cp $e2
    nop
    rst $38
    rst $38
    ld e, a
    ld a, a
    adc a
    rst $38
    rlca
    rst $38
    ld c, a
    or c
    rla
    db $eb
    ld h, h
    sbc e
    ld h, a
    sbc c
    rst $38
    xor a
    ld d, c
    rst $38
    ld b, b
    reti


    and $d6
    db $ed
    rst $38
    or a
    call $add7
    ld l, l
    sub e
    cp l
    jp $a7ff


    reti


    ld h, [hl]
    sbc c
    ld e, d
    cp l
    db $f4
    ccf
    rst $38
    ld l, e
    or a
    res 6, a
    ld b, b
    cp a
    ld [$fff7], sp
    ld h, $d9
    add d
    ld a, l
    and c
    ld e, [hl]
    ld b, [hl]
    cp c
    rst $38
    add hl, de
    and $40
    cp a
    inc h
    db $db
    add e
    ld a, h
    rst $38
    ld hl, $1cde
    db $e3
    ret nz

    ccf
    ld [hl+], a
    db $dd
    rst $38
    dec e
    ldh [c], a
    ld b, h
    cp e
    ei
    sbc h
    ld h, e
    add h
    rst $38
    jp $e924


    ld l, $f1
    ld a, [hl-]
    and l
    ld a, [hl]
    rst $38
    and b
    ld a, l
    jp nz, $013b

    rst $38

jr_00a_5ff9:
    ld d, d
    sbc l
    rst $38
    pop de
    ld e, $fe
    scf
    ld l, a
    or a
    ld e, [hl]

Call_00a_6003:
    and a
    rst $28
    ld a, h
    add a
    add hl, hl
    sub $03
    ld [de], a
    add sp, $17
    ld sp, hl
    rst $38
    rlca
    cp h
    ld b, e
    rst $20
    jr jr_00a_5ff9

    dec de
    ld [hl], a
    rst $38
    call Call_00a_59a3
    xor h
    ld d, l
    adc d
    ld [hl], a
    set 7, a
    ld a, $dd
    xor [hl]
    ld [hl], h
    rst $08
    or c
    ld c, [hl]
    add c
    rst $38
    cp a
    jp nc, $51dd

    sbc $be
    ld [hl], a
    rst $28
    rst $38
    rst $30
    ld e, [hl]
    ld h, a
    inc a
    ld b, a
    xor c
    sub $fb
    rst $38
    sbc l

Jump_00a_603d:
    ld h, e
    add l

Jump_00a_603f:
    jp $e825


    cpl
    ldh a, [rIE]
    dec sp
    and h
    ld a, l
    and l
    ld a, l
    jp Jump_00a_603f


    rst $38
    ldh [$ffc5], a
    push bc
    rst $00
    rst $00
    add $c7
    ld h, [hl]
    rst $38
    rst $20
    db $e3
    db $e3
    or b
    ldh a, [rNR21]
    rst $30
    and $fa
    add b
    nop
    inc hl
    jr nz, jr_00a_6065

jr_00a_6065:
    ld h, [hl]
    rst $20
    add $c7
    dec l
    rst $38
    ld l, $59
    sbc $21
    pop hl
    ld h, a
    rst $20
    ld h, [hl]
    rst $38
    rst $20
    ld h, h
    rst $20
    inc h
    rst $20
    or e
    di
    sub b
    cp a
    ldh a, [rTMA]
    rst $30
    db $e4
    rst $20
    ld h, $22
    nop
    ld h, h
    rst $38
    rst $20
    call $29ce
    ld l, $53
    call c, $fff1
    rst $08
    jp nc, Jump_00a_69ed

    or $aa
    ld [hl], a
    rst $08
    rst $38
    rst $30
    sbc [hl]
    rst $20
    cp h
    rst $00
    xor c
    sub $f7
    rst $38
    sbc c
    ld a, e
    sbc l
    ei
    dec e
    jp c, $f43d

    rst $38
    dec sp
    and h
    ld e, e
    sbc d
    ld h, a
    rst $08
    inc sp
    ld [hl], d
    rst $38
    adc l
    ld [$f515], a
    jp c, $d6b9

    xor d
    rst $38
    rst $10
    ld a, c
    add a
    rst $08
    jr nc, jr_00a_60fa

    adc $56
    rst $38
    xor e
    and $1b
    ld hl, sp+$0f
    ret c

    cpl
    db $dd
    rst $38
    scf
    xor h
    ld a, e
    adc a
    ld a, b
    ld c, e
    cp h
    ld hl, $deff
    add $39
    db $10
    rst $28
    add l
    ld a, d
    ld b, d
    rst $38
    cp l
    adc h
    ld [hl], e
    ld b, e
    cp h
    jr nc, @-$2f

    xor b
    rst $38
    ld d, a
    ld b, [hl]
    cp c
    add hl, hl
    sub $98
    ld h, a
    ld b, h
    rst $38
    cp e
    add d
    ld a, l
    sbc l
    ld h, d
    ld c, b
    or a

jr_00a_60fa:
    ld c, [hl]
    rst $38
    or a
    xor d
    rst $10
    and h
    db $db
    ld h, h
    adc e
    ld c, b
    rst $38
    adc a
    jp nc, $7b1d

    or h
    xor e
    db $f4
    and h
    rst $38
    ld e, e
    and [hl]
    ld e, b
    rst $28
    ld de, $40bf
    ld e, l
    rst $38
    and $da
    jp hl


    or a
    call $cc36
    ld b, l
    rst $38
    cp d
    ld b, [hl]
    adc c
    sbc h
    inc de
    add sp, $77
    db $fd
    rst $38
    and $39
    ld h, [hl]
    ld e, b
    ld h, a
    db $db
    and l
    ld e, a
    rst $38
    ld h, b
    rst $08
    ldh a, [$ff1f]
    ldh [$ffb9], a
    ld b, [hl]
    ei
    rst $38
    inc b
    rst $08
    ldh a, [$ffcf]
    ldh a, [$ff7f]
    add b
    db $e4
    rst $38
    sbc e
    ld h, [hl]

jr_00a_6146:
    sbc b
    xor a
    ld d, c
    cp a
    nop
    ld e, l
    db $fd
    ld h, [hl]
    ld bc, $d603
    xor h
    ld c, a
    or e
    xor l
    db $d3
    rst $38
    and l
    db $db
    ld h, a
    adc c
    ld c, d
    adc l
    sub $1f
    rst $38
    ld a, h
    or h
    xor b
    db $f4
    ld b, $f7
    ld h, e
    sbc e
    rst $38
    ldh a, [$ff1f]
    or d
    ld e, a
    ld h, $df
    ld a, c
    add a
    rst $38
    rst $00
    jr c, jr_00a_61ab

    rst $08
    ld d, e
    call c, $f8cf
    rst $38
    inc de
    db $f4
    ld l, c
    xor [hl]
    push af
    ld [hl], $a1
    halt
    cp a
    xor c
    ld a, [hl]
    ld c, e
    cp h
    ld b, [hl]
    or a
    ld bc, $a202
    rst $18
    ld e, a
    ld a, $c7
    ld a, [hl]
    add c
    ld bc, $4702
    ret c

    cp a
    rst $00
    ldh a, [rWX]
    xor h
    ld sp, hl
    ld a, $05
    ld [bc], a
    jr z, @+$01

    rla
    ld [hl], d
    ld l, l
    ccf
    jr nz, jr_00a_6146

    sbc c
    add a
    rst $38

jr_00a_61ab:
    add e
    ret nz

    ret nz

    ldh a, [$fff0]
    rst $38
    rst $38
    rrca
    rst $38
    rst $30
    ld e, l
    and l
    db $fd
    dec b
    ld sp, hl
    add hl, de
    ld d, e
    rst $38
    ld d, e
    inc bc
    inc bc
    rrca
    rrca
    rst $38
    cp $44
    rst $38
    cp a
    sbc h
    db $e3
    dec sp
    ret c

    or h
    ld l, l
    cp e
    rst $38
    ld b, [hl]
    ld c, a
    adc b
    cp d
    rst $00
    ld l, c
    sbc c
    inc h
    rst $38
    db $db
    cp e
    ld b, h
    ld b, l
    add d
    xor b
    inc sp
    sbc $7f
    pop hl
    ei
    add d
    and a
    ld h, b
    ld [$0319], a
    jr nc, @+$01

    cp $01
    db $fd
    ld [bc], a
    db $fc
    inc bc
    db $e4
    dec de
    cp $e5
    jr nc, jr_00a_6276

    add b
    cp a
    ld b, b
    ccf
    ret nz

    daa
    rst $38
    ret c

    rst $38
    nop
    sbc a
    ld hl, sp+$07
    ldh [$ff83], a
    rst $30
    ld h, h
    jp hl


    ld l, $05
    add hl, bc
    scf
    call $956a
    ei
    push af
    ld a, [de]
    rlca
    dec bc
    xor $b3
    push bc
    sbc d
    dec [hl]
    rst $38
    xor d
    ld d, c
    xor $d3
    ld a, h
    cp e
    ld [hl], l
    ld l, $ff
    di
    adc l
    ld [hl], d
    rst $38
    nop
    or e
    ld c, h
    di
    rst $38
    inc c
    rla
    add sp, -$61
    ldh [rWave_d], a
    jp nz, $dfe7

    jr jr_00a_625f

    ret c

    ld [hl], a
    adc l
    nop
    inc bc
    jp c, $fb32

    ld e, a
    and [hl]
    inc b
    ld c, $9e
    ei
    ld b, $e3
    add d
    ld a, a
    ld h, a
    add sp, $2f
    push af
    scf
    and b
    ld [hl], a
    ld bc, $ff0e
    or l
    push af
    ld c, h
    sbc $52
    rst $38
    add h
    ld a, a
    rst $28
    and b
    ld e, a

jr_00a_625f:
    ld b, [hl]
    cp e
    ld bc, $8d28
    adc a
    sub b
    ld l, a
    sbc a
    ld d, a
    cp $a8
    ld [hl], b
    add hl, sp
    ld [hl+], a
    db $fd
    ld bc, $ff28
    ld e, h
    call c, Call_00a_6ba9

jr_00a_6276:
    daa
    rst $38
    sub d
    ld a, a
    rst $38
    and l
    ld e, a
    ld b, h
    cp e
    sbc c
    and $48
    cp a
    rst $38
    xor c
    xor a
    sub h
    sbc a
    ld l, c
    cp $d4
    rst $38
    rst $00
    jr nc, @+$01

    add d
    ld [bc], a
    ld [bc], a
    rra
    dec a
    dec sp
    dec a
    ld l, [hl]
    xor c
    rst $38
    call c, Call_00a_6003
    sbc e
    cp l
    ld c, [hl]
    ld a, e
    xor h
    rst $38
    or l
    ld c, e
    ld e, e
    and l
    scf
    adc $df
    ld d, d
    rst $38
    ld l, a
    xor c
    push hl
    and b
    halt
    ld d, c
    inc a
    adc e
    rst $38
    cp [hl]
    ld d, c
    rst $28
    inc e
    ld e, h
    and e

jr_00a_62ba:
    ei
    ld b, $ff
    rst $30
    ld c, $b1
    ld c, [hl]

jr_00a_62c1:
    ei
    inc b
    rst $20
    jr jr_00a_62c1

    rst $28
    db $10
    jp nz, Jump_00a_603d

    rst $28

jr_00a_62cc:
    ld [hl], b
    adc l
    ld [hl], d
    cp a
    rst $18
    jr nz, jr_00a_62ba

    jr jr_00a_62cc

    ld [$41c1], sp
    add hl, hl
    cp $00
    ld [hl+], a
    inc de
    rst $28
    and l
    ld a, d
    ld b, h
    cp a
    adc b
    rst $38
    ld [hl], a
    ld b, e
    cp a
    scf
    rst $08
    xor c
    ld d, a
    inc d
    rst $38
    ei
    ld hl, $26df
    rst $38
    sub a
    rst $38
    ld a, c
    rst $38
    ei
    ld e, [hl]
    rst $38
    ld [hl], b
    ld a, h
    add hl, hl
    sbc $46
    rst $38
    cp c
    sub e
    rst $28
    inc h
    rst $38
    db $db
    rst $38
    cp a
    cp a
    cp a
    xor d
    ei
    rst $10
    rst $18
    xor c
    ld [bc], a
    inc h
    add d
    rst $38
    ld a, a
    sub h
    ei
    ld h, b
    rst $38
    push de
    ld a, [$ff78]
    ld a, a
    ld a, a
    add b
    ld a, [$807a]
    ld a, a
    add b
    rst $38
    nop
    add b
    ld a, [de]
    push af
    ld [hl], l
    ld a, d
    add l
    ret nz

    rst $38
    ld d, d
    cp $01
    ld b, c
    ld b, b
    ld bc, $01fe
    rst $38
    nop
    ld bc, $2548
    inc h
    add d
    ld a, l
    ld bc, $d0ff
    ld b, b
    cp a
    add hl, bc
    or $26
    reti


    add e
    rst $38
    ld a, l
    and [hl]
    ld e, e
    ld c, d
    or a
    dec e
    and $51
    db $fd
    xor d
    ld bc, $e138
    sbc [hl]
    ld a, a
    add b
    ret z

    ld a, a
    cp a
    rst $38
    nop
    ld [hl], b
    rst $38
    rst $38
    nop
    ld bc, $2702
    rst $38
    reti


    cp $01
    rlca
    cp $ff
    nop
    ld e, b
    cp $00
    ld bc, $c33c
    add e
    ld a, h
    ld h, c
    sbc [hl]
    call c, $a3ff
    and b
    rst $18
    ld d, d
    db $ed
    db $fd
    ld h, d
    xor h
    rst $38
    ld [hl], e
    ld l, d
    rst $38
    ld a, [bc]
    dec bc
    or [hl]
    or [hl]
    add hl, bc
    rst $38
    dec bc
    add e
    inc bc
    add [hl]
    ld b, $8b
    dec bc
    rst $38
    rst $38
    inc b
    xor c
    rst $10
    ld b, $f9
    and c
    cp $5a
    rst $38
    ld a, a
    jp nc, $28fd

    rst $38
    push bc
    ld a, [$ffc8]
    scf
    ld a, a
    add b
    pop af
    ld [hl], c
    or e
    ld a, a
    ld l, e
    rst $38
    sub h
    rst $08
    ld a, a
    db $e4
    ld h, [hl]
    halt
    adc c
    jp nc, Jump_00a_7eff

    cp $01
    daa
    and $69
    ld a, h
    ld e, d
    rst $38
    and l
    scf
    cp $49
    ld a, d
    sbc d
    ld h, l
    ld h, l
    add a
    ld l, [hl]
    ld e, h
    and e
    ld h, c
    ld c, c
    ld h, a
    ld d, b
    ld h, e
    ld c, c
    ld h, a
    ld d, c
    ld l, a
    rst $28
    xor b
    ld a, [de]
    cp $77
    inc b
    ld c, e
    db $fc
    inc bc
    cp [hl]
    ld a, a
    ld b, c
    set 1, e
    ldh [$ff60], a
    ei
    nop
    ld h, a
    ld c, l
    ld a, a
    dec [hl]
    dec [hl]
    add hl, bc
    ld a, [bc]
    cp $40
    ld l, l
    ld h, [hl]
    ld c, l
    rst $38
    db $fd
    jp Jump_000_0ec5


    adc l
    adc $db
    or h
    rst $38
    ld l, h
    sub e
    ld e, l
    and d
    adc a
    ld [hl], b
    sbc e
    ld h, h
    cp a
    ei
    ld a, e
    ld a, l
    add d
    pop hl
    ld [hl], a
    ld h, b
    ld c, d
    nop
    rst $38
    ld d, a
    cp c

jr_00a_6412:
    rst $38
    ld bc, $807f
    ld hl, $df20
    and d
    ld e, l
    ld b, c
    ld l, b
    rst $38
    ldh [$ff0c], a
    ldh [c], a
    sbc l
    rst $38
    rst $38
    add b
    cp $01
    ld h, $d5
    ld [$ff1d], a
    dec hl
    call z, $2bcc
    or [hl]
    ld a, e
    rst $10
    ld e, b
    ld a, a
    cp a
    scf
    db $fc
    inc b
    rlca
    rst $38
    or c
    ld h, b
    rrca
    rst $30
    db $e3
    rst $38
    ld l, a
    ret nz

    rrca
    ld e, h
    rst $18
    ld [hl], c
    ld a, a
    ld [hl], a
    ret c

    rst $38
    add h
    ld h, b
    db $10
    or $ff
    db $ed
    ret nz

    db $10
    rst $38
    rst $30
    rst $38
    or e
    or e
    call c, Call_00a_7693
    cp c
    rst $38
    rst $18
    jr c, jr_00a_6412

    pop de
    ld [hl], $d5
    jp hl


    jr @+$01

    ld a, c
    add sp, -$49
    db $ec
    sub l
    db $eb
    ld h, b
    sbc a
    rst $38
    add l
    ld a, a
    ld e, d
    cp $4b
    cp a
    inc d
    rst $38
    rst $38
    and e
    ld e, a
    inc de
    db $ec
    ld d, [hl]
    rst $38
    ld d, b
    ret nc

    rst $38
    ld l, l
    ld l, l
    sub b
    ret nc

    pop bc
    ret nz

    ld h, c
    ld h, b
    rst $38
    pop de
    ret nc

    rst $38
    jr nz, @-$1a

    ld h, [hl]
    ld d, [hl]
    xor c
    rst $38
    adc b
    add hl, de
    ret


    ld l, a
    ld [hl], d
    adc l
    and $67
    db $fd
    call nc, Call_000_18e0
    sbc e
    ld a, [$35ca]
    ld l, l
    xor $ff
    ld d, e
    ld [hl], d
    xor [hl]
    ld d, c
    ld d, a
    ld e, [hl]
    push de
    or $ff
    cp $01
    rst $38
    nop
    pop de
    ld l, $b2
    ld l, l
    cp a
    db $ed
    ld [hl], e
    call z, $9b73
    ld h, h
    ret nz

    ld h, b
    jr nc, @+$01

    rst $38
    nop
    sub e
    ld l, h
    sbc l
    ld l, [hl]
    ld l, l
    sbc [hl]
    rst $38
    and a
    ld e, b
    ld sp, hl
    ld b, $ef
    db $10
    db $fd
    ld b, $bc
    rrca
    ld b, d
    rlca
    ld b, d
    add l
    ld a, d
    jr nz, @-$1f

    dec bc
    ld [bc], a
    jr nz, @-$41

    rst $18
    dec c
    ld b, h
    rst $38
    rst $38
    adc a
    cp a
    ldh a, [$ff59]
    db $fd
    db $fd
    rst $10
    ld [hl], b
    ld e, d
    cp $fe
    xor a
    xor a
    ld a, a
    rst $38
    rst $38
    pop hl
    push af
    rst $38
    rst $38
    ccf
    ccf
    rst $38
    rst $38
    ld b, a
    db $e3

Jump_00a_64ff:
    db $e3
    ccf
    and b
    ld bc, $2580
    nop
    ld e, b
    or d
    nop
    ld e, b
    rst $38
    ld d, [hl]
    cp c
    sbc c
    and $4d
    cp [hl]
    inc h
    db $db
    rst $38
    sbc e
    ld a, h
    ccf
    ret nz

    pop hl
    add c
    add b
    ld b, b
    cp a
    pop bc
    ld b, c
    ld c, a
    rst $08
    ld h, e
    db $fc
    ld bc, $e602
    rst $38
    add hl, de
    ldh a, [c]
    db $dd
    ld d, c
    ld l, [hl]
    adc $f1
    add l
    rst $30
    ld a, [$f837]
    db $fd
    ld l, $6c
    sbc a
    xor c
    sbc $ff
    ld a, [hl+]
    db $dd
    and e
    ld e, l
    jp $473d


    cp c
    rst $38
    rst $00
    cp c
    add a
    ld a, c
    sub c
    sbc a

jr_00a_6549:
    add hl, de
    rra
    rst $38
    jr jr_00a_656d

    jr c, @+$41

    ld [hl], d
    ld a, l
    ldh a, [c]
    db $fd
    rst $38
    ld h, d
    ld a, l
    add $f9
    ld a, a
    pop hl
    dec a
    db $e3
    rst $38
    inc a
    db $e3
    jr c, jr_00a_6549

    ccf
    rst $20
    scf
    rst $28
    rst $38
    ccf
    rst $28
    ld a, $ef
    inc d
    db $eb

jr_00a_656d:
    dec de
    db $ec
    rst $38
    add hl, bc
    or $04
    ei
    ld [bc], a
    db $fd
    add c
    ld a, [hl]
    cp $21
    nop
    cp a
    ld [hl], b
    rst $08
    ld [hl], b
    sbc a
    ld h, b
    rst $30
    rst $38
    ld [$1cef], sp
    or c
    ld c, [hl]
    xor c
    halt
    sbc a
    rst $38
    ld h, b
    pop af
    ld c, $fd
    ld [bc], a
    ei
    inc b
    dec [hl]
    rst $38
    adc $33
    call z, $06fd
    jp hl


    halt
    adc a
    rst $38
    ld [hl], b
    ld b, d
    cp l
    dec d
    ld [$d02f], a
    cp [hl]
    rst $38
    ld b, c
    rst $30
    ld [$a35f], sp
    ld a, $c4
    ld e, h
    rst $38
    xor b
    sbc d
    ld h, l
    xor l
    ld d, d
    rst $38
    add b
    rst $28
    rst $38
    sub h
    rst $38
    db $fd
    rlca
    rlca
    ld bc, $7c01
    rst $38
    ld a, h
    ld l, l
    sub d
    or d
    ld c, l
    ld a, [hl]
    add c
    rst $30
    rst $38
    ld a, [bc]
    rst $28
    ld [de], a
    rst $38
    push af
    ret nz

    ret nz

    ld a, $ff
    ld a, $20
    rst $18
    ld a, [hl+]
    push de
    db $e4
    dec de
    ld e, l
    rst $38
    and d
    db $fc
    inc bc
    ld a, [$7ec5]
    ld [hl], c
    add hl, sp
    rst $38
    ld [hl], $f8
    ld hl, sp-$01
    rst $38
    cp b
    cp $ff
    rst $38
    rst $38
    jp nz, $ffcb

    rst $38
    rra
    rra
    rst $38
    rst $28
    rst $38
    rst $20
    rst $20
    rst $38
    ld [hl+], a
    db $10
    rst $38
    rst $38
    rst $00
    rst $38
    rst $20
    db $fc
    db $fc
    sbc a
    rst $38
    ld l, $d9
    ret


    rst $38
    ld sp, $e119
    cp c
    ld l, c
    ld e, d
    xor e
    sbc [hl]
    rst $38
    ld l, a
    ld e, [hl]
    xor a
    dec a
    adc $ce
    pop af
    inc e
    rst $38
    ldh [c], a
    add b
    ldh a, [rNR10]
    ldh a, [rNR23]
    ld hl, sp+$0f
    rst $38
    rst $38
    rlca
    rst $38
    ld [hl], e
    rst $38
    ld b, b
    rst $08
    ld c, b
    rst $38
    ld c, a
    ld a, b
    ld a, a
    ld [hl], e
    ld a, a
    db $f4
    db $fc
    ld [hl], a
    rst $18
    rst $38
    ld a, e
    rst $30
    ld a, l
    db $e3
    ld bc, $6936
    sub [hl]
    rst $38
    cp d
    rst $00
    or h
    db $db
    and d
    db $dd
    cp l
    jp nz, $28ff

    rst $10
    adc a
    ld [hl], c
    adc l
    ld [hl], e
    adc h
    ld [hl], e
    rst $28
    ldh [$ff1f], a
    ld e, h
    and e
    ld bc, $361a
    rst $08
    rst $00
    rst $38
    ld hl, sp-$79
    ld hl, sp+$0f
    ldh a, [rIF]
    ldh a, [$ff0c]
    rst $38
    di
    dec bc
    db $f4
    add l
    ld a, d
    ld a, b
    add a
    rrca
    rst $30
    cp $0d
    cp $00
    scf
    cp $00
    rst $38
    add b
    cp $c0
    jr c, jr_00a_66b3

    rst $08
    and c
    ld e, [hl]
    pop hl
    ld e, $e1
    ld a, a
    ld e, $c6
    add hl, sp
    cp h
    ld b, e
    ld h, d
    cp l
    ld bc, $005e
    ld [$2f00], sp
    ld bc, $001f
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

jr_00a_66b3:
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
    ldh [$ff1f], a
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    and l
    nop
    and e
    ld e, h
    rst $38
    rst $38
    nop
    jp $cb3c


    ld c, h
    ldh a, [c]
    ld a, l
    adc [hl]
    rst $38
    ld [hl], c
    ret


    ld [hl], $83
    ld a, d
    ld [hl], l
    ld a, [$ffb7]
    ld a, b
    ld sp, hl
    inc b
    dec sp
    or [hl]
    ld b, l
    ld a, d
    or a
    rst $38
    ld hl, sp+$7d
    and d
    ld d, l
    xor b
    scf
    ret


    ld l, a
    rst $38
    sub c
    rlca
    ei
    rst $18
    inc hl
    scf
    bit 3, a
    rst $38
    and e
    ld c, a
    or e
    cpl
    db $d3
    cp $ff
    ld h, l
    rst $38
    ld l, l
    rst $38
    rst $38
    cp $fe
    rst $38
    rst $38
    rst $10
    rst $28
    rst $10
    db $fc
    db $fd
    rst $38
    stop
    db $e3
    rst $20
    rst $38
    rst $28
    rst $38
    cp a
    cp a
    db $eb
    or b
    nop
    ld a, a
    ld a, a
    push af
    rst $38
    push af
    call z, $f5b3
    adc d
    ld [$d195], a
    rst $38
    xor [hl]
    ld a, [$f885]
    add a
    db $f4
    adc e
    add sp, $7f
    rla
    rst $38
    add b
    ld a, a
    add b
    rst $38
    nop
    daa
    nop
    ei
    rst $20
    add hl, de
    jp hl


    nop
    rst $38
    nop
    ld b, b
    cp a
    ld [$f7ff], sp
    ld h, $d9
    add e
    ld a, h
    cp l
    ld b, e
    ld [hl], a
    rst $38
    adc a
    or a
    ld h, a
    rst $30
    ld l, a
    inc h
    db $db
    add e
    rst $38
    ld a, h
    ccf
    ret nz

    rst $38
    rra
    rst $38
    rst $18
    rst $28
    rst $18
    rst $08
    rst $28
    rst $18
    cp a
    rst $18
    ld bc, $fe02
    ld bc, $ffff
    ld hl, sp-$01
    ei
    rst $30
    di
    push de
    ei
    ei
    db $fd
    ei
    ld bc, $2102
    sbc $dc
    inc hl
    ld hl, sp-$01
    rst $00
    cp $f1
    rst $28
    and $ef
    or $d9

jr_00a_678a:
    rst $38
    ld l, a

jr_00a_678c:
    jp c, $f96f

    ld l, a
    db $d3
    ld h, a
    or l
    rst $38
    cpl
    cp c
    ld l, a
    cp d
    ld l, a
    sub d
    ld l, a
    db $eb
    rst $38
    rst $18
    rst $20
    rst $18
    push hl
    rst $08
    ld h, l
    rst $18
    xor b
    rst $38
    rst $18
    ld a, [hl+]
    rst $18
    jr nz, jr_00a_678a

    jr z, jr_00a_678c

    ld d, a
    rst $38
    ei
    ld d, [hl]
    ei
    ld d, l
    di
    inc d
    ei
    inc d
    rst $38
    ei
    dec h
    ei
    and h
    ei
    add [hl]
    ei
    ld l, a
    rst $38
    or $ed
    or $6f
    or $cf
    and $49
    rst $38
    db $f4
    ld e, c
    or $1b
    or $8f
    or $b4
    rst $38
    ld c, a
    and h
    ld e, a
    jp z, $db2d

    inc a
    db $eb
    rst $38
    inc e
    and l
    ld e, c
    or [hl]
    cpl
    db $db
    ld h, [hl]
    ld d, c
    rst $38
    xor h
    res 6, [hl]
    ld c, c
    ld a, [hl-]
    xor l
    xor $45
    rst $38
    xor [hl]
    ld d, l
    cp [hl]
    inc de
    db $fc
    dec bc
    db $f4
    dec d
    rst $38
    db $eb
    ld c, l
    or e
    rrca
    di
    ccf
    jp $ff67


    sbc e
    sbc a
    ld h, e
    rrca
    ldh a, [c]
    ld [hl], a
    adc e
    rst $20
    or $e0
    ld c, $87
    xor a
    add c
    rrca
    di
    rst $30
    ccf
    ccf
    rst $38
    ld sp, hl
    rst $38
    rra
    rra
    rst $38
    rst $38
    dec de
    ld a, a
    rst $38
    rst $38
    rst $38
    ld c, a
    rst $18
    rst $38
    rst $38
    db $fc
    db $fc
    rst $38
    rst $38
    rst $38
    jp c, $e525

    sbc d
    and $99
    rst $38
    ldh a, [c]
    adc l
    push hl
    sbc d
    db $f4
    set 7, c
    add $ff
    ldh [c], a
    sbc l
    ld a, a
    add b
    cp a
    ret nz

    cp a
    ret nz

    ld sp, hl
    ld a, a
    ld h, d
    db $10
    and b
    db $10
    add b
    cp $01
    cp $00
    inc bc
    rst $38
    ld bc, $1121
    ld h, b
    dec c
    ret nz

    nop
    rra
    nop
    rra
    nop
    ld l, c
    nop
    rst $38
    ccf
    pop bc
    ld b, c
    add d
    or b
    ld sp, $31b0
    rst $38
    add b
    ld b, e
    ld b, e
    cp h
    add hl, sp
    add $2f
    pop de
    rst $38
    adc c
    or $a9
    or $a3
    ld a, h
    and d
    ld a, l
    rst $38
    jp nz, Jump_00a_527d

    db $fd
    jp $46fc


    ld sp, hl
    ld hl, sp+$2f
    inc bc
    rra
    nop
    ld l, c
    nop
    sub [hl]
    ld l, e
    or b
    ld b, e
    or h
    rst $38
    ld h, a
    push af
    ld l, [hl]
    sub c
    ld l, [hl]
    or d
    ld c, l
    rst $10
    rst $38
    jr z, jr_00a_68d4

    rst $00
    bit 6, h
    adc a
    or b
    xor l
    rst $38

jr_00a_689d:
    jp nc, $d6a5

    xor l
    sbc $7b
    adc h
    ld d, d
    rst $38
    xor l
    adc h
    ld [hl], e
    ccf
    pop bc
    rst $08
    jr nc, @+$21

    rst $38
    ldh [$ffb7], a
    ld c, b
    ld d, e
    xor h
    sbc l
    ld h, d
    ld b, e
    rst $30
    cp h
    ld [hl], $c9
    ld hl, $ff1f
    nop
    ld [$ff15], a
    rst $10
    jr z, jr_00a_6932

    sub d
    ld e, a
    and b
    ld c, c
    or [hl]
    cp $20
    jr nz, jr_00a_689d

    rst $38
    nop
    or l
    ld c, d
    db $eb
    inc d

jr_00a_68d4:
    rst $38
    ld [hl], l
    adc d
    dec de
    db $e4
    ld [hl], $c9
    ldh a, [$ff8f]
    rst $38
    ei
    inc b
    ldh a, [c]
    dec c
    push de
    ld a, [hl+]
    xor d
    ld d, l
    cp a

jr_00a_68e7:
    sub c
    ld l, [hl]
    ld c, [hl]

jr_00a_68ea:
    or c
    and h
    ld e, e
    ld bc, $fd20
    rst $38
    ld [bc], a
    rst $18
    jr nz, jr_00a_68ea

    ld a, [bc]
    swap l
    or h
    rst $30
    ld l, e
    ld b, d
    cp l
    ld b, b
    rrca
    ld bc, $08f7
    cp a
    rst $38

jr_00a_6904:
    ld b, b
    ld h, a
    sbc b
    add hl, de
    and $e6
    ld a, c
    ld d, $f1
    rst $28
    cpl
    add hl, bc
    rra
    nop
    ld l, c
    nop
    dec a
    rst $08
    db $dd
    cpl
    rst $38
    dec de
    rst $28
    xor a
    ld e, c
    ld a, l
    sub h
    cp c
    ld d, b
    rrca
    ld a, a
    sbc c
    dec l
    rst $18
    cpl
    ld [bc], a
    rra
    nop
    rra
    nop

jr_00a_692c:
    add a
    nop
    rst $30
    ld b, h
    cp a
    adc b

jr_00a_6932:
    nop
    jr z, jr_00a_68e7

    ld a, l
    and l
    ld e, d
    rst $38
    ld e, d
    or c
    sbc l
    ldh [c], a

jr_00a_693d:
    ld c, d
    or b
    inc h
    db $db
    db $fd
    sbc e
    nop
    ld h, $9c
    db $e3
    ret z

    scf
    or [hl]
    ld bc, $6dff
    add d
    call nc, $3f03
    nop
    ld b, b
    nop
    ld a, a
    cp a
    ccf
    or b
    ccf
    xor a
    jr nc, jr_00a_6904

    ld [hl+], a
    nop
    pop hl
    rst $38
    jr nc, jr_00a_6966

    db $10
    db $10
    ld b, b
    db $10

jr_00a_6966:
    jp $fc04


    nop
    ld [bc], a
    rst $38
    nop
    db $fd
    cp $0d
    cp $f5
    ld b, $15
    db $fc
    ld [hl+], a
    nop
    ld h, e
    ld [bc], a
    xor a
    jr nc, jr_00a_692c

    jr nc, jr_00a_693d

    ccf
    rst $00
    ld b, b
    ccf
    ccf
    inc d
    rlca
    ld h, a
    inc bc
    ld h, e
    ld [bc], a
    push af
    ld b, $ff
    dec c
    ld c, $fd
    cp $02
    db $fc
    db $fc
    nop
    rst $38
    cp a
    cpl
    cp [hl]
    ld l, a
    rst $10
    ld l, a
    rst $10
    ld h, a
    rst $18
    or [hl]
    cpl
    or a
    ld l, a
    sbc [hl]
    jr nz, jr_00a_69d1

    ei
    rst $18
    rst $38
    cp d
    rst $18
    and [hl]
    rst $08
    rst $20
    rst $18
    db $ed
    rst $18
    db $fd
    rst $28
    and b
    inc l
    db $eb
    rst $18
    rst $18
    ei
    rst $38
    ei
    db $fd
    rst $10
    and b
    cpl
    push de
    ei
    ld b, l
    ei
    dec b
    ei
    rst $38
    sub [hl]
    ei
    db $fd
    db $f4
    db $fd
    or $ff
    or $f7
    db $ed
    and $ad

jr_00a_69d1:
    add b
    nop
    cp a

jr_00a_69d4:
    or $eb
    or $ff
    ret nc

    ld l, a
    sub d
    ld h, a
    sub b
    cpl
    sub a
    ld l, b
    rst $38
    cp b
    ld b, a
    ret nz

    ccf
    ld h, b
    sbc a
    ccf

jr_00a_69e8:
    ret nz

    rst $38
    ld h, d
    rst $08
    ld h, b

Jump_00a_69ed:
    rst $18
    ccf
    ret nz

    ldh [$ff1f], a
    rst $38
    jr nz, jr_00a_69d4

    ld h, b
    rst $18
    jr nc, jr_00a_69e8

    rst $38
    nop
    rst $38
    ld h, $f3
    inc b
    ei
    db $fc
    inc bc

jr_00a_6a02:
    rlca
    ld hl, sp-$01
    inc c
    ei
    inc c
    ei
    jr jr_00a_6a02

    rst $38
    nop
    rst $38
    adc e
    or $09
    and $09
    db $f4
    jp hl


    ld d, $ff
    dec e
    ldh [c], a
    inc bc
    db $fc
    dec c
    ld a, [$07f8]
    rst $38
    inc a
    ret nz

    sbc $2c
    rra
    and $af
    ld [hl], c
    rst $38
    ld e, e
    xor d
    cp [hl]
    ld e, c
    ld a, e
    add h
    ld [hl], $cf
    rst $38
    ld a, l
    inc bc
    or [hl]
    dec d
    db $dd
    ld [bc], a
    ld a, [$ff47]
    ld a, h
    inc hl
    and $25
    cp a
    ld b, [hl]
    ld c, [hl]
    or c
    ldh [$ff63], a
    rrca
    ld h, a
    nop
    ld h, e
    ld c, $67
    nop
    inc bc
    add hl, de
    xor e
    ld e, a
    ld a, a
    rst $38
    sbc a
    cp a
    ld e, a
    ld a, l
    sbc a
    dec hl
    rst $18
    db $fd
    rst $38
    add d
    xor c
    or $ab
    db $f4
    and e
    db $fc
    ld c, d
    rst $38
    push af
    ld c, d
    push af
    rst $00
    ld hl, sp+$52
    db $ed
    ld b, b
    rst $38
    cp a
    dec bc
    db $f4
    daa
    db $db
    adc a
    ld [hl], b
    sub b
    rst $38
    ld h, b
    ld l, $ce
    ld e, a
    sbc a
    sbc a
    rra
    db $f4
    rst $38
    dec bc
    rst $38
    ldh a, [rIF]
    db $fc
    di
    ld a, [hl]
    ld a, e
    rst $38
    ld e, $1b
    ld l, $0d
    ld d, $05
    ld a, [de]
    ld b, b
    rst $38
    cp a
    add hl, bc
    or $26
    reti


    sbc l
    ld h, e
    xor l
    ld a, a
    ld e, c
    ld a, l
    sbc e
    cpl
    bit 5, a
    sbc e
    ret nz

    ccf
    rst $38
    rrca
    rst $38
    rst $28
    rst $30
    rst $20
    rst $30
    rst $28
    rst $18
    rst $38
    rst $28
    db $fd
    rst $28
    ld e, l
    rst $28
    ld hl, sp+$07
    rst $38
    rst $38
    ldh a, [rIE]
    rst $30
    rst $28
    rst $20
    xor e
    rst $30
    ei
    rst $18
    rst $30
    cp a
    rst $30
    rst $38
    rst $30
    ld bc, $e142
    sbc [hl]
    rst $38
    db $fc
    jp $9bbc


    cp [hl]
    reti


    push af
    jp nc, $f4ff

    db $db
    ld a, [hl]
    sbc e
    inc [hl]
    reti


    dec l
    set 7, a
    xor [hl]
    ld e, e
    xor [hl]
    ld e, e
    ld h, h
    sbc e
    or h
    ld e, e
    rst $38
    ld h, h
    sbc c
    ld [hl], d
    rst $20
    ldh a, [c]
    rst $28
    ld d, h
    rst $28
    rst $38
    ld d, l
    rst $28
    sub b
    rst $28
    sub h
    rst $28
    ld sp, $ffe7
    or b
    rst $28
    xor d
    rst $20
    xor c
    rst $30
    jr z, @-$07

    rst $38
    ld c, d
    rst $30
    ld c, b
    rst $30
    dec c
    rst $30
    dec c
    rst $20
    rst $38
    ld [$bcf7], sp
    db $db
    ccf
    sbc b
    dec h
    jp nc, Jump_00a_64ff

    db $db
    ld l, h
    db $db
    ld a, $d9

jr_00a_6b17:
    dec l
    jp c, Jump_000_24e3

    sbc e
    cpl
    ld hl, $004b
    inc bc
    inc c
    adc [hl]
    ld [hl], a
    xor [hl]
    ld a, a
    ld d, a
    ld d, e
    xor a
    dec d
    rst $28
    ld d, l
    xor [hl]
    inc b
    inc c
    rst $38
    cp $9b
    cp $6b
    cp $87
    db $fc
    rst $38

jr_00a_6b38:
    rst $38
    ld a, b
    ld l, d
    sbc a
    db $10
    rst $28
    jr z, jr_00a_6b17

    add [hl]
    rst $38
    ld a, c
    and e
    ld e, h
    ld b, [hl]
    cp c
    add hl, de
    and $40
    rst $38
    cp a
    add [hl]
    ld sp, hl
    xor a
    ldh a, [rIF]
    ldh a, [rNR34]
    rst $38
    pop hl
    ld hl, sp+$07
    ld [hl+], a
    db $dd
    dec e
    ldh [c], a
    ld b, h
    rst $38
    cp e
    adc [hl]
    ld c, $80
    nop
    add b
    ld b, b
    ld b, b
    rst $38
    and b
    jr nc, jr_00a_6b38

    cp a
    ld b, b
    ld a, [hl]
    sbc c
    dec hl
    rst $38
    call c, $1a05 
    dec c
    ld [de], a
    dec de
    inc h
    ld a, [hl+]
    rst $38
    ld d, l
    ld [de], a
    db $ed
    ld h, d
    sbc l
    inc hl
    call c, $ffc6
    add hl, sp
    dec [hl]
    db $db
    push af
    add hl, de
    dec l
    res 5, l
    rst $38
    ld e, e
    ld h, a
    sbc e
    xor [hl]
    ld e, e
    halt
    sbc e
    ld [hl], $ff
    db $db
    db $d3
    rst $20
    di
    rst $28
    ld [hl], a
    rst $28
    or $ff
    rst $28
    or d
    rst $28
    or l
    rst $28
    ld [hl], l
    rst $28
    or e
    db $fd
    rst $28
    and c
    rrca
    xor d

Call_00a_6ba9:
    rst $30
    adc e
    rst $30
    dec bc
    rst $30
    rst $38
    dec l
    rst $30
    xor [hl]
    rst $30
    xor l
    rst $30
    db $fc
    db $db
    rst $30
    or [hl]
    sbc c
    or l
    add b
    rrca
    db $fc
    db $db
    xor [hl]
    reti


    rst $38
    cp l
    jp c, $dbb4

    inc h
    set 4, l
    ld a, [de]
    rst $38
    ld l, $d1
    or b
    ld c, a
    ld d, b
    xor a
    sub b
    ld l, a
    rst $38
    ld d, b
    xor a
    ccf
    ret nz

    rra
    ldh [$fff0], a
    rrca
    rst $30
    db $10
    rst $28
    jr nc, jr_00a_6c05

    nop
    rst $38
    nop
    ld hl, sp+$07
    rst $28
    rrca
    ldh a, [rNR23]
    rst $30
    dec h
    nop
    rst $38
    nop
    inc h
    rst $38
    db $d3
    and [hl]
    ld e, c
    ld [hl], l
    adc d
    inc c
    di
    inc e
    ld a, a
    di
    ld a, [de]
    push af
    dec e
    ldh a, [c]
    ld hl, sp+$07
    nop
    ld [$fffd], sp

jr_00a_6c05:
    inc l
    nop
    nop
    nop
    add b
    nop
    ldh [rP1], a
    rst $10
    ld hl, sp+$00
    cp $40
    nop
    ldh [$ffc0], a
    nop
    rst $38
    nop
    rst $38
    call $cf32
    jr nc, jr_00a_6c95

    adc b
    ld a, l
    sbc [hl]
    cp a
    call nc, Call_00a_4837
    cp a
    inc hl
    call c, $0301
    rst $18
    rst $38
    jr nz, @-$12

    inc de
    and [hl]
    reti


    and l
    and $6c
    rst $38
    xor a
    ld a, [$fa1d]
    ld b, $f3
    rrca
    ld hl, sp-$01
    rlca
    sbc l
    ld h, d
    rst $18
    jr nz, @-$0b

    rrca
    di
    rst $38
    rrca
    cp $01
    and d
    ld e, l
    ld h, d
    sub c
    add hl, sp
    rst $38
    ret z

    rla
    xor $bf
    ld h, a
    sbc h
    ld h, [hl]
    ld a, [de]
    rst $38
    and $db
    and l
    dec c
    set 1, c
    adc [hl]
    ld d, l
    rst $38
    cp [hl]
    db $eb
    inc d
    ld a, h
    add e
    ld e, l

jr_00a_6c68:
    and d
    rst $08
    rst $38
    jr nc, jr_00a_6c68

    inc b
    ld l, h
    xor e
    ld a, [de]
    db $fc
    ld h, a
    rst $38
    ei
    call z, $fb73
    inc c
    ldh [c], a
    dec e
    cp $ff
    ld bc, $40bf
    ld bc, $50ff

jr_00a_6c83:
    sbc a
    ret nc

    rst $38
    inc e
    or d
    ld a, e
    jr z, jr_00a_6c83

    ld d, $f7
    jr nc, @+$01

    ldh a, [$ff61]
    pop hl
    sbc e
    db $fc
    ld h, e

jr_00a_6c95:
    db $e4
    and e
    rst $38
    db $e4
    ld e, c
    cp $b9
    cp [hl]
    ld e, c
    sbc $0c
    rst $38
    cpl
    add $c7
    ld bc, $60ff
    cp a
    ret nc

    rst $38
    inc e
    jp nc, $a81b

    ld a, b
    add [hl]
    ld [hl], a
    db $10
    rst $38
    ldh a, [rWave_1]
    pop af
    sbc e
    db $fc
    ld l, e
    db $ec
    and e
    rst $38
    db $e4
    ld d, e
    db $f4
    cp c
    cp [hl]
    ld d, c
    sbc $09
    cp a
    ld l, $cc
    rst $08
    rst $38
    ld a, a
    rst $38
    ld de, $fd00
    rst $38
    rst $38
    ldh [$fffc], a
    db $e3
    ldh a, [c]
    call $cff0
    cp $e2
    nop
    rst $38
    rst $38
    ld e, a
    ld a, a
    adc a
    rst $38
    rlca
    rst $38
    ld c, a
    or c
    rla
    db $eb
    ld h, h
    sbc e
    ld h, a
    sbc c
    rst $38
    xor a
    ld d, c
    rst $38
    ld b, b
    reti


    and $d6
    db $ed
    rst $38
    or a
    call $add7
    ld l, l
    sub e
    cp l
    jp $a7ff


    reti


    ld h, [hl]
    sbc c
    ld e, d
    cp l
    db $f4
    ccf
    rst $38
    ld l, e
    or a
    res 6, a
    ld b, b
    cp a
    ld [$fff7], sp
    ld h, $d9
    add d
    ld a, l
    and c
    ld e, [hl]
    ld b, [hl]
    cp c
    rst $38
    add hl, de
    and $40
    cp a
    inc h
    db $db
    add e
    ld a, h
    rst $38
    ld hl, $1cde
    db $e3
    ret nz

    ccf
    ld [hl+], a
    db $dd
    rst $38
    dec e
    ldh [c], a
    ld b, h
    cp e
    ei
    sbc h
    ld h, e
    add h
    rst $38
    jp $e924


    ld l, $f1
    ld a, [hl-]
    and l
    ld a, [hl]
    rst $38
    and b
    ld a, l
    jp nz, $013b

    rst $38

jr_00a_6d42:
    ld d, d
    sbc l
    rst $38
    pop de
    ld e, $fe
    scf
    ld l, a
    or a
    ld e, [hl]
    and a
    rst $28
    ld a, h
    add a
    add hl, hl
    sub $03
    ld [de], a
    add sp, $17
    ld sp, hl
    rst $38
    rlca
    cp h
    ld b, e
    rst $20
    jr jr_00a_6d42

    dec de
    ld [hl], a
    rst $38
    call Call_00a_59a3
    xor h
    ld d, l
    adc d
    ld [hl], a
    set 7, a
    ld a, $dd
    xor [hl]
    ld [hl], h
    rst $08
    or c
    ld c, [hl]
    add c
    rst $38
    cp a
    jp nc, $51dd

    sbc $be
    ld [hl], a
    rst $28
    rst $38
    rst $30
    ld e, [hl]
    ld h, a
    inc a
    ld b, a
    xor c
    sub $fb
    rst $38
    sbc l
    ld h, e
    add l
    jp $e825


    cpl
    ldh a, [rIE]
    dec sp
    and h
    ld a, l
    and l
    ld a, l
    jp Jump_00a_603f


    rst $38
    ldh [$ffc5], a
    push bc
    rst $00
    rst $00
    add $c7
    ld h, [hl]
    rst $38
    rst $20
    db $e3
    db $e3
    or b
    ldh a, [rNR21]
    rst $30
    and $fa
    add b
    nop
    inc hl
    jr nz, jr_00a_6dae

jr_00a_6dae:
    ld h, [hl]
    rst $20
    add $c7
    dec l
    rst $38
    ld l, $59
    sbc $21
    pop hl
    ld h, a
    rst $20
    ld h, [hl]
    rst $38
    rst $20
    ld h, h
    rst $20
    inc h
    rst $20
    or e
    di
    sub b
    cp a
    ldh a, [rTMA]
    rst $30
    db $e4
    rst $20
    ld h, $22
    nop
    ld h, h
    rst $38
    rst $20
    call $29ce
    ld l, $53
    call c, $fff1
    rst $08
    jp nc, Jump_00a_69ed

    or $aa
    ld [hl], a
    rst $08
    rst $38
    rst $30
    sbc [hl]
    rst $20
    cp h
    rst $00
    xor c
    sub $f7
    rst $38
    sbc c
    ld a, e
    sbc l
    ei
    dec e
    jp c, $f43d

    rst $38
    dec sp
    and h
    ld e, e
    sbc d
    ld h, a
    rst $08
    inc sp
    ld [hl], d
    rst $38
    adc l
    ld [$f515], a
    jp c, $d6b9

    xor d
    rst $38
    rst $10
    ld a, c
    add a
    rst $08
    jr nc, jr_00a_6e43

    adc $56
    rst $38
    xor e
    and $1b
    ld hl, sp+$0f
    ret c

    cpl
    db $dd
    rst $38
    scf
    xor h
    ld a, e
    adc a
    ld a, b
    ld c, e
    cp h
    ld hl, $deff
    add $39
    db $10
    rst $28
    add l
    ld a, d
    ld b, d
    rst $38
    cp l
    adc h
    ld [hl], e
    ld b, e
    cp h
    jr nc, @-$2f

    xor b
    rst $38
    ld d, a
    ld b, [hl]
    cp c
    add hl, hl
    sub $98
    ld h, a
    ld b, h
    rst $38
    cp e
    add d
    ld a, l
    sbc l
    ld h, d
    ld c, b
    or a

jr_00a_6e43:
    ld c, [hl]
    rst $38
    or a
    xor d
    rst $10
    and h
    db $db
    ld h, h
    adc e
    ld c, b
    rst $38
    adc a
    jp nc, $7b1d

    or h
    xor e
    db $f4
    and h
    rst $38
    ld e, e
    and [hl]
    ld e, b
    rst $28
    ld de, $40bf
    ld e, l
    rst $38
    and $da
    jp hl


    or a
    call $cc36
    ld b, l
    rst $38
    cp d
    ld b, [hl]
    adc c
    sbc h
    inc de
    add sp, $77
    db $fd
    rst $38
    and $39
    ld h, [hl]
    ld e, b
    ld h, a
    db $db
    and l
    ld e, a
    rst $38
    ld h, b
    rst $08
    ldh a, [$ff1f]
    ldh [$ffb9], a
    ld b, [hl]
    ei
    rst $38
    inc b
    rst $08
    ldh a, [$ffcf]
    ldh a, [$ff7f]
    add b
    db $e4
    rst $38
    sbc e
    ld h, [hl]

jr_00a_6e8f:
    sbc b
    xor a
    ld d, c
    cp a
    nop
    ld e, l
    db $fd
    ld h, [hl]
    ld bc, $d603
    xor h
    ld c, a
    or e
    xor l
    db $d3
    rst $38
    and l
    db $db
    ld h, a
    adc c
    ld c, d
    adc l
    sub $1f
    rst $38
    ld a, h
    or h
    xor b
    db $f4
    ld b, $f7
    ld h, e
    sbc e
    rst $38
    ldh a, [$ff1f]
    or d
    ld e, a
    ld h, $df
    ld a, c
    add a
    rst $38
    rst $00
    jr c, jr_00a_6ef4

    rst $08
    ld d, e
    call c, $f8cf
    rst $38
    inc de
    db $f4
    ld l, c
    xor [hl]
    push af
    ld [hl], $a1
    halt
    cp a
    xor c
    ld a, [hl]
    ld c, e
    cp h
    ld b, [hl]
    or a
    ld bc, $a202
    rst $18
    ld e, a
    ld a, $c7
    ld a, [hl]
    add c
    ld bc, $4702
    ret c

    cp a
    rst $00
    ldh a, [rWX]
    xor h
    ld sp, hl
    ld a, $05
    ld [bc], a
    jr z, @+$01

    rla
    ld [hl], d
    ld l, l
    ccf
    jr nz, jr_00a_6e8f

    sbc c
    add a
    rst $38

jr_00a_6ef4:
    add e
    ret nz

    ret nz

    ldh a, [$fff0]
    rst $38
    rst $38
    rrca
    rst $38
    rst $30
    ld e, l
    and l
    db $fd
    dec b
    ld sp, hl
    add hl, de
    ld d, e
    rst $38
    ld d, e
    inc bc
    inc bc
    rrca
    rrca
    rst $38
    cp $44
    rst $38
    cp a
    sbc h
    db $e3
    dec sp
    ret c

    or h
    ld l, l
    cp e
    rst $38
    ld b, [hl]
    ld c, a
    adc b
    cp d
    rst $00
    ld l, c
    sbc c
    inc h
    rst $38
    db $db
    cp e
    ld b, h
    ld b, l
    add d
    xor b
    inc sp
    sbc $7f
    pop hl
    ei
    add d
    and a
    ld h, b
    ld [$0319], a
    jr nc, @+$01

    cp $01
    db $fd
    ld [bc], a
    db $fc
    inc bc
    db $e4
    dec de
    cp $e5
    jr nc, jr_00a_6fbf

    add b
    cp a
    ld b, b
    ccf
    ret nz

    daa
    rst $38
    ret c

    rst $38
    nop
    sbc a
    ld hl, sp+$07
    ldh [$ff83], a
    rst $30
    ld h, h
    jp hl


    ld l, $05
    add hl, bc
    scf
    call $956a
    ei
    push af
    ld a, [de]
    rlca
    dec bc
    xor $b3
    push bc
    sbc d
    dec [hl]
    rst $38
    xor d
    ld d, c
    xor $d3
    ld a, h
    cp e
    ld [hl], l
    ld l, $ff
    di
    adc l
    ld [hl], d
    rst $38
    nop
    or e
    ld c, h
    di
    rst $38
    inc c
    rla
    add sp, -$61
    ldh [rWave_d], a
    jp nz, $dfe7

    jr jr_00a_6fa8

    ret c

    ld [hl], a
    adc l
    nop
    inc bc
    jp c, $fb32

    ld e, a
    and [hl]
    inc b
    ld c, $9e
    ei
    ld b, $e3
    add d
    ld a, a
    ld h, a
    add sp, $2f
    push af
    scf
    and b
    ld [hl], a
    ld bc, $ff0e
    or l
    push af
    ld c, h
    sbc $52
    rst $38
    add h
    ld a, a
    rst $28
    and b
    ld e, a

jr_00a_6fa8:
    ld b, [hl]
    cp e
    ld bc, $8d28
    adc a
    sub b
    ld l, a
    sbc a
    ld d, a
    cp $a8
    ld [hl], b
    add hl, sp
    ld [hl+], a
    db $fd
    ld bc, $ff28
    ld e, h
    call c, Call_00a_6ba9

jr_00a_6fbf:
    daa
    rst $38
    sub d
    ld a, a
    rst $38
    and l
    ld e, a
    ld b, h
    cp e
    sbc c
    and $48
    cp a
    rst $38
    xor c
    xor a
    sub h
    sbc a
    ld l, c
    cp $d4
    rst $38
    rst $00
    jr nc, @+$01

    add d
    ld [bc], a
    ld [bc], a
    cpl
    dec a
    dec bc
    ld a, $6e
    xor c
    rst $38
    call c, Call_00a_6003
    sbc e
    cp l
    ld c, [hl]
    ld a, e
    xor h
    rst $38
    or l
    ld c, e
    ld e, e
    and l
    scf
    adc $df
    ld d, d
    rst $38
    ld l, a
    xor c
    push hl
    and b
    halt
    ld d, c
    inc a
    adc e
    rst $38
    cp [hl]
    ld d, c
    rst $28
    inc e
    ld e, h
    and e

jr_00a_7003:
    ei
    ld b, $ff
    rst $30
    ld c, $b1
    ld c, [hl]

jr_00a_700a:
    ei
    inc b
    rst $20
    jr jr_00a_700a

    rst $28
    db $10
    jp nz, Jump_00a_603d

    rst $28

jr_00a_7015:
    ld [hl], b
    adc l
    ld [hl], d
    cp a
    rst $18
    jr nz, jr_00a_7003

    jr jr_00a_7015

    ld [$41c1], sp
    add hl, hl
    cp $00
    ld [hl+], a
    inc de
    rst $28
    and l
    ld a, d
    ld b, h
    cp a
    adc b
    rst $38
    ld [hl], a
    ld b, e
    cp a
    scf
    rst $08
    xor c
    ld d, a
    inc d
    rst $38
    ei
    ld hl, $26df
    rst $38
    sub a
    rst $38
    ld a, c
    rst $38
    ei
    ld e, [hl]
    rst $38
    ld [hl], b
    ld a, h
    add hl, hl
    sbc $46
    rst $38
    cp c
    sub e
    rst $28
    inc h
    rst $38
    db $db
    rst $38
    cp a
    cp a
    cp a
    xor d
    ei
    rst $10
    rst $18
    xor c
    ld [bc], a
    inc h
    add d
    rst $38
    ld a, a
    sub h
    ei
    ld h, b
    rst $38
    push de
    ld a, [$ff78]
    ld a, a
    ld a, a
    add b
    ld a, [$807a]
    ld a, a
    add b
    rst $38
    nop
    add b
    ld a, [de]
    push af
    ld [hl], l
    ld a, d
    add l
    ret nz

    rst $38
    ld d, d
    cp $01
    ld b, c
    ld b, b
    ld bc, $01fe
    rst $38
    nop
    ld bc, $2548
    inc h
    add d
    ld a, l
    ld bc, $d0ff
    ld b, b
    cp a
    add hl, bc
    or $26
    reti


    add e
    rst $38
    ld a, l
    and [hl]
    ld e, e
    ld c, d
    or a
    dec e
    and $51
    db $fd
    xor d
    ld bc, $e138
    sbc [hl]
    ld a, a
    add b
    ret z

    ld a, a
    cp a
    rst $38
    nop
    ld [hl], b
    rst $38
    rst $38
    nop
    ld bc, $2702
    rst $38
    reti


    cp $01
    rlca
    cp $ff
    nop
    ld e, b
    cp $00
    ld bc, $c33c
    add e
    ld a, h
    ld h, c
    sbc [hl]
    call c, $a3ff
    and b
    rst $18
    ld d, d
    db $ed
    db $fd
    ld h, d
    xor h
    rst $38
    ld [hl], e
    ld l, d
    rst $38
    ld a, [bc]
    dec bc
    or [hl]
    or [hl]
    add hl, bc
    rst $38
    dec bc
    add e
    inc bc
    add [hl]
    ld b, $8b
    dec bc
    rst $38
    rst $38
    inc b
    xor c
    rst $10
    ld b, $f9
    and c
    cp $5a
    rst $38
    ld a, a
    jp nc, $28fd

    rst $38
    push bc
    ld a, [$fdc8]
    scf
    ld bc, $1f0c
    ldh [$ffbf], a
    ld c, a
    ldh a, [rWave_f]
    cp a
    ret


    halt
    sub [hl]
    add hl, hl
    sub c
    ld e, $01
    ld a, [bc]
    ld sp, hl
    rst $38
    ld b, $fe
    di
    ld c, $fd
    sub e
    ld l, [hl]
    ld l, e
    rra
    sub [hl]
    adc a
    ld a, [hl]
    ld e, h
    and e
    ld h, c
    ld c, c
    ld h, a
    ld d, b
    ld h, e
    ld c, c
    cp [hl]
    ld h, a
    ld d, c
    ld l, a
    xor b
    ld a, [de]
    cp $77
    inc b
    ld c, e
    db $fc
    rst $38
    inc bc
    cp [hl]
    ld b, c
    set 1, e
    ldh [$ff60], a
    ei
    db $fd
    nop
    ld h, a
    ld c, l
    dec [hl]
    dec [hl]
    add hl, bc
    ld a, [bc]
    cp $40
    db $fd
    ld l, l
    ld h, [hl]
    ld c, l
    db $fd
    jp Jump_000_0ec5


    adc l
    adc $ff
    db $db
    or h
    ld l, h
    sub e
    ld e, l
    and d
    adc a
    ld [hl], b
    rst $38
    sbc e
    ld h, h
    ei
    ld a, e
    ld a, l
    add d
    pop hl
    ld [hl], a
    cp $60
    ld c, d
    nop
    ld d, a
    cp c

jr_00a_7156:
    rst $38
    ld bc, $807f
    ld a, a
    ld hl, $a220
    ld e, l
    ld b, c
    ld l, b
    rst $38
    ldh [$ff0c], a
    rst $38
    ldh [c], a
    sbc l
    rst $38
    add b
    cp $01
    ld h, $d5
    rst $38
    ld [$2b1d], a
    call z, $2bcc
    or [hl]
    ld a, e

jr_00a_7176:
    rst $38
    rst $10
    ld e, b
    cp a
    scf
    db $fc
    inc b
    rlca
    rst $38
    db $dd
    or c
    ld h, b
    rrca
    db $e3
    rst $38
    ld l, a
    ret nz

    rrca
    ld e, h
    rst $18
    rst $18
    ld [hl], c
    ld a, a
    ret c

    rst $38
    add h
    ld h, b
    db $10
    or $ff
    db $fd
    db $ed
    ret nz

    db $10
    rst $30
    rst $38
    or e
    or e
    call c, $ff93
    halt
    cp c
    rst $18
    jr c, jr_00a_7156

    pop de
    ld [hl], $d5
    rst $38
    jp hl


    jr jr_00a_7224

    add sp, -$49
    db $ec
    sub l
    db $eb
    rst $38
    ld h, b
    sbc a
    add l
    ld a, a
    ld e, d
    cp $4b
    cp a
    rst $38
    inc d
    rst $38
    and e
    ld e, a
    inc de
    db $ec
    ld d, [hl]
    rst $38
    rst $38
    ld d, b
    ret nc

    ld l, l
    ld l, l
    sub b
    ret nc

    pop bc
    ret nz

    rst $38
    ld h, c
    ld h, b
    pop de
    ret nc

    rst $38
    jr nz, jr_00a_7176

    inc sp
    rst $38
    adc b
    ld l, $a2
    dec sp
    ret z

    ld l, [hl]
    and d
    ld a, e
    rst $38
    ld c, b
    xor [hl]
    or a
    rst $08
    ld c, a
    or b
    rst $30
    cp $ff
    adc e
    xor $23
    cp d
    adc e
    xor $25
    cp [hl]
    rst $38
    adc d
    db $ed
    db $ed
    ldh a, [c]
    db $f4
    dec bc
    rst $38
    nop
    rst $38
    pop de
    ld l, $b2
    ld l, l
    db $ed
    ld [hl], e
    call z, $fb73
    sbc e
    ld h, h
    ret nz

jr_00a_7205:
    ld h, b
    jr nc, @+$01

    nop
    sub e
    ld l, h
    rst $38
    sbc l
    ld l, [hl]
    ld l, l
    sbc [hl]
    and a
    ld e, b
    ld sp, hl
    ld b, $cf
    rst $28
    db $10
    db $fd
    ld b, $0f
    ld b, d
    rlca
    ld b, d
    add l
    ld a, d
    db $db
    jr nz, @-$1f

    dec bc
    ld [bc], a

jr_00a_7224:
    jr nz, jr_00a_7205

    dec c
    ld b, h
    rst $38
    rst $38
    db $db
    adc a
    cp a
    ldh a, [$ff59]
    db $fd
    rst $10
    ld [hl], b
    ld e, d
    cp $fe
    rst $38
    xor a
    xor a
    ld a, a
    rst $38
    pop hl
    push af
    rst $38
    rst $38
    ld a, a
    ccf
    ccf
    rst $38
    rst $38
    db $e3
    db $e3
    ccf
    and b
    ld bc, $43ff
    cp h
    dec c
    di
    dec sp
    rst $00
    sub a
    ld l, a
    rst $38
    or a
    ld c, a
    ld d, e
    xor a
    dec e
    db $e3
    ld l, a
    sbc h
    rst $38
    db $e4
    dec de
    db $d3
    db $ec
    db $ed
    ldh a, [c]
    di
    db $fc
    or a
    db $fd
    cp $fe
    ld d, b
    ld [de], a
    cp $ff
    ld bc, $af5a
    rst $38
    ld d, b
    sub e
    ld l, a
    xor a
    ld e, a
    ld e, a
    cp a
    ld e, a
    rst $30
    cp a
    cp a
    ld a, a
    ld bc, $e35a
    inc e
    inc a
    jp $9bff


    rst $20
    adc a
    rst $30
    rst $10
    rst $28
    sbc a
    rst $28
    ld a, a
    ld b, b
    cp a
    ld a, b
    add a
    adc a
    ld [hl], b
    db $fc
    ld [hl], h
    ld e, a
    ei
    rst $38
    rst $38
    ld bc, $a15c
    ld e, [hl]
    ld a, h
    add e
    adc a
    rst $38
    ldh a, [$ffc3]
    db $fc
    db $e3
    db $fc
    pop hl
    cp $47
    rst $38
    cp b
    ld [$37f7], sp
    rst $08
    rst $18
    ccf
    cp a
    rst $38
    ld a, a
    rst $38
    ld a, a
    ld [hl], d
    rst $38
    rst $28
    rst $38
    and h
    ei
    ld e, e
    ld b, e
    ld b, b
    ld c, a
    sbc h
    db $e3
    ret z

    rst $30
    jp z, $f5ff

    push hl
    ld a, [$fb64]
    cp a
    ld [hl], b
    rst $08
    rst $38
    ld [hl], b
    sbc a
    ld h, b
    rst $30
    ld [$1cef], sp
    or c
    rst $38
    ld c, [hl]
    xor c
    halt
    sbc a
    ld h, b
    pop af
    ld c, $fd
    rst $38
    ld [bc], a
    ei
    inc b
    dec [hl]
    adc $33
    call z, $fffd
    ld b, $e9
    halt
    adc a
    ld [hl], b
    ld b, d
    cp l
    dec d
    rst $38
    ld [$d02f], a
    cp [hl]
    ld b, c
    rst $30
    ld [$ff5f], sp
    and e
    ld a, $c4
    ld e, h
    xor b
    sbc d
    ld h, l
    xor l
    rst $38
    ld d, d

jr_00a_7304:
    rst $38

jr_00a_7305:
    add b
    rst $28
    sub h
    rst $38
    db $fd
    rlca
    rst $38
    rlca
    ld bc, $7c01
    ld a, h
    ld l, l
    sub d
    or d
    rst $38
    ld c, l
    ld a, [hl]
    add c
    rst $30
    ld a, [bc]
    rst $28
    ld [de], a
    rst $38
    rst $38
    push af
    ret nz

    ret nz

    ld a, $3e
    jr nz, jr_00a_7304

    ld a, [hl+]
    rst $38
    push de
    db $e4
    dec de
    ld e, l
    and d
    db $fc
    inc bc
    ld a, [$c5ff]
    ld a, [hl]
    ld [hl], c
    add hl, sp
    ld [hl], $f8
    ld hl, sp-$01
    rst $38
    rst $38
    cp b
    cp $ff
    rst $38
    jp nz, $ffcb

    rst $38
    rst $38
    rra
    rra
    rst $38
    rst $38
    rst $20
    rst $20
    rst $38
    cp $22
    db $10
    rst $38
    rst $38
    rst $00
    rst $20
    db $fc
    db $fc
    sbc a
    rst $28
    rst $38
    ld e, [hl]
    cp a
    rst $38
    ret nz

    add hl, bc
    sbc a
    ld a, a
    adc [hl]
    rst $38
    ld a, a
    ret nc

    ccf
    ld h, h
    sbc e
    scf
    rst $08
    cp [hl]
    rst $38
    ld a, a
    cp a
    ld a, a
    sbc $bf
    ld c, l
    cp a
    add $ff
    cp a
    ld h, b
    sbc a
    reti


    ld h, $6e
    sub c
    sbc a
    rst $38
    ld a, a
    ld b, [hl]
    cp a
    ld h, c
    sbc [hl]
    ld a, d
    add l
    rst $00
    rst $30
    jr c, jr_00a_7305

    ld h, b
    or b
    ld a, c
    nop
    xor a
    rst $18
    cpl
    rst $38
    rst $18
    ld h, a
    sbc a
    ldh [c], a
    rra
    ld sp, $4fcf
    rst $20
    jr nc, jr_00a_7398

jr_00a_7398:
    rlca
    nop
    ld a, h
    ldh a, [$ff6f]
    rst $30
    rst $38
    xor l
    rst $18
    rst $38
    ld b, b
    rst $38
    db $10
    rst $28
    ldh [$ff7b], a
    rst $38
    pop af
    rst $38
    cp $e1
    cp $d3
    db $fc
    sub a

jr_00a_73b1:
    add sp, $3f
    rst $30
    ret nz

    ldh [rNR34], a
    sub b
    ld a, h
    nop
    rst $18
    rst $38
    cp a
    rst $38
    rst $38

Jump_00a_73bf:
    cp a
    ld a, a
    ccf
    rst $38
    inc e
    rst $38
    ret nz

    rst $38
    ccf
    ld b, b
    ccf
    daa
    jr jr_00a_73b1

    ei
    ldh [c], a
    rst $38
    db $fd
    adc a
    ldh a, [$ff2e]
    pop de
    ld d, $e9
    ld l, $1f
    pop de
    ld e, l
    and d
    xor b
    ld d, a
    nop
    ld [$2f00], sp
    ld bc, $001f
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
    ldh [$ff1f], a
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    and l
    nop
    and e
    ld e, h
    rst $38
    rst $38
    nop
    jp $cb3c


    ld c, h
    ldh a, [c]
    ld a, l
    adc [hl]
    rst $38
    ld [hl], c
    ret


    ld [hl], $83
    ld a, d
    ld [hl], l
    ld a, [$ffb7]
    ld a, b
    ld sp, hl
    inc b
    dec sp
    or [hl]
    ld b, l
    ld a, d
    or a
    rst $38
    ld hl, sp+$7d
    and d
    ld d, l
    xor b
    scf
    ret


    ld l, a
    rst $38
    sub c
    rlca
    ei
    rst $18
    inc hl
    scf
    bit 3, a
    rst $38
    and e
    ld c, a
    or e
    cpl
    db $d3
    cp $ff
    ld h, l
    rst $38
    ld l, l
    rst $38
    rst $38
    cp $fe
    rst $38
    rst $38
    rst $10
    rst $28
    rst $10
    db $fc
    db $fd
    rst $38
    stop
    db $e3
    rst $20
    rst $38
    rst $28
    rst $38
    cp a
    cp a
    db $eb
    or b
    nop
    ld a, a
    ld a, a
    push af
    rst $38
    push af
    call z, $f5b3
    adc d
    ld [$d195], a
    rst $38
    xor [hl]
    ld a, [$f885]
    add a
    db $f4
    adc e
    add sp, $7f
    rla
    rst $38
    add b
    ld a, a
    add b
    rst $38
    nop
    daa
    nop
    ei
    rst $20
    add hl, de
    jp hl


    nop
    rst $38
    nop
    ld c, a
    cp a
    ld e, a
    cp [hl]
    jr nz, jr_00a_749d

jr_00a_749d:
    cp a
    ld a, a
    cp a
    ld a, a
    sbc a
    jr nz, jr_00a_74a4

jr_00a_74a4:
    add $ff
    ccf
    cp b
    call nz, $e8d0
    ret nc

    add sp, -$38
    rst $38
    db $f4
    ret c

    db $e4
    adc b
    db $f4
    adc b
    db $f4
    db $10
    db $fd
    add sp, $26
    dec bc
    ld b, $00
    inc d
    nop
    stop
    ld [hl], l
    jr nz, @+$28

    inc c
    add b
    adc $0c
    rrca
    nop
    ld bc, $0e0a
    rst $38
    add b
    nop
    ret nz

    nop
    ld h, b
    dec sp
    rlca
    daa
    rst $28
    rra
    cpl
    rra
    ccf
    jr nz, jr_00a_74dd

jr_00a_74dd:
    ld e, a
    ccf
    ld a, a
    cp $20
    nop
    db $e4
    dec de
    cp e
    call z, $e29d
    call z, $f3ff
    add $f9
    and $f9
    db $e3
    db $fc
    jp nz, $fdff

    or h
    ld c, a
    and h
    ld e, a
    jp z, $db2d

    rst $38
    inc a
    db $eb
    inc e
    and l
    ld e, c
    or [hl]
    cpl
    db $db
    rst $38
    ld h, [hl]
    ld d, c
    xor h
    res 6, [hl]
    ld c, c
    ld a, [hl-]
    xor l
    rst $38
    xor $45
    xor [hl]
    ld d, l
    cp [hl]
    inc de
    db $fc
    dec bc
    rst $38
    db $f4
    dec d
    db $eb
    ld c, l
    or e
    rrca
    di
    ccf
    rst $38
    jp $9b67


    sbc a
    ld h, e
    rrca
    ldh a, [c]
    ld [hl], a
    db $db
    adc e
    rst $20
    ldh [$ff0e], a
    add a
    xor a
    add c
    rrca
    di
    rst $30
    rst $38
    ccf
    ccf
    ld sp, hl
    rst $38
    rra
    rra
    rst $38

jr_00a_753c:
    rst $38
    rst $38
    dec de
    ld a, a
    rst $38
    rst $38
    ld c, a
    rst $18
    rst $38
    rst $38
    rst $38
    db $fc
    db $fc
    rst $38
    rst $38
    jp c, $e525

    sbc d
    rst $38
    and $99
    ldh a, [c]
    adc l
    push hl
    sbc d
    db $f4
    set 7, a
    ld sp, hl

jr_00a_755a:
    add $e2
    sbc l
    ld a, a
    add b
    cp a
    ret nz

    rst $20
    cp a
    ret nz

    ld a, a
    ld h, d
    db $10
    and b
    db $10
    add b
    cp $01
    rst $28
    cp $00
    rst $38
    ld bc, $1121
    cp $01
    rst $38
    cp $c0
    nop
    and c
    ld e, a
    db $f4
    dec bc
    ccf
    ret nz

    sub b
    rst $20
    ld l, h
    add b
    ld b, b
    jr nz, jr_00a_7593

    jr nz, jr_00a_7588

jr_00a_7588:
    jr nz, jr_00a_755a

    ret nz

    push hl
    jr nz, jr_00a_755a

    dec c
    ld b, b
    jr nz, jr_00a_7592

jr_00a_7592:
    sub [hl]

jr_00a_7593:
    dec de
    ccf
    pop bc
    ld b, c
    rst $38
    add d
    or b
    ld sp, $31b0
    add b
    ld b, e
    ld b, e
    rst $38
    cp h
    add hl, sp
    add $2f
    pop de
    adc c
    or $a9
    rst $38
    or $a3
    ld a, h
    and d
    ld a, l
    jp nz, Jump_00a_527d

    ld e, a
    db $fd
    jp $46fc


    ld sp, hl
    jr nz, jr_00a_75cc

    jr nc, jr_00a_753c

    ld [de], a
    ldh a, [rNR42]
    nop
    jp nc, $411e

    rrca
    pop hl
    dec d
    xor a
    ld a, a
    jp c, $ff7f

    and l

jr_00a_75cc:
    ld a, a
    adc b
    ld a, a
    add $f9
    and [hl]
    ld sp, hl
    rst $38
    push bc
    ld a, [$f38c]
    ld c, h
    di
    sbc [hl]
    pop hl
    rst $38
    scf
    ret c

    ld a, d
    cp l
    sub [hl]
    ld l, e
    or b
    ld b, e
    rst $38
    or h
    ld h, a
    push af
    ld l, [hl]
    sub c
    ld l, [hl]
    or d
    ld c, l
    rst $38
    rst $10
    jr z, jr_00a_7630

    rst $00
    bit 6, h
    adc a
    or b
    rst $38
    xor l
    jp nc, $d6a5

    xor l
    sbc $7b
    adc h
    rst $38
    ld d, d
    xor l
    adc h
    ld [hl], e
    ccf
    pop bc
    rst $08
    jr nc, @+$01

    rra
    ldh [$ffb7], a
    ld c, b
    ld d, e
    xor h
    sbc l
    ld h, d
    rst $28
    ld b, e
    cp h
    ld [hl], $c9
    ld hl, $ff1f
    nop
    ld [$15ff], a
    rst $10
    jr z, jr_00a_768e

    sub d
    ld e, a
    and b
    ld c, c
    db $fd
    or [hl]
    jr nz, jr_00a_7649

    rst $08
    rst $38
    nop
    or l
    ld c, d
    db $eb
    rst $38

jr_00a_7630:
    inc d
    ld [hl], l
    adc d
    dec de
    db $e4
    ld [hl], $c9
    ldh a, [rIE]
    adc a
    ei
    inc b
    ldh a, [c]
    dec c
    push de
    ld a, [hl+]
    xor d
    ld a, a
    ld d, l
    sub c
    ld l, [hl]
    ld c, [hl]

jr_00a_7646:
    or c
    and h
    ld e, e

jr_00a_7649:
    ld bc, $ff20
    db $fd
    ld [bc], a
    rst $18
    jr nz, jr_00a_7646

    ld a, [bc]
    swap l
    rst $28
    or h
    ld l, e
    ld b, d
    cp l
    ld b, b
    rrca
    ld bc, $08f7
    rst $38
    cp a
    ld b, b
    ld h, a
    sbc b
    add hl, de
    and $e6
    ld a, c
    ccf
    ld d, $ef
    nop

jr_00a_766b:
    add b
    add b
    ld b, b
    push bc
    rrca
    ret nz

    nop
    ld a, [hl+]

jr_00a_7673:
    ld de, $022a
    ld [hl+], a
    nop
    inc bc
    jr nz, jr_00a_767b

jr_00a_767b:
    ld bc, $1d26
    inc hl
    dec c
    rst $38
    jr jr_00a_7683

jr_00a_7683:
    sbc b
    dec a
    rst $08
    db $dd
    cpl
    dec de
    rst $38
    rst $28
    xor a
    ld e, c
    ld a, l

jr_00a_768e:
    sub h
    cp c
    ld d, b
    ld a, a
    ld [hl], a

Call_00a_7693:
    sbc c
    dec l
    rst $18
    db $e4
    ld [bc], a
    ld b, $00
    inc c
    ldh [rSB], a
    ld sp, hl
    ld [hl], b
    ld a, [bc]
    ld l, $61
    db $10
    jr nc, @-$3e

    ccf
    ld [hl], c
    ld c, $cf
    ccf
    nop
    rra
    rlca
    ld b, c
    jr nz, jr_00a_76d1

    jr nz, jr_00a_766b

    ld a, [hl]
    rst $38
    sub c
    ld a, [hl]
    add e
    ld a, h
    ld c, [hl]
    or c
    cp h
    jp $9aff


    push hl
    call $d4f2
    db $eb
    ld hl, $7fde
    add $39
    ld a, a
    add b
    pop af
    ld [hl], c
    rst $38
    jr nc, jr_00a_76e9

    rst $38
    ld a, a

jr_00a_76d1:
    add b
    and $66
    xor b
    ld d, a
    ld b, [hl]
    cp c
    sbc $60
    ld a, [hl+]
    rst $20
    ld a, l
    ld a, l
    nop
    add b
    ld c, $7b
    ld a, e
    db $fd
    ccf
    ldh a, [rNR22]
    cp a
    ccf

jr_00a_76e9:
    or b
    ccf
    xor a
    jr nc, jr_00a_7673

    xor b
    ld [hl+], a
    nop
    rst $38
    jr nc, jr_00a_7728

    db $10
    db $10
    ld b, b
    db $10
    jp $fc34


    cp $f0
    ld a, [bc]
    db $fd
    cp $0d
    cp $f5
    ld b, $15
    db $fc
    ld [hl+], a
    nop
    ld h, e
    ld [bc], a
    xor a
    jr nc, @-$4e

    jr nc, @-$3f

    ccf
    rst $00
    ld b, b
    ccf
    ccf
    inc d
    scf
    ld h, a
    inc bc
    ld h, e
    ld [bc], a
    push af
    ld b, $ff
    dec c
    ld c, $fd
    cp $02
    db $fc
    db $fc
    nop
    rst $38
    add e
    ld b, h

jr_00a_7728:
    rst $08
    inc sp
    ld [hl], a
    adc a
    cp a
    ld c, a
    rst $38
    ld l, a
    sbc a
    rst $28
    rra
    ld d, l
    cp a
    ld c, a
    cp b
    rst $38
    ret nz

    ld hl, $d0e0
    ldh a, [$ffe8]
    ld hl, sp-$0c
    rst $38
    db $e4
    ld hl, sp-$0c
    ld a, [$fcea]
    jp nc, $3f7d

    nop
    adc h
    nop
    add $00
    ld h, e
    ld b, b
    dec e
    xor e
    dec l
    rst $10
    ldh [rP1], a
    inc [hl]
    ret z

    inc a
    inc bc
    push hl
    jr nc, @+$11

    nop
    or d
    ldh [$ff1f], a
    ldh [$ff80], a
    cpl
    sub h
    ld a, $01
    nop
    add c
    dec [hl]
    adc a
    cp $f0
    daa
    ld d, b
    cpl
    ccf
    nop
    ret z

    ccf
    ld a, [hl]
    rst $38
    rst $38
    adc h
    di
    or [hl]
    ret


    add hl, de
    and $28
    rst $38
    rst $10
    ld d, h
    xor e
    or d
    ld c, l
    ld a, l
    add d
    xor b
    rst $30
    rst $10
    ei
    ld a, e
    add c
    rrca
    ld hl, sp+$78
    sbc $5e
    rst $38
    add b
    ld a, a
    rst $38
    add b
    rst $28
    ld l, a
    rst $20
    rst $20
    sbc $81
    rrca
    dec sp
    dec sp
    ld l, a
    ld l, a
    ld bc, $5f10
    ld e, a
    ldh [$ff63], a
    rrca
    ld h, a
    nop
    ld h, e
    ld c, $67
    nop
    inc bc
    add hl, de
    xor e
    ld e, a
    ld a, a
    rst $38
    sbc a
    cp a
    ld e, a
    ld a, l
    sbc a
    dec hl
    rst $18
    db $fd
    rst $38
    add d
    xor c
    or $ab
    db $f4
    and e
    db $fc
    ld c, d
    rst $38
    push af
    ld c, d
    push af
    rst $00
    ld hl, sp+$52
    db $ed
    ld b, b
    rst $38
    cp a
    dec bc
    db $f4
    daa
    db $db
    adc a
    ld [hl], b
    sub b
    rst $38
    ld h, b
    ld l, $ce
    ld e, a
    sbc a
    sbc a
    rra
    db $f4
    rst $38
    dec bc
    rst $38
    ldh a, [rIF]
    db $fc
    di
    ld a, [hl]
    ld a, e
    rst $38
    ld e, $1b
    ld l, $0d
    ld d, $05
    ld a, [de]
    ld a, b
    ccf
    add a
    daa
    rst $18
    ld c, a
    cp a
    rst $18
    ld b, d
    ld a, [hl+]
    ld h, c
    ld b, b
    rst $38
    ld l, e
    sbc h
    db $10
    rst $28
    db $eb
    rst $30
    rst $28
    rst $30
    rst $38
    rst $30
    ei
    rst $30
    ei
    ei
    db $fd
    ei
    db $fd
    rst $38
    ret nz

    jr nz, @+$32

    ret z

    adc h
    di
    and $f9
    rst $38
    di
    db $fc
    or $f9
    push af
    ei
    ld sp, hl
    rst $30
    rra
    nop
    ccf
    ccf
    ld b, b
    ld c, [hl]
    nop
    ld b, e
    jr nc, jr_00a_7863

    or d
    jr z, @+$01

    scf
    rrca
    ld c, a
    cp a
    sbc a
    ld a, a
    ld a, a
    sbc a
    rst $38
    sbc a
    rst $28
    adc a
    rst $30
    rst $00
    ei
    adc $f1
    rst $38
    ldh [c], a
    ld bc, $e395
    rst $28
    di
    db $eb
    rst $30
    rst $38
    rst $38
    rst $30
    di
    rst $38
    ld e, c
    rst $30

jr_00a_7850:
    xor b
    rst $30
    cp $73
    ld [bc], a
    cp $ff
    db $fd
    rst $38
    or $f9
    db $eb
    rst $38
    rst $30
    sbc a
    rst $28
    ld d, h
    db $eb
    sub e

jr_00a_7863:
    db $ec
    ld c, c
    rst $38
    or $9c
    db $e3
    ld c, h
    di
    or [hl]
    ld c, c
    xor e
    rst $18
    call nc, $e9d6
    ld a, b
    ld hl, sp-$7f
    rra
    add l
    ld a, d
    rst $38
    ld b, d
    cp l
    adc h
    ld [hl], e
    ld b, e
    cp h
    jr nc, jr_00a_7850

    ei
    adc e
    adc e
    add c
    rra
    sbc b
    ld h, a

jr_00a_7888:
    ld b, h
    cp e
    add d
    rst $18
    ld a, l
    sbc l
    ld h, d
    ld c, b
    or a
    inc bc
    inc c
    adc [hl]
    ld [hl], a
    rst $38
    xor [hl]
    ld d, a
    ld d, e
    xor a
    dec d
    rst $28
    ld d, l
    xor [hl]
    cp $04
    inc c
    cp $9b
    cp $6b
    cp $87
    db $fc

jr_00a_78a8:
    rst $38
    rst $38
    ld a, b
    ld l, d
    sbc a
    db $10
    rst $28
    jr z, jr_00a_7888

    rst $38
    add [hl]
    ld a, c
    and e
    ld e, h
    ld b, [hl]
    cp c
    add hl, de
    and $ff
    ld b, b
    cp a
    add [hl]
    ld sp, hl
    xor a
    ldh a, [rIF]
    ldh a, [rIE]
    ld e, $e1
    ld hl, sp+$07
    ld [hl+], a
    db $dd
    dec e
    ldh [c], a
    rst $28
    ld b, h
    cp e
    adc [hl]

jr_00a_78d0:
    ld c, $70
    dec a
    ld b, b
    ld b, b
    and b
    rst $38
    jr nc, jr_00a_78a8

    cp a
    ld b, b
    ld a, [hl]
    sbc c
    dec hl
    call c, $05ff

jr_00a_78e1:
    ld a, [de]
    dec c
    ld [de], a
    dec de
    inc h
    ld a, [hl+]
    ld d, l
    rst $38
    ld [de], a
    db $ed
    ld h, d
    sbc l
    inc hl
    call c, $39c6
    cp $e1

jr_00a_78f3:
    add hl, de
    jp $c03f


    ccf
    ld h, b
    sbc a
    cp l
    rst $38
    ld b, d
    ld c, a
    or b
    jr nc, jr_00a_78d0

    pop af
    cp $71
    rst $38
    cp $61
    cp $07
    ld hl, sp+$4a
    or l
    daa
    rst $38
    ret c

    db $dd
    ld [hl+], a
    add sp, $17
    xor d
    rst $30
    ld e, c
    cp a
    rst $30
    add hl, bc
    rst $30
    inc e
    db $e3
    ccf
    ld b, b
    ld b, h
    jp $3cf7


    jr nc, jr_00a_78f3

    ld hl, $5a57
    rst $38
    inc c
    rst $38
    rst $38
    ld b, b
    cp a
    ldh [c], a
    dec e
    push af
    ld a, [bc]
    ld e, a
    and b
    rst $38
    and a
    ld hl, sp+$47
    ld hl, sp-$75
    db $f4
    dec b
    ld a, [$1bff]
    db $e4
    cp a
    ld b, b
    rst $38
    nop
    or b
    ld c, a
    rst $38
    ld c, b
    rst $30
    xor h
    di
    adc d
    ld [hl], l
    db $ed
    ld [de], a
    rst $38
    rst $18
    jr nz, jr_00a_78e1

    ld [hl], b
    sbc e
    ld h, h
    ld c, b
    or a
    rst $38
    cpl
    rst $18
    ccf
    rst $18
    sbc $3f
    ld a, l
    cp a
    db $fd
    jp c, $0640

    push af
    ld a, [bc]
    ccf
    ret nz

    adc [hl]
    pop af
    rst $38
    dec c
    ldh a, [c]
    adc l
    ldh a, [c]
    ld c, $f1
    inc e
    db $e3
    ccf
    cp [hl]
    ld b, c
    ld a, c
    add [hl]

jr_00a_7978:
    ld hl, sp+$07
    ld bc, $50ff
    sbc a
    ret nc

    inc e
    or d
    ld a, e
    jr z, @-$06

    ld d, $f7
    jr nc, jr_00a_7978

    ld h, c
    pop hl
    sbc e
    db $fc
    ld h, e
    db $e4
    and e
    db $e4
    ld e, c
    cp $b9
    cp [hl]
    ld e, c
    sbc $0c
    cpl
    add $c7
    ld h, b
    ldh [$ffc5], a
    push bc
    rst $00
    rst $00
    add $c7
    ld h, [hl]
    rst $20
    db $e3
    db $e3
    or b
    ldh a, [rNR21]
    rst $30
    and $e7
    db $e3
    db $e3
    inc hl
    db $e3
    inc hl
    db $e3
    ld h, [hl]
    rst $20
    add $c7
    dec l
    ld l, $59
    sbc $06
    rst $30
    ld h, e
    sbc e
    ldh a, [$ff1f]
    or d
    ld e, a
    ld h, $df
    ld a, c
    add a
    rst $00
    jr c, jr_00a_79ff

    rst $08
    ld d, e
    call c, $f8cf
    inc de
    db $f4
    ld l, c
    xor [hl]
    push af
    ld [hl], $a1
    halt
    xor c
    ld a, [hl]
    ld c, e
    cp h
    or l
    push af
    ld c, h
    sbc $52
    rst $38
    add h
    ld a, a
    and b
    ld e, a
    ld b, [hl]
    cp e
    add hl, de
    and $40
    cp a
    adc l
    adc a
    sub b
    sbc a
    ld d, a
    cp $a8
    rst $38
    nop
    rst $38
    ld [hl+], a
    db $fd
    dec e
    ldh [c], a
    ld b, h
    cp e
    ld bc, $60ff
    cp a
    ret nc

jr_00a_79ff:
    inc e
    jp nc, $a81b

    ld a, b
    add [hl]
    ld [hl], a
    db $10
    ldh a, [rWave_1]
    pop af
    sbc e
    db $fc
    ld l, e
    db $ec
    and e
    db $e4
    ld d, e
    db $f4
    cp c
    cp [hl]
    ld d, c
    sbc $09
    ld l, $cc
    rst $08
    ld hl, $67e1
    rst $20
    ld h, [hl]
    rst $20
    ld h, h
    rst $20
    inc h
    rst $20
    or e
    di
    sub b
    ldh a, [rTMA]
    rst $30
    db $e4
    rst $20
    ld h, $e7
    ld h, $e7
    ld h, $e7
    ld h, h
    rst $20
    call $29ce
    ld l, $53
    call c, $b746
    ld h, e
    sbc e
    ldh a, [$ff1f]
    and d
    ld e, a
    ld a, $c7
    ld a, [hl]
    add c
    rst $00
    jr c, jr_00a_7a7f

    rst $08
    ld b, a
    ret c

    rst $00
    ldh a, [rWX]
    xor h
    ld sp, hl
    ld a, $f5
    ld [hl], $a1
    halt
    xor c
    ld a, [hl]
    ld c, e
    cp h
    ld e, h
    call c, Call_00a_6ba9
    daa
    rst $38
    sub d
    ld a, a
    and l
    ld e, a
    ld b, h
    cp e
    sbc c
    and $48
    cp a
    xor c
    xor a
    sub h
    sbc a
    ld l, c
    cp $d4
    rst $38
    jr nc, @+$01

    add d
    db $fd
    dec e
    ldh [c], a
    ld b, h
    cp e
    rst $38
    rst $38
    adc a
    cp a
    rst $38

jr_00a_7a7f:
    rst $38
    db $fd
    db $fd
    rst $10
    rst $38
    rst $38
    rst $38
    cp $fe
    xor a
    xor a
    ld a, a
    rst $38
    pop hl
    push af
    rst $38
    rst $38
    ccf
    ccf
    rst $38
    rst $38
    db $e3
    db $e3
    ccf
    cp a
    rst $38
    rst $38
    ld hl, sp-$08
    rst $38
    rst $38
    cp b
    cp $ff
    rst $38
    jp nz, $ffcb

    rst $38
    rra
    rra
    rst $38
    rst $38
    rst $20
    rst $20
    rst $38
    rst $38
    pop hl
    push af
    rst $38
    rst $38
    rst $38
    rst $38
    rst $00
    rst $20
    db $fc
    db $fc
    sbc a
    rst $38
    cp $ff
    ld h, l
    ld l, l
    rst $38
    rst $38
    cp $fe
    rst $38
    rst $38
    rst $10
    rst $10
    db $fc
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    db $e3
    rst $20
    rst $38
    rst $38
    cp a
    cp a
    db $eb
    rst $38
    rst $38
    rst $38
    ld a, a
    ld a, a
    push af
    push af
    rst $20
    rst $20
    rst $38
    rst $38
    add a
    xor a
    rst $38
    rst $38
    rst $38
    rst $38
    di
    rst $30
    ccf
    ccf
    ld sp, hl
    rst $38
    rra
    rra
    rst $38
    rst $38
    dec de
    ld a, a
    rst $38
    rst $38
    ld c, a
    rst $18
    rst $38
    rst $38
    db $fc
    db $fc
    rst $38
    rst $38
    nop
    nop
    ld e, [hl]
    ld a, e
    nop
    nop
    ld h, b
    ld a, e
    nop
    nop
    ld h, d
    ld a, e
    nop
    nop
    ld h, h
    ld a, e
    nop
    nop
    jp z, $007b

    nop
    call z, $007b
    nop
    adc $7b
    nop
    nop
    ret nc

    ld a, e
    nop
    nop
    ld [hl], $7c
    nop
    nop
    jr c, jr_00a_7b9e

    nop
    nop
    ld a, [hl-]
    ld a, h
    nop
    nop
    inc a
    ld a, h
    nop
    nop
    xor d
    ld a, h
    nop
    nop
    xor h

jr_00a_7b31:
    ld a, h
    nop
    nop
    xor [hl]
    ld a, h
    nop
    nop
    or b
    ld a, h
    nop
    nop
    ld l, $7d
    nop
    nop
    jr nc, @+$7f

    nop
    nop
    ld [hl-], a
    ld a, l
    nop
    nop
    inc [hl]
    ld a, l
    nop
    nop
    sbc d
    ld a, l
    nop
    nop
    sbc h
    ld a, l
    nop
    nop
    sbc [hl]
    ld a, l
    nop
    nop
    and b
    ld a, l
    nop
    nop
    ld h, $7e
    ld h, [hl]
    ld a, e
    ld a, a
    ld a, e
    sbc b
    ld a, e
    or c
    ld a, e
    ld sp, hl
    nop
    inc de
    dec b
    ld sp, hl
    ld hl, sp+$12
    dec b
    pop af
    nop
    ld de, $f105
    ld hl, sp+$10
    dec b
    jp hl


    nop
    rrca
    nop
    jp hl


    ld hl, sp+$0e
    nop
    add b
    ld sp, hl
    nop
    add hl, de
    dec b
    ld sp, hl
    ld hl, sp+$18
    dec b
    pop af
    nop
    rla
    nop
    pop af
    ld hl, sp+$16
    dec b
    jp hl


    nop
    dec d
    nop
    jp hl


    ld hl, sp+$14
    nop
    add b
    ld sp, hl
    ld a, [$2519]
    ld sp, hl
    ld [bc], a

jr_00a_7b9e:
    jr jr_00a_7bc5

    pop af
    ld a, [$2017]
    pop af
    ld [bc], a
    ld d, $25
    jp hl


    ld a, [$2015]
    jp hl


    ld [bc], a
    inc d
    jr nz, jr_00a_7b31

    ld sp, hl
    nop
    rra
    dec b
    ld sp, hl
    ld hl, sp+$1e
    dec b
    pop af
    nop
    dec e
    nop
    pop af
    ld hl, sp+$1c
    nop
    jp hl


    nop
    dec de
    nop

jr_00a_7bc5:
    jp hl


    ld hl, sp+$1a
    nop
    add b
    jp nc, $eb7b

    ld a, e
    inc b
    ld a, h
    dec e
    ld a, h
    ld hl, sp+$00
    dec h
    nop
    ld hl, sp-$08
    inc h
    nop
    ldh a, [rP1]
    inc hl
    ld bc, $f8f0
    ld [hl+], a
    ld bc, $00e8
    ld hl, $e801
    ld hl, sp+$20
    ld bc, $f880
    nop
    dec hl
    nop
    ld hl, sp-$08
    ld a, [hl+]
    nop
    ldh a, [rP1]
    add hl, hl
    ld bc, $f8f0
    jr z, @+$03

    add sp, $00

jr_00a_7bfd:
    daa
    ld bc, $f8e8

jr_00a_7c01:
    ld h, $01
    add b
    ld hl, sp-$08
    dec hl
    jr nz, jr_00a_7c01

    nop
    ld a, [hl+]
    jr nz, jr_00a_7bfd

    ld hl, sp+$29
    ld hl, $00f0
    jr z, @+$23

    add sp, -$08
    daa
    ld hl, $00e8
    ld h, $21
    add b
    ld hl, sp+$00
    ld sp, $f800
    ld hl, sp+$30
    nop
    ldh a, [rP1]
    cpl
    ld bc, $f8f0
    ld l, $01
    add sp, $00
    dec l
    ld bc, $f8e8
    inc l
    ld bc, $3e80
    ld a, h
    ld d, a
    ld a, h
    ld [hl], h
    ld a, h
    sub c
    ld a, h
    ld sp, hl
    nop
    scf
    ld bc, $f8f9
    ld [hl], $01
    pop af
    nop
    dec [hl]
    ld bc, $f8f1
    inc [hl]
    ld bc, $00e9
    inc sp
    ld b, $e9
    ld hl, sp+$32
    ld b, $80
    di
    ld [$013e], sp
    ld hl, sp+$00
    dec a
    ld bc, $f8f8
    inc a
    ld bc, $00f0
    dec sp
    ld bc, $f8f0
    ld a, [hl-]
    ld bc, $00e8
    add hl, sp
    ld b, $e8
    ld hl, sp+$38
    ld b, $80
    di
    ldh a, [rWave_e]
    ld hl, $f8f8
    dec a
    ld hl, $00f8
    inc a
    ld hl, $f8f0
    dec sp
    ld hl, $00f0
    ld a, [hl-]
    ld hl, $f8e8
    add hl, sp
    ld h, $e8
    nop
    jr c, jr_00a_7cb6

    add b
    ld sp, hl
    nop
    ld b, h
    ld bc, $f8f9
    ld b, e
    ld bc, $00f1
    ld b, d
    ld bc, $f8f1
    ld b, c
    ld bc, $00e9
    ld b, b
    ld b, $e9
    ld hl, sp+$3f
    ld b, $80
    or d
    ld a, h
    db $d3
    ld a, h
    ldh a, [$ff7c]
    dec c
    ld a, l
    pop af
    ld [$024c], sp

jr_00a_7cb6:
    pop af
    ldh a, [rWX]
    ld [bc], a
    ld sp, hl
    nop
    ld c, d
    ld [bc], a
    ld sp, hl
    ld hl, sp+$49
    ld [bc], a
    pop af
    nop
    ld c, b
    ld [bc], a
    pop af
    ld hl, sp+$47
    ld [bc], a
    jp hl


    nop
    ld b, [hl]
    ld [bc], a
    jp hl


    ld hl, sp+$45
    ld [bc], a
    add b
    ld sp, hl
    nop
    ld d, e
    ld [bc], a
    ld sp, hl
    ld hl, sp+$52
    ld [bc], a
    pop af
    ld [$0251], sp
    pop af
    nop
    ld d, b
    ld [bc], a
    pop af
    ld hl, sp+$4f
    ld [bc], a
    jp hl


    nop
    ld c, [hl]
    ld [bc], a
    jp hl


    ld hl, sp+$4d
    ld [bc], a
    add b
    ld sp, hl
    ld sp, hl
    ld d, e
    ld [hl+], a
    ld sp, hl
    ld bc, $2252
    pop af
    pop af
    ld d, c
    ld [hl+], a
    pop af
    ld sp, hl
    ld d, b
    ld [hl+], a
    pop af
    ld bc, $224f
    jp hl


    ld sp, hl
    ld c, [hl]
    ld [hl+], a
    jp hl


    ld bc, $224d
    add b
    pop af
    ldh a, [rWX]
    ld [bc], a
    ldh a, [$ff08]
    ld e, d
    ld [bc], a
    ld hl, sp+$00
    ld e, c
    ld [bc], a
    ld hl, sp-$08
    ld e, b
    ld [bc], a
    ldh a, [rP1]
    ld d, a
    ld [bc], a
    ldh a, [$fff8]
    ld d, [hl]
    ld [bc], a
    add sp, $00
    ld d, l
    ld [bc], a
    add sp, -$08
    ld d, h
    ld [bc], a
    add b
    ld [hl], $7d
    ld c, a
    ld a, l
    ld l, b
    ld a, l
    add c
    ld a, l
    ld sp, hl
    nop
    ld h, b
    ld bc, $f8f9
    ld e, a
    ld bc, $00f1
    ld e, [hl]
    ld b, $f1
    ld hl, sp+$5d
    ld b, $e9
    nop
    ld e, h
    ld b, $e9
    ld hl, sp+$5b
    ld b, $80
    ld sp, hl
    ld bc, $0166
    ld sp, hl
    ld sp, hl
    ld h, l
    ld bc, $01f1
    ld h, h
    ld b, $f1
    ld sp, hl
    ld h, e
    ld b, $e9
    ld bc, $0662
    jp hl


    ld sp, hl
    ld h, c
    ld b, $80
    ld sp, hl
    ld hl, sp+$66
    ld hl, $00f9
    ld h, l
    ld hl, $f8f1
    ld h, h
    ld h, $f1
    nop
    ld h, e
    ld h, $e9
    ld hl, sp+$62
    ld h, $e9
    nop
    ld h, c
    ld h, $80
    ld sp, hl
    nop
    ld l, h
    ld bc, $f8f9
    ld l, e
    ld bc, $00f1
    ld l, d
    ld b, $f1
    ld hl, sp+$69
    ld b, $e9
    nop
    ld l, b
    ld b, $e9
    ld hl, sp+$67
    ld b, $80
    and d
    ld a, l
    jp $e47d


    ld a, l
    dec b
    ld a, [hl]
    ld hl, sp+$01
    rla
    nop
    ld hl, sp-$07
    ld d, $00
    ldh a, [rSB]
    dec d
    nop
    ldh a, [$fff9]
    inc d
    nop
    add sp, $01
    inc de
    ld b, $e8
    ld sp, hl
    ld [de], a
    ld b, $e0
    ld bc, $0011
    ldh [$fff9], a
    stop
    add b
    ld hl, sp+$01
    rla
    nop
    ld hl, sp-$07
    ld d, $00
    ldh a, [rSB]
    dec e
    nop
    ldh a, [$fff9]
    inc e
    nop
    add sp, $01
    dec de
    ld b, $e8
    ld sp, hl
    ld a, [de]
    ld b, $e0
    ld bc, $0019
    ldh [$fff9], a
    jr jr_00a_7de3

jr_00a_7de3:
    add b
    ld hl, sp+$01
    rla
    nop
    ld hl, sp-$07
    ld d, $00
    ldh a, [rSB]
    inc hl
    nop
    ldh a, [$fff9]
    ld [hl+], a
    nop
    add sp, $01
    ld hl, $e806
    ld sp, hl
    jr nz, jr_00a_7e02

    ldh [rSB], a
    rra
    nop
    ldh [$fff9], a

jr_00a_7e02:
    ld e, $00
    add b
    ld hl, sp+$00
    add hl, hl
    nop
    ld hl, sp-$08
    jr z, jr_00a_7e0d

jr_00a_7e0d:
    ldh a, [rP1]
    daa
    nop
    ldh a, [$fff8]
    ld h, $00
    add sp, $00
    dec h
    ld b, $e8
    ld hl, sp+$24
    ld b, $e0
    ld bc, $0011
    ldh [$fff9], a
    stop
    add b
    jr z, jr_00a_7ea6

    pop af
    ld [$0211], sp
    pop af
    ldh a, [rNR10]
    ld [bc], a
    ld sp, hl
    nop
    rrca
    ld [bc], a
    ld sp, hl
    ld hl, sp+$0e
    ld [bc], a
    pop af
    nop
    dec c
    ld [bc], a
    pop af
    ld hl, sp+$0c
    ld [bc], a
    jp hl


    nop
    dec bc
    ld [bc], a
    jp hl


    ld hl, sp+$0a
    ld [bc], a
    add b
    ld a, e
    ld a, [hl]
    ld a, e
    ld a, [hl]
    ld a, e
    ld a, [hl]
    ld a, e
    ld a, [hl]
    ld a, e
    ld a, [hl]
    ld a, e
    ld a, [hl]
    ld a, e
    ld a, [hl]
    ld a, e
    ld a, [hl]
    ld a, e
    ld a, [hl]
    ld a, e
    ld a, [hl]
    ld a, e
    ld a, [hl]
    ld a, e
    ld a, [hl]
    ld a, e
    ld a, [hl]
    ld a, e
    ld a, [hl]
    ld a, e
    ld a, [hl]
    ld a, e
    ld a, [hl]
    ld a, e
    ld a, [hl]
    ld a, e
    ld a, [hl]
    ld a, e
    ld a, [hl]
    ld a, e
    ld a, [hl]
    ld a, e
    ld a, [hl]
    ld a, e
    ld a, [hl]
    ld a, e
    ld a, [hl]
    ld a, e
    ld a, [hl]
    ld a, e
    ld a, [hl]
    ldh a, [rP1]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_00a_7ea6:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_00a_7eff:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
