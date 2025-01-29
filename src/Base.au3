##include-once

#include <AutoItConstants.au3>
#include <Misc.au3>

AutoItSetOption("SendKeyDelay", 10)
AutoItSetOption("SendKeyDownDelay", 20)

Local $hUser32DLL = DllOpen("user32.dll")
Local $hWnd = 0
