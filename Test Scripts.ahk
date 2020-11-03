#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

^HOME::
/*
PixelGetColor Color, 583, 304 
MsgBox, % Color

PixelSearch, Px, Py, 531, 243, 531, 243, 0x303030, 3, Fast
if ErrorLevel
	MsgBox, That color was not found in the specified region.
else
	MsgBox, A color within 3 shades of variation was found at X%Px% Y%Py%.
*/

Juego := "Asphalt 9: Legends"

WinClose, %Juego%