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
SetCapsLockState, Off
~Capslock::SetCapsLockState, off
; #############################################################################

; #############################################################################
; Caps Lock shortcuts.

; -------------------------------------
; Backspace
CapsLock & Space::Backspace

; -------------------------------------
; Keyboard - Arrows
CapsLock & i::Up
CapsLock & k::Down
CapsLock & j::Left
CapsLock & l::Right

; -------------------------------------
; Keyboard - Cursor manipulation all editors
CapsLock & h::Home			; cursor at begging of line;
CapsLock & SC027::End		; cursor at end of line SC027-SEMICOLON;
CapsLock & u::^Left			; cursor at end word;
CapsLock & o::^Right		; cursor ar beginnig of word;

; #Win ^Ctrl !Alt +Shift
; #############################################################################

