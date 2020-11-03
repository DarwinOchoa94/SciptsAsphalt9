#Include Lib\Funciones.ahk

^HOME::
    Juego := "Asphalt 9: Legends"
    CenterResizeWindow(Juego, 864, 486) 
    TransformarCoordenadas(Juego, X:=800, Y:=835)
    MouseMove % X, Y