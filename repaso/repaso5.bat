@echo off
cls
:Start
:: Pide un n�ero (N1)
set /P n1="Introduce un n�mero: "
::Si el n1=0 acabará
if %n1%==0 GOTO final
:: Pide un n�mero (N2)
set /P n2="Introduce un n�mero: "
echo.
::Comprobamos que número será mayor o menor
if %n1% gtr %n2% = echo El %n1% es mayor que %n2%
if %n2% gtr %n1% = echo El %n2% es mayor que %n1%
echo.
GOTO Start
:final
cls