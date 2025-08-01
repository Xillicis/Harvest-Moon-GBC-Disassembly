; I Think this is the beginning of all the text in the game.
Data_007_4501:
    db $00, $00, $00, $00, $00, $00, $78, $70, $00, $00
    db "<DAY><SEASON>", $C8, $C9, $EE, $F0, $ED, $AB, "<A_OR_P>M ", $AC, $AD, $AE, $AF, $B0,
    db $F6, "   ", $B2, $B3, $B4, $B5, $B6, $06 
    done
Data_007_452c:
    db $00, $00, $00, $00, $00, $00, $78, $70, $00, $00
    db " Pet       Timer"
    db " Horse     Memo "
    done
Data_007_4557:
    db $00, $00, $00, $00, $00, $00, $78, $70, $00, $00
    db "Show the items  "
    db "that relate to ▽"
    prompt
    db $00, $00, $00, $00, $00, $00, $78, $70, $00, $00
    db "the A button?   "
    db " YES        NO  "
    done
Data_007_45ad:
    db $00, $00, $00, $00, $00, $00, $78, $70, $00, $00
    db $C8, $C9, $EE, $F0, $ED, $AB, $AA, $0C, $EF, $EF,
    db $EF, $EF, $EF, $EF, $EF, $EF, $D0, $D1, $D2, $D3, $D4, $D5, $D6, $D7, $D8, $F1,
    db $F2, $F3, $F4, $F5, $EF, $EF, $FF

GoToSleepText:: ; 07x45d8
    db $01, $00, $00, $40, $4C, $00, $A7, $70, $00, $00, 
    db "Go to sleep?    "
    db " YES         NO "
    prompt

ExchangeText::
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

EmptyDresserText::
    db $00, $00, $00, $00, $00, $00, $78, $70, $00, $00
    db "Let me see...   "
    db "               ▽"
    prompt
    db $00, $00, $00, $00, $00, $00, $78, $70, $00, $00
    db "Everything is   "
    db "alright!        "
    done

Data_007_4786::
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

HurricaneText:: ; 07x4ad8
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

; Is this used in game? 
ElipsesText::
    db $00, $00, $00, $00, $00, $00, $78, $70, $00, $00
    db "…………………………………………"
    db "………………………………………."
    done

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

PicnicInvitationText::
    db $00, $00, $00, $00, $00, $00, $78, $70, $00, $00
    db "Hello. Tomorrow "
    db "morning we are ▽"
    prompt
    db $00, $00, $00, $00, $00, $00, $78, $70, $00, $00
    db "going on a      "
    db "picnic.        ▽"
    prompt
    db $00, $00, $00, $00, $00, $00, $78, $70, $00, $00
    db "Could we have it"
    db "here?          ▽"
    prompt
    db $01, $04, $06, $40, $4C, $00, $68, $71, $00, $00
    db "                "
    db " YES         NO "
    prompt

PicnicInvitationAcceptText::
    db $00, $00, $00, $00, $00, $00, $78, $70, $00, $00
    db "YEAH! That is   "
    db "great! We will ▽"
    prompt
    db $00, $00, $00, $00, $00, $00, $78, $70, $00, $00
    db "have lots of    "
    db "fun.            "
    done 

PicnicInvitationDeclineText::
    db $00, $00, $00, $00, $00, $00, $78, $70, $00, $00
    db "Really? Why...  "
    db "That's no fun!   "
    done 

MariaGoToPicnicText::
    db $00, $00, $00, $00, $00, $00, $78, $70, $00, $00
    db "Hello <PLAYER>.     "
    db "I hope you     ▽"
    prompt 
    db $00, $00, $00, $00, $00, $00, $78, $70, $00, $00
    db "weren't too     "
    db "busy.          ▽"
    prompt 
    db $00, $00, $00, $00, $00, $00, $79, $71, $00, $00
    db "Let's go on the  "
    db "picnic...       "
    prompt

EveJuicePicnicText::
    db $00, $00, $00, $00, $00, $00, $78, $70, $00, $00
    db "Hi <PLAYER>.        "
    db "This is        ▽"
    prompt
    db $00, $00, $00, $00, $00, $00, $78, $70, $00, $00
    db "Wild Grape      "
    db "Juice.         ▽"
    prompt 
    db $00, $00, $00, $00, $00, $00, $78, $70, $00, $00
    db "I know this is  "
    db "a little sweet,▽"
    prompt
    db $00, $00, $00, $00, $00, $00, $A8, $71, $00, $00
    db "but please have "
    db "some.           "
    prompt

    db $00, $00, $00, $00, $00, $00, $78, $70, $00, $00
    db "I made too many "
    db "cookies for the▽"
    prompt
    db $00, $00, $00, $00, $00, $00, $78, $70, $00, $00
    db "Harvest Festival"
    db "<PLAYER>,I would   ▽"
    prompt
    db $00, $00, $00, $00, $00, $00, $E2, $71, $00, $00
    db "like you to have"
    db "them.           "
    prompt 

    db $00, $00, $00, $00, $00, $00, $78, $70, $00, $00
    db "Oh No!          "
    db "Oh No! My bird ▽"
    prompt

    db $00, $00, $00, $00, $00, $00, $78, $70, $00, $00
    db "ran away.       "
    db "Please help me ▽"
    prompt

    db $01, $03, $05, $40, $4C, $00, $05, $72, $00, $00
    db "find him?       "
    db " YES         NO "
    prompt 
; Yes option
    db $00, $00, $00, $00, $00, $00, $78, $70, $00, $00
    db "Thank You.      "
    db "Please let me  ▽"
    prompt
    db $00, $00, $00, $00, $00, $00, $78, $70, $00, $00
    db "know as soon as "
    db "you find him.   "
    done
