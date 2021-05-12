; uses AutoHotKey (https://www.autohotkey.com/docs/license.htm)
; script by covicDev (http://github.com/covicDev)
; version 1.0.2

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

#If
; #############################################################################
; Completely block of Caps Lock.
*CapsLock::Return                       ; block (Ctrl|Alt|Shift) + CapsLock;
CapsLock & *::Return                    ; block CapsLock + (Ctrl|Alt|Shift);
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
; Keyboard - Cursor manipulation all editors

; removing chars 
CapsLock & Space::Backspace             ; delete char before cursor;
CapsLock & LAlt::Del                    ; delete char after cursor - this;

; -------------------------------------
; VScode
CapsLock & x::^+k                       ; delete line;
CapsLock & c::Del                       ; delete char;
CapsLock & v::^/                        ; add comment;

; adding chars
CapsLock & t::=
CapsLock & 2::(
CapsLock & 3::{
CapsLock & 4::[

; t p [ ]

; three key combination
#if GetKeyState("CapsLock", "P")
Alt &   t::Send `=>`
Alt &   v::!+a                          ; add advance comment;
return

CapsLock & Alt::Return   

; ideas:
;Ctrl backspace = remove whole word;
;CapsLock & Sc029:: ; <todo> implement

; do not add new features after the flag
; #############################################################################
; flag OFF
; left part of keyboard
#If !Script 
CapsLock & i::Up
return
#If !Script 
CapsLock & k::Down
return
#If !Script 
CapsLock & j::Left
return
#If !Script 
CapsLock & l::Right
return
#If !Script 
CapsLock & u::^Left                 ; cursor at end word;
return
#If !Script 
CapsLock & o::^Right                ; cursor ar beginnig of word;
return
#If !Script
CapsLock & h::Home                  ; cursor at begging of line;
return
#If !Script
CapsLock & SC027::End               ; cursor at end of line SC027-SEMICOLON;
return

k; right part of keyboard
#kIf !Script
CapsLock & s::+Left                 ; move cursor at end of char and select it;
return
#If !Script
CapsLock & f::+Right                ; move cursor at beginnig of char and select it;
return
#If !Script
CapsLock & e::+Up                   ; move cursor over and select line;
return
#If !Script
CapsLock & d::+Down                 ; move cursor down and select line;
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

#If !Script 
CapsLock & y::^Up                   ; move page down;
return
#If !Script 
CapsLock & b::^Down                 ; move page up;
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
