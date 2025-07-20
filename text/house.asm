GoToSleepText::
    db $01, $00, $00, $40, $4C, $00, $A7, $70, $00, $00, 
    db "Go to sleep?    "
    db " YES         NO "
    prompt
    db $01, $00, $00, $40, $4C, $00, $2E, $71, $00, $00
    db "Exchange?       "
    db " YES         NO "
    prompt

StoveTopText::
    db $00, $00, $00, $00, $0C, $00, $78, $70, $00, $00
    db "Confirm the     "
    db "origin of fire!▽"
    prompt
    db $00, $00, $00, $00, $0C, $00, $78, $70, $00, $00
    db "Everything is   "
    db "alright!!       "
    done

MoneyInDresserText::
    db $00, $00, $00, $00, $00, $00, $78, $70, $00, $00
    db "What! There is  "
    db "money in the   ▽"
    prompt
    db $00, $00, $00, $00, $00, $00, $78, $70, $00, $00
    db "drawer. Was this"
    db "grandpa's rainy ▽"
    prompt
    db $00, $00, $00, $00, $00, $00, $78, $70, $00, $00
    db "day money? It's  "
    db "mine now!!     ▽"
    prompt
    db $00, $00, $00, $00, $00, $00, $78, $70, $00, $00
    db "Received 1000G!!"
    db "                "
    done

EmptryDresserText::
    db $00, $00, $00, $00, $00, $00, $78, $70, $00, $00
    db "Let me see...   "
    db "               ▽"
    prompt
    db $00, $00, $00, $00, $00, $00, $78, $70, $00, $00
    db "Everything is   "
    db "alright!        "
    done

; Not sure what this is here...
    db $00, $00, $00, $00, $00, $00, $78, $70, $00, $00
    db $BA, $00, $01, $00, $12, $00, $44, $00, $34, $00
    db $02, $00, $81, $00, $92, $00, $02, $00, $A0, $00
    db $12, $00, $83, $00, $30, $00, $03, $00, $BA, $00
    db $DA, $00, $C8, $00, $12, $00, $B1, $00, $92, $00
    db $02, $00, $44, $00, $52, $00, $02, $00, $13, $00, 
    db $01, $00, $AC, $00, $10, $00, $40, $00, $6B, $00
    db $FD, $00, $FD, $00, $FF, $FF

SpringSunnyDayText::
    db $00, $00, $00, $00, $00, $00, $78, $70, $00, $00
    db "It has been warm"
    db "everyday.      ▽"
    prompt
    db $00, $00, $00, $00, $00, $00, $78, $70, $00, $00
    db "Tomorrow will be"
    db "a fine day.     "
    done

SpringRainyDayText::
    db $00, $00, $00, $00, $00, $00, $78, $70, $00, $00
    db "It will be a    "
    db "rainy day      ▽"
    prompt
    db $00, $00, $00, $00, $00, $00, $78, $70, $00, $00
    db "tomorrow,       "
    db "causing the    ▽"
    prompt
    db $00, $00, $00, $00, $00, $00, $78, $70, $00, $00
    db "flowers to fall."
    db "                "
    done

SummerSunnyDayText::
    db $00, $00, $00, $00, $00, $00, $78, $70, $00, $00
    db "It has been hot "
    db "everyday.      ▽"
    prompt
    db $00, $00, $00, $00, $00, $00, $78, $70, $00, $00
    db "Tomorrow will be"
    db "a sunny day.    "
    done

SummerRainyDayText::
    db $00, $00, $00, $00, $00, $00, $78, $70, $00, $00
    db "It will rain    "
    db "heavily all day▽"
    prompt
    db $00, $00, $00, $00, $00, $00, $78, $70, $00, $00,
    db "tomorrow.       "
    db "                "
    done

AutumnSunnyDayText::
    db $00, $00, $00, $00, $00, $00, $78, $70, $00, $00
    db "The mountains   "
    db "are beautifully▽"
    prompt
    db $00, $00, $00, $00, $00, $00, $78, $70, $00, $00
    db "colored.        "
    db "The sky will be▽"
    prompt
    db $00, $00, $00, $00, $00, $00, $78, $70, $00, $00
    db "clear tomorrow. "
    db "                "
    done

AutumnRainyDayText::
    db $00, $00, $00, $00, $00, $00, $78, $70, $00, $00
    db "It's getting col-"
    db "der day by day.▽"
    prompt
    db $00, $00, $00, $00, $00, $00, $78, $70, $00, $00
    db "It will rain all"
    db "day tomorrow.   "
    done

WinterSunnyDayText::
    db $00, $00, $00, $00, $00, $00, $78, $70, $00, $00
    db "It's getting col-"
    db "der day by day.▽"
    prompt
    db $00, $00, $00, $00, $00, $00, $78, $70, $00, $00
    db "It will be sunny"
    db "tomorrow.       "
    done

WinterSnowyDayText::
    db $00, $00, $00, $00, $00, $00, $78, $70, $00, $00
    db "It's cold every- "
    db "day. It will   ▽"
    prompt
    db $00, $00, $00, $00, $00, $00, $78, $70, $00, $00
    db "snow tomorrow.  "
    db "                "
    done

HurricaneText::
    db $00, $00, $00, $00, $00, $00, $78, $70, $00, $00
    db "Hurricane Bob   "
    db "has just       ▽"
    prompt
    db $00, $00, $00, $00, $00, $00, $78, $70, $00, $00
    db "reached the     "
    db "coast. It will ▽"
    prompt
    db $00, $00, $00, $00, $00, $00, $78, $70, $00, $00
    db "be stormy all   "
    db "day tomorrow.   "
    done

StrongWindsText::
    db $00, $00, $00, $00, $00, $00, $78, $70, $00, $00
    db "Whoa! What      "
    db "strong winds.  ▽"
    prompt
    db $00, $00, $00, $00, $00, $00, $78, $70, $00, $00
    db "Better stay     "
    db "inside today.   "
    done

