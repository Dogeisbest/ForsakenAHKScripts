;sanity checks
#NoEnv
#MaxThreadsPerHotkey 2
#Persistent
SetKeyDelay, 0
Process, Priority,, High

;findtext library
#include findtext.ahk

;shit to look for
Text1:="|<1>**120$91.00000001w00000000000000W00000000000000l0000000w7w0Ds0Fj1z03y1WC3UQ708sXUs71l3A0MM0kAkn0660AVAT6MyA4MH7laDXMYMl8lW2C96AGAMYG88IEEXB4W2544++42A84F4WV0X2155416828WFF0FW0WWW0X414m8cU8l0FFF0FW0WF4IE4MU8ccU8l0F8W+82AE4IIM4Mk8cV5616A2++42A84IEWV0X2154W3546C8F8UlF1WWEV4V2+88Y8F8EWlYD68SB4AN3lW7XE/0660B242k1VU384s61kAW21C1UQ37y7w0DsT1zVz03y2" ;100/100

Text9i:="|<>D5D5D5-0.32$76.000007000000000000w000000000003k000000001y0CC1z03y000Dy1vsDz0Ty001ls7TVsy3lw00D3kQyD0sS1k00s73lss3lk7U03USC7bUDD0S00S1ssSS0Qw0s00s7b1tk1vU3k03USQ7bU7j0D00D3lkSS0Sw0w00SDC1ts1nk3U00zws7bU7D0C001zbUSC0wQ1s000QQ1sw3Vs70003lk7VsS3kw000SD0z3zk7zU003ks3w7w0Ds000S000000000003k0000000000060000000008" ;9/100

;juicy bits
LShift:: ;while holding shift
	SendInput, {Shift down}
	While (GetKeyState("LShift", "P")) {
		if (ok := FindText(X, Y, 0, 0, 1920, 1080, 0.001, 0.001, Text1)) { ;if we find the 100/100 image...
			SoundBeep ;just beep lol
		}
		if (ok := FindText(X, Y, 481, 1000, 592, 1040,,, Text9i)) { ;if we find the 9/100 image...
			;beep, send "Shift Up" a couple of times then break the loop
			SoundBeep
			SendInput, {Shift up}
			Sleep, 50
			Send, {Blind}{Shift up}
			Sleep, 100
			KeyWait, LShift
			break
		}
		if !GetKeyState("LShift", "P") { ;if LShift is released by the user, break the loop
			SendInput, {Shift up}
			break
		}
		Sleep, 10 ; Reduce CPU usage
	}
	SendInput, {Shift up}
	return

;keybinds for panic close
k::
    ExitApp
+k::
    ExitApp

