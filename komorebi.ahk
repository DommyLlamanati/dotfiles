#Requires AutoHotkey v2.0.2
#SingleInstance Force
CapsLock:: {
    KeyWait('CapsLock')                               ; wait for Capslock to be released
    if (A_TimeSinceThisHotkey < 200)                  ; in 0.2 seconds
    and KeyWait('CapsLock', 'D T0.2')                 ; and pressed again within 0.2 seconds
    and (A_PriorKey = 'CapsLock')                     ; block other keys
       SetCapsLockState !GetKeyState('CapsLock', 'T')
 }
 *CapsLock:: Send '{Blind}{vk07}'                     ; This forces capslock into a modifying key & blocks the alt/start menus

 #HotIf GetKeyState("CapsLock", "P")

 ; ---- Your hotkeys go here! ----
 ;  Ctrl (^), Alt (!), Shift (+) and Win (#).

 q:: MsgBox "You pressed CapsLock + q"
 ^w:: MsgBox "You pressed CapsLock + Control + w"
 #HotIf

Run("komorebic-no-console.exe start")

Komorebic(cmd) {
    RunWait(format("komorebic.exe {}", cmd), , "Hide")
}

; General
;  Ctrl (^), Alt (!), Shift (+) and Win (#).

; #+e::Run "komorebic stop"
;#+q::Komorebic("close") ; only use it if you don't already have a global hotkey
^#+F5::Komorebic("retile")

; Focus windows
;  Ctrl (^), Alt (!), Shift (+) and Win (#).

#Left::Komorebic("focus left")
#Down::Komorebic("focus down")
#Up::Komorebic("focus up")
#Right::Komorebic("focus right")

; Move windows
;  Ctrl (^), Alt (!), Shift (+) and Win (#).
#+Left::Komorebic("move left")
#+Down::Komorebic("move down")
#+Up::Komorebic("move up")
#+Right::Komorebic("move right")

; Stack windows
;  Ctrl (^), Alt (!), Shift (+) and Win (#).
^#+Left::Komorebic("stack left")
^#+Down::Komorebic("stack down")
^#+Up::Komorebic("stack up")
^#+Right::Komorebic("stack right")
#;::Komorebic("unstack")
#PgDn::Komorebic("cycle-stack previous")
#PgUp::Komorebic("cycle-stack next")

; Resize
;  Ctrl (^), Alt (!), Shift (+) and Win (#).

!#Left::Komorebic("resize-axis horizontal increase")
!#Right::Komorebic("resize-axis horizontal decrease")
!#Up::Komorebic("resize-axis vertical increase")
!#Down::Komorebic("resize-axis vertical decrease")

; Manipulate windows
;  Ctrl (^), Alt (!), Shift (+) and Win (#).

#f::Komorebic("toggle-float")
!#\::Komorebic("toggle-monocle")

; Layouts
;  Ctrl (^), Alt (!), Shift (+) and Win (#).

#x::Komorebic("flip-layout horizontal")
#y::Komorebic("flip-layout vertical")
#\::Komorebic("cycle-layout next")

; Workspaces
;  Ctrl (^), Alt (!), Shift (+) and Win (#).

#1::Komorebic("focus-workspace 0")
#2::Komorebic("focus-workspace 1")
#3::Komorebic("focus-workspace 2")
#4::Komorebic("focus-workspace 3")
#5::Komorebic("focus-workspace 4")
#6::Komorebic("focus-workspace 5")

; Move windows across workspaces
;  Ctrl (^), Alt (!), Shift (+) and Win (#).

#+1::Komorebic("move-to-workspace 0")
#+2::Komorebic("move-to-workspace 1")
#+3::Komorebic("move-to-workspace 2")
#+4::Komorebic("move-to-workspace 3")
#+5::Komorebic("move-to-workspace 4")
#+6::Komorebic("move-to-workspace 5")
