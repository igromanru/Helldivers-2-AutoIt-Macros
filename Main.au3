#RequireAdmin

#include <Misc.au3>
#include "src/Base.au3"

; Change keys here to match your game settings
$UP = "{UP}"
$DOWN = "{DOWN}"
$LEFT = "{LEFT}"
$RIGHT = "{RIGHT}"
$OpenStratagemListKey = "y" ; Change "Open Stratagem List" to "Press" in game settings!

; Extra setup to allow long macros to be cancelled
HotKeySet("^q", "_CancelMacro") ; Ctrl + Q to cancel the macro

If _Singleton("Helldivers-2-AutoIt-Macros", 1) = 0 Then
    MsgBox($MB_SYSTEMMODAL + $MB_ICONINFORMATION, "Helldivers 2 AutoIt Macros", "The script is already running.")
    Exit
EndIf

Global $bCancelMacro = False

Func _CancelMacro()
    $bCancelMacro = True
EndFunc

Func CallFullLoadout($autoThrow = False, $executeAfterInput = Null)
    ; Put your support Stratagem calls here. Use Sleep(x) in between calls, if you need more time to aim to a different location.
    FastReconnaissanceVehicle($autoThrow, $executeAfterInput)
EndFunc

Func DropSuperSamplesLoop($autoThrow = False, $executeAfterInput = Null)
    $BlockInput = False
    For $i = 1 To 10
        If $bCancelMacro Then
            $bCancelMacro = False
            ExitLoop
        EndIf
        Resupply($autoThrow, $executeAfterInput)
        Sleep(400)
    Next
    $BlockInput = True
EndFunc

Func PickUpLoop($autoThrow = False, $executeAfterInput = Null)
    Local $iPickUpsCount = 15
    For $i = 1 To $iPickUpsCount
        If $bCancelMacro Then
            $bCancelMacro = False
            ExitLoop
        EndIf
        ; Pick up 13 times
        BlockInput($BI_DISABLE)
        For $s = 1 To 13
            If $bCancelMacro Then
                ExitLoop
            EndIf
            PressKey("F")
            Sleep(1000)
        Next
        BlockInput($BI_ENABLE)
        ; Sleep loop with ability to cancel
        if $i < $iPickUpsCount Then
            For $s = 1 To 600
                If $bCancelMacro Then
                    ExitLoop
                EndIf
                Sleep(100)
            Next
        EndIf
    Next
    MsgBox(0, $sScriptName, "PickUpLoop finished")
EndFunc

Func ActivateInstantDropHook()
    PressKey("{NUMPAD1}")
EndFunc

#cs
    https://www.autoitscript.com/autoit3/docs/libfunctions/_IsPressed.htm
    German Keyboard: https://kbdlayout.info/KBDGR/virtualkeys
#ce
RegisterHotkey("36", Resupply, True) ; 6 key
RegisterHotkey("30", Hellbomb, True, ActivateInstantDropHook) ; 0 key
RegisterHotkey("DC", Reinforce, True) ; ^ key on German keyboard
;~ RegisterHotkey("C0", CallFullLoadout, True) ; ö (VK_OEM_3) key on German keyboard
; RegisterHotkey("BA", DropSuperSamplesLoop, True, ActivateInstantDropHook) ; ü (VK_OEM_1) key on German keyboard
;~ RegisterHotkey("BA", PickUpLoop, False) ; ü (VK_OEM_1) key on German keyboard

Start()