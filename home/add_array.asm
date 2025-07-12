;  Credit to ChatGPT:
;  input : HL → 3-byte little-endian value  (low, mid, high)
;          BC = 16-bit signed delta to add
;  result: value := value + BC
;  flags : preserved (only the routine itself relies on C flag)

AddSignedBCToHL: ; 00x0cbb
    ld   a,c          ; A = low 8 bits of delta
    add  [hl]         ; add to low byte
    ld   [hli],a      ; store and  HL++
    inc  bc           ; sneak the low-byte carry into B
                      ;   (if C was 0xFF, B is now B+1)
    ld   a,b          ; A = high 8 bits of (delta + carry-from-low)
    bit  7,a          ; test sign of that high byte
    jr   nz, .neg     ; if it’s ≥$80 we’re adding a negative value

.pos                  ; --------  positive (or zero) delta --------
    adc  [hl]         ; add high byte  + original ADD’s carry
    ld   [hl+],a      ; store, HL++
    ret  nc           ; if no overflow into the third byte, we’re done
    inc  [hl]         ; otherwise bump the 3rd byte
    ret

.neg                  ; --------  negative delta (subtract) -------
    adc  [hl]         ; same, but A is two’s-complement negative
    ld   [hli],a
    ret  c            ; if we *borrowed* (carry = 1), all done
    dec  [hl]         ; otherwise we had a net borrow → fix 3rd byte
    ret

; Add the 16-bit value in BC to the 16-bit little-endian word at [HL]
AddBCtoWordAtHL:
    ld a, [hl]
    add c
    ld [hli], a
    ld a, [hl]
    adc b
    ld [hl], a
    ret

