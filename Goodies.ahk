!+q::
Run Taskmgr.exe				;Open Task Manager
return

#!c::
Run calc.exe				;open calculator
return

^!a::
Run www.animepahe.com		;open animepahe.com
return

^!y::
Run www.youtube.com			;open yt
return

^!s::
Run www.steamunlocked.net
return

^+x::
Run shutdown /r /t 1
return

^+z::
Run shutdown /s /t 1
return

!q::
WinClose, A
return

^!q::
Run taskkill /f /im explorer.exe
Sleep, 3000
Run explorer.exe
return

!w::
WinMinimize, A
return

!e::
WinMaximize, A
return

!z::
if WinExist("Zoom Meeting")
{
	WinActivate
	WinMaximize
	return
}
return

;-----------------------
;AUTO TYPER
;-----------------------

::yt::YouTube
::i::I

;abbrevatIons
::ys::yes sir
::hs::ha sir
::ns::no sir
::smz::samzha
::nd::no doubts
::dn::done
::idk::I don't know
::sry::sorry
::rn::right now
::os::ok sir

^LButton::
SysGet, w, 0
SysGet, h, 1
MouseGetPos, x, y
if (x <= 8 and x >= 0 and y <= h)
{
	Send {LCtrl Down}{LWin Down}{Left}{LCtrl Up}{LWin Up}
	return
}
if (x <= w+10 and x >= w-5 and y <= h)
{
	Send {LCtrl Down}{LWin Down}{Right}{LCtrl Up}{LWin Up}
	return
}
else
	Send {Ctrl Down}{LButton}{Ctrl Up}
return


+WheelUp::Send {Volume_Up 2}
+WheelDown::Send {Volume_Down 2}

#If MouseIsOver("ahk_class Shell_TrayWnd")
WheelUp::Send {Volume_Up 2}
WheelDown::Send {Volume_Down 2}
return

MouseIsOver(WinTitle) {
    MouseGetPos,,, Win
    return WinExist(WinTitle . " ahk_id " . Win)
}