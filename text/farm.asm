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

