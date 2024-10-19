#Requires AutoHotkey v2.0

;########################################
;vk1D (無変換キー) および vk1C (変換キー) との組合せ
;########################################
MoveCursor(direction) {
    if GetKeyState("Shift") {
        Send "+" direction
    } else {
        Send direction
    }
}

; 無変換キー (vk1D) の組合せ
vk1D & e::MoveCursor("{Up}")        ; 無変換 + e = ↑
vk1D & d::MoveCursor("{Down}")      ; 無変換 + d = ↓
vk1D & s::MoveCursor("{Left}")      ; 無変換 + s = ←
vk1D & f::MoveCursor("{Right}")     ; 無変換 + f = →
vk1D & k::MoveCursor("{Home}")      ; 無変換 + k = Home
vk1D & <::MoveCursor("{End}")       ; 無変換 + < = End
vk1D & l::MoveCursor("{PgUp}")      ; 無変換 + l = PgUp
vk1D & >::MoveCursor("{PgDn}")      ; 無変換 + > = PgDn
vk1D & j::MoveCursor("{Insert}")    ; 無変換 + j = Insert
vk1D & sc027::Send "{BS}"           ; 無変換 + ; = BackSpace
vk1D & m::Send "{Del}"              ; 無変換 + m = Delete

; 変換キー (vk1C) の組合せ
vk1C & e::MoveCursor("{Up}")        ; 変換 + e = ↑
vk1C & d::MoveCursor("{Down}")      ; 変換 + d = ↓
vk1C & s::MoveCursor("{Left}")      ; 変換 + s = ←
vk1C & f::MoveCursor("{Right}")     ; 変換 + f = →
vk1C & k::MoveCursor("{Home}")      ; 変換 + k = Home
vk1C & <::MoveCursor("{End}")       ; 変換 + < = End
vk1C & l::MoveCursor("{PgUp}")      ; 変換 + l = PgUp
vk1C & >::MoveCursor("{PgDn}")      ; 変換 + > = PgDn
vk1C & j::MoveCursor("{Insert}")    ; 変換 + j = Insert
vk1C & sc027::Send "{BS}"           ; 変換 + ; = BackSpace
vk1C & m::Send "{Del}"              ; 変換 + m = Delete