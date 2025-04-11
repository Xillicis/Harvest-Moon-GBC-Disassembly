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

Call_000_0b1d:
    ld hl, RandomTableData
    ldh a, [hRandomNumber]
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    push af
    ld a, [$c0a8]
    or $01
    ld b, a
    ldh a, [hRandomNumber]
Jump_000_0b32:
    adc b
    ldh [hRandomNumber], a
    pop af
    ret


Call_000_0b37:
    ld hl, RandomTableData
    ldh a, [$ff9d]

Call_000_0b3c:
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]

Call_000_0b43:
    ldh [$ff9d], a
    ret

