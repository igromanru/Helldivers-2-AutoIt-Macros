##RequireAdmin

#include <AutoItConstants.au3>
#include <Misc.au3>
#include <MsgBoxConstants.au3>
#include <WinAPISysWin.au3>

;~ HotKeySet("6","Resupply")
HotKeySet("{F10}","_exit")

AutoItSetOption("SendKeyDelay", 10)
AutoItSetOption("SendKeyDownDelay", 10)

Global $hDLL = DllOpen("user32.dll")
Global $hWnd = 0

While 1
    $hWnd = WinActive("HELLDIVERS™ 2")
    ;~ If IsHWnd($hHelhWndldivers2) Then
    ;~     ConsoleWrite("Found game window: " & $hWnd & @CRLF)
    ;~ EndIf
	If _IsPressed(36, $hDLL) Then
        Resupply()
        Sleep(200)
	EndIf
    Sleep(25)
WEnd

Func PressKey($key)
    ConsoleWrite("PressKey: " & $key & @CRLF)
    Send($key)
EndFunc

Func PressSequence($keySequence)
    If IsHWnd($hWnd) And IsArray($keySequence) Then
        For $key In $keySequence
            PressKey($key)
        Next
        Sleep(100)
    EndIf
EndFunc

Func OpenStratagemMenu()
    If IsHWnd($hWnd) Then
        PressKey("y")
        Sleep(100)
    EndIf
EndFunc

Func CallStratagem($keySequence, $autoThrow = True, $instant = False)
    OpenStratagemMenu()
    PressSequence($keySequence)
    If $instant Then
        PressKey("{NUMPAD1}")
    EndIf
    If $autoThrow Then
        MouseClick($MOUSE_CLICK_LEFT)
    EndIf
EndFunc

Func Resupply()
    Local $resupply[] = ["{DOWN}{DOWN}{UP}{RIGHT}"]
    CallStratagem($resupply)
EndFunc

Func _exit()
	Exit
EndFunc