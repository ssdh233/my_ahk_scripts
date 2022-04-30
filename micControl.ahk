MIC_DEVICE_ID := 11

RemoveToolTip:
SetTimer, RemoveToolTip, Off
ToolTip
return

XButton1::
SoundSet, +1, MASTER, mute, MIC_DEVICE_ID
SoundGet, is_mute, , mute, MIC_DEVICE_ID

ToolTip, Mute %is_mute%
SetTimer, RemoveToolTip, 1000
return

pushToMute := false
XButton2::
SoundGet, is_mute, , mute, MIC_DEVICE_ID
if (is_mute = "Off") {
    pushToMute := true
    SoundSet, 1, MASTER, mute, MIC_DEVICE_ID
    ToolTip Muting...
} else {
    ToolTip Already muted
}
return

XButton2 Up::
if (pushToMute) {
    pushToMute := false
    SoundSet, 0, MASTER, mute, MIC_DEVICE_ID
}
ToolTip
return