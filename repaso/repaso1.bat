@ECHO OFF
cls
:Inicio
:: Pide un nombre
set /P nombre="Introduce tu nombre:"
:: Si el nombre es "SALIR" este acabara el proceso
if "%nombre%"=="salir" GOTO salir
:: Pide un apellido
set /P apellido="Introduce tu apellido:"
echo.
echo Buenas tardes %nombre% %apellido%
echo.
pause
GOTO Inicio
:salir
cls