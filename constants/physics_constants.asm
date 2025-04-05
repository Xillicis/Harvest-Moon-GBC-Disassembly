; For some reason these addresses don't activate in certain buildings.
; if player walking left/up    [wPlayerVelocityX/Y] = $01
; if player walking right/down [wPlayerVelocityX/Y] = $ff
; if player running left/up    [wPlayerVelocityX/Y] = $02
; if player running right/down [wPlayerVelocityX/Y] = $fe
DEF wPlayerMovementX EQU $cb5a
DEF wPlayerMovementY EQU $cb5b
