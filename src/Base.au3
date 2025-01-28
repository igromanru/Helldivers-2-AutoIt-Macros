##include-once

#include <AutoItConstants.au3>
#include <Misc.au3>

AutoItSetOption("SendKeyDelay", 10)
AutoItSetOption("SendKeyDownDelay", 20)

Local $hDLL = DllOpen("user32.dll")
Local $hWnd = 0

Local $bCancelMacro = False

Func Print($sMessage)
    ConsoleWrite($sMessage & @CRLF)
EndFunc

Func PressKey($key)
    ConsoleWrite("PressKey: " & $key & @CRLF)
    Send($key)
EndFunc

Func PressSequence($keySequence)
    If IsArray($keySequence) Then
        For $key In $keySequence
            PressKey($key)
        Next
        Sleep(100)
    EndIf
EndFunc

While 1
    $hWnd = WinActive("HELLDIVERS™ 2")
    If IsHWnd($hWnd) Then
        
    EndIf
    Sleep(25)
WEnd