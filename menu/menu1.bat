@echo off
:Menu
CLS
echo.
echo.       1.Explorador de Archivos
echo.       2.Calculadora
echo.       3.Notepad
echo.       4.Visual Studio Code
echo.       5.Salir
echo.       
choice /c 12345 /M "Selecciona una opci¢n:"
IF %ERRORLEVEL%==1 explorer.exe
IF %ERRORLEVEL%==2 calc.exe
IF %ERRORLEVEL%==3 notepad.exe
IF %ERRORLEVEL%==4 code.exe "C:\Users\alumnoTARDE\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Visual Studio Code"
IF %ERRORLEVEL%==5 GOTO salir
GOTO Menu
:salir
cls