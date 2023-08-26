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
;; AUTOHOTKEY SETTINGS
;;
;; General AutoHotkey settings go here.

;; Optimisation
#SingleInstance Force       ; don't allow scripts to run concurrently
SendMode "Input"            ; disables all attributes under Performance
KeyHistory 0                ; don't keep key history
ListLines 0                 ; don't keep executed lines in history
ProcessSetPriority "High"   ; increase AHK process priority

;; Performance
;; These attributes are kept for troubleshooting and benchmarking purposes,
;; but they do not affect how the scripts work if SendMode is set to Input.
SetDefaultMouseSpeed 0      ; makes mouse movements instant
SetKeyDelay -1              ; disables key press delay
SetMouseDelay -1            ; disables mouse click delay
;; Additional Delays
SetControlDelay -1          ; disables Control command delays
SetWinDelay -1              ; disables window action delays

;; ----------------------------------------------------------------------------
;; SCRIPTS TO LOAD

;; Keyboard Layout
#Include %A_ScriptDir%\Keyboard\Layouts\umos-layout.ahk
#Include %A_ScriptDir%\Keyboard\Layouts\tweaks.ahk
