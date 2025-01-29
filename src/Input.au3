##include-once

#include "Logger.au3"

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