##include-once

#include "Input.au3"

Func Resupply($autoThrow = False, $executeAfterInput = Null)
    Local $keys[] = [$DOWN, $DOWN, $UP, $RIGHT]
    CallStratagem($keys, $autoThrow, $executeAfterInput)
EndFunc

Func Reinforce($autoThrow = False, $executeAfterInput = Null)
    Local $keys[] = [$UP, $DOWN, $RIGHT, $LEFT, $UP]
    CallStratagem($keys, $autoThrow, $executeAfterInput)
EndFunc

Func Hellbomb($autoThrow = False, $executeAfterInput = Null)
    Local $keys[] = [$DOWN, $UP, $LEFT, $DOWN, $UP, $RIGHT, $DOWN, $UP]
    CallStratagem($keys, $autoThrow, $executeAfterInput)
EndFunc
