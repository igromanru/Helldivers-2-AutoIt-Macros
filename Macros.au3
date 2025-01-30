##RequireAdmin

#include <AutoItConstants.au3>
#include <Misc.au3>
#include <MsgBoxConstants.au3>
#include <WinAPISysWin.au3>

AutoItSetOption("SendKeyDelay", 10)
AutoItSetOption("SendKeyDownDelay", 20)

HotKeySet("^q", "_Cancel")
OnAutoItExitRegister("_Exit")

Local $hUser32DLL = DllOpen("user32.dll")
Global $hWnd = 0

Global $bCancelMacro = False

Global $UP = "{UP}"
Global $DOWN = "{DOWN}"
Global $LEFT = "{LEFT}"
Global $RIGHT = "{RIGHT}"

Func Print($sMessage)
    ConsoleWrite($sMessage & @CRLF)
EndFunc

Func _Cancel()
    $bCancelMacro = True
    Print("Cancel current macro")
EndFunc

Func _Exit()
    If $hUser32DLL Then
        DllClose($hUser32DLL)
    EndIf
EndFunc


While 1
    $hWnd = WinActive("HELLDIVERS™ 2")
    ;~ If IsHWnd($hHelhWndldivers2) Then
    ;~     ConsoleWrite("Found game window: " & $hWnd & @CRLF)
    ;~ EndIf
    If $hWnd > 0 Then
        ; https://kbdlayout.info/KBDGR/virtualkeys
        If _IsPressed("36", $hUser32DLL) Then ; 6 key
            Resupply()
            Sleep(200)
        ElseIf _IsPressed("30", $hUser32DLL) Then ; 0 key
            Hellbomb()
            Sleep(200)
        ElseIf _IsPressed("DC", $hUser32DLL) Then ; ^ key on German keyboard
            Reinforce()
            Sleep(200)
        ElseIf _IsPressed("BA", $hUser32DLL) Then ; ü key on German keyboard
            DropSuperSamplesLoop()
            Sleep(200)
        EndIf
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

Func CallStratagem($keySequence, $autoThrow = True, $instantDrop = False)
    OpenStratagemMenu()
    PressSequence($keySequence)
    If $instantDrop Then
        PressKey("{NUMPAD1}")
    EndIf
    If $autoThrow Then
        MouseClick($MOUSE_CLICK_LEFT)
        Sleep(800)
    EndIf
EndFunc

Func Resupply($instantDrop = False)
    Local $keys[] = [$DOWN, $DOWN, $UP, $RIGHT]
    CallStratagem($keys, True, $instantDrop)
EndFunc

Func Reinforce()
    Local $keys[] = [$UP, $DOWN, $RIGHT, $LEFT, $UP]
    CallStratagem($keys)
EndFunc

Func Hellbomb()
    Local $keys[] = [$DOWN, $UP, $LEFT, $DOWN, $UP, $RIGHT, $DOWN, $UP]
    CallStratagem($keys)
EndFunc

Func DropSuperSamplesLoop()
    For $i = 0 To 10 Step +1
        If $bCancelMacro Then
            $bCancelMacro = False
            ExitLoop
        EndIf
        Resupply(True)
        Sleep(400)
    Next
EndFunc