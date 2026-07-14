; Slimblade Pro のボタン定義
global L_upper := "LButton" ; 左上 (┌)
global R_upper := "vk7D"    ; 右上 (┐) (F14)
global L_lower := "vk7E"    ; 左下 (└) (F15)
global R_lower := "vk7F"    ; 右下 (┘) (F16)

; 単体ボタン
; Hotkey, %L_upper%, Action_LU
Hotkey, %R_upper%, Action_RU
Hotkey, %L_lower%, Action_LL
Hotkey, %R_lower%, Action_RL

; キーバインド: 左上 (┌)
Hotkey, % "~" . L_upper . " & " . R_upper, Action_LU_RU
Hotkey, % "~" . L_upper . " & " . L_lower, Action_LU_LL
Hotkey, % "~" . L_upper . " & " . R_lower, Action_LU_RL
; キーバインド: 右上 (┐)
Hotkey, % R_upper . " & " . L_upper, Action_RU_LU ; 押し上げたら発火
Hotkey, % R_upper . " & " . L_lower, Action_RU_LL
Hotkey, % R_upper . " & " . R_lower, Action_RU_RL
Hotkey, % R_upper . " & WheelUp"   , Action_RU_WheelUp
Hotkey, % R_upper . " & WheelDown" , Action_RU_WheelDown
; キーバインド: 左下 (└)
Hotkey, % L_lower . " & " . L_upper, Action_LL_LU
Hotkey, % L_lower . " & " . R_upper, Action_LL_RU
Hotkey, % L_lower . " & " . R_lower, Action_LL_RL
; キーバインド: 右下 (┘)
Hotkey, % R_lower . " & " . L_upper, Action_RL_LU
Hotkey, % R_lower . " & " . R_upper, Action_RL_RU
; Hotkey, % R_lower . " & " . L_lower, Action_RL_LL
Hotkey, % R_lower . " & " . L_lower, AltTab ; 特殊コマンド
Hotkey, % R_lower . " & WheelUp"   , Action_RL_WheelUp
Hotkey, % R_lower . " & WheelDown" , Action_RL_WheelDown
return

; 通常マウスの動作
~RButton & LButton up::
    WinClose, A
return

; Action_LU:
;     Click, Left ; 左クリック
; return
Action_RU:
    Click, Right ; 右クリック
return
Action_LL:
    Click, middle ; 中央クリック
return
Action_RL:
    Send, ^{vkC0} ; ターミナルを開く (vkC0 = @)
return

; キーバインド: 左上（┌）
Action_LU_RU:
    Send, ^c ; Copy
return
Action_LU_LL:
    Send, !{Left} ; 戻る
return
Action_LU_RL:
    Send, !{Right} ; 進む
return

; キーバインド: 右上 (┐) (雑なコマンド)
Action_RU_LU:
    KeyWait, % L_upper ; LU が話されるまで待機
    Click, Left
    WinClose, A ; クリックしてウィンドウ全体を閉じる（Alt + F4）
return
Action_RU_LL:
    Send, ^v ; Paste
return
Action_RU_RL:
    Send, #v ; クリップボード呼び出し
return
Action_RU_WheelUp:
    Send, ^{WheelDown} ; 縮小
return
Action_RU_WheelDown:
    Send, ^{WheelUp} ; 拡大
return

; キーバインド: 左下（└）
Action_LL_LU:
    Send, ^{PgUp} ; タブ移動 ←
return
Action_LL_RU:
    Send, ^{PgDn} ; タブ移動 →
return
Action_LL_RL:
    Send, ^w ; タブを閉じる
return

; キーバインド: 右下（┘）
Action_RL_LU:
    Send, ^#{Left} ; 仮想window移動 ←
return
Action_RL_RU:
    Send, ^#{Right} ; 仮想window移動 →
return
; Action_RL_LL:
;   alt + tab
; return
Action_RL_WheelUp:
    Send, +{WheelUp} ; 水平スクロール
return
Action_RL_WheelDown:
    Send, +{WheelDown} ; 水平スクロール
return
