#Requires AutoHotkey v2.0

;########################################
;vk1D (無変換キー) との組合せ
;########################################
MoveCursor(direction) {
    if GetKeyState("Shift") {
        Send "+" direction
    } else {
        Send direction
    }
}

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


;########################################
;vk1C (変換キー) との組合せ
;########################################
vk1C::Send "{vk19}"                 ; 変換キー を 半角/全角キー に入替える
