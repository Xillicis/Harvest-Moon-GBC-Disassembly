Intro_ShippingMilkText::
    text text_do_nothing
    db " [Shipping Box] "
    db "   [for Milk]  ▽"
    prompt 
    text text_do_nothing
    db "Ship milk from  "
    db "here.           "
    done

Intro_CowBirthText::
    text text_do_nothing
    db "Put the mated   "
    db "cows in here   ▽"
    prompt
    text text_do_nothing
    db "until they give "
    db "birth!          "
    done

Intro_FodderText::
    text text_do_nothing
    db " [Take fodder]  "
    db "  [from here]  ▽"
    prompt 
    text text_do_nothing
    db "The fodder comes"
    db "from the Silo.  "
    done

Intro_FeedingStallText::
    text text_do_nothing
    db "[Feeding Stall] "
    db "Put feed here  ▽"
    prompt
    text text_do_nothing
    db "everyday!!      "
    db "                "
    done 

Intro_ShippingEggText::
    text text_do_nothing
    db " [Shipping Box] "
    db "   [for Egg]   ▽"
    prompt 
    text text_do_nothing
    db "Ship eggs from  "
    db "here.           "
    done

Intro_HatchEggText::
    text text_do_nothing
    db "Place to hatch  "
    db "Eggs.           "
    prompt
    text text_do_nothing
    db "Please place    "
    db "eggs here.      "
    done

HelloCowText::
    text text_do_nothing
    db "Hello ", $C4, $C5, $C6, $C7, ". You "
    db "look fine today."
    done

CowBirthDateText::
    text text_do_nothing
    db $C2, $C3, " more days    "
    db "until your     ▽"
    prompt
    text text_do_nothing 
    db "delivery!!      "
    db "Come on, ", $C4, $C5, $C6, $C7, ".  " 
    done 

CowIsSickText::
    text text_do_nothing 
    db "This is terrible"
    db $C4, $C5, $C6, $C7, " is sick.  ▽"
    prompt
    text text_do_nothing
    db "Let's cure it    "
    db "with medicine!  "
    done

BabyCowIsBornText::
    text text_do_nothing
    db "Yeah! A baby cow"
    db "is born.       ▽"
    prompt 
    text text_do_nothing
    db "Let's name it.   "
    db "                "
    done

; There is a chunk of duplicate text here. Interesting.
HellowCowText_duplicate::
    text text_do_nothing
    db "Hello ", $C4, $C5, $C6, $C7, ". You " 
    db "look fine today."
    done

CowBirthDateText_duplicate::
    text text_do_nothing
    db $C2, $C3, " more days    "
    db "until your     ▽"
    prompt
    text text_do_nothing
    db "deliverly!! You "
    db "can do it, ", $C4, $C5, $C6, $C7, "."
    done

CowIsSickText_duplicate::
    text text_do_nothing
    db "This is awful!! "
    db $C4, $C5, $C6, $C7, " is sick.  ▽"
    prompt
    text text_do_nothing
    db "Let's cure it    "
    db "with medicine!! "
    done

BabyCowIsBornText_duplicate::
    text text_do_nothing
    db "Yeah! A baby cow"
    db "is born.       ▽"
    prompt 
    text text_do_nothing
    db "Let's name it.   "
    db "                "
    done

Text_4781::
    text text_do_nothing
    db "Good for        "
    db "muscle pains   ▽"
    prompt
    text text_do_nothing
    db "and             "
    db "stamina recovery"
    done 

DontThrowObjectsText::
    text text_do_nothing
    db "Don't throw     "
    db "objects in     ▽"
    prompt
    text text_do_nothing
    db "the Spring. From"
    db "Harvest Goddess."
    done 

PickaxPassThroughText::
    text text_do_nothing
    db "Use the Pickax  "
    db "to pass through▽"
    prompt
    text text_do_nothing
    db "here.           "
    db "                "
    done

HarvestSpriteIntroText::
    text text_do_nothing
    db "Hi! Are you the "
    db "one that       ▽"
    prompt 
    text text_do_nothing 
    db "inherited your  "
    db "grandpa's ranch?▽"
    prompt 
    text text_do_nothing 
    db "We are Harvest  "
    db "Sprites. We are▽"
    prompt 
    text text_do_nothing
    db "here for a      "
    db "reason.        ▽"
    prompt 
    text text_do_nothing
    db "please come and "
    db "see us.        ▽"
    prompt
    text text_do_nothing
    db "In exchange, we "
    db "would like to  ▽"
    prompt 
    text text_do_nothing
    db "have something  "
    db "to eat         ▽"
    prompt 
    text text_do_nothing
    db "everyday        "
    db "[Give and Take] "
    done 

