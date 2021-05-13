; uses AutoHotKey (https://www.autohotkey.com/docs/license.htm)
; script by covicDev (http://github.com/covicDev)
; version 1.0.3

; #############################################################################
; Initial presets.
#NoEnv
#Persistent                             ; Kept script working on;
SetCapsLockState, Alwaysoff             ; Kept CapLock always off;
#Warn
#SingleInstance Force                   ; Only one instance is allowed;
#InstallKeybdHook
#InstallMouseHook
#UseHook, On
SendMode Input

; #############################################################################
; Keyboard layout switcher;
; Works as CapsLock & Enter tapped.
ToolTip, AHK Script by covicDev,0,0
Sleep, 500
ToolTip
; Speed of keyboard mouse;
Speed := 15

Script := false

CapsLock & Enter::
Script := !Script
if !Script
    ToolTip,( K )AHK_covicDev: KEYBOARD,0,0
else
    ToolTip,( M )AHK_covicDev: MOUSE,0,0
Sleep, 500
ToolTip
return
; #############################################################################

; #############################################################################
; Completely block of Caps Lock.
*CapsLock::Return                       ; block (Ctrl|Alt|Shift) + CapsLock;
CapsLock & *::Return                    ; block CapsLock + (Ctrl|Alt|Shift);
; #############################################################################

; #############################################################################
; Make Win Key + Capslock work like Capslock (in case it's ever needed)
#Capslock::
If GetKeyState("CapsLock", "T") = 1
    SetCapsLockState, AlwaysOff
Else 
    SetCapsLockState, AlwaysOn
Return
; #############################################################################

; #############################################################################
; Caps Lock shortcuts.
; -------------------------------------
; Windows manipulation
CapsLock & Tab::AltTabMenu              ; open static alt+tab preview <todo>generate errors;
; virtual desktop
CapsLock & 1::#t                        ; circle between toolbar;
CapsLock & q::^#Left                    ; go to next desktop;
CapsLock & z::^#Right                   ; go to previous desktop;

; -------------------------------------
; Keyboard - Cursor manipulation all editorss
; removing chars 
;CapsLock & Space::Backspace             ; delete char before cursor;
CapsLock & Space::SendInput {Blind}{Backspace Down} 
; CapsLock & LAlt::Del                  ; delete char after cursor - this;
CapsLock & LAlt::SendInput {Blind}{Del Down}
CapsLock & Alt::Return

; -------------------------------------
; VScode
CapsLock & v::^+k                       ; delete line;
CapsLock & x::!+a                       ; add advance comment;
CapsLock & c::^/                        ; add comment;

; adding chars
CapsLock & t::=
CapsLock & 3::(
CapsLock & 4::{
CapsLock & 5::[

; t p [ ] m n

; three key combination
#if GetKeyState("CapsLock", "P")
Alt &   t::Send `=>`                   
return

; ideas:
;Ctrl backspace = remove whole word;

; do not add new features after the flag
; #############################################################################
; flag OFF
; left part of keyboard

#If !Script 
Capslock & i::Send {Blind}{Up DownTemp}
Capslock & i up::Send {Blind}{Up Up}
Capslock & k::Send {Blind}{Down DownTemp}
Capslock & k up::Send {Blind}{Down Up}
Capslock & j::Send {Blind}{Left DownTemp}
Capslock & j up::Send {Blind}{Left Up}
Capslock & l::Send {Blind}{Right DownTemp}
Capslock & l up::Send {Blind}{Right Up}

;CapsLock & u::^Left                                        ; cursor at end word;
Capslock & u::SendInput {Blind}{Ctrl Down}{Left Down}
Capslock & u up::SendInput {Blind}{Ctrl Up}{Left Up}
;CapsLock & o::^Right                                       ; cursor at beginnig of word;
Capslock & o::SendInput {Blind}{Ctrl Down}{Right Down}
Capslock & o up::SendInput {Blind}{Ctrl Up}{Right Up}
;CapsLock & h::Home                                         ; cursor at begging of line;
Capslock & h::SendInput {Blind}{Home Down}
Capslock & h up::SendInput {Blind}{Home Up}
;CapsLock & SC027::End                                      ; cursor at end of line SC027-SEMICOLON;
Capslock & SC027::SendInput {Blind}{End Down}
Capslock & SC027 up::SendInput {Blind}{End Up}

; -------------------------------------
; right part of keyboard
;CapsLock & s::+Left                                        ; move cursor at end of char and select it;
Capslock & s::SendInput {Blind}{Shift Down}{Left Down}
Capslock & s up::SendInput {Blind}{Shift Up}{Left Up}
;CapsLock & f::+Right                                       ; move cursor at beginnig of char and select it;
Capslock & f::SendInput {Blind}{Shift Down}{Right Down}
Capslock & f up::SendInput {Blind}{Shift Up}{Right Up}
;CapsLock & e::+Up                                          ; move cursor over and select line;
Capslock & e::SendInput {Blind}{Shift Down}{Up Down}
Capslock & e up::SendInput {Blind}{Shift Up}{Up Up}
;CapsLock & d::+Down                                        ; move cursor down and select line;
Capslock & d::SendInput {Blind}{Shift Down}{Down Down}
Capslock & d up::SendInput {Blind}{Shift Up}{Down Up}

;CapsLock & y::^Up                                          ; move page down;
Capslock & y::SendInput {Blind}{PgUp Down}
Capslock & y up::SendInput {Blind}{PgUp Up}
;CapsLock & b::^Down                                        ; move page up;
Capslock & b::SendInput {Blind}{PgDn Down}
Capslock & b up::SendInput {Blind}{PgDn Up}
return

#If !Script
CapsLock & w::^+Left                ; move cursor at end of word and select it;
return
#If !Script
CapsLock & r::^+Right               ; move cursor at beginng of word and select it;
return
#If !Script
CapsLock & a::+Home                 ; select all words to the end of line; 
return
#If !Script
CapsLock & g::+End                  ; select all words to the bigging of line;
return

; #############################################################################
; flag ON

; keyboard mouse controle
#If Script
CapsLock & i::MouseMove, 0, -Speed, 0, R        ; Move cursor upward
return
#If Script
CapsLock & ,::MouseMove, 0,Speed , 0, R         ; Move cursor downward
return
#If Script
CapsLock & j::MouseMove, -Speed, 0, 0, R        ; Move cursor to the left
return
#If Script
CapsLock & l::MouseMove, Speed , 0, 0, R        ; Move cursor to the right
return
#If Script
CapsLock & .::MouseMove, Speed , Speed, 0, R    ; Move cursor to the right
return
#If Script
CapsLock & o::MouseMove, Speed , -Speed, 0, R   ; Move cursor to the right
return
#If Script
CapsLock & u::MouseMove, -Speed , -Speed, 0, R  ; Move cursor to the right
return
#If Script
CapsLock & m::MouseMove, -Speed , Speed, 0, R   ; Move cursor to the right
return
#If Script
CapsLock & k::Click
return
#If Script
CapsLock & n::AppsKey
return
#If Script 
CapsLock & y::WheelUp                           ; move page down;
return
#If Script 
CapsLock & b::WheelDown                         ; move page up;
return

; windows window setup
#If Script
CapsLock & e::#Up
return
#If Script           
CapsLock & d::#Down
return
#If Script
CapsLock & s::#Left
return
#If Script
CapsLock & f::#Right
return

; #Win ^Ctrl !Alt +Shift
; #############################################################################
