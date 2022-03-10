@echo off
:Menu
CLS
echo       Men£ Principal
echo       ==============
echo       1. Explorador de Archivos
echo       2. Calculadora
echo       3. Notepad
echo       4. Visual Studio Code
echo       . Submen£ A
echo       B. Submen£ B
echo       S. Salir
echo.       
choice /c 1234ABS /M "Selecciona una opci¢n:"
IF %ERRORLEVEL%==1 GOTO Opcion1
IF %ERRORLEVEL%==2 GOTO Opcion2
IF %ERRORLEVEL%==3 GOTO Opcion3
IF %ERRORLEVEL%==4 GOTO Opcion4
IF %ERRORLEVEL%==5 GOTO MenuA
IF %ERRORLEVEL%==6 GOTO MenuB
IF %ERRORLEVEL%==7 GOTO Salir
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

:: Inicio de Submen£ A

:MenuA
echo       Submen£ A
echo       =========
echo       1. - Administraci¢n de equipos
echo       2. - Administraci¢n de impresi¢n
echo       3. - Configuraci¢n del sistema
echo       4. - Informaci¢n del sistema
echo       B. Submen£ B
echo       V. - Volver
echo.
choice /c 1234BV /M "Selecciona una opci¢n:"
echo.
IF %ERRORLEVEL%==1 GOTO Opci¢nA1
IF %ERRORLEVEL%==2 GOTO Opci¢nA2
IF %ERRORLEVEL%==3 GOTO Opci¢nA3
IF %ERRORLEVEL%==4 GOTO Opci¢nA4
IF %ERRORLEVEL%==5 GOTO MenuB
IF %ERRORLEVEL%==6 GOTO Volver
echo.

:Opci¢nA1
echo Soy  1. - Administraci¢n de equipos
pause
GOTO Menu

:Opci¢nA2
echo Soy  2. - Administraci¢n de impresi¢n
pause
GOTO Menu

:Opci¢nA3
echo Soy  3. - Configuraci¢n del sistema
pause
GOTO Menu

:Opci¢nA4
echo Soy  4. - Informaci¢n del sistema
pause
GOTO Menu

:MenuB
GOTO MenuB

:: Inicio de Submen£ B

:MenuB
echo       Submen£ B
echo       =========
echo       1. - Servicios
echo       2. - Visor de eventos
echo       3. - Programador de tareas
echo       4. - Firewall con seguridad avanzada
echo       A. Submen£ A
echo       V. - Volver
echo.
choice /c 1234AV /M "Selecciona una opci¢n:"
echo.
IF %ERRORLEVEL%==1 GOTO Opci¢nB1
IF %ERRORLEVEL%==2 GOTO Opci¢nB2
IF %ERRORLEVEL%==3 GOTO Opci¢nB3
IF %ERRORLEVEL%==4 GOTO Opci¢nB4
IF %ERRORLEVEL%==5 GOTO MenuA
IF %ERRORLEVEL%==6 GOTO Volver
echo.       

:Opci¢nB1
echo Soy  1. - Servicios
pause
GOTO Menu
:Opci¢nB2
echo Soy  2. - Visor de eventos
pause
GOTO Menu

:Opci¢nB3
echo Soy  3. - Programador de tareas
pause
GOTO Menu

:Opci¢nB4
echo Soy  4. - Firewall con seguridad avanzada
pause
GOTO Menu

:MenuA
GOTO MenuA
echo.   
:Volver
GOTO Menu

:Salir
cls
::Fin
