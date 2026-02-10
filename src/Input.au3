##include-once

#include <AutoItConstants.au3>
#include "Logger.au3"

Global $UP = "{UP}"
Global $DOWN = "{DOWN}"
Global $LEFT = "{LEFT}"
Global $RIGHT = "{RIGHT}"
Global $OpenStratagemListKey = "z" ; The key to toggle the stratagem list. Default: "z"
Global $BlockInput = False ; Per default user's input isn't blocked during Stratagem calls

Func PressKey($key)
    If IsString($key) Then
        ;~ LogDebug("PressKey: " & $key & @CRLF)
        Send($key)
    Else
        LogError("PressKey: Passed parameter is not a string!")
    EndIf
EndFunc

Func PressSequence($keySequence)
    If IsArray($keySequence) Then
        For $key In $keySequence
            PressKey($key)
            Sleep(10)
        Next
    ElseIf IsString($keySequence) Then
        PressKey($keySequence)
    Else
        LogError("PressSequence: Invalid parameter. The parameter $keySequence has to be an array of strings!")
    EndIf
EndFunc

Func OpenStratagemMenu()
    PressKey($OpenStratagemListKey)
    Sleep(100)
EndFunc

Func CallStratagem($keySequence, $autoThrow = False, $executeAfterInput = Null)
    If $BlockInput Then
        BlockInput($BI_DISABLE)
    EndIf
    OpenStratagemMenu()
    PressSequence($keySequence)
    If IsFunc($executeAfterInput) Then
        $executeAfterInput()
    EndIf
    If $autoThrow Then
        MouseClick($MOUSE_CLICK_LEFT)
        Sleep(800)
    EndIf
    If $BlockInput Then
        BlockInput($BI_ENABLE)
    EndIf
EndFunc
