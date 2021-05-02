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
SendMode Input

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

; CapsLock & Sc029:: <layout switch> ; <todo> implement

; -------------------------------------
; Windows manipulation
CapsLock & Tab::AltTabMenu  ; open static alt+tab preview <todo>generate errors;
; virtual desktop
CapsLock & 1::#t            ; circle between toolbar;
CapsLock & r::^#Left        ; go to next desktop;
CapsLock & t::^#Right       ; go to previous desktop;
CapsLock & n::#Up           
CapsLock & m::#Down
CapsLock & ,::#Left
CapsLock & .::#Right

; -------------------------------------
; Keyboard - Arrows
CapsLock & i::Up
CapsLock & k::Down
CapsLock & j::Left
CapsLock & l::Right

; -------------------------------------
; Keyboard - Cursor manipulation all editors

; removing chars 
CapsLock & Space::Backspace     ; delete char before cursor;
CapsLock & f::Del               ; delete char after cursor;
; replace cursor
CapsLock & h::Home              ; cursor at begging of line;
CapsLock & SC027::End           ; cursor at end of line SC027-SEMICOLON;
CapsLock & u::^Left             ; cursor at end word;
CapsLock & o::^Right            ; cursor ar beginnig of word;
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
CapsLock & y::^Up             ; move page down;
CapsLock & b::^Down             ; move page up;

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

; #Win ^Ctrl !Alt +Shift
; #############################################################################
;CapsLock & b::SetCapsLockState, Off

; ideas:
;CapsLock & LAlt::Del           ; delete char after cursor;
