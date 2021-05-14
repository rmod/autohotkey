#SingleInstance Force
#Persistent
SetCapsLockState, AlwaysOff

; left part
Capslock & j::Send {Blind}{Left DownTemp}
Capslock & j up::Send {Blind}{Left Up}

Capslock & k::Send {Blind}{Down DownTemp}
Capslock & k up::Send {Blind}{Down Up}

Capslock & i::Send {Blind}{Up DownTemp}
Capslock & i up::Send {Blind}{Up Up}

Capslock & l::Send {Blind}{Right DownTemp}
Capslock & l up::Send {Blind}{Right Up}

Capslock & h::SendInput {Blind}{Home Down}
Capslock & h up::SendInput {Blind}{Home Up}

Capslock & SC027::SendInput {Blind}{End Down}
Capslock & SC027 up::SendInput {Blind}{End Up}

Capslock & y::SendInput {Blind}{PgUp Down}
Capslock & y up::SendInput {Blind}{PgUp Up}

Capslock & b::SendInput {Blind}{PgDn Down}
Capslock & b up::SendInput {Blind}{PgDn Up}

Capslock & LAlt::SendInput {Blind}{Del Down}
Capslock & Space::SendInput {Backspace Down}

Capslock & u::SendInput {Blind}{Ctrl Down}{Left Down}
Capslock & u up::SendInput {Blind}{Ctrl Up}{Left Up}

Capslock & o::SendInput {Blind}{Ctrl Down}{Right Down}
Capslock & o up::SendInput {Blind}{Ctrl Up}{Right Up}

; right part
Capslock & s::SendInput {Blind}{Shift Down}{Left Down}
Capslock & s up::SendInput {Blind}{Shift Up}{Left Up}

Capslock & f::SendInput {Blind}{Shift Down}{Right Down}
Capslock & f up::SendInput {Blind}{Shift Up}{Right Up}

Capslock & e::SendInput {Blind}{Shift Down}{Up Down}
Capslock & e up::SendInput {Blind}{Shift Up}{Up Up}

Capslock & d::SendInput {Blind}{Shift Down}{Down Down}
Capslock & d up::SendInput {Blind}{Shift Up}{Down Up}

Capslock & a::SendInput {Blind}{Shift Down}{Home Down}
Capslock & a up::SendInput {Blind}{Shift Up}{Home Up}

Capslock & g::SendInput {Blind}{Shift Down}{End Down}
Capslock & g up::SendInput {Blind}{Shift Up}{End Up}

CapsLock & r::SendInput {Blind}{Ctrl Down}{Shift Down}{Right Down}
Capslock & r up::SendInput {Blind}{Ctrl Up}{Shift Up}{Right Up}

CapsLock & w::SendInput {Blind}{Ctrl Down}{Shift Down}{Left Down}
Capslock & w up::SendInput {Blind}{Ctrl Up}{Shift Up}{Left Up}
               
CapsLock & q::SendInput {Blind}{Ctrl Down}{LWin Down}{Left Down}
Capslock & q up::SendInput {Blind}{Ctrl Up}{LWin Up}{Left Up}

CapsLock & z::SendInput {Blind}{Ctrl Down}{LWin Down}{Right Down}
Capslock & z up::SendInput {Blind}{Ctrl Up}{LWin Up}{Right Up}

; else
;code
Capslock & c::SendInput {Ctrl down}{/}{Ctrl up}			; add comment;

Capslock & v::SendInput {Ctrl Down}{Shift Down}{k Down}		; delete line;
Capslock & v up::SendInput {Ctrl Up}{Shift Up}{k Up}

CapsLock & t::SendInput {=}
CapsLock & 3::SendInput {(}
CapsLock & 4::SendInput {{}
CapsLock & 5::SendInput {[}

; code                     
;Capslock & x::SendInput {Shift Down}{Alt Down}{a}{Alt Up}{Shift Up}	; add advance comment;	

;Capslock & a::SendInput {Ctrl Down}{a Down}
;Capslock & a up::SendInput {Ctrl Up}{a Up}

;Capslock & s::SendInput {Ctrl Down}{x Down}
;Capslock & s up::SendInput {Ctrl Up}{x Up}

;Capslock & d::SendInput {Ctrl Down}{c Down}
;Capslock & d up::SendInput {Ctrl Up}{c Up}

;Capslock & f::SendInput {Ctrl Down}{v Down}
;Capslock & f up::SendInput {Ctrl Up}{v Up}

;Capslock & w::SendInput {Ctrl down}{F4}{Ctrl up}
;Capslock & e::SendInput {Alt down}{F4}{Alt up}
;Capslock & r::SendInput {Blind}{Esc Down}

; Make Capslock & Enter equivalent to Control+Enter
;Capslock & Enter::SendInput {Ctrl down}{Enter}{Ctrl up}

;Capslock & q::SendInput {Ctrl Down}{Tab Down}
;Capslock & q up::SendInput {Ctrl Up}{Tab Up}
;Capslock & Tab::SendInput {Ctrl Down}{Shift Down}{Tab Down}
;Capslock & Tab up::SendInput {Ctrl Up}{Shift Up}{Tab Up}

;Capslock & ,::SendInput {Ctrl Down}{z Down}
;Capslock & , up::SendInput {Ctrl Up}{z Up}
;Capslock & .::SendInput {Ctrl Down}{y Down}
;Capslock & . up::SendInput {Ctrl Up}{y Up}



