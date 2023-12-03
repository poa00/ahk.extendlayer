/*
 * File        : umos_layout.ahk
 * Description : UMOS alternative keyboard layout
 * Copyright   : Copyright (c) ?-2023, Ian Doug, (c) 2020-2023, Gergely Szabo
 * License     : MIT
 *
 * UMOS stands for UCIEA Mirrored (&) Ory's Symbols. This layout is a mirrored
 * version of Ian Doug's original UCIEA keyboard layout.
 *
 * UCIEA Authorship Details:
 * Author: Ian Doug <ian@keyboard-design.com>
 * URL: https://keyboard-design.com/letterlayout.html?layout=uciea-keyboard.en.ansi
 *
 * Remaps the software keyboard layout from QWERTY to UMOS by moving the host
 * layout's VirtualKeys around.
 *
 * AutoHotkey only ignores the keymaps of the OS host layout on the Base and
 * Shift layers (layers 0 and 1) for alphabetic keys. But it keeps the keymaps
 * for the numeric Shift layer, AltGr, and AltGr+Shift layers (layers 6 and 7).
 * This means that the output of Shift+4 and AltGr+a depends on the active host
 * keyboard layout. Such remapped layouts prevent the use of hotstrings, e.g.
 * typing 'btw' outputs 'by the way'.
 *
 * The below keymap is only true for the non-alphabetic and non-numeric keys
 * if the active host keyboard layout is English US QWERTY.
 *
 * ┌───┐   ┌───┬───┬───┬───┐ ┌───┬───┬───┬───┐ ┌───┬───┬───┬───┐
 * │Esc│   │ F1│ F2│ F3│ F4│ │ F5│ F6│ F7│ F8│ │ F9│F10│F11│F12│
 * └───┘   └───┴───┴───┴───┘ └───┴───┴───┴───┘ └───┴───┴───┴───┘
 * ┌───┬───┬───┬───┬───┬───┬───┬───┬───┬───┬───┬───┬───┬───────┐
 * │ ` │ 1 │ 2 │ 3 │ 4 │ 5 │ 6 │ 7 │ 8 │ 9 │ 0 │ [ │ ] │Backspc│
 * ├───┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─────┤
 * │ Tab │ Q │ F │ H │ M │ K │ ; │ O │ U │ Y │ P │ X │ = │  \  │
 * ├─────┴┬──┴┬──┴┬──┴┬──┴┬──┴┬──┴┬──┴┬──┴┬──┴┬──┴┬──┴┬──┴─────┤
 * │ Caps │ R │ S │ N │_T_│ G │ - │_A_│ E │ I │ C │ W │  Enter │
 * ├──────┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴────────┤
 * │  Shift │ B │ L │ D │ V │ J │ Z │ , │ ' │ . │ / │   Shift  │
 * ├────┬───┴┬──┴─┬─┴───┴───┴───┴───┴───┴──┬┴───┼───┴┬────┬────┤
 * │Ctrl│ Win│ Alt│          Space         │RAlt│ Fn │Menu│RCtl│
 * └────┴────┴────┴────────────────────────┴────┴────┴────┴────┘
 */

;; Formatting:
;Scancode::VirtualKey

;; Numeric Row
;SC01::`    ; QWERTY `~
;SC02::1    ; QWERTY 1!
;SC03::2    ; QWERTY 2@
;SC04::3    ; QWERTY 3#
;SC05::4    ; QWERTY 4$
;SC06::5    ; QWERTY 5%
;SC07::6    ; QWERTY 6^
;SC08::7    ; QWERTY 7&
;SC09::8    ; QWERTY 8*
;SC0a::9    ; QWERTY 9(
;SC0b::0    ; QWERTY 0)
SC0c::vkDB  ; QWERTY -_
SC0d::vkDD  ; QWERTY =+

;; Top Row
SC010::q    ; QWERTY qQ
SC011::f    ; QWERTY wW
SC012::h    ; QWERTY eE
SC013::m    ; QWERTY rR
SC014::k    ; QWERTY tT
SC015::vkBA ; QWERTY yY
SC016::o    ; QWERTY uU
SC017::u    ; QWERTY iI
SC018::y    ; QWERTY oO
SC019::p    ; QWERTY pP
SC01a::x    ; QWERTY [{
SC01b::vkBB ; QWERTY ]}

;; Home Row
SC01e::r    ; QWERTY aA
SC01f::s    ; QWERTY sS
SC020::n    ; QWERTY dD
SC021::t    ; QWERTY fF
SC022::g    ; QWERTY gG
SC023::vkBD ; QWERTY hH
SC024::a    ; QWERTY jJ
SC025::e    ; QWERTY kK
SC026::i    ; QWERTY lL
SC027::c    ; QWERTY ;:
SC028::w    ; QWERTY '"

;; Bottom Row
SC02c::b    ; QWERTY zZ
SC02d::l    ; QWERTY xX
SC02e::d    ; QWERTY cC
SC02f::v    ; QWERTY vV
SC030::j    ; QWERTY bB
SC031::z    ; QWERTY nN
SC032::vkBC ; QWERTY mM
SC033::vkDE ; QWERTY ,<
SC034::vkBE ; QWERTY .>
SC035::vkBF ; QWERTY /?