HarvestSpriteHowdyText::
    text text_do_nothing
    db "Howdy.          "
    db "Humans greet   ▽"
    prompt 
    text text_do_nothing
    db "this way, don't "
    db "they...         "
    done 

HarvestSpriteEarthquakeText::
    text text_do_nothing
    db "It was a terrib-"
    db "le earthquake. ▽"
    prompt 
    text text_do_nothing
    db "The earthquake  "
    db "destroyed deep ▽"
    prompt
    text text_do_nothing
    db "inside here.    "
    db "                "
    done

HarvestSpriteBeautifulGoddessText::
    text text_do_nothing
    db "The Harvest     "
    db "Goddess is very▽"
    prompt 
    text text_do_nothing
    db "beautiful,      "
    db "isn't she...    "
    done

HarvestSpriteGoodEveningText::
    text text_do_nothing
    db "Good Evening.   "
    db "Humans greet   ▽"
    prompt
    text text_do_nothing
    db "this way, don't "
    db "they...         "
    done

HarvestSpriteEarthquake2Text::
    text text_do_nothing
    db "It really shook."
    db "It was terrible▽"
    prompt 
    text text_do_nothing
    db "Rocks crumbled  "
    db "all around.     "
    done

HarvestGoddessIsFriendlyText::
    text text_do_nothing
    db "The Harvest     "
    db "Goddess is very▽"
    prompt
    text text_do_nothing
    db "friendly,       "
    db "isn't she...    "
    done

HarvestSpriteFishingRodText::
    text text_do_nothing
    db "Oh, that is a   "
    db "fishing rod.   ▽"
    prompt
    text text_do_nothing
    db "Be sure to cast "
    db "from your      ▽"
    prompt
    text text_do_nothing
    db "right side.     "
    db "                "
    done

HarvestSpriteGoodMorningText::
    text text_do_nothing
    db "Good Morning.   "
    db "Humans greet   ▽"
    prompt
    text text_do_nothing
    db "this way,       "
    db "don't They...   "
    done

HarvestSpriteStillShakingText::
    text text_do_nothing
    db "Woah...Woah.... "
    db "I feel like it ▽"
    prompt
    text text_do_nothing
    db "is still        "
    db "shaking.        "
    done

HarvestSpriteSeeTheHarvestGoddessText::
    text text_do_nothing
    db "I wish I could  "
    db "see the Harvest▽"
    prompt
    text text_do_nothing
    db "Goddess.        "
    db "Darn it.        "
    done

ThanksText::
    text text_do_nothing
    db "Thanks.         "
    db "                "
    done

    text text_do_nothing
    db $14, $00, $94, $00, $40, $00, $44, $00, $D9, $00, $01, $00, $80, $00, $40, $00,
    db $01, $00, $44, $00, $7A, $00, $AF, $00, $AF, $00, $AF, $00, $AF, $00, $AF, $00,
    db $AF, $00, $AF, $00, $AF, $00, $AF, $00, $AF, $00, $AF, $00, $AF, $00, $AF, $00,
    db $AF, $00, $AF, $00, $AF, $00, $AF, $00, $AF, $00, $AF, $00, $AF, $00, $AF, $00,
    done

    db $FF

AttackHarvestSpriteText::
    text text_do_nothing
    db "Ouch! What are  "
    db "you doing!!     "
    done

HarvestSpriteSickleQuestionText::
    text text_do_nothing
    db "Hey <PLAYER>.       "
    db "               ▽"
    prompt
    text text_do_nothing
    db "Is the Sickle   "
    db "you are using  ▽"
    prompt
    yes_no_text HarvestSpriteSickleQuestionText, HarvestSpriteSickleYesText, HarvestSpriteSickleNoText
    db $40, $4C
    db $00
    dw ImproveSickleResponse
    db $00, $00
    db "sharp enough?   "
    db " YES         NO "
    prompt

HarvestSpriteSickleYesText::
    text text_do_nothing
    db "He he he, I made"
    db "it!            ▽"
    prompt
    text text_do_nothing
    db "I am glad it is "
    db "working.       ▽"
    prompt 
    text text_do_nothing
    db "Please let me   "
    db "borrow it and  ▽"
    prompt
    text text_do_nothing
    db "I will make it  "
    db "even sharper!  ▽"
    prompt
    text text_do_nothing
    db "Please come back"
    db "in 12 hours.   ▽"
    prompt

    text text_do_nothing
    db "Oh, that means  "
    db "12 hours after ▽"
    prompt
    text text_do_nothing
    db "I start helping "
    db "you. See you.   "
    done

