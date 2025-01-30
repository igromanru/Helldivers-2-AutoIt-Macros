##include-once

#include "Input.au3"

; Supply Stratagems
Func LiftJumpPack($autoThrow = False, $executeAfterInput = Null)
    Local $keys[] = [$DOWN, $UP, $UP, $DOWN, $UP]
    CallStratagem($keys, $autoThrow, $executeAfterInput)
EndFunc

Func SupplyPack($autoThrow = False, $executeAfterInput = Null)
    Local $keys[] = [$DOWN, $LEFT, $DOWN, $UP, $UP, $DOWN]
    CallStratagem($keys, $autoThrow, $executeAfterInput)
EndFunc

Func GuardDogRover($autoThrow = False, $executeAfterInput = Null)
    Local $keys[] = [$DOWN, $UP, $LEFT, $UP, $RIGHT, $RIGHT]
    CallStratagem($keys, $autoThrow, $executeAfterInput)
EndFunc

Func BallisticShieldBackpack($autoThrow = False, $executeAfterInput = Null)
    Local $keys[] = [$DOWN, $LEFT, $DOWN, $DOWN, $UP, $LEFT]
    CallStratagem($keys, $autoThrow, $executeAfterInput)
EndFunc

Func GuardDog($autoThrow = False, $executeAfterInput = Null)
    Local $keys[] = [$DOWN, $UP, $LEFT, $UP, $RIGHT, $DOWN]
    CallStratagem($keys, $autoThrow, $executeAfterInput)
EndFunc

Func MachineGun($autoThrow = False, $executeAfterInput = Null)
    Local $keys[] = [$DOWN, $LEFT, $DOWN, $UP, $RIGHT]
    CallStratagem($keys, $autoThrow, $executeAfterInput)
EndFunc

Func AntiMaterialRifle($autoThrow = False, $executeAfterInput = Null)
    Local $keys[] = [$DOWN, $LEFT, $RIGHT, $UP, $DOWN]
    CallStratagem($keys, $autoThrow, $executeAfterInput)
EndFunc

Func Stalwart($autoThrow = False, $executeAfterInput = Null)
    Local $keys[] = [$DOWN, $LEFT, $DOWN, $UP, $UP, $LEFT]
    CallStratagem($keys, $autoThrow, $executeAfterInput)
EndFunc

Func ExpendableAntiTank($autoThrow = False, $executeAfterInput = Null)
    Local $keys[] = [$DOWN, $DOWN, $LEFT, $UP, $RIGHT]
    CallStratagem($keys, $autoThrow, $executeAfterInput)
EndFunc

Func RecoilessRifle($autoThrow = False, $executeAfterInput = Null)
    Local $keys[] = [$DOWN, $LEFT, $RIGHT, $RIGHT, $LEFT]
    CallStratagem($keys, $autoThrow, $executeAfterInput)
EndFunc

Func Flamethrower($autoThrow = False, $executeAfterInput = Null)
    Local $keys[] = [$DOWN, $LEFT, $UP, $DOWN, $UP]
    CallStratagem($keys, $autoThrow, $executeAfterInput)
EndFunc

Func Autocannon($autoThrow = False, $executeAfterInput = Null)
    Local $keys[] = [$DOWN, $LEFT, $DOWN, $UP, $UP, $RIGHT]
    CallStratagem($keys, $autoThrow, $executeAfterInput)
EndFunc

Func HeavyMachineGun($autoThrow = False, $executeAfterInput = Null)
    Local $keys[] = [$DOWN, $LEFT, $UP, $DOWN, $DOWN]
    CallStratagem($keys, $autoThrow, $executeAfterInput)
EndFunc

Func Railgun($autoThrow = False, $executeAfterInput = Null)
    Local $keys[] = [$DOWN, $RIGHT, $LEFT, $DOWN, $UP, $LEFT, $RIGHT]
    CallStratagem($keys, $autoThrow, $executeAfterInput)
EndFunc

