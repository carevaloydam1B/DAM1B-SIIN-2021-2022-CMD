:: 17-FEB-2022
:: Carlos Arevalo Yunga
@echo off
echo.
:Menu
CLS
echo       Men£ Principal
echo       ==============
echo       1. Mostrar archivos
echo       2. Lista tareas
echo       3. Ruta
echo       4. Secuencia
echo       5. Cadena
echo       S. Salir
echo.       
choice /c 12345S /M "Selecciona una opci¢n:"
IF %ERRORLEVEL%==1 GOTO Opcion1
IF %ERRORLEVEL%==2 GOTO Opcion2
IF %ERRORLEVEL%==3 GOTO Opcion3
IF %ERRORLEVEL%==4 GOTO Opcion4
IF %ERRORLEVEL%==5 GOTO Opcion5
IF %ERRORLEVEL%==6 GOTO Salir
echo.
:Opcion1
set /p %ruta%="Introduzca una ruta: "
for /r %%f in (*.bat) do (
    echo %%f
)
pause
GOTO Menu

:Opcion2
tasklist /svc | more
pause
GOTO Menu

:Opcion3
set /p %ruta%="Introduzca una ruta: "
tree /f %ruta%
pause
GOTO Menu

:Opcion4
echo.
set /a maxNum="Introduzca el n£mero m ximo: "
    echo %maxNum%
set /a secuencia="Introduzca una secuencia: "
    if (%secuencia% < %maxNum%) echo %secuencia%
pause
GOTO Menu

:Opcion5
set /p cadena1= "Introduzca una cadena: "
set /p cadena2= "Introduzca otra cadena: "
if %cadena1%==%cadena2% ( 
    GOTO Iguales 
) else ( 
    GOTO Distintas
)
:Iguales
echo.
echo Las cadenas son iguales
pause
GOTO Menu

:Distintas
echo.
echo Las cadenas son distintas
pause
GOTO Menu

:Salir
cls
echo                        Adios
::Fin
