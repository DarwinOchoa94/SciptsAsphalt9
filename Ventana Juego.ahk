#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

;Importamos archivo de Funciones
#Include Funciones.ahk

;Tecla CTRL+Inicio
^Home::

SobreGrandPrix()
{
	;Iniciar Juego desde acceso directo creado en el directorio del script
	Sleep, 1000
	Run, Asphalt 9 Legends.lnk
	
	;Reescalamos la ventana del juego
	Sleep, 1000
	Juego := "Asphalt 9: Legends"
	CenterResizeWindow(Juego, 864, 486) 
	TransformarCoordenadas(Juego, X:=800, Y:=835)
	;MouseMove % X, Y
	
	;Esperar que el Juego Incie y se conecte a Xbox
	Sleep, 30000
	
	;Ir a Eventos especiales y Verificar que haya sobre disponible
	;MouseMove 220, 458
	Sleep, 1000
	PixelSearch, PixelX, PixelY, 220, 458, 220, 458, 0xFFFFFF, 0, Fast
	if ErrorLevel = 0
	{
		MouseClick, Left, %PixelX%, %PixelY%
		;MsgBox Color encontrado en el pixel %PixelX%, %PixelY%
		
		;Verificar Sobre
		Sleep, 2000
		PixelSearch, PixelX, PixelY, 352, 474, 352, 474, 0x4F4F4F, 0, Fast
		if ErrorLevel = 0
		{
			MsgBox, Sobre no Listo
			
			;Cerrar Juego
			WinClose, %Juego% 		
			
			;Esperar las 30 Minutos
			Sleep, 1800000
			SobreGrandPrix()
		}	
		else
		{
			MouseClick, Left, %PixelX%, %PixelY%
			AbrirSobre()
			
			;Cerrar Juego
			WinClose, %Juego% 		
			
			;Esperar las 4 Horas
			Sleep, 14400000
			SobreGrandPrix()
		}
	}
	else
	{
		;MsgBox Color no encontrado.
	}
}