Func SpearLauncher($autoThrow = False, $executeAfterInput = Null)
    Local $keys[] = [$DOWN, $DOWN, $UP, $DOWN, $DOWN]
    CallStratagem($keys, $autoThrow, $executeAfterInput)
EndFunc

Func GrenadeLauncher($autoThrow = False, $executeAfterInput = Null)
    Local $keys[] = [$DOWN, $LEFT, $UP, $LEFT, $DOWN]
    CallStratagem($keys, $autoThrow, $executeAfterInput)
EndFunc

Func LaserCannon($autoThrow = False, $executeAfterInput = Null)
    Local $keys[] = [$DOWN, $LEFT, $DOWN, $UP, $LEFT]
    CallStratagem($keys, $autoThrow, $executeAfterInput)
EndFunc

Func ArcThrower($autoThrow = False, $executeAfterInput = Null)
    Local $keys[] = [$DOWN, $RIGHT, $DOWN, $UP, $LEFT, $LEFT]
    CallStratagem($keys, $autoThrow, $executeAfterInput)
EndFunc

Func QuasarCannon($autoThrow = False, $executeAfterInput = Null)
    Local $keys[] = [$DOWN, $DOWN, $UP, $LEFT, $RIGHT]
    CallStratagem($keys, $autoThrow, $executeAfterInput)
EndFunc

Func PatriotExosuit($autoThrow = False, $executeAfterInput = Null)
    Local $keys[] = [$LEFT, $DOWN, $RIGHT, $UP, $LEFT, $DOWN, $DOWN]
    CallStratagem($keys, $autoThrow, $executeAfterInput)
EndFunc

; Mission Stratagems
Func Reinforce($autoThrow = False, $executeAfterInput = Null)
    Local $keys[] = [$UP, $DOWN, $RIGHT, $LEFT, $UP]
    CallStratagem($keys, $autoThrow, $executeAfterInput)
EndFunc

Func SOSBeacon($autoThrow = False, $executeAfterInput = Null)
    Local $keys[] = [$UP, $DOWN, $RIGHT, $LEFT]
    CallStratagem($keys, $autoThrow, $executeAfterInput)
EndFunc

Func Resupply($autoThrow = False, $executeAfterInput = Null)
    Local $keys[] = [$DOWN, $DOWN, $UP, $RIGHT]
    CallStratagem($keys, $autoThrow, $executeAfterInput)
EndFunc

Func Hellbomb($autoThrow = False, $executeAfterInput = Null)
    Local $keys[] = [$DOWN, $UP, $LEFT, $DOWN, $UP, $RIGHT, $DOWN, $UP]
    CallStratagem($keys, $autoThrow, $executeAfterInput)
EndFunc

Func SSDDelivery($autoThrow = False, $executeAfterInput = Null)
    Local $keys[] = [$DOWN, $DOWN, $DOWN, $UP, $UP]
    CallStratagem($keys, $autoThrow, $executeAfterInput)
EndFunc

Func SeismicProbe($autoThrow = False, $executeAfterInput = Null)
    Local $keys[] = [$UP, $UP, $LEFT, $RIGHT, $DOWN, $DOWN]
    CallStratagem($keys, $autoThrow, $executeAfterInput)
EndFunc

Func UploadData($autoThrow = False, $executeAfterInput = Null)
    Local $keys[] = [$LEFT, $RIGHT, $UP, $UP, $UP]
    CallStratagem($keys, $autoThrow, $executeAfterInput)
EndFunc

Func EagleRearm($autoThrow = False, $executeAfterInput = Null)
    Local $keys[] = [$UP, $UP, $LEFT, $UP, $RIGHT]
    CallStratagem($keys, $autoThrow, $executeAfterInput)
EndFunc

Func IlluminationFlare($autoThrow = False, $executeAfterInput = Null)
    Local $keys[] = [$RIGHT, $RIGHT, $LEFT, $LEFT]
    CallStratagem($keys, $autoThrow, $executeAfterInput)
EndFunc

