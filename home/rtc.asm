InitRealTimeClock:
    ld a, $0a
    ld [$1fff], a
    ld a, 1
    ld [rRTCLATCH], a
    ld a, RTC_S
    ld [MBC3SRamBank], a
    xor a
    ld [SRAMorRTC_Data], a
    nop
    nop
    nop
    nop
    ld a, RTC_M
    ld [MBC3SRamBank], a
    xor a
    ld [SRAMorRTC_Data], a
    nop
    nop
    nop
    nop
    ld a, RTC_H
    ld [MBC3SRamBank], a
    xor a
    ld [SRAMorRTC_Data], a
    nop
    nop
    nop
    nop
    ld a, RTC_DL
    ld [MBC3SRamBank], a
    xor a
    ld [SRAMorRTC_Data], a
    nop
    nop
    nop
    nop
    ld a, RTC_DH
    ld [MBC3SRamBank], a
    ld a, 0
    ld [SRAMorRTC_Data], a
    xor a
    ld [MBC3SRamBank], a
    ret

ReadRealTimeClock:
    ld a, $0a
    ld [$1fff], a
    xor a
    ld [rRTCLATCH], a ; prepare to latch
    inc a
    ld [rRTCLATCH], a ; actually latch: RTC regs <- current time
    ld a, RTC_S
    ld [MBC3SRamBank], a
    ld a, [SRAMorRTC_Data]
    and $3f
    ld [$c905], a
    nop
    nop
    nop
    nop
    ld a, RTC_M
    ld [MBC3SRamBank], a
    ld a, [SRAMorRTC_Data]
    and $3f
    ld [$c904], a
    nop
    nop
    nop
    nop
    ld a, RTC_H
    ld [MBC3SRamBank], a
    ld a, [SRAMorRTC_Data]
    and $1f
    ld [$c903], a
    nop
    nop
    nop
    nop
    ld a, RTC_DL
    ld [MBC3SRamBank], a
    ld a, [SRAMorRTC_Data]
    ld [$c902], a
    xor a
    ld [MBC3SRamBank], a
    ret


    ld a, RTC_DH
    ld [MBC3SRamBank], a
    ld a, $40
    ld [SRAMorRTC_Data], a
    xor a
    ld [MBC3SRamBank], a
    ret


    ld a, RTC_DH
    ld [MBC3SRamBank], a
    ld a, $00
    ld [SRAMorRTC_Data], a
    xor a
    ld [MBC3SRamBank], a
    ret