; No option
    db $00, $00, $00, $00, $00, $00, $78, $70, $00, $00
    db "Oh, I didn't    "
    db "know you were  ▽"
    prompt 
    db $00, $00, $00, $00, $00, $00, $78, $70, $00, $00
    db "busy.           "
    db "I am sorry.     "
    done 

    db $00, $00, $00, $00, $00, $00, $78, $70, $00, $00
    db "Oh I'm sorry... "
    db "Do you want to ▽"
    prompt
    db $00, $00, $00, $00, $00, $00, $78, $70, $00, $00
    db "be free?        "
    db "               ▽"
    prompt
    db $00, $00, $00, $00, $00, $00, $78, $70, $00, $00
    db "Well, thank you "
    db "for being with ▽"
    prompt
    db $00, $00, $00, $00, $00, $00, $3D, $72, $00, $00
    db "me, go and be   "
    db "free now...    ▽"
    prompt
    db $00, $00, $00, $00, $00, $00, $3E, $72, $00, $00
    db "Good bye...     "
    db "I'm not sad.   ▽"
    prompt
    db $00, $00, $00, $00, $00, $00, $49, $72, $00, $00
    db "I will be OK... "
    db "Thank you for  ▽"
    prompt
    db $00, $00, $00, $00, $00, $00, $78, $70, $00, $00
    db "helping me find "
    db "my bird...     ▽"
    prompt
    db $00, $00, $00, $00, $00, $00, $5C, $72, $00, $00
    db "Well, good bye. "
    db "                "
    prompt 



    db $00, $00, $00, $00, $00, $00, $78, $70, $00, $00
    db "<PLAYER>. The hurri-"
    db "cane yesterday ▽"
    prompt
    db $00, $00, $00, $00, $00, $00, $78, $70, $00, $00
    db "was strong.     "
    db "I lost my      ▽"
    prompt
    db $00, $00, $00, $00, $00, $00, $78, $70, $00, $00
    db "weather vain du-"
    db "ring the storm,▽"
    prompt
    db $00, $00, $00, $00, $00, $00, $78, $70, $00, $00
    db "did you see it? "
    db "It might have  ▽"
    prompt
    db $00, $00, $00, $00, $00, $00, $78, $70, $00, $00,
    db "been blown      "
    db "somewhere on   ▽"
    prompt
    db $00, $00, $00, $00, $00, $00, $78, $70, $00, $00
    db "your ranch...   "
    db "Could you help ▽"
    prompt
    db $01, $07, $09, $40, $4C, $00, $73, $72, $00, $00
    db "me find it?     "
    db " YES         NO "
    prompt 
    db $00, $00, $00, $00, $00, $00, $78, $70, $00, $00
    db "Thank you, <PLAYER> "
    db "That's why I    ▽"
    prompt 
    db $00, $00, $00, $00, $00, $00, $78, $70, $00, $00
    db "like you <PLAYER>.  "
    db "                "
    done 
    db $00, $00, $00, $00, $00, $00, $78, $70, $00, $00
    db "What!           "
    db "I was a fool   ▽"
    prompt 
    db $00, $00, $00, $00, $00, $00, $78, $70, $00, $00
    db "for asking you! "
    db "                "
    done 

    db $00, $00, $00, $00, $00, $00, $78, $70, $00, $00
    db "Oh, did you find"
    db "it? Good job.  ▽"
    prompt
    db $00, $00, $00, $00, $00, $00, $78, $70, $00, $00
    db "This weathervane"
    db "is a memento   ▽"
    prompt 
    db $00, $00, $00, $00, $00, $00, $78, $70, $00, $00
    db "from my mother. "
    db "Thank you for  ▽"
    prompt
    db $00, $00, $00, $00, $00, $00, $B0, $72, $00, $00
    db "fainding it.    "
    db "                "
    prompt

    db $00, $00, $00, $00, $00, $00, $78, $70, $00, $00
    db "I made a new    "
    db "kind of fruit  ▽"
    prompt 
    db $00, $00, $00, $00, $00, $00, $C5, $71, $00, $00
    db "juice. Would you"
    db "like to try it?▽"
    prompt 
    db $00, $00, $00, $00, $00, $00, $78, $70, $00, $00
    db "It is made from "
    db "wild grapes,   ▽"
    prompt
    db $00, $00, $00, $00, $00, $00, $78, $70, $00, $00
    db "lemons, honey,  "
    db "apples,        ▽"
    prompt 
    db $00, $00, $00, $00, $00, $00, $78, $70, $00, $00
    db "cranberries,    "
    db "figs, kiwis,   ▽"
    prompt
    db $00, $00, $00, $00, $00, $00, $78, $70, $00, $00
    db "and limes. Would"
    db "you like a     ▽"
    prompt 
    db $01, $05, $09, $40, $4C, $00, $CC, $72, $00, $00
    db "glass of juice? "
    db " YES         NO "
    prompt 
    db $00, $00, $00, $00, $00, $00, $78, $70, $00, $00
    db "Oh Thank you, I "
    db "was wondering  ▽"
    prompt
    db $00, $00, $00, $00, $00, $00, $78, $70, $00, $00
    db "how it would    "
    db "taste. It will ▽"
    prompt 
    db $00, $00, $00, $00, $00, $00, $78, $70, $00, $00
    db "be in the stores"
    db "soon, please   ▽"
    prompt 
    db $00, $00, $00, $00, $00, $00, $78, $70, $00, $00
    db "look for it.    "
    db "Ha ha ha.       "
    done 