Func SuperEarthFlag($autoThrow = False, $executeAfterInput = Null)
    Local $keys[] = [$DOWN, $UP, $DOWN, $UP]
    CallStratagem($keys, $autoThrow, $executeAfterInput)
EndFunc

; Defensive Stratagems
Func EmplacedMachineGun($autoThrow = False, $executeAfterInput = Null)
    Local $keys[] = [$DOWN, $UP, $LEFT, $RIGHT, $RIGHT, $LEFT]
    CallStratagem($keys, $autoThrow, $executeAfterInput)
EndFunc

Func ShieldGeneratorRelay($autoThrow = False, $executeAfterInput = Null)
    Local $keys[] = [$DOWN, $DOWN, $LEFT, $RIGHT, $LEFT, $RIGHT]
    CallStratagem($keys, $autoThrow, $executeAfterInput)
EndFunc

Func TeslaTower($autoThrow = False, $executeAfterInput = Null)
    Local $keys[] = [$DOWN, $UP, $RIGHT, $UP, $LEFT, $RIGHT]
    CallStratagem($keys, $autoThrow, $executeAfterInput)
EndFunc

Func AntiPersonnelMinefield($autoThrow = False, $executeAfterInput = Null)
    Local $keys[] = [$DOWN, $LEFT, $UP, $RIGHT]
    CallStratagem($keys, $autoThrow, $executeAfterInput)
EndFunc

Func IncendiaryMines($autoThrow = False, $executeAfterInput = Null)
    Local $keys[] = [$DOWN, $LEFT, $LEFT, $DOWN]
    CallStratagem($keys, $autoThrow, $executeAfterInput)
EndFunc

Func MachineSentry($autoThrow = False, $executeAfterInput = Null)
    Local $keys[] = [$DOWN, $UP, $RIGHT, $RIGHT, $UP]
    CallStratagem($keys, $autoThrow, $executeAfterInput)
EndFunc

Func GatlingSentry($autoThrow = False, $executeAfterInput = Null)
    Local $keys[] = [$DOWN, $UP, $RIGHT, $LEFT]
    CallStratagem($keys, $autoThrow, $executeAfterInput)
EndFunc

Func MortarSentry($autoThrow = False, $executeAfterInput = Null)
    Local $keys[] = [$DOWN, $UP, $RIGHT, $RIGHT, $DOWN]
    CallStratagem($keys, $autoThrow, $executeAfterInput)
EndFunc

Func AutocannonSentry($autoThrow = False, $executeAfterInput = Null)
    Local $keys[] = [$DOWN, $UP, $RIGHT, $UP, $LEFT, $UP]
    CallStratagem($keys, $autoThrow, $executeAfterInput)
EndFunc

Func RocketSentry($autoThrow = False, $executeAfterInput = Null)
    Local $keys[] = [$DOWN, $UP, $RIGHT, $RIGHT, $LEFT]
    CallStratagem($keys, $autoThrow, $executeAfterInput)
EndFunc

Func EMSSentry($autoThrow = False, $executeAfterInput = Null)
    Local $keys[] = [$DOWN, $UP, $RIGHT, $DOWN, $RIGHT]
    CallStratagem($keys, $autoThrow, $executeAfterInput)
EndFunc

; Offensive Stratagems
Func OrbitalGatlingBarrage($autoThrow = False, $executeAfterInput = Null)
    Local $keys[] = [$RIGHT, $DOWN, $LEFT, $UP, $UP]
    CallStratagem($keys, $autoThrow, $executeAfterInput)
EndFunc

Func OrbitalAirburstStrike($autoThrow = False, $executeAfterInput = Null)
    Local $keys[] = [$RIGHT, $RIGHT, $RIGHT]
    CallStratagem($keys, $autoThrow, $executeAfterInput)
EndFunc

Func Orbital120mmBarrage($autoThrow = False, $executeAfterInput = Null)
    Local $keys[] = [$RIGHT, $RIGHT, $DOWN, $LEFT, $RIGHT, $DOWN]
    CallStratagem($keys, $autoThrow, $executeAfterInput)
EndFunc

