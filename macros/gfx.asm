MACRO RGB
        REPT _NARG / 3
                dw palred (\1) + palgreen (\2) + palblue (\3)
                SHIFT 3
        ENDR
ENDM

DEF palred   EQUS "(1 << 0) *"
DEF palgreen EQUS "(1 << 5) *"
DEF palblue  EQUS "(1 << 10) *"

