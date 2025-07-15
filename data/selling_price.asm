; This tells how much each shipment item sells for.
; Need to identify which is which.
ShipmentSellingPrice:: ; 1d4e
REPT 26
    dw $0000
ENDR
dw 150   ; CORN
dw 120   ; TOMATO
dw $0000 
dw $0000
dw $0000
dw 60    ; TURNIP
dw $0000
dw 80    ; POTATO
dw $0000
dw 350   ; LARGE_MILK
dw $0000
dw 250   ; MEDIUM_MILK
dw $0000
dw 150   ; SMALL_MILK
dw $0000
dw 70    ; EGG
REPT 18
    dw $0000
ENDR
dw 100
dw $0000
dw $0000
dw $0000
dw 300
dw 300
REPT 31
    dw $0000
ENDR
dw 500
dw 500
dw 500
dw 500
dw 500
dw 500
dw $0000
dw $0000
dw 150   ; carrot or broccoli
dw 60    ; EGGPLANT
dw 80    ; PEANUT
dw 150   ; carrot or broccoli
dw $0000
dw $0000
dw $0000
dw $0000

