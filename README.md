<h1 align="center">AutoHotkey v2 Keyboard Tweaks</h1>

# 1. Description

This is a repository where I collect some of the keyboard focused tweaks and tricks I've implemented in AutoHotkey (‘ AHK’ for short) script. Also, I generally use AHK to emulate my keyboard layout at work where I'm not allowed to install programs or run software with administrator privileges (company policy) – more on this below.

There are some work related scripts which I cannot share and they are purposefully left out. I take care to not leave any such code in my scripts, but let me know or create a pull request if I miss something.

**Disclaimer:** My scripts primarily target AutoHotkey version 2, so while it may be possible to run them on version 1, you may experience unexpected results when doing so.

# 2. Keyboard Layout

UMOS stands for *UCIEA Mirrored (&) Ory's Symbols*. This layout is a mirrored version of Ian Doug's original UCIEA keyboard layout which has also gone through several versions and modifications. Here's the authorship:  
Author: Ian Doug <ian@keyboard-design.com>  
URL: https://keyboard-design.com/letterlayout.html?layout=uciea-keyboard.en.ansi

This variant of UMOS is a minimalist implementation. It only moves the keys around on the keyboard, but they follow the active host layout's punctuation marks, Shift , AltGr, and AltGr+Shift key maps. Examples:

* If the Windows keyboard layout is US QWERTY, <kbd>AltGr+S</kbd> produces nothing

* If the Windows keyboard layout is Polish (Programmers), <kbd>AltGr+S</kbd> produces ś

* If the Windows keyboard layout is Dutch (QWERTY), <kbd>AltGr+S</kbd> produces ß

It is important to note that some characters of the host layout located on the ISO 102 key are lost on ANSI boards; therefore, it is very important to always select the correct layout type for your keyboard as ANSI and ISO layouts send different [VirtualKey codes](https://docs.microsoft.com/en-us/windows/win32/inputdev/virtual-key-codes).

The image below showcases the keyboard layout for ANSI 101/104-key keyboards.

![UMOS keyboard layout](Assets/Images/Keyboard_Layouts/UMOS_ANSI.png)

Please note, such VirtualKey-based alternative keyboard layout remaps prevent you from using hotstrings with AutoHotkey, e.g. typing ‘ btw’ outputs *by the way*.

# 3. Tweaks

## Implemented

- [x] Swap <kbd>Caps Lock</kbd> with <kbd>RCtrl</kbd>

## To Do

(to be decided)

# 4. File and Directory Overview

```
../
├── main.ahk
├── Keyboard/
│   └── Layouts/..
│       ├── umos_layout.ahk
│       └── tweaks.ahk
├── LICENSE
├── README.md
└── Assets/
    └── Images/
        └── Keyboard_Layouts/..
```
| ***Project Files*** |  |  |
| :--- | :--- | :--- |
| **File name** | **Description** | **Comments** |
| `main.ahk` | It is is the core. This file is loaded first when AHK is launched. | Configures the general behaviour of AutoHotkey, how the scripts are run, and loads subsequent scripts. |
| `Layouts\Keyboard\` | All keyboard remapping scripts go here. | Keyboard layouts, tweaks etc. |
| `Assets` | Holds miscellaneous data files for the repository. | These files aren't used or detected by AutoHotkey. The keyboard layout image files were created using [Keyboard Layout Editor](http://keyboard-layout-editor.com). |

# 5. Licenses and Forking

This project is generally licensed under MIT License (also known simply as ‘MIT’) with the following exception:

* All content of `Assets` are Public Domain.

The project files may be forked according to their license guidelines.