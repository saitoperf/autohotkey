; #Requires AutoHotkey v2.0

; ; マウス操作
; ^LButton::Send("!{Left}")

#Persistent          ; スクリプトが勝手に終了するのを防ぐ
#KeyHistory 100      ; 履歴の保存件数を100件に増やす（デフォルトは40件）
#InstallMouseHook    ; マウスの入力を監視するフックを有効化
#InstallKeybdHook    ; キーボードの入力を監視するフックを有効化

KeyHistory           ; 起動と同時に履歴ウィンドウを開く
return
