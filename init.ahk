;C:\Users\ユーザ名\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup
;vk1D:無変換, vk1C:変換

; マウス
vk1D & z::Return	; shiftの変わり(低速移動用)
vk1C & /::Return	; shiftの変わり(fnキー)

vk1D & w::
if GetKeyState("z", "P"){
    Send, !{Left}   ; 戻る (alt Left)
}else{
    Click, Left
}
Return

vk1D & r::
if GetKeyState("z", "P"){
    Send, !{Right}  ; 進む (alt Right)
}else{
    ; Click down, Right
    Click, Right
}
Return

vk1D & e::
if GetKeyState("z", "P"){
	Click, WU, 1
}else{
    ; MouseMove, 0, -200, 0, R ; x, y, speed, 相対座標
	Click, MIDDLE, 1
}
Return

vk1D & d::
if GetKeyState("z", "P"){
	Click, WD, 1
}else{
	; MouseMove, 0, 200, 0, R ; x, y, speed, 相対座標
}
Return

vk1D & s::
if GetKeyState("z", "P"){
	Send, ^#{Left}  ; win <-
}else{
	Send, ^{PgUp}   ; tab <-
	; MouseMove, -200, 0, 0, R ; x, y, speed, 相対座標
}
Return

vk1D & f::
if GetKeyState("z", "P"){
	Send, ^#{Right} ; win ->
}else{
    Send, ^{PgDn}   ; tab ->
	; MouseMove, 200, 0, 0, R ; x, y, speed, 相対座標
}
Return

vk1C & i::
if GetKeyState("/", "P"){
	; Click, WU, 1
    Send, #{Up}
}else{
	Send,{Blind}{Up}
}
Return

vk1C & k::
if GetKeyState("/", "P"){
	; Click, WD, 1
    Send, #{Down}
}else{
	Send,{Blind}{Down}
}
Return

vk1C & j::
if GetKeyState("/", "P"){
    Send, #{Left}
}else{
    Send,{Blind}{Left}
}
Return

vk1C & l::
if GetKeyState("/", "P"){
    Send, #{Right}
}else{
    Send,{Blind}{Right}
}
Return

vk1C & u::Send,{Blind}{Home}
vk1C & o::Send,{Blind}{End}
vk1C & m::Send,{Blind}{PgUp} 
vk1C & .::Send,{Blind}{PgDn}

;enter, backspace, delete, esc, 
vk1D & vkBB::Send,{Blind}{Enter} ; vkBB:;
vk1C & vkBB::Send,{Blind}{Enter}
vk1D & p::Send,{Blind}{BS}
vk1C & p::Send,{Blind}{BS}
vk1D & n::Send,{Blind}{Delete}
vk1C & n::Send,{Blind}{Delete}
vk1D & @::Send,{Blind}{End}+{Home}{Delete} ; 1行削除
vk1C & @::Send,{Blind}{End}+{Home}{Delete} ; 1行削除
vk1D & vkBA::Send,{Blind}{Esc} ; vkBA:コロン
vk1C & vkBA::Send,{Blind}{Esc} ; vkBA:コロン

; vk1D & h::Send, {Tab}
; vk1D & y::Send, {vkF0}

#include IME.ahk
;遠いキー(常に半角にする)
vk1C & q::
	ime_mode := IME_GET()
	IME_SET(0)
	Send,{!}
	IME_SET(ime_mode)
Return
vk1C & w::
	ime_mode := IME_GET()
	IME_SET(0)
	Send,"
	IME_SET(ime_mode)
Return
vk1C & e::
	ime_mode := IME_GET()
	IME_SET(0)
	Send,{#}
	IME_SET(ime_mode)
Return
vk1C & r::
	ime_mode := IME_GET()
	IME_SET(0)
	Send,{$}
	IME_SET(ime_mode)
Return
vk1C & t::
	ime_mode := IME_GET()
	IME_SET(0)
	Send,{`%}
	IME_SET(ime_mode)
Return

vk1C & a::Send,{-}

vk1C & z::
	ime_mode := IME_GET()
	IME_SET(0)
	Send,{=}
	IME_SET(ime_mode)
Return
vk1C & s::
	ime_mode := IME_GET()
	IME_SET(0)
	Send,{^}
	IME_SET(ime_mode)
Return
vk1C & x::
	ime_mode := IME_GET()
	IME_SET(0)
	Send,{~}
	IME_SET(ime_mode)
Return
vk1C & g::
	ime_mode := IME_GET()
	IME_SET(0)
	Send,{\}
	IME_SET(ime_mode)
Return
vk1C & b::
	ime_mode := IME_GET()
	IME_SET(0)
	Send,{|}
	IME_SET(ime_mode)
Return
vk1C & d::
	ime_mode := IME_GET()
	IME_SET(0)
	Send,[
	IME_SET(ime_mode)
Return
vk1C & c::
	ime_mode := IME_GET()
	IME_SET(0)
	Send,{`{}
	IME_SET(ime_mode)
Return
vk1C & f::
	ime_mode := IME_GET()
	IME_SET(0)
	Send,]
	IME_SET(ime_mode)
Return
vk1C & v::
	ime_mode := IME_GET()
	IME_SET(0)
	Send,{`}}
	IME_SET(ime_mode)
Return
vk1C & vk1D::
	ime_mode := IME_GET()
	IME_SET(0)
	Send,{_}
	IME_SET(ime_mode)
Return

;テンキー
vk1D & m::
	ime_mode := IME_GET()
	IME_SET(0)
	Send,{Blind}{1}
	IME_SET(ime_mode)
Return
vk1D & ,::
	ime_mode := IME_GET()
	IME_SET(0)
	Send,{Blind}{2}
	IME_SET(ime_mode)
Return
vk1D & .::
	ime_mode := IME_GET()
	IME_SET(0)
	Send,{Blind}{3}
	IME_SET(ime_mode)
Return
vk1D & j::
	ime_mode := IME_GET()
	IME_SET(0)
	Send,{Blind}{4}
	IME_SET(ime_mode)
Return
vk1D & k::
	ime_mode := IME_GET()
	IME_SET(0)
	Send,{Blind}{5}
	IME_SET(ime_mode)
Return
vk1D & l::
	ime_mode := IME_GET()
	IME_SET(0)
	Send,{Blind}{6}
	IME_SET(ime_mode)
Return
vk1D & u::
	ime_mode := IME_GET()
	IME_SET(0)
	Send,{Blind}{7}
	IME_SET(ime_mode)
Return
vk1D & i::
	ime_mode := IME_GET()
	IME_SET(0)
	Send,{Blind}{8}
	IME_SET(ime_mode)
Return
vk1D & o::
	ime_mode := IME_GET()
	IME_SET(0)
	Send,{Blind}{9}
	IME_SET(ime_mode)
Return
vk1D & a::
	ime_mode := IME_GET()
	IME_SET(0)
	Send,{Blind}{.}
	IME_SET(ime_mode)
Return
vk1D & vk20::
	ime_mode := IME_GET()
	IME_SET(0)
	Send,{Blind}{0}
	IME_SET(ime_mode)
Return
vk1D & vk1C::
	ime_mode := IME_GET()
	IME_SET(0)
	Send,{Blind}{0}
	IME_SET(ime_mode)
Return

; 全角にしたくないキー
; LShift & @::
; 	ime_mode := IME_GET()
; 	IME_SET(0)
; 	Send,``
; 	IME_SET(ime_mode)
; Return

; RShiftとLShistの同時押しで大文字小文字の切り替え
LShift & RShift::
if GetKeyState("CapsLock", "T") = 1{
   SetCapsLockState, off
}else if GetKeyState("CapsLock", "T") = 0{
   SetCapsLockState, on
}
Return
RShift & LShift::
if GetKeyState("CapsLock", "T") = 1{
   SetCapsLockState, off
}else if GetKeyState("CapsLock", "T") = 0{
   SetCapsLockState, on
}
Return

;その他ショートカット
vk1C & ,::Send,{F9}{F8}{Enter} ; 日本語英語
vk1C & vk20::Send,{-}{>}
LShift & vk1D::Return ; 先にshiftを押すと意図しない挙動になるので
LShift & vk1C::Return ; 先にshiftを押すと意図しない挙動になるので