Func Orbital380mmBarrage($autoThrow = False, $executeAfterInput = Null)
    Local $keys[] = [$RIGHT, $DOWN, $UP, $UP, $LEFT, $DOWN, $DOWN]
    CallStratagem($keys, $autoThrow, $executeAfterInput)
EndFunc

Func OrbitalWalkingBarrage($autoThrow = False, $executeAfterInput = Null)
    Local $keys[] = [$RIGHT, $DOWN, $RIGHT, $DOWN, $RIGHT, $DOWN]
    CallStratagem($keys, $autoThrow, $executeAfterInput)
EndFunc

Func OrbitalLaser($autoThrow = False, $executeAfterInput = Null)
    Local $keys[] = [$RIGHT, $DOWN, $UP, $RIGHT, $DOWN]
    CallStratagem($keys, $autoThrow, $executeAfterInput)
EndFunc

Func OrbitalRailcannonStrike($autoThrow = False, $executeAfterInput = Null)
    Local $keys[] = [$RIGHT, $UP, $DOWN, $DOWN, $RIGHT]
    CallStratagem($keys, $autoThrow, $executeAfterInput)
EndFunc

Func OrbitalPrecisionStrike($autoThrow = False, $executeAfterInput = Null)
    Local $keys[] = [$RIGHT, $RIGHT, $UP]
    CallStratagem($keys, $autoThrow, $executeAfterInput)
EndFunc

Func OrbitalGasStrike($autoThrow = False, $executeAfterInput = Null)
    Local $keys[] = [$RIGHT, $RIGHT, $DOWN, $RIGHT]
    CallStratagem($keys, $autoThrow, $executeAfterInput)
EndFunc

Func OrbitalEMSStrike($autoThrow = False, $executeAfterInput = Null)
    Local $keys[] = [$RIGHT, $RIGHT, $LEFT, $DOWN]
    CallStratagem($keys, $autoThrow, $executeAfterInput)
EndFunc

Func OrbitalSmokeStrike($autoThrow = False, $executeAfterInput = Null)
    Local $keys[] = [$RIGHT, $RIGHT, $DOWN, $UP]
    CallStratagem($keys, $autoThrow, $executeAfterInput)
EndFunc

Func EagleStrafingRun($autoThrow = False, $executeAfterInput = Null)
    Local $keys[] = [$UP, $RIGHT, $RIGHT]
    CallStratagem($keys, $autoThrow, $executeAfterInput)
EndFunc

Func EagleAirstrike($autoThrow = False, $executeAfterInput = Null)
    Local $keys[] = [$UP, $RIGHT, $DOWN, $RIGHT]
    CallStratagem($keys, $autoThrow, $executeAfterInput)
EndFunc

Func EagleClusterBomb($autoThrow = False, $executeAfterInput = Null)
    Local $keys[] = [$UP, $RIGHT, $DOWN, $DOWN, $RIGHT]
    CallStratagem($keys, $autoThrow, $executeAfterInput)
EndFunc

Func EagleNapalm($autoThrow = False, $executeAfterInput = Null)
    Local $keys[] = [$UP, $RIGHT, $DOWN, $UP]
    CallStratagem($keys, $autoThrow, $executeAfterInput)
EndFunc

Func EagleSmokeStrike($autoThrow = False, $executeAfterInput = Null)
    Local $keys[] = [$UP, $RIGHT, $UP, $DOWN]
    CallStratagem($keys, $autoThrow, $executeAfterInput)
EndFunc

Func Eagle110mmRockets($autoThrow = False, $executeAfterInput = Null)
    Local $keys[] = [$UP, $RIGHT, $UP, $LEFT]
    CallStratagem($keys, $autoThrow, $executeAfterInput)
EndFunc

Func Eagle500kgBomb($autoThrow = False, $executeAfterInput = Null)
    Local $keys[] = [$UP, $RIGHT, $DOWN, $DOWN, $DOWN]
    CallStratagem($keys, $autoThrow, $executeAfterInput)
EndFunc
