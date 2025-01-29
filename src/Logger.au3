##include-once

Global Const $DEBUG_LEVEL = 0
Global Const $INFO_LEVEL = 1
Global Const $WARNING_LEVEL = 2
Global Const $ERROR_LEVEL = 3

Local $iLogLevel = $INFO_LEVEL

Func LogNewLine($sMessage)
    ConsoleWrite($sMessage & @CRLF)
EndFunc

Func LogDebug($sMessage)
    If $iLogLevel >= $DEBUG_LEVEL Then
        LogNewLine("[DEBUG]: " & $sMessage)
    EndIf
EndFunc

Func LogInfo($sMessage)
    If $iLogLevel >= $INFO_LEVEL Then
        LogNewLine("[INFO]: " & $sMessage)
    EndIf
EndFunc

Func LogWarning($sMessage)
    If $iLogLevel >= $WARNING_LEVEL Then
        LogNewLine("[WARNING]: " & $sMessage)
    EndIf
EndFunc

Func LogError($sMessage)
    ConsoleWriteError("[ERROR]: " & $sMessage & @CRLF)
EndFunc

Func SetLogLevel($iNewLogLevel)
    If IsInt($iNewLogLevel) Then
        If $iNewLogLevel >= $DEBUG_LEVEL Or $iNewLogLevel <= $ERROR_LEVEL Then
            $iLogLevel = $iNewLogLevel
        Else
            LogError("SetLogLevel: Invalid log level.")
        EndIf
    Else
        LogError("SetLogLevel: Has to be an integer.")
    EndIf
EndFunc