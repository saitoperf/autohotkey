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
Hotkey, % R_upper . " & " . L_upper, Action_RU_LU
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
Hotkey, % R_lower . " & " . L_lower, Action_RL_LL
Hotkey, % R_lower . " & WheelUp"   , Action_RL_WheelUp
Hotkey, % R_lower . " & WheelDown" , Action_RL_WheelDown
return

; 通常マウスの動作
~RButton & LButton::
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
    Send, {Enter} ; Enter
return
Action_LU_RL:
    Send, ^v ; Paste
return

; キーバインド: 右上 (┐)
Action_RU_LU:
    Click, Left
    WinClose, A ; クリックしてウィンドウ全体を閉じる（Alt + F4）
return
Action_RU_LL:
    Send, ^w ; タブを閉じる
return
Action_RU_RL:
    Send, #v ; クリップボード呼び出し
return
Action_RU_WheelUp:
    Send, ^{WheelUp} ; 拡大
return
Action_RU_WheelDown:
    Send, ^{WheelDown} ; 縮小
return

; キーバインド: 左下（└）
Action_LL_LU:
    Send, ^#{Left} ; 仮想window移動 ←
return
Action_LL_RU:
    Send, ^#{Right} ; 仮想window移動 →
return
Action_LL_RL:
    Send, !{Right} ; 進む
return

; キーバインド: 右下（┘）
Action_RL_LU:
    Send, ^{PgUp} ; タブ移動 ←
return
Action_RL_RU:
    Send, ^{PgDn} ; タブ移動 →
return
Action_RL_LL:
    Send, !{Left} ; 戻る
return
Action_RL_WheelUp:
    Send, +{WheelDown} ; 水平スクロール
return
Action_RL_WheelDown:
    Send, +{WheelUp} ; 水平スクロール
return
