; Linear Congruential Generator (LCG)
; Pseudo random number generator which computes based on the formula:
;        X_{n+1} = (5 X_n + 17) mod 256
; This method does cycle through every possible value (0 - 255).
LinearCongruentialGenerator:
    ldh a, [hRandomNumber]
    sla a
    sla a
    ld b, a
    ldh a, [hRandomNumber]
    add b
    add $11
    ldh [hRandomNumber], a
    ret

; Return a pseudo‑random byte in A, updating the 8‑bit seed in [hRandomNumber]
GetNextRandomByte:
    ld hl, RandomTableData
    ldh a, [hRandomNumber] ; A = old seed
    add l                  ; add seed to the low byte of HL
    ld l, a
    ld a, $00
    adc h                  ; propagate carry into the high byte
    ld h, a
    ld a, [hl]             ; A = RandomTableData[ seed ]
    push af

    ;; compute B = (frameCounter | 1)
    ld a, [$c0a8]
    or $01
    ld b, a

    ;; update seed: new_seed = old_seed + B + carry_from_table_wrap
    ldh a, [hRandomNumber]
    adc b
    ldh [hRandomNumber], a
    pop af
    ret

; Seems to be a way to get random numbers. I think it might be based on different actions
; you do in game and also idle animations to get more randomness into the game based on the players
; actions. 
GetOnDemandRandomNumber: ; 00x0b37
    ld hl, RandomTableData
    ldh a, [$ff9d]
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ldh [$ff9d], a
    ret

RandomTableData:
    db $27, $7e, $db, $cc, $30, $14, $4f, $9c, $88, $d2, $90, $72, $29, $c1, $3e, $7a 
    db $82, $2c, $44, $52, $60, $c9, $89, $05, $13, $67, $0a, $b2, $e2, $c7, $68, $dd 
    db $65, $6d, $c2, $66, $83, $97, $53, $54, $32, $a7, $f0, $e0, $d1, $c8, $08, $76
    db $24, $f6, $a3, $b7, $57, $62, $75, $fb, $5c, $81, $b6, $07, $d6, $b5, $da, $a9 
    db $ce, $dc, $39, $71, $cd, $77, $59, $ac, $80, $87, $49, $91, $84, $5a, $e4, $22 
    db $d3, $1d, $4d, $c3, $12, $01, $f8, $9b, $8e, $eb, $8d, $51, $61, $a0, $bb, $e1 
    db $1a, $cb, $64, $c5, $d8, $6b, $5f, $5b, $ca, $a5, $02, $18, $1f, $fd, $92, $9a 
    db $c0, $2d, $3f, $74, $2a, $26, $3a, $af, $0c, $79, $f4, $4c, $00, $47, $7f, $17 
    db $ef, $f7, $b4, $5d, $b9, $25, $9f, $4a, $0f, $bc, $6e, $98, $ed, $56, $36, $ec 
    db $41, $23, $ba, $e8, $2b, $ea, $ee, $9d, $0d, $1e, $0e, $9e, $fe, $4e, $78, $c6 
    db $8f, $ad, $31, $2e, $1b, $2f, $f2, $f5, $f1, $86, $8a, $37, $06, $4b, $94, $0b 
    db $e6, $de, $73, $70, $ff, $a1, $10, $38, $e9, $96, $35, $55, $6a, $63, $fc, $7c 
    db $a8, $e5, $20, $8c, $fa, $b0, $bd, $58, $11, $48, $a2, $45, $28, $d9, $40, $15 
    db $b3, $a4, $19, $e3, $5e, $e7, $43, $be, $04, $85, $d7, $f3, $8b, $6c, $3b, $16 
    db $a6, $d5, $cf, $3c, $21, $ab, $33, $93, $7b, $03, $46, $b8, $34, $c4, $42, $b1 
    db $1c, $ae, $50, $f9, $aa, $6f, $3d, $d0, $69, $99, $bf, $d4, $7d, $df, $95, $09

