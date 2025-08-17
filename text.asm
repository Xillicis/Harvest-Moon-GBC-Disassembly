; I Think this is the beginning of all the text in the game.
Data_007_4501:
    text Text_DoNothing
    db "<DAY><SEASON>", $C8, $C9, $EE, $F0, $ED, $AB, "<A_OR_P>M"
    db " ", $AC, $AD, $AE, $AF, $B0, $F6, "   ", $B2, $B3, $B4, $B5, $B6, $06 
    done

Data_007_452c:
    text Text_DoNothing
    db " Pet       Timer"
    db " Horse     Memo "
    done

Data_007_4557:
    text Text_DoNothing
    db "Show the items  "
    db "that relate to ▽"
    prompt
    text Text_DoNothing
    db "the A button?   "
    db " YES        NO  "
    done

Data_007_45ad:
    text Text_DoNothing
    db $C8, $C9, $EE, $F0, $ED, $AB, $AA, $0C, $EF, $EF,
    db $EF, $EF, $EF, $EF, $EF, $EF, $D0, $D1, $D2, $D3, $D4, $D5, $D6, $D7, $D8, $F1,
    db $F2, $F3, $F4, $F5, $EF, $EF, $FF

GoToSleepText:: ; 07x45d8
    db $01, $00, $00, $40, $4C, $00
    dw Text_GoToSleep
    db $00, $00, 
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
    text Text_DoNothing
    db "What! There is  "
    db "money in the   ▽"
    prompt
    text Text_DoNothing
    db "drawer. Was this"
    db "grandpa's rainy ▽"
    prompt
    text Text_DoNothing
    db "day money? It's  "
    db "mine now!!     ▽"
    prompt
    text Text_DoNothing
    db "Received 1000G!!"
    db "                "
    done

EmptyDresserText::
    text Text_DoNothing
    db "Let me see...   "
    db "               ▽"
    prompt
    text Text_DoNothing
    db "Everything is   "
    db "alright!        "
    done

Data_007_4786::
    text Text_DoNothing
; Not sure what this is here...
    db $BA, $00, $01, $00, $12, $00, $44, $00, $34, $00, $02, $00, $81, $00, $92, $00,
    db $02, $00, $A0, $00, $12, $00, $83, $00, $30, $00, $03, $00, $BA, $00, $DA, $00,
    db $C8, $00, $12, $00, $B1, $00, $92, $00, $02, $00, $44, $00, $52, $00, $02, $00,
    db $13, $00, $01, $00, $AC, $00, $10, $00, $40, $00, $6B, $00, $FD, $00, $FD, $00,
    db $FF, $FF

SpringSunnyDayText::
    text Text_DoNothing
    db "It has been warm"
    db "everyday.      ▽"
    prompt

    text Text_DoNothing
    db "Tomorrow will be"
    db "a fine day.     "
    done

SpringRainyDayText::
    text Text_DoNothing
    db "It will be a    "
    db "rainy day      ▽"
    prompt

    text Text_DoNothing
    db "tomorrow,       "
    db "causing the    ▽"
    prompt

    text Text_DoNothing
    db "flowers to fall."
    db "                "
    done

SummerSunnyDayText::
    text Text_DoNothing
    db "It has been hot "
    db "everyday.      ▽"
    prompt

    text Text_DoNothing
    db "Tomorrow will be"
    db "a sunny day.    "
    done

SummerRainyDayText::
    text Text_DoNothing
    db "It will rain    "
    db "heavily all day▽"
    prompt

    text Text_DoNothing
    db "tomorrow.       "
    db "                "
    done

AutumnSunnyDayText::
    text Text_DoNothing
    db "The mountains   "
    db "are beautifully▽"
    prompt

    text Text_DoNothing
    db "colored.        "
    db "The sky will be▽"
    prompt

    text Text_DoNothing
    db "clear tomorrow. "
    db "                "
    done

AutumnRainyDayText::
    text Text_DoNothing
    db "It's getting col-"
    db "der day by day.▽"
    prompt

    text Text_DoNothing
    db "It will rain all"
    db "day tomorrow.   "
    done

WinterSunnyDayText::
    text Text_DoNothing
    db "It's getting col-"
    db "der day by day.▽"
    prompt

    text Text_DoNothing
    db "It will be sunny"
    db "tomorrow.       "
    done

WinterSnowyDayText::
    text Text_DoNothing
    db "It's cold every- "
    db "day. It will   ▽"
    prompt

    text Text_DoNothing
    db "snow tomorrow.  "
    db "                "
    done

