UpgradeHoeText:: ; 0cx6d8d
    text Text_DoNothing_0C
    db "Hey <PLAYER>. How is"
    db "the condition  ▽"
    prompt
    text Text_DoNothing_0C
    db "of the Hoe?     "
    db "Does it        ▽"
    prompt 
    yes_no_text UpgradeHoeText, UpgradeHoe_YesText, UpgradeHoe_NoText
    db $40, $4C, $00, 
    dw UpgradeHoe
    db $00, $00
    db "plow well?      "
    db " YES         NO "
    prompt 

UpgradeHoe_YesText::
    text Text_DoNothing_0C
    db "He he he,       "
    db "I made it!     ▽"
    prompt 
    text Text_DoNothing_0C
    db "I am glad it is "
    db "working.       ▽"
    prompt 
    text Text_DoNothing_0C
    db "Please let me   "
    db "borrow it and  ▽"
    prompt 
    text Text_DoNothing_0C
    db "I will make it  "
    db "even sharper!  ▽"
    prompt 
    text Text_DoNothing_0C
    db "Please come back"
    db "in 24 hours.   ▽"
    prompt
    text Text_DoNothing_0C
    db "Oh, that means  "
    db "24 hours after ▽"
    prompt 
    text Text_DoNothing_0C
    db "I start helping "
    db "you. See you.   "
    done 

UpgradeHoe_NoText::
    text Text_DoNothing_0C
    db "Really?!? My    "
    db "skills must    ▽"
    prompt 
    text Text_DoNothing_0C
    db "have become     "
    db "rusty or you   ▽"
    prompt 
    text Text_DoNothing_0C
    db "don't know      "
    db "what you are   ▽"
    prompt 
    text Text_DoNothing_0C
    db "doing!          "
    db "                "
    done 

GoldenAxText:: ; 0cx6fe7
    text Text_DoNothing_0C
    db "Hello! You are  "
    db "the owner of   ▽"
    prompt
    text Text_DoNothing_0C
    db "this ranch?  Do "
    db "you know how I ▽"
    prompt 
    text Text_DoNothing_0C
    db "know? Hmm, it is"
    db "a piece of cake▽"
    prompt 
    text Text_DoNothing_0C
    db "for the Harvest "
    db "Goddess.       ▽"
    prompt 
    text Text_DoNothing_0C
    db "By the way, did "
    db "you drop this  ▽"
    prompt 
    db $01, $0B, $06, $40, $4C, $00, $01, $7D, $00, $00
    db "Golden Ax?      "
    db " YES         NO "
    prompt

GoldenAx_NoText::
    text UpgradeAx
    db "Wow! What an ho-"
    db "nest person you▽"
    prompt
    text Text_DoNothing_0C
    db "are! For your   "
    db "honesty, I will▽"
    prompt
    text Text_DoNothing_0C
    db "give you this   "
    db "Golden Ax.     ▽"
    prompt
    text Text_DoNothing_0C
    db "No need to pay  "
    db "me for it. But,▽"
    prompt
    text Text_DoNothing_0C
    db "please stay     "
    db "honest.         "
    done 

GoldenAx_YesText::
    text Text_DoNothing_0C
    db "Bzzzzzt! You    "
    db "Liar! You don't▽"
    prompt
    text Text_DoNothing_0C
    db "get anything.   "
    db "GOOOOD BYYYEEE! "
    done

SpriteGivePowerBerryText:: ;0cx7216
    text Text_DoNothing_0C
    db "I found this    "
    db "last night.    ▽"
    prompt 
    text SpriteGivePowerBerry
    db "I will give it  "
    db "to you.         "
    done 

SummarizeTheYearText:: ; 0cx726c
    text Text_DoNothing_0C
    db "Well,<PLAYER>. Lets "
    db "summarize      ▽"
    prompt 
    text Text_DoNothing_0C
    db "this year.      "
    db "               ▽"
    prompt
    text Text_DoNothing_0C
    db "B Button to     "
    db "cancel.        ▽"
    done

EndOfYear_GreatWorkText:: ; 0cx72ed
    text Text_DoNothing_0C
    db "Well done! For  "
    db "your hard work,▽"
    prompt
    text Text_DoNothing_0C
    db "I will give a   "
    db "               ▽"
    prompt
    text Text_DoNothing_0C
    db $D9, $DA, $DB, $DC, $DD, $DE, $DF, $F7, $F8, $F9, $FA, "     "
    db "        to you.▽"
    prompt
    text Text_DoNothing_0C
    db "This item is one"
    db "of a kind!     ▽"
    prompt
    text Text_DoNothing_0C
    db "It is very valu-"
    db "able and you   ▽"
    prompt
    text Text_DoNothing_0C
    db "will not find   "
    db "another like it▽"
    prompt
    text Text_DoNothing_0C
    db "in the world!!  "
    db "               ▽"
    prompt
    text Text_DoNothing_0C
    db "See you later,  "
    db "and take care  ▽"
    prompt 
    text Text_DoNothing_0C
    db "of yourself.    "
    db "                "
    done

EndOfYear_OKWorkText:: ; 0cx7470
    text Text_DoNothing_0C
    db "You have done   "
    db "OK,            ▽"
    prompt
    text Text_DoNothing_0C
    db "however that is "
    db "not enough.    ▽"
    prompt
    text Text_DoNothing_0C
    db "I do not think  "
    db "you are ready  ▽"
    prompt
    text Text_DoNothing_0C
    db "to take over my "
    db "position yet.  ▽"
    prompt
    text Text_DoNothing_0C
    db "See you later,  "
    db "and take care  ▽"
    prompt
    text Text_DoNothing_0C
    db "of yourself.    "
    db "                "
    done

