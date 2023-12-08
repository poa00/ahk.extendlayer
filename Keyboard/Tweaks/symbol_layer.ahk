/*
 * File        : symbol_layer.ahk
 * Description : Keyboard layout tweak
 * Copyright   : Copyright (c) 2023, Gergely Szabo
 * License     : MIT
 *
 * 'Symbol layer' adds a special layer dedicated for easier symbol and digit
 * access. This implemention was inspired by stevep99's 'AltGr Programmer'
 * extension.
 *
 * Authorship Details:
 * Author: stevep99
 * URL: https://github.com/stevep99/keyboard-tweaks/tree/master/AltGr
 *
 * To activate Symbol: Press and hold the Symbol key (Alt) then press another
 * alphanumeric key.
 *
 * Note: Alt-Tab functionality is lost when when the Symbol key is 'Alt'. It
 * can be regained by the Extend layer or some other AutoHotkey hacks. Refer to
 * https://www.autohotkey.com/docs/v2/Hotkeys.htm#alttab.
 *
 * This keymap stays persistent regardless of the active host keyboard layout,
 * because the functions are mapped to the physical key locations (scancodes).
 *
 * ┌───┐   ┌───┬───┬───┬───┐ ┌───┬───┬───┬───┐ ┌───┬───┬───┬───┐
 * │   │   │   │   │   │   │ │   │   │   │   │ │   │   │   │   │
 * └───┘   └───┴───┴───┴───┘ └───┴───┴───┴───┘ └───┴───┴───┴───┘
 * ┌───┬───┬───┬───┬───┬───┬───┬───┬───┬───┬───┬───┬───┬───────┐
 * │   │   │   │   │   │   │   │ «‹│ »›│ ‘“│ ’”│  „│   │Backspc│
 * ├───┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─────┤
 * │ Tab │ 7 │ 8 │ 9 │ ^ │ $ │ -—│ [{│ ]}│ *&│ #%│   │   │     │
 * ├─────┴┬──┴┬──┴┬──┴┬──┴┬──┴┬──┴┬──┴┬──┴┬──┴┬──┴┬──┴┬──┴─────┤
 * │ Caps │ 4 │ 5 │ 6 │ \ │ £ │ ° │ ( │ ) │ -_│ =+│   │  Enter │
 * ├──────┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴────────┤
 * │  Shift │ 0 │ 1 │ 2 │ 3 │ ` │ €¢│ !¡│ ≤ │ ≥ │ /¿│   Shift  │
 * ├────┬───┴┬──┴─┬─┴───┴───┴───┴───┴───┴──┬┴───┼───┴┬────┬────┤
 * │Ctrl│ Win│ Alt│                        │RAlt│ Fn │Menu│RCtl│
 * └────┴────┴────┴────────────────────────┴────┴────┴────┴────┘
 */

;; Define the Symbol layer key
#InputLevel 1
LAlt::F23   ; Maps LAlt to F23 VirtualKey which activates the layer
#InputLevel 0

;; Note: Where function is 'Return' are unassigned.
;; Formatting:
;F23 & Scancode::Send "{key combination or function}"

;; Numeric Row
F23 & SC001::Return         ; QWERTY `~
F23 & SC002::Return         ; QWERTY 1!
F23 & SC003::Return         ; QWERTY 2@
F23 & SC004::Return         ; QWERTY 3#
F23 & SC005::Return         ; QWERTY 4$
F23 & SC006::Return         ; QWERTY 5%
F23 & SC007::Return         ; QWERTY 6^
F23 & SC008::               ; QWERTY 7&
{
    if GetKeyState("Shift")
        Send "{‹}"
    else
        Send "{«}"
}
F23 & SC009::               ; QWERTY 8*
{
    if GetKeyState("Shift")
        Send "{›}"
    else
        Send "{»}"
}
F23 & SC00a::               ; QWERTY 9(
{
    if GetKeyState("Shift")
        Send "{“}"
    else
        Send "{‘}"
}
F23 & SC00b::               ; QWERTY 0)
{
    if GetKeyState("Shift")
        Send "{”}"
    else
        Send "{’}"
}
F23 & SC00c::Send "{„}"     ; QWERTY -_
F23 & SC00d::Return         ; QWERTY =+

;; Top Row
F23 & SC010::Send "{7}"     ; QWERTY qQ
F23 & SC011::Send "{8}"     ; QWERTY wW
F23 & SC012::Send "{9}"     ; QWERTY eE
F23 & SC013::Send "{^}"     ; QWERTY rR
F23 & SC014::Send "{$}"     ; QWERTY tT
F23 & SC015::               ; QWERTY yY
{
    if GetKeyState("Shift")
        Send "{—}"
    else
        Send "{-}"
}
F23 & SC016::               ; QWERTY uU
{
    if GetKeyState("Shift")
        Send "{{}"
    else
        Send "{[}"
}
F23 & SC017::               ; QWERTY iI
{
    if GetKeyState("Shift")
        Send "{}}"
    else
        Send "{]}"
}
F23 & SC018::               ; QWERTY oO
{
    if GetKeyState("Shift")
        Send "{&}"
    else
        Send "{*}"
}
F23 & SC019::               ; QWERTY pP
{
    if GetKeyState("Shift")
        Send "{%}"
    else
        Send "{#}"
}
F23 & SC01a::Return         ; QWERTY [{
F23 & SC01b::Return         ; QWERTY ]}

;; Home Row
F23 & SC01e::Send "{4}"     ; QWERTY aA
F23 & SC01f::Send "{5}"     ; QWERTY sS
F23 & SC020::Send "{6}"     ; QWERTY dD
F23 & SC021::Send "{\}"     ; QWERTY fF
F23 & SC022::Send "{£}"     ; QWERTY gG
F23 & SC023::Send "{°}"     ; QWERTY hH
F23 & SC024::Send "{(}"     ; QWERTY jJ
F23 & SC025::Send "{)}"     ; QWERTY kK
F23 & SC026::               ; QWERTY lL
{
    if GetKeyState("Shift")
        Send "{_}"
    else
        Send "{-}"
}
F23 & SC027::               ; QWERTY ;:
{
    if GetKeyState("Shift")
        Send "{+}"
    else
        Send "{=}"
}
F23 & SC028::Return         ; QWERTY '"

;; Bottom Row
F23 & SC02c::Send "{0}"     ; QWERTY zZ
F23 & SC02d::Send "{1}"     ; QWERTY xX
F23 & SC02e::Send "{2}"     ; QWERTY cC
F23 & SC02f::Send "{3}"     ; QWERTY vV
F23 & SC030::Send "{`}"     ; QWERTY bB
F23 & SC031::               ; QWERTY nN
{
    if GetKeyState("Shift")
        Send "{¢}"
    else
        Send "{€}"
}
F23 & SC032::               ; QWERTY mM
{
    if GetKeyState("Shift")
        Send "{¡}"
    else
        Send "{!}"
}
F23 & SC033::Send "{≤}"     ; QWERTY ,<
F23 & SC034::Send "{≥}"     ; QWERTY .>
F23 & SC035::               ; QWERTY /?
{
    if GetKeyState("Shift")
        Send "{¿}"
    else
        Send "{/}"
}

;; Misc. Keys

;; Alt-Tab
;; TODO: Figure out how to get Alt-Tabbing working again.
;F23 & SC00F::                   ; Tab
;{
;    if GetKeyState("Shift")
;        Send "{AltTab}"
;    else
;        Send "{ShiftAltTab}"
;}