HurricaneText:: ; 07x4ad8
    text Text_DoNothing
    db "Hurricane Bob   "
    db "has just       ▽"
    prompt

    text Text_DoNothing
    db "reached the     "
    db "coast. It will ▽"
    prompt

    text Text_DoNothing
    db "be stormy all   "
    db "day tomorrow.   "
    done

StrongWindsText::
    text Text_DoNothing
    db "Whoa! What      "
    db "strong winds.  ▽"
    prompt

    text Text_DoNothing
    db "Better stay     "
    db "inside today.   "
    done

ElipsesText::
    text Text_DoNothing
    db "…………………………………………"
    db "………………………………………."
    done

;;; This is text that plays occurs outside around the farmstead.

TooLateText1::
    text Text_DoNothing
    db "Oops! It's       "
    db "already 6AM.   ▽"
    prompt

    text Text_DoNothing
    db "I better go home"
    db "and have       ▽"
    prompt

    text Text_DoNothing
    db "something to    "
    db "eat.            "
    done

TooLateText2::
    text Text_DoNothing
    db "Oh My! It's      "
    db "already 6AM.   ▽"
    prompt

    text Text_DoNothing
    db "I better get    "
    db "going home!     "
    done

ShippingBoxText::
    text Text_DoNothing
    db " [Shipping Box] "
    db "Pick up is at  ▽"
    prompt

    text Text_DoNothing
    db "5PM everyday.   "
    db "     From Trader"
    done
FencePostShedText::
    text Text_DoNothing
    db "Current Material"
    db "      <NUM_MATERIAL> Pieces"
    done

StableSignText::
    text Text_DoNothing
    db "    [Stable]    "
    db "                "
    done

SiloSignText::
    text Text_DoNothing
    db "Current Fodder  "
    db "      <NUM_FODDER> Pieces"
    done

CalendarText::
    text Text_DoNothing
    db "<DAY_DIGIT2>", $EC, "<SEASON>", $C8, $C9, $EE, $F0, $ED, $AB, "<A_OR_P>M"
    db "          ", $CA, $CB, "YEAR"
    done

    text Text_DoNothing
    db "Good Morning    "
    db "<PLAYER>. It's me.  ▽"
    prompt

    text Text_DoNothing
    db "How are you     "
    db "doing?         ▽"
    prompt

HorseIsLostText::
    text Text_DoNothing
    db "It seems that   "
    db "this horse is  ▽"
    prompt

    text Text_DoNothing
    db "lost. Would you "
    db "please take    ▽"
    prompt

    text Text_DoNothing
    db "care of this    "
    db "horse on your  ▽"
    prompt

    text Text_DoNothing
    db "ranch? Please   "
    db "name him.       "
    done

ProduceShippedText::
    text Text_DoNothing
    db "Is this all for "
    db "today's         ▽"
    prompt

    text Text_DoNothing
    db "shipment? It    "
    db "will be  ", $B7, $B8, $B9, $BA, $BB, "G▽"
    prompt 

    text Text_DoNothing
    db "The money will  "
    db "be transferred ▽"
    prompt

    text Text_DoNothing
    db "tomorrow!       "
    db "Well, see you!! "
    done

NoShipmentText::
    text Text_DoNothing
    db "There is no     "
    db "shipment today?▽"
    prompt

    text Text_DoNothing
    db "Well, see you   "
    db "tomorrow.       "
    done

CarpenterEarthquakeText::
    text Text_DoNothing
    db "<PLAYER> are you    "
    db "alright?       ▽"
    prompt

    text Text_DoNothing
    db "That earthquake "
    db "a little while ▽"
    prompt

    text Text_DoNothing
    db "ago was huge!   "
    db "               ▽"
    prompt

    text Text_DoNothing
    db "Was anything    "
    db "damaged by the ▽"
    prompt

    text Text_DoNothing
    db "earthquake?     "
    db "Be sure to     ▽"
    prompt

    text Text_DoNothing
    db "examine every-  "
    db "thing. Good Bye."
    done

PicnicInvitationText::
    text Text_DoNothing
    db "Hello. Tomorrow "
    db "morning we are ▽"
    prompt

    text Text_DoNothing
    db "going on a      "
    db "picnic.        ▽"
    prompt

    text Text_DoNothing
    db "Could we have it"
    db "here?          ▽"
    prompt

    db $01, $04, $06, $40, $4C, $00
    dw Text_PicnicInvitation
    db $00, $00
    db "                "
    db " YES         NO "
    prompt

PicnicInvitationAcceptText::
    text Text_DoNothing
    db "YEAH! That is   "
    db "great! We will ▽"
    prompt

    text Text_DoNothing
    db "have lots of    "
    db "fun.            "
    done 

PicnicInvitationDeclineText::
    text Text_DoNothing
    db "Really? Why...  "
    db "That's no fun!   "
    done 

MariaGoToPicnicText::
    text Text_DoNothing
    db "Hello <PLAYER>.     "
    db "I hope you     ▽"
    prompt 
    text Text_DoNothing
    db "weren't too     "
    db "busy.          ▽"
    prompt 
    text Text_HeadToPicnic
    db "Let's go on the  "
    db "picnic...       "
    prompt

EveJuicePicnicText::
    text Text_DoNothing
    db "Hi <PLAYER>.        "
    db "This is        ▽"
    prompt
    text Text_DoNothing
    db "Wild Grape      "
    db "Juice.         ▽"
    prompt 
    text Text_DoNothing
    db "I know this is  "
    db "a little sweet,▽"
    prompt
    text Label_007_71a8
    db "but please have "
    db "some.           "
    prompt
    text Text_DoNothing
    db "I made too many "
    db "cookies for the▽"
    prompt
    text Text_DoNothing
    db "Harvest Festival"
    db "<PLAYER>,I would   ▽"
    prompt
    text Label_007_71e2
    db "like you to have"
    db "them.           "
    prompt 

RescueBirdText::
    text Text_DoNothing
    db "Oh No!          "
    db "Oh No! My bird ▽"
    prompt
    text Text_DoNothing
    db "ran away.       "
    db "Please help me ▽"
    prompt
    db $01, $03, $05, $40, $4C, $00, $05, $72, $00, $00
    db "find him?       "
    db " YES         NO "
    prompt

RescueBirdAcceptText::
    text Text_DoNothing
    db "Thank You.      "
    db "Please let me  ▽"
    prompt
    text Text_DoNothing
    db "know as soon as "
    db "you find him.   "
    done

RescueBirdDeclineText::
    text Text_DoNothing
    db "Oh, I didn't    "
    db "know you were  ▽"
    prompt 
    text Text_DoNothing
    db "busy.           "
    db "I am sorry.     "
    done 

    text Text_DoNothing
    db "Oh I'm sorry... "
    db "Do you want to ▽"
    prompt
    text Text_DoNothing
    db "be free?        "
    db "               ▽"
    prompt
    text Text_DoNothing
    db "Well, thank you "
    db "for being with ▽"
    prompt
    text Text_DoNothing2
    db "me, go and be   "
    db "free now...    ▽"
    prompt
    text Label_007_723e
    db "Good bye...     "
    db "I'm not sad.   ▽"
    prompt
    text Label_007_7249
    db "I will be OK... "
    db "Thank you for  ▽"
    prompt
    text Text_DoNothing
    db "helping me find "
    db "my bird...     ▽"
    prompt
    text Label_007_725c
    db "Well, good bye. "
    db "                "
    prompt 

FindWeatherVaneText::
    text Text_DoNothing
    db "<PLAYER>. The hurri-"
    db "cane yesterday ▽"
    prompt
    text Text_DoNothing
    db "was strong.     "
    db "I lost my      ▽"
    prompt
    text Text_DoNothing
    db "weather vain du-"
    db "ring the storm,▽"
    prompt
    text Text_DoNothing
    db "did you see it? "
    db "It might have  ▽"
    prompt
    text Text_DoNothing
    db "been blown      "
    db "somewhere on   ▽"
    prompt
    text Text_DoNothing
    db "your ranch...   "
    db "Could you help ▽"
    prompt
    db $01, $07, $09, $40, $4C, $00
    dw Text_FindWeatherVane
    db $00, $00
    db "me find it?     "
    db " YES         NO "
    prompt

FindWeatherVaneAcceptText::
    text Text_DoNothing
    db "Thank you, <PLAYER> "
    db "That's why I    ▽"
    prompt 
    text Text_DoNothing
    db "like you <PLAYER>.  "
    db "                "
    done

