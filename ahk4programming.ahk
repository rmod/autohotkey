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
CapsLock & Space::Backspace
; #############################################################################

