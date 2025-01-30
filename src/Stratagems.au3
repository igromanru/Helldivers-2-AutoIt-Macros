##include-once

#include "Input.au3"

Func Resupply($autoThrow = False)
    Local $keys[] = [$DOWN, $DOWN, $UP, $RIGHT]
    CallStratagem($keys, $autoThrow)
EndFunc

Func Reinforce($autoThrow = False)
    Local $keys[] = [$UP, $DOWN, $RIGHT, $LEFT, $UP]
    CallStratagem($keys, $autoThrow)
EndFunc