FindWeatherVaneDeclineText::
    text Text_DoNothing
    db "What!           "
    db "I was a fool   ▽"
    prompt 
    text Text_DoNothing
    db "for asking you! "
    db "                "
    done 

    text Text_DoNothing
    db "Oh, did you find"
    db "it? Good job.  ▽"
    prompt
    text Text_DoNothing
    db "This weathervane"
    db "is a memento   ▽"
    prompt 
    text Text_DoNothing
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

    text Text_DoNothing
    db "Huh, really? Is "
    db "it strange...  ▽"
    prompt
    text Text_DoNothing
    db "I thought it    "
    db "would taste    ▽"
    prompt
    text Text_DoNothing
    db "good", $54, " but thank "
    db "you anyway.    ▽"
    prompt 
    text Text_DoNothing
    db "I will try      "
    db "again...        "
    done 

    text Text_DoNothing
    db "You work hard   "
    db "everyday, <PLAYER>.▽"
    prompt 
    text Text_DoNothing
    db "Do you have a   "
    db "Water Can?     ▽"
    prompt 
    text Text_DoNothing
    db "I can make a    "
    db "Sprinkler by   ▽"
    prompt 
    text Text_DoNothing
    db "modifying a     "
    db "water can.     ▽"
    prompt
    text Text_DoNothing
    db "I need 7days to "
    db "complete the   ▽"
    prompt 
    text Text_DoNothing
    db "sprinkler. Make "
    db "sure you come  ▽"
    prompt 
    text Text_DoNothing
    db "and buy one.    "
    db "                "
    done 

UpgradeHousePropositionText::
    text Text_DoNothing
    db "Hey!! <PLAYER>.     "
    db "So this is the ▽"
    prompt 

    text Text_DoNothing
    db "house you want  "
    db "to expand...   ▽"
    prompt 

    text Text_DoNothing
    db "Well...you need "
    db $E8, $FB, $EA, $EB, "G and      ▽"
    prompt 

    text Text_DoNothing
    db " ", $E5, $E6, $E7, $EF, "materials  "
    db "Shall I expand ▽"
    prompt 

    db $01, $05, $0B, $40, $4C, $00
    dw Text_HouseExpansion
    db $00, $00
    db "the house?      "
    db " YES         NO "
    prompt

UpgradeHouseYesText::
    text Text_DoNothing
    db "Alright! It will"
    db "take me 3 days ▽"
    prompt
    text Text_DoNothing
    db "to complete,    "
    db "starting       ▽"
    prompt
    text Text_DoNothing
    db "tomorrow.       "
    db "                "
    done

NotEnoughMaterialsOrMoneyText::
    text Text_DoNothing
    db "Wait one minute!"
    db "You don't have ▽"
    prompt
    text Text_DoNothing
    db "enough to do the"
    db "job.           ▽"
    prompt
    text Text_DoNothing
    db "It can't be done"
    db "now. See ya.    "
    done

DeclineHouseUpgradeText::
    text Text_DoNothing
    db "Oh, I see.      "
    db "Bye then.       "
    done

FindNinaText::
    text Text_DoNothing
    db "<PLAYER>... Have you"
    db "seen Nina?     ▽"
    prompt
    text Text_DoNothing
    db "She hasn't come "
    db "back home since▽"
    prompt
    text Text_DoNothing
    db "yesterday...    "
    db "I know you are ▽"
    prompt
    text Text_DoNothing
    db "busy, but could "
    db "you please help▽"
    prompt
    db $01, $05, $08, $40, $4C, $00, $CA, $73, $00, $00
    db "find her.       "
    db " YES         NO "
    prompt

FindNinaAcceptText::
    text Text_DoNothing
    db "I will go check "
    db "her house.     ▽"
    prompt
    text Text_DoNothing
    db "<PLAYER>, could you "
    db "check around   ▽"
    prompt
    text Text_DoNothing
    db "your ranch...   "
    db "                "
    done

FindNinaDeclineText::
    text Text_DoNothing
    db "<PLAYER>, is your   "
    db "ranch work more▽"
    prompt
    text Text_DoNothing
    db "important?      "
    db "               ▽"
    prompt
    text Text_DoNothing
    db "I see...then why"
    db "don't you go   ▽"
    prompt 
    text Text_DoNothing
    db "lay an egg!     "
    db "                "
    done 

;;;
    text Text_DoNothing
    db "<PLAYER>.           "
    db "can I please   ▽"
    prompt 
    text Text_DoNothing
    db "stay at your    "
    db "ranch          ▽"
    prompt 
    db $01, $03, $05, $40, $4C, $00, $DB, $73, $00, $00
    db "for a while?    "
    db " YES         NO "
    prompt 

    text Text_DoNothing
    db "Thank you very  "
    db "much for your  ▽"
    prompt 
    text Text_DoNothing
    db "kindness.       "
    db "                "
    done

    text Text_DoNothing
    db "Really? I see.  "
    db "I'm sorry,     ▽"
    prompt 
    text Text_DoNothing
    db "I asked for too "
    db "much.           "
    done 

    text Text_DoNothing
    db "I know ranch    "
    db "work is diffi- ▽"
    prompt 
    text Text_DoNothing
    db "cult but keep up"
    db "the good work.  "
    done

