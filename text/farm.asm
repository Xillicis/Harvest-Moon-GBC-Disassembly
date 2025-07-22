;;; This is text that plays occurs outside around the farmstead.

TooLateText1::
    db $00, $00, $00, $00, $00, $00, $78, $70, $00, $00
    db "Oops! It's       "
    db "already 6AM.   ▽"
    prompt
    db $00, $00, $00, $00, $00, $00, $78, $70, $00, $00
    db "I better go home"
    db "and have       ▽"
    prompt
    db $00, $00, $00, $00, $00, $00, $78, $70, $00, $00
    db "something to    "
    db "eat.            "
    done

TooLateText2::
    db $00, $00, $00, $00, $00, $00, $78, $70, $00, $00
    db "Oh My! It's      "
    db "already 6AM.   ▽"
    prompt
    db $00, $00, $00, $00, $00, $00, $78, $70, $00, $00
    db "I better get    "
    db "going home!     "
    done

ShippingBoxText::
    db $00, $00, $00, $00, $00, $00, $78, $70, $00, $00
    db " [Shipping Box] "
    db "Pick up is at  ▽"
    prompt
    db $00, $00, $00, $00, $00, $00, $78, $70, $00, $00
    db "5PM everyday.   "
    db "     From Trader"
    done
FencePostShedText::
    db $00, $00, $00, $00, $00, $00, $78, $70, $00, $00
    db "Current Material"
    db "      ", $BC, $BD, $BE, " Pieces" ; need to figure out the data loading here.
    done

StableSignText::
    db $00, $00, $00, $00, $00, $00, $78, $70, $00, $00
    db "    [Stable]    "
    db "                "
    done

SiloSignText::
    db $00, $00, $00, $00, $00, $00, $78, $70, $00, $00
    db "Current Fodder  "
    db "      ", $BF, $C0, $C1, " Pieces"
    done

CalendarText::
    db $00, $00, $00, $00, $00, $00, $78, $70, $00, $00
    db "<DAY_DIGIT2>", $EC, "<SEASON>", $C8, $C9, $EE, $F0, $ED, $AB, "<A_OR_P>M"
    db "          ", $CA, $CB, "YEAR"
    done

    db $00, $00, $00, $00, $00, $00, $78, $70, $00, $00
    db "Good Morning    "
    db "<PLAYER>. It's me.  ▽"
    prompt
    db $00, $00, $00, $00, $00, $00, $78, $70, $00, $00
    db "How are you     "
    db "doing?         ▽"
    prompt

HorseIsLostText::
    db $00, $00, $00, $00, $00, $00, $78, $70, $00, $00
    db "It seems that   "
    db "this horse is  ▽"
    prompt
    db $00, $00, $00, $00, $00, $00, $78, $70, $00, $00
    db "lost. Would you "
    db "please take    ▽"
    prompt
    db $00, $00, $00, $00, $00, $00, $78, $70, $00, $00
    db "care of this    "
    db "horse on your  ▽"
    prompt
    db $00, $00, $00, $00, $00, $00, $78, $70, $00, $00
    db "ranch? Please   "
    db "name him.       "
    done

ProduceShippedText::
    db $00, $00, $00, $00, $00, $00, $78, $70, $00, $00,
    db "Is this all for "
    db "today's         ▽"
    prompt
    db $00, $00, $00, $00, $00, $00, $78, $70, $00, $00
    db "shipment? It    "
    db "will be  ", $B7, $B8, $B9, $BA, $BB, "G▽"
    prompt 
    db $00, $00, $00, $00, $00, $00, $78, $70, $00, $00
    db "The money will  "
    db "be transferred ▽"
    prompt
    db $00, $00, $00, $00, $00, $00, $78, $70, $00, $00
    db "tomorrow!       "
    db "Well, see you!! "
    done

NoShipmentText::
    db $00, $00, $00, $00, $00, $00, $78, $70, $00, $00
    db "There is no     "
    db "shipment today?▽"
    prompt
    db $00, $00, $00, $00, $00, $00, $78, $70, $00, $00
    db "Well, see you   "
    db "tomorrow.       "
    done

CarpenterEarthquakeText::
    db $00, $00, $00, $00, $00, $00, $78, $70, $00, $00
    db "<PLAYER> are you    "
    db "alright?       ▽"
    prompt
    db $00, $00, $00, $00, $00, $00, $78, $70, $00, $00
    db "That earthquake "
    db "a little while ▽"
    prompt
    db $00, $00, $00, $00, $00, $00, $78, $70, $00, $00
    db "ago was huge!   "
    db "               ▽"
    prompt
    db $00, $00, $00, $00, $00, $00, $78, $70, $00, $00
    db "Was anything    "
    db "damaged by the ▽"
    prompt
    db $00, $00, $00, $00, $00, $00, $78, $70, $00, $00
    db "earthquake?     "
    db "Be sure to     ▽"
    prompt
    db $00, $00, $00, $00, $00, $00, $78, $70, $00, $00
    db "examine every-  "
    db "thing. Good Bye."
    done