HarvestSpriteSickleNoText::
    text text_do_nothing
    db $11, $1E, $1A, $25, $25, $32, $41, $40, $41, $EF, $0C, $32, $EF, $EF, $EF, $EF,
    db $2C, $24, $22, $25, $25, $2C, $EF, $26, $2E, $2C, $2D, $EF, $EF, $EF, $EF, $E9,
    prompt 
    text text_do_nothing
    db $21, $1A, $2F, $1E, $EF, $1B, $1E, $1C, $28, $26, $1E, $EF, $EF, $EF, $EF, $EF,
    db $2B, $2E, $2C, $2D, $32, $EF, $28, $2B, $EF, $32, $28, $2E, $EF, $EF, $EF, $E9,
    prompt
    text text_do_nothing
    db $1D, $28, $27, $4B, $2D, $EF, $24, $27, $28, $30, $EF, $EF, $EF, $EF, $EF, $EF,
    db $21, $28, $30, $EF, $2D, $28, $EF, $2E, $2C, $1E, $EF, $22, $2D, $40, $EF, $EF,
    done 

    text text_do_nothing
    db $0C, $1A, $24, $1E, $EF, $2C, $2E, $2B, $1E, $EF, $2D, $21, $1A, $2D, $EF, $EF,
    db $32, $28, $2E, $EF, $1F, $1E, $1E, $1D, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF,
    done 

    text text_do_nothing
    db $2D, $21, $1E, $26, $EF, $1E, $2F, $1E, $2B, $32, $1D, $1A, $32, $4C, $EF, $EF,
    db $0E, $2D, $21, $1E, $2B, $30, $22, $2C, $1E, $8E, $EF, $32, $28, $2E, $2B, $EF,
    done 

    text text_do_nothing
    db $16, $1E, $25, $25, $8E, $EF, $22, $2D, $EF, $2C, $1E, $1E, $26, $2C, $EF, $EF,
    db $08, $EF, $21, $1A, $2F, $1E, $EF, $2C, $2D, $1A, $32, $1E, $1D, $EF, $EF, $E9,
    prompt 
    text text_do_nothing
    db $2D, $28, $EF, $25, $28, $27, $20, $4C, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF,
    db $06, $28, $28, $1D, $EF, $27, $22, $20, $21, $2D, $4C, $EF, $EF, $EF, $EF, $EF,
    done 

    text text_do_nothing
    db $A0, $A1, $A2, $A3, $4C, $4C, $4C, $16, $1A, $24, $1E, $EF, $2E, $29, $8E, $EF,
    db $A0, $A1, $A2, $A3, $4C, $EF, $08, $EF, $21, $1A, $2F, $1E, $EF, $1A, $EF, $E9,
    prompt 
    text text_do_nothing
    db $1F, $1A, $2F, $28, $2B, $EF, $2D, $28, $EF, $1A, $2C, $24, $EF, $28, $1F, $EF,
    db $32, $28, $2E, $4C, $EF, $0C, $32, $EF, $2B, $1A, $27, $1C, $21, $EF, $EF, $E9,
    prompt
    text text_do_nothing
    db $21, $1A, $2C, $EF, $1B, $1E, $1E, $27, $EF, $27, $1E, $44, $EF, $EF, $EF, $EF,
    db $20, $25, $1E, $1C, $2D, $1E, $1D, $EF, $1B, $1E, $1C, $1A, $2E, $2C, $1E, $E9,
    prompt 
    text text_do_nothing
    db $08, $EF, $1D, $22, $1D, $EF, $27, $28, $2D, $EF, $21, $1A, $2F, $1E, $EF, $1A,
    db $2C, $2E, $1C, $1C, $1E, $2C, $2C, $28, $2B, $40, $EF, $12, $28, $8E, $EF, $E9,
    prompt 
    text text_do_nothing
    db $08, $EF, $30, $1A, $27, $2D, $EF, $32, $28, $2E, $EF, $2D, $28, $EF, $EF, $EF,
    db $2D, $1A, $24, $1E, $EF, $26, $32, $EF, $29, $25, $1A, $1C, $1E, $EF, $EF, $E9,
    prompt 
    text text_do_nothing
    db $2D, $28, $EF, $2B, $1E, $2C, $2D, $28, $2B, $1E, $EF, $26, $32, $EF, $EF, $EF,
    db $2B, $1A, $27, $1C, $21, $EF, $EF, $EF, $1A, $27, $1D, $EF, $EF, $EF, $EF, $E9,
    prompt 
    text text_do_nothing
    db $2C, $2E, $2B, $29, $1A, $2C, $2C, $EF, $26, $1E, $EF, $1A, $2C, $EF, $EF, $EF,
    db $11, $1A, $27, $1C, $21, $EF, $0C, $1A, $2C, $2D, $1E, $2B, $40, $40, $EF, $E9,
    prompt
    text text_do_nothing
    db $14, $27, $1F, $28, $2B, $2D, $2E, $27, $1A, $2D, $1E, $25, $32, $8E, $EF, $08,
    db $1C, $1A, $27, $EF, $27, $28, $2D, $EF, $21, $1E, $25, $29, $EF, $EF, $EF, $E9,
    prompt 
    text text_do_nothing
    db $32, $28, $2E, $EF, $1B, $1E, $1C, $1A, $2E, $2C, $1E, $EF, $08, $EF, $1A, $26,
    db $1A, $EF, $2C, $29, $22, $2B, $22, $2D, $4C, $EF, $EF, $EF, $EF, $EF, $EF, $E9,
    prompt 
    text text_do_nothing
    db $00, $2D, $EF, $2D, $21, $1E, $EF, $1E, $27, $1D, $EF, $28, $1F, $EF, $EF, $EF,
    db $30, $22, $27, $2D, $1E, $2B, $8E, $EF, $08, $EF, $1C, $1A, $27, $EF, $EF, $E9,
    prompt 
    text text_do_nothing
    db $1C, $28, $26, $1E, $EF, $1A, $27, $1D, $EF, $1C, $21, $1E, $1C, $24, $EF, $EF,
    db $2E, $29, $EF, $28, $27, $EF, $32, $28, $2E, $4C, $EF, $EF, $EF, $EF, $EF, $E9,
    prompt
    text text_do_nothing
    db $08, $EF, $26, $2E, $2C, $2D, $EF, $1B, $1E, $EF, $20, $28, $22, $27, $20, $EF,
    db $27, $28, $30, $4C, $EF, $06, $28, $28, $1D, $EF, $0B, $2E, $1C, $24, $EF, $E9,
    prompt
    text text_do_nothing
    db $1F, $2E, $2D, $2E, $2B, $1E, $EF, $11, $1A, $27, $1C, $21, $EF, $EF, $EF, $EF,
    db $0C, $1A, $2C, $2D, $1E, $2B, $40, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $E9,
    prompt
    text text_do_nothing
    db $0E, $21, $8E, $EF, $08, $EF, $1F, $28, $2B, $20, $28, $2D, $EF, $2D, $28, $EF,
    db $2D, $1E, $25, $25, $EF, $32, $28, $2E, $EF, $2D, $21, $1A, $2D, $EF, $EF, $E9,
    prompt
    text text_do_nothing
    db $2D, $21, $1E, $EF, $1C, $2B, $28, $29, $2C, $EF, $30, $22, $25, $25, $EF, $EF,
    db $1D, $22, $1E, $EF, $30, $21, $1E, $27, $EF, $2D, $21, $1E, $EF, $EF, $EF, $E9,
    prompt 
    text text_do_nothing
    db $2C, $1E, $1A, $2C, $28, $27, $2C, $EF, $1C, $21, $1A, $27, $20, $1E, $40, $EF,
    db $01, $1E, $EF, $2C, $2E, $2B, $1E, $EF, $2D, $28, $EF, $EF, $EF, $EF, $EF, $E9,
    prompt
    text text_do_nothing
    db $1C, $21, $1E, $1C, $24, $EF, $2D, $21, $1E, $EF, $1D, $1A, $2D, $1E, $EF, $EF,
    db $28, $27, $EF, $2D, $21, $1E, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $E9,
    prompt 
    text text_do_nothing
    db $1C, $1A, $25, $1E, $27, $1D, $1A, $2B, $40, $40, $EF, $08, $2D, $EF, $22, $2C,
    db $1E, $2C, $2C, $1E, $27, $2D, $22, $1A, $25, $EF, $1F, $28, $2B, $EF, $EF, $E9,
    prompt
    text text_do_nothing
    db $20, $2B, $28, $30, $22, $27, $20, $EF, $1C, $2B, $28, $29, $2C, $40, $EF, $EF,
    db $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF,
    done

    text text_do_nothing
    db $13, $21, $1A, $27, $24, $EF, $32, $28, $2E, $4C, $EF, $EF, $EF, $EF, $EF, $EF,
    db $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF,
    done

    text text_do_nothing
    db $13, $21, $1A, $27, $24, $EF, $32, $28, $2E, $EF, $2F, $1E, $2B, $32, $EF, $EF,
    db $26, $2E, $1C, $21, $40, $40, $40, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $E9,
    prompt
    text text_do_nothing
    db $16, $1E, $EF, $30, $22, $25, $25, $EF, $1A, $25, $2C, $28, $EF, $2D, $2B, $32,
    db $2D, $28, $EF, $21, $1E, $25, $29, $EF, $32, $28, $2E, $4C, $EF, $EF, $EF, $EF,
    done

