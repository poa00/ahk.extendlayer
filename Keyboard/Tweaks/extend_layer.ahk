/*
 * File        : extend_layer.ahk
 * Description : Keyboard layout tweak
 * Copyright   : Copyright (c) ?-2023, stevep99, (c) 2023, Gergely Szabo
 * License     : MIT
 *
 * 'Extend layer' extends the keyboard's current abilities and places them onto
 * a special layer. This implemention was inspired by stevep99's and Øystein
 * "DreymaR" Bech-Aase's. This is a fork of stevep99's  Extend layer AutoHotkey
 * implementation for Colemak-DH.
 * 
 * Authorship Details:
 * Author: stevep99
 * URL: https://github.com/stevep99/keyboard-tweaks/tree/master/ExtendLayer
 *
 * To activate Extend: Press and hold the Extend key (Caps Lock) then press
 * another alphanumeric key.
 *
 * This keymap stays persistent regardless of the active host keyboard layout,
 * because the functions are mapped to the physical key locations (scancodes).
 *
 * ┌───┐   ┌───┬───┬───┬───┐ ┌───┬───┬───┬───┐ ┌───┬───┬───┬───┐
 * │   │   │   │   │   │   │ │   │   │   │   │ │   │   │   │   │
 * └───┘   └───┴───┴───┴───┘ └───┴───┴───┴───┘ └───┴───┴───┴───┘
 * ┌───┬───┬───┬───┬───┬───┬───┬───┬───┬───┬───┬───┬───┬───────┐
 * │Esc│ F1│ F2│ F3│ F4│ F5│ F6│ F7│ F8│ F9│F10│F11│F12│Backspc│
 * ├───┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─────┤
 * │ Tab │ ^S│Bck│ ^F│Fwd│Ins│PgU│Hom│Del│End│ ^P│   │   │     │
 * ├─────┴┬──┴┬──┴┬──┴┬──┴┬──┴┬──┴┬──┴┬──┴┬──┴┬──┴┬──┴┬──┴─────┤
 * │ Caps │ ^A│Alt│LSh│LCt│Tab│PgD│Lft│Dwn│ Up│Rht│   │  Enter │
 * ├──────┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴────────┤
 * │  Shift │ ^X│ ^C│ ^Y│ ^V│ ^Z│Cps│Bsp│MwD│MwU│   │   Shift  │
 * ├────┬───┴┬──┴─┬─┴───┴───┴───┴───┴───┴──┬┴───┼───┴┬────┬────┤
 * │Ctrl│ Win│ Alt│          Space         │RAlt│ Fn │Menu│RCtl│
 * └────┴────┴────┴────────────────────────┴────┴────┴────┴────┘
 */

;; Define the Extend layer key
#InputLevel 1
CapsLock::F24   ; Maps Caps Lock to F24 VirtualKey which activates the layer
#InputLevel 0

;; Turn off Caps Lock states
SetCapsLockState "AlwaysOff"

;; Note: Where function is 'Return' are unassigned.
;; Formatting:
;F24 & Scancode::Send "{key combination or function}"

;; Numeric Row
F24 & SC001::Send "{Blind}{Escape}"     ; QWERTY `~
F24 & SC002::Send "{Blind}{F1}"         ; QWERTY 1!
F24 & SC003::Send "{Blind}{F2}"         ; QWERTY 2@
F24 & SC004::Send "{Blind}{F3}"         ; QWERTY 3#
F24 & SC005::Send "{Blind}{F4}"         ; QWERTY 4$
F24 & SC006::Send "{Blind}{F5}"         ; QWERTY 5%
F24 & SC007::Send "{Blind}{F6}"         ; QWERTY 6^
F24 & SC008::Send "{Blind}{F7}"         ; QWERTY 7&
F24 & SC009::Send "{Blind}{F8}"         ; QWERTY 8*
F24 & SC00a::Send "{Blind}{F9}"         ; QWERTY 9(
F24 & SC00b::Send "{Blind}{F10}"        ; QWERTY 0)
F24 & SC00c::Send "{Blind}{F11}"        ; QWERTY -_
F24 & SC00d::Send "{Blind}{F12}"        ; QWERTY =+

;; Top Row
F24 & SC010::Send "{Ctrl Down}{s}{Ctrl Up}" ; QWERTY qQ
F24 & SC011::Send "{Browser_Back}"          ; QWERTY wW
F24 & SC012::Send "{Ctrl Down}{f}{Ctrl Up}" ; QWERTY eE
F24 & SC013::Send "{Browser_Forward}"       ; QWERTY rR
F24 & SC014::Send "{Insert}"                ; QWERTY tT
F24 & SC015::Send "{Blind}{PgUp}"           ; QWERTY yY
F24 & SC016::Send "{Blind}{Home}"           ; QWERTY uU
F24 & SC017::Send "{Blind}{Delete}"         ; QWERTY iI
F24 & SC018::Send "{Bind}{End}"             ; QWERTY oO
F24 & SC019::Send "{Ctrl Down}{p}{Ctrl Up}" ; QWERTY pP
F24 & SC01a::Return                         ; QWERTY [{
F24 & SC01b::Return                         ; QWERTY ]}

;; Home Row
F24 & SC01e::Send "{Ctrl Down}{a}{Ctrl Up}" ; QWERTY aA
F24 & SC01f::Send "{Blind}{LAlt Down}"      ; QWERTY sS
F24 & SC01f Up::Send "{LAlt Up}"
F24 & SC020::Send "{Blind}{LShift Down}"    ; QWERTY dD
F24 & SC020 Up::Send "{LShift Up}"
F24 & SC021::Send "{Blind}{LCtrl Down}"     ; QWERTY fF
F24 & SC021 Up::Send "{LCtrl Up}"
F24 & SC022::Send "{Blind}{Tab}"            ; QWERTY gG
F24 & SC023::Send "{Blind}{PgDn}"           ; QWERTY hH
F24 & SC024::Send "{Blind}{Left}"           ; QWERTY jJ
F24 & SC025::Send "{Blind}{Down}"           ; QWERTY kK
F24 & SC026::Send "{Blind}{Up}"             ; QWERTY lL
F24 & SC027::Send "{Blind}{Right}"          ; QWERTY ;:
F24 & SC028::Return                         ; QWERTY '"

;; Bottom Row
F24 & SC02c::Send "{Ctrl Down}{x}{Ctrl Up}" ; QWERTY zZ
F24 & SC02d::Send "{Ctrl Down}{c}{Ctrl Up}" ; QWERTY xX
F24 & SC02e::Send "{Ctrl Down}{y}{Ctrl Up}" ; QWERTY cC
F24 & SC02f::Send "{Ctrl Down}{v}{Ctrl Up}" ; QWERTY vV
F24 & SC030::Send "{Ctrl Down}{z}{Ctrl Up}" ; QWERTY bB
F24 & SC031::                               ; QWERTY nN
{
    SetCapsLockState GetKeyState('CapsLock', 'T')
    ? 'AlwaysOff'
    : 'AlwaysOn'
}
F24 & SC032::Send "{Blind}{Backspace}"      ; QWERTY mM
F24 & SC033::Send "{WheelDown}"             ; QWERTY ,<
F24 & SC034::Send "{WheelUp}"               ; QWERTY .>
F24 & SC035::Return                         ; QWERTY /?

;; Misc. Keys
F24 & SC039::Send "{Blind}{Enter}"      ; Space

;; Mouse Buttons
F24 & WheelDown::Send "{Volume_Down}"   ; Mouse wheel scroll down
F24 & WheelUp::Send "{Volume_Up}"       ; Mouse wheel scrool up
