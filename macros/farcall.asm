MACRO farcall
        ld a, BANK(\1)
        ld hl, \1
        call BankSwitchCallHL
ENDM

MACRO callfar
        ld hl, \1
        ld a, BANK(\1)
        call BankSwitchCallHL
ENDM

MACRO callfar2
    ld l, LOW(\1)
    ld h, HIGH(\1)
    ld a, BANK(\1)
    call BankSwitchCallHL
ENDM

