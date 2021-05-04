; uses AutoHotKey (https://www.autohotkey.com/docs/license.htm)
; script by covicDev (http://github.com/covicDev)
; version 1.0.0

; #############################################################################
; Initial presets.
#NoEnv
#Persistent
#Warn
#SingleInstance Force
#InstallKeybdHook
#InstallMouseHook
SendMode Input

ToolTip, AHK Script by covicDev,0,0
Sleep, 500
ToolTip

Speed := 20
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

#If
; #############################################################################
; Completely block of Caps Lock.
; <todo> sometimes CapsLock can turn on.
SetCapsLockState, Off
SetCapsLockState, Alwaysoff
~Capslock::SetCapsLockState, off
*CapsLock::Return           ; block (Ctrl|Alt|Shift) + CapsLock;
CapsLock & *::Return        
; #############################################################################

; #############################################################################
; Caps Lock shortcuts.

; CapsLock & Sc029:: ; <todo> implement

; -------------------------------------
; Windows manipulation
CapsLock & Tab::AltTabMenu  ; open static alt+tab preview <todo>generate errors;
; virtual desktop
CapsLock & 1::#t            ; circle between toolbar;
CapsLock & r::^#Left        ; go to next desktop;
CapsLock & t::^#Right       ; go to previous desktop;

; -------------------------------------
; Keyboard - Cursor manipulation all editors

; removing chars 
CapsLock & Space::Backspace     ; delete char before cursor;
CapsLock & f::Del               ; delete char after cursor;
; replace cursor
CapsLock & h::Home              ; cursor at begging of line;
CapsLock & SC027::End           ; cursor at end of line SC027-SEMICOLON;

; marking text
CapsLock & a::^+Left            ; move cursor at end of word and select it;
CapsLock & d::^+Right           ; move cursor at begginig of word and select it;
CapsLock & w::+Up               ; move cursor over and select line;
CapsLock & s::+Down             ; move cursor down and select line;
CapsLock & q::+Home             ; select all words to the end of line; 
CapsLock & e::+End              ; select all words to the bigging of line;

; -------------------------------------
; VScode

; removing chars
CapsLock & g::^+k               ; delete line;

; adding chars
CapsLock & z::( 
CapsLock & x::{
CapsLock & c::[

; add comments
CapsLock & v::^/                ; add comment
;CapsLock & b::!+a               ; add comment

; three key combination
#if GetKeyState("CapsLock", "P")
Alt &   l::Send `=>`
Alt &   j::Send {=}
Alt &   v::!+a
return
CapsLock & Backspace::SetCapsLockState, Off

; ideas:
;CapsLock & LAlt::Del           ; delete char after cursor;
;Ctrl backspace = remove whole word;

; do not add new features after the flag
; #############################################################################
; flag OFF
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
CapsLock & u::^Left             ; cursor at end word;
return
#If !Script 
CapsLock & o::^Right            ; cursor ar beginnig of word;
return
#If !Script 
CapsLock & y::^Up             	; move page down;
return
#If !Script 
CapsLock & b::^Down             ; move page up;
return
#If !Script
CapsLock & a::^+Left            ; move cursor at end of word and select it;
return
#If !Script
CapsLock & d::^+Right           ; move cursor at begginig of word and select it;
return
#If !Script
CapsLock & w::+Up               ; move cursor over and select line;
return
#If !Script
CapsLock & s::+Down             ; move cursor down and select line;
return

; #############################################################################
; flag ON

; keyboard mouse controle
#If Script
CapsLock & i::MouseMove, 0, -Speed, 0, R   		; Move cursor upward
return
#If Script
CapsLock & ,::MouseMove, 0,Speed , 0, R  		; Move cursor downward
return
#If Script
CapsLock & j::MouseMove, -Speed, 0, 0, R 		; Move cursor to the left
return
#If Script
CapsLock & l::MouseMove, Speed , 0, 0, R 		; Move cursor to the right
return
#If Script
CapsLock & .::MouseMove, Speed , Speed, 0, R 	; Move cursor to the right
return
#If Script
CapsLock & o::MouseMove, Speed , -Speed, 0, R 	; Move cursor to the right
return
#If Script
CapsLock & u::MouseMove, -Speed , -Speed, 0, R 	; Move cursor to the right
return
#If Script
CapsLock & m::MouseMove, -Speed , Speed, 0, R 	; Move cursor to the right
return
#If Script
CapsLock & k::Click
return
#If Script
CapsLock & n::AppsKey
return
#If Script 
CapsLock & y::WheelUp            	; move page down;
return
#If Script 
CapsLock & b::WheelDown           ; move page up;
return

; windows window setup
#If Script
CapsLock & w::#Up
return
#If Script           
CapsLock & s::#Down
return
#If Script
CapsLock & a::#Left
return
#If Script
CapsLock & d::#Right
return

; #Win ^Ctrl !Alt +Shift
; #############################################################################
