; initial menu
MenuSelection := ""
Gui, Add, Text,, Select Your Character:
Gui, Add, DropDownList, vMenuSelection, Shedletsky|Noob|Guest 1337
Gui, Add, Button, Default gConfirmSelection, OK
Gui, Show,, Select Character
return

ConfirmSelection:
Gui, Submit
Gui, Destroy  ; it fucks off

; juicy bits
qCooldown := 0
eCooldown := 0
rCooldown := 0

*~Q:: ;Q cooldowns
    if (qCooldown = 0) {
        if (MenuSelection = "Shedletsky") {
            qCooldown := 39150	; Slash cooldown, 40 seconds
			Sleep, 650
			SoundPlay, switchR.wav
		}
        else if (MenuSelection = "Noob") {
            qCooldown := 11000  ; Bloxy Cola cooldown, 12 seconds
            Sleep, 950
            SoundPlay, switchR.wav
        }
        else if (MenuSelection = "Guest 1337") {
            qCooldown := 23700  ; Block cooldown, 24 seconds
            SoundPlay, switchR.wav
        }
        SetTimer, QCooldownDone, %qCooldown%

    }
return

QCooldownDone:
	SoundPlay, splat.wav
    qCooldown := 0
    SetTimer, QCooldownDone, Off
return

*~E::    ;E cooldowns
    if (eCooldown = 0) {
        if (MenuSelection = "Shedletsky") {
            eCooldown := 69800  ; Fried Chicken cooldown, 70 seconds
            Sleep, 1000
            SoundPlay, switchR.wav
        }
        else if (MenuSelection = "Noob") {
            eCooldown := 64200  ; Slateskin Potion, 65 seconds
            Sleep, 650
            SoundPlay, switchR.wav
        }
        else if (MenuSelection = "Guest 1337") {
            eCooldown := 45000  ; Charge cooldown, 45 seconds
        }
        SetTimer, ECooldownDone, %eCooldown%
    }
return

ECooldownDone:
    SoundPlay, splat.wav
    eCooldown := 0
    SetTimer, ECooldownDone, Off
return

; noob burgah
*~R::
    if (MenuSelection = "Noob" && rCooldown = 0) {
        rCooldown := 44500  ; Ghostburgah cooldown, 45 seconds
        SoundBeep
        SetTimer, RCooldownDone, %rCooldown%
    }
return

RCooldownDone:
    SoundPlay, splat.wav
    rCooldown := 0
    SetTimer, RCooldownDone, Off
return

GuiClose:
ExitApp
return
