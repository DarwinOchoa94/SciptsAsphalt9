CenterResizeWindow(WinTitle, Width, Height)
{
    ;WinGetPos,,, Width, Height, %WinTitle%
    WinRestore, %WinTitle%
    WinMove, %WinTitle%, , (A_ScreenWidth/2)-(Width/2), (A_ScreenHeight/2)-(Height/2), Width+16, Height+40
}

TransformarCoordenadas(WinTitle, ByRef X, ByRef Y)
{
    WinGetPos, , , Width, Height, %WinTitle%
    AnchoJuego := Width -16
    AltoJuego := Height -40
    ;MsgBox %AnchoJuego% , %AltoJuego%
    PorcentajeX := (100*X/1600)
    PorcentajeY := (100*Y/900)
    X := (PorcentajeX*AnchoJuego/100)
    Y := (PorcentajeY*(AltoJuego+32)/100)
    ;MsgBox %X%, %Y%
    ;MouseMove %X%, %Y%
    Return
}

VerificarColor()
{
    
    
}







