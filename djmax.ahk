#MaxHotkeysPerInterval 200000

Joy12::
Send {LShift down}   ; Press the spacebar down.
SetTimer, WaitForJoy12, 30  ; Reduce the number 30 to 20 or 10 to send keys faster. Increase it to send slower.
return

WaitForJoy12:
if not GetKeyState("Joy12")  ; The button has been released.
{
    Send {LShift up}  ; Release the spacebar.
    SetTimer, WaitForJoy12, Off  ; Stop monitoring the button.
    return
}
; Since above didn't "return", the button is still being held down.
Send {LShift down}  ; Send another Spacebar keystroke.
return

Joy9::
Send {RShift down}   ; Press the spacebar down.
SetTimer, WaitForJoy9, 30  ; Reduce the number 30 to 20 or 10 to send keys faster. Increase it to send slower.
return

WaitForJoy9:
if not GetKeyState("Joy9")  ; The button has been released.
{
    Send {RShift up}  ; Release the spacebar.
    SetTimer, WaitForJoy9, Off  ; Stop monitoring the button.
    return
}
; Since above didn't "return", the button is still being held down.
Send {RShift down}  ; Send another Spacebar keystroke.
return