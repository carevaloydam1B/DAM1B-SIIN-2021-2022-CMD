@echo off
cls
:: Pide un n�ero (Nm1)
set /P n1="Introduce un n�mero: "
:: Pide un n�mero (N2)
set /P n2="Introduce un n�mero: "
echo.
::Elegimos una operación
choice /C 123 /M "Elige operación: +; -; *"
if %ERRORLEVEL%==1 GOTO Suma
if %ERRORLEVEL%==2 GOTO Resta
if %ERRORLEVEL%==3 GOTO Multiplicacion
:: Sumamos el n1 y el n2
:Suma
set /a operacion=%n1%+%n2%
echo %n1%+%n2%=%operacion%
pause
GOTO final
:: Restamos el n1 y el n2
:Resta
set /a operacion=%n1%-%n2%
echo %n1%-%n2%=%operacion%
pause
GOTO final
:: Multiplicamos el n1 y el n2
:Multiplicacion
set /a operacion=%n1%*%n2%
echo %n1%*%n2%=%operacion%
pause
GOTO final
echo.
:final
cls

