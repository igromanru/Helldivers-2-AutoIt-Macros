##include-once

#include <AutoItConstants.au3>
#include <Misc.au3>
#include <Array.au3>

#include "Stratagems.au3"

AutoItSetOption("SendKeyDelay", 10)
AutoItSetOption("SendKeyDownDelay", 20)

OnAutoItExitRegister("OnExit")

Global $hUser32DLL = DllOpen("user32.dll")
Global $hWnd = 0
Global $sGameWindow = "HELLDIVERS™ 2"

Global $aHotkeyMapping[1][4]

#cs
    Param $virtualKey: Virtual Key hex number as string, that is required by _IsPressed
        See: https://www.autoitscript.com/autoit3/docs/libfunctions/_IsPressed.htm
        German Keyboard: https://kbdlayout.info/KBDGR/virtualkeys
    Param $functionToCall: Stratagem or any other function that should be triggered when the key was pressed
        The function should accept two parameters ($autoThrow, $executeAfterInput)
    Param $autoThrow: Parameter 1 that will be passed to the function (Default: False)
    Param $executeAfterInput: Parameter 2 that will be passed to the function (Default: Null)
#ce
Func RegisterHotkey($virtualKey, $functionToCall, $autoThrow = False, $executeAfterInput = Null)
    If Not IsString($virtualKey) Then
        LogError("RegisterHotkey: Virtual Key code has to be a string!")
        Return False
    EndIf
    If Not IsFunc($functionToCall) Then
        LogError("RegisterHotkey: Second parameter is not a function!")
        Return False
    EndIf
    Local $lastIndex = UBound($aHotkeyMapping) - 1
    For $i = 0 To $lastIndex
        If $aHotkeyMapping[$i][0] == $virtualKey Then
            $aHotkeyMapping[$i][1] = $functionToCall
            $aHotkeyMapping[$i][2] = $autoThrow
            $aHotkeyMapping[$i][3] = $executeAfterInput
            Return True
        EndIf
    Next
    $aHotkeyMapping[$lastIndex][0] = $virtualKey
    $aHotkeyMapping[$lastIndex][1] = $functionToCall
    $aHotkeyMapping[$lastIndex][2] = $autoThrow
    $aHotkeyMapping[$lastIndex][3] = $executeAfterInput
    ReDim $aHotkeyMapping[$lastIndex + 2][4]
    Return True
EndFunc

Func Start()
    While 1
        $hWnd = WinActive($sGameWindow)
        If $hWnd > 0 Then
            For $i = 0 To UBound($aHotkeyMapping) - 1
                If _IsPressed($aHotkeyMapping[$i][0], $hUser32DLL) Then
                    $aHotkeyMapping[$i][1]($aHotkeyMapping[$i][2], $aHotkeyMapping[$i][3])
                    Sleep(200)
                EndIf
            Next
        EndIf
        Sleep(25)
    WEnd
EndFunc

Func OnExit()
    If $hUser32DLL Then
        DllClose($hUser32DLL)
    EndIf
EndFunc