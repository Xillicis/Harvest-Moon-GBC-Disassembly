; rst vectors

SECTION "rst0", ROM0[$0000]

RST_00::
    jp JumpToFunctionInTable

    ds $08 - @, $ff ; unused

SECTION "rst8", ROM0[$0008]

RST_08::
    jp TableJumpBankSwitch
    ret

    ds $10 - @, $ff ; unused

SECTION "rst10", ROM0[$0010]

RST_10::
    ret

    ds $18 - @, $ff ; unused

SECTION "rst18", ROM0[$0018]

RST_18::
    ret

    ds $20 - @, $ff ; unused

SECTION "rst20", ROM0[$0020]

RST_20::
    ret

    ds $28 - @, $ff ; unused

SECTION "rst28", ROM0[$0028]

RST_28::
    ret

    ds $30 - @, $ff ; unused

SECTION "rst30", ROM0[$0030]

RST_30::
    ret

    ds $38 - @, $ff ; unused

SECTION "rst38", ROM0[$0038]

RST_38::
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ret