EndOfYearStatisticsText:: ; 0cx7572
    text Label_00c_7d67
    db "Number of       "
    db "Cows           ", $E0
    prompt
    text Label_00c_7d8e
    db "Number of       "
    db "Chickens       ", $E0
    prompt
    text Label_00c_7db2
    db "Cultivated Area "
    db "     ", $E0, $E1, $E2, $E3, " Blocks"
    prompt 
    text Label_00c_7e05
    db "Total Shipment  "
    db "    ", $E0, $E1, $E2, $E3, $E4, " Pieces"
    prompt
    text Label_00c_7de6
    db "The Size of the "
    db "house          ▽"
    prompt
    text Label_00c_7e1e
    db "                "
    db "      Wood House"
    prompt
    text Label_00c_7e38
    db "Deluxe          "
    db "      Wood House"
    prompt
    text Text_DoNothing_0C
    db "Ultra-Deluxe    "
    db "      Wood House"
    prompt 
    text Text_DoNothing_0C
    db "Maximum Cow     "
    db "Affection Rate ▽"
    prompt
    text Text_DoNothing_0C
    db "      ", $C4, $C5, $C6, $C7, "      "
    db "       ", $E0, $E1, $E2, "      "
    prompt
    text EndOfYear_LatestFunds
    db "Latest Funds    "
    db "         ", $B2, $B3, $B4, $B5, $B6, " G"
    prompt
    text EndOfYear_HappinessIndex
    db "Happiness Index "
    db "             ", $E0, $E1, $E2
    prompt
    text Text_DoNothing_0C
    db "Number of Power "
    db "Berries Eaten  ▽"
    prompt
    text EndOfYear_PowerBerriesEaten
    db "                "
    db "      ", $E0, $E1, " Berries"
    prompt
    text Text_DoNothing_0C
    db "The time helped "
    db "by Harvest     ▽"
    prompt
    text Text_DoNothing_0C
    db "Sprites         "
    db "      ", $E0, $E1, $E2, $E3, " Hours"
    done

EndOfYear_CaughtUpText:: ; 0cx7822
    text Text_DoNothing_0C
    db "Ah! You have    "
    db "caught up to   ▽"
    prompt
    text Text_DoNothing_0C
    db "me!! You have   "
    db "grown into a   ▽"
    prompt
    text Text_DoNothing_0C
    db "fine man Please "
    db "keep up the    ▽"
    prompt
    text Text_DoNothing_0C
    db "great work!!    "
    db "                "
    done

EndOfYear_IncredibleProgressText:: ; 0cx78ce
    text Text_DoNothing_0C
    db "Wow! You have   "
    db "made incredible▽"
    prompt
    text Text_DoNothing_0C
    db "progress, <PLAYER>. "
    db "Ranch work is  ▽"
    prompt
    text Text_DoNothing_0C
    db "not easy,       "
    db "but you have   ▽"
    prompt 
    text Text_DoNothing_0C
    db "done an amazing "
    db "job!           ▽"
    prompt
    text Text_DoNothing_0C
    db "Please keep up  "
    db "the great work!!"
    done

SpringPicnicMariaText:: ; 0cx79a5
    text Text_DoNothing_0C
    db "The weather is  "
    db "nice today.    ▽"
    prompt 
    text Text_DoNothing_0C
    db "I was looking   "
    db "forward to     ▽"
    prompt
    text Text_DoNothing_0C
    db "having a picnic!"
    db "                "
    done

SpringPicnicElen1Text:: ; 0cx7a26
    text Text_DoNothing_0C
    db "Occasionally, it"
    db "is good to take▽"
    prompt
    text Text_DoNothing_0C
    db "a day off.      "
    db "                "
    prompt 
SpringPicnicElen2Text:: ; 0cx7a7c
    text Text_DoNothing_0C
    db "Everyone needs  "
    db "to relax, it   ▽"
    prompt
    text Text_DoNothing_0C
    db "helps create a  "
    db "strong mind.    "
    done

SpringPicnicNina1Text:: ; 0cx7ad2
    text Text_DoNothing_0C
    db "What a beautiful"
    db "day <PLAYER>.       "
    prompt 
SpringPicnicNina2Text:: ; 0cx7afd
    text Text_DoNothing_0C
    db "I wish Eve and  "
    db "Ann could have ▽"
    prompt
    text Text_DoNothing_0C
    db "come.           "
    db "                "
    done

SpringPicnicGetGoingText:: ; 0cx7b53
    text Text_DoNothing_0C
    db "Aw...Look at the"
    db "time. We should▽"
    prompt 
    text Text_DoNothing_0C
    db "be going home.  "
    db "                "
    done

MoonlightNight1Text:: ; 0cx7ba9
    text Text_DoNothing_0C
    db "Oh, what a      "
    db "surprise.      ▽"
    prompt
    text Text_DoNothing_0C
    db "You also came to"
    db "enjoy this     ▽"
    prompt
    text Text_DoNothing_0C
    db "cool night?     "
    db "               ▽"
    prompt
MoonlightNight2Text:: ; 0cx7c2a
    text Text_DoNothing_0C
    db "The Summer night"
    db "sky is         ▽"
    prompt
    text Text_DoNothing_0C
    db "beautiful.      "
    db "Ahhhhh...       "
    done

MoonlightNight3Text:: ; 0cx7c80
    text Text_DoNothing_0C
    db "The stars in the"
    db "sky are        ▽"
    prompt
    text Text_DoNothing_0C
    db "dazzling.       "
    db "I wish I could ▽"
    prompt
    text Text_DoNothing_0C
    db "go there.       "
    db "                "
    done

