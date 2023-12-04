/*
 * File        : main.ahk
 * Description : Entry-point to AutoHotkey v2 Keyboard Tweaks
 * Copyright   : (c) 2020-2023, Gergely Szabo
 * License     : MIT
 *
 * This file is responsible for configuring the general behaviour of AutoHotkey
 * scripts and loading others at software launch.
 */

;; ----------------------------------------------------------------------------
;; AUTOHOTKEY GENERAL SETTINGS

;; Allow a script to run again. If this directive is unspecified in a script,
;; it will behave as though set to 'Prompt'. This directive is ignored when any
;; of the following command line switches are used: /force /restart
;; (default Force)
#SingleInstance Force

;; Set the maximum number of simultaneous threads. Although a value of '1' is
;; allowed, it is not recommended because it would prevent new hotkeys from
;; launching whenever the script is displaying a message box or other dialog.
;; (default 10)
#MaxThreads 20

;; Set the maximum number of simultaneous threads per hotkey or hotstring. This
;; setting is used to control how many "instances" of a given hotkey or
;; hotstring subroutine are allowed to exist simultaneously.
;; (default 1)
#MaxThreadsPerHotkey 3

;; Buffer rather than ignore keypresses when their '#MaxThreadsPerHotkey' limit
;; has been reached. The main use for this directive is to increase the
;; responsiveness of the keyboard's auto-repeat feature.
;; (default True)
#MaxThreadsBuffer True

;; Keep scripts running in the background, they will stay running after startup
;; completes and all other threads have exited.
;; (default True)
Persistent True

;; Default command sending mode, makes 'Send' synonymous with 'SendEvent' or
;; 'SendPlay'. Since 'SendMode' also changes the mode of 'Click', 'MouseMove',
;; 'MouseClick' and 'MouseClickDrag', there may be times when you wish to use a
;; different mode for a particular mouse event. If 'SendMode' is 'Input' (the
;; default), Windows might ignore remapped keys if CPU speed is too slow.
;; (default Input)
SendMode "Event"

;; Enable key history and how many items to display.
;; (default 40)
KeyHistory 0

;; Enable or disable line logging.
;; (default 1)
ListLines 0

;; Set AutoHotkey's process priority level. This setting can also be applied to
;; individual scripts. The value is visible in Task Manager.
;; (default Normal)
ProcessSetPriority "High"

;; ----------------------------------------------------------------------------
;; AUTOHOTKEY BENCHMARKING / DEBUGGING / TROUBLESHOOTING SETTINGS
;;
;; These settings are not in effect if 'SendMode' is 'Input'.

;; Set the mouse speed that will be used if unspecified in 'Click',
;; 'MouseMove', 'MouseClick', and 'MouseClickDrag'.
;; (default 2)
SetDefaultMouseSpeed 0

;; Set the delay that will occur after each keystroke sent by 'Send' or
;; 'ControlSend'.
;; (default 10)
SetKeyDelay -1

;; Set the delay that will occur after each mouse movement or click.
;; (default 10)
SetMouseDelay -1

;; Set the delay that will occur after each control-modifying function.
;; (default 20)
SetControlDelay -1

;; Set the delay that will occur after each windowing function, such as
;; 'WinActivate'.
;; (default 100)
SetWinDelay -1

;; ----------------------------------------------------------------------------
;; KEYBOARD TWEAKS TO LOAD

;; Enable/disable keyboard layouts. Comment/uncomment layouts.
;; Note: Choose only 1 layout or none at all!

; UMOS
;#Include %A_ScriptDir%\Keyboard\Layouts\umos_layout.ahk

; Colemak-DH
#Include %A_ScriptDir%\Keyboard\Layouts\colemak-dh_layout.ahk

;; Enable/disable keyboard tweaks. Comment/uncommect features.

; Make RCtrl behave as Caps Lock
;#Include %A_ScriptDir%\Keyboard\Tweaks\caps_to_rctrl.ahk

; Remap Caps Lock as Ctrl
#Include %A_ScriptDir%\Keyboard\Tweaks\caps_as_ctrl.ahk

; Extend layer is a powerful tool that adds an extra layer to your keyboard
; which is activated by a dedicated key (Caps Lock by default).
; Note: Other tweaks that also utilise the Extend key must be disabled.
#Include %A_ScriptDir%\Keyboard\Tweaks\extend_layer.ahk
