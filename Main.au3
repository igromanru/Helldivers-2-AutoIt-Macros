##RequireAdmin

#include "src/Base.au3"

Global $bCancelMacro = False

HotKeySet("^q", "_CancelMacro")

; Change keys here to match your game settings
$UP = "{UP}"
$DOWN = "{DOWN}"
$LEFT = "{LEFT}"
$RIGHT = "{RIGHT}"
$OpenStratagemListKey = "y" ; Change "Open Stratagem List" to "Press" in game settings!

Func _CancelMacro()
    $bCancelMacro = True
EndFunc

Func ActivateInstantDropHook()
    PressKey("{NUMPAD1}")
EndFunc

Func DropSuperSamplesLoop($autoThrow = False, $executeAfterInput = Null)
    For $i = 0 To 10
        If $bCancelMacro Then
            $bCancelMacro = False
            ExitLoop
        EndIf
        Resupply($autoThrow, $executeAfterInput)
        Sleep(400)
    Next
EndFunc

RegisterHotkey("36", Resupply, True) ; 6 key
RegisterHotkey("30", Hellbomb, True, ActivateInstantDropHook) ; 0 key
RegisterHotkey("DC", Reinforce, True) ; ^ key on German keyboard
RegisterHotkey("BA", DropSuperSamplesLoop, True, ActivateInstantDropHook) ; ü key on German keyboard

Start()