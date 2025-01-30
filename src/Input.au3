##include-once

#include <AutoItConstants.au3>
#include "Logger.au3"

Global $UP = "{UP}"
Global $DOWN = "{DOWN}"
Global $LEFT = "{LEFT}"
Global $RIGHT = "{RIGHT}"

Global $OpenStratagemMenuKey = "y"

Func PressKey($key)
    If IsString($key) Then
        LogDebug("PressKey: " & $key & @CRLF)
        Send($key)
    Else
        LogError("PressKey: Passed parameter is not a string!")
    EndIf
EndFunc

Func PressSequence($keySequence)
    If IsArray($keySequence) Then
        For $key In $keySequence
            PressKey($key)
        Next
        Sleep(100)
    ElseIf IsString($keySequence) Then
        PressKey($keySequence)
    Else
        LogError("PressSequence: Invalid parameter. The parameter $keySequence has to be an array of strings!")
    EndIf
EndFunc

Func OpenStratagemMenu()
    PressKey($OpenStratagemMenuKey)
    Sleep(100)
EndFunc

Func CallStratagem($keySequence, $autoThrow = False)
    OpenStratagemMenu()
    PressSequence($keySequence)
    If $autoThrow Then
        MouseClick($MOUSE_CLICK_LEFT)
        Sleep(800)
    EndIf
EndFunc
