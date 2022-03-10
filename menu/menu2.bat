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
IF %ERRORLEVEL%==1 GOTO Opcion1
IF %ERRORLEVEL%==2 GOTO Opcion2
IF %ERRORLEVEL%==3 GOTO Opcion3
IF %ERRORLEVEL%==4 GOTO Opcion4
IF %ERRORLEVEL%==5 GOTO salir
GOTO Menu

:Opcion1
explorer.exe
GOTO Menu

:Opcion2
calc.exe
GOTO Menu

:Opcion3
"C:\Program Files (x86)\Notepad++\notepad++.exe"
GOTO Menu

:Opcion4
Code "C:\Users\alumnoTARDE\AppData\Local\Programs\Microsoft VS Code\Code.exe"
GOTO Menu


:salir
cls
::Fin