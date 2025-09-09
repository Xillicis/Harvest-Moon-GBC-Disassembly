MACRO text
	db 0, 0, 0, 0, 0, 0
        dw \1
        db 0, 0
ENDM

; This macro is for pointing to different text depending on if the player picks YES or NO (or whatever option).
MACRO yes_no_text
	db 1
	db (\2 - \1)/43
        db (\3 - \1)/43
ENDM

MACRO prompt
        db "<PROMPT>" ; Prompt the player to end a text box (initiating some other event)
ENDM

MACRO done
        db "<DONE>" ; End a text box
ENDM


