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
    db "Really?!? My    "
    db "skills must    ▽"
    prompt 
    text text_do_nothing
    db "have become     "
    db "rusty or you   ▽"
    prompt
    text text_do_nothing
    db "don't know      "
    db "how to use it!  "
    done 

    text text_do_nothing
    db "Make sure that  "
    db "you feed        "
    done 

    text text_do_nothing
    db "them everyday.  "
    db "Otherwise, your "
    done 

    text text_do_nothing
    db "Well, it seems  "
    db "I have stayed  ▽"
    prompt 
    text text_do_nothing
    db "to long.        "
    db "Good night.     "
    done 

NewGameIntroText::
    text text_do_nothing
    db "<PLAYER>...Wake up, "
    db "<PLAYER>. I have a ▽"
    prompt 
    text text_do_nothing
    db "favor to ask of "
    db "you. My ranch  ▽"
    prompt
    text text_do_nothing
    db "has been ne-    "
    db "glected because▽"
    prompt 
    text text_do_nothing
    db "I did not have a"
    db "successor! So, ▽"
    prompt 
    text text_do_nothing
    db "I want you to   "
    db "take my place  ▽"
    prompt 
    text text_do_nothing
    db "to restore my   "
    db "ranch   and    ▽"
    prompt 
    text text_do_nothing
    db "surpass me as   "
    db "Ranch Master!! ▽"
    prompt
    text text_do_nothing
    db "Unfortunately, I"
    db "can not help   ▽"
    prompt 
    text text_do_nothing
    db "you because I am"
    db "a spirit.      ▽"
    prompt 
    text text_do_nothing
    db "At the end of   "
    db "winter, I can  ▽"
    prompt 
    text text_do_nothing
    db "come and check  "
    db "up on you.     ▽"
    prompt
    text text_do_nothing
    db "I must be going "
    db "now. Good Luck ▽"
    prompt
    text text_do_nothing
    db "future Ranch    "
    db "Master!        ▽"
    prompt
    text text_do_nothing
    db "Oh, I forgot to "
    db "tell you that  ▽"
    prompt
    text text_do_nothing
    db "the crops will  "
    db "die when the   ▽"
    prompt 
    text text_do_nothing
    db "seasons change! "
    db "Be sure to     ▽"
    prompt
    text text_do_nothing
    db "check the date  "
    db "on the         ▽"
    prompt 
    text text_do_nothing
    db "calendar!! It is"
    db "essential for  ▽"
    prompt
    text text_do_nothing
    db "growing crops!  "
    db "                "
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

