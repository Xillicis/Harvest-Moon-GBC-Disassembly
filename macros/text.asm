MACRO text
	db 0, 0, 0, 0, 0, 0
        dw \1
        db 0, 0
ENDM

MACRO prompt
        db "<PROMPT>" ; Prompt the player to end a text box (initiating some other event)
ENDM

MACRO done
        db "<DONE>" ; End a text box
ENDM


