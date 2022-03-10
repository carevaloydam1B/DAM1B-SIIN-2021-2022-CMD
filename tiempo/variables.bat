@echo off
cls

set colegio=MAS

SET /P nombre="Introduce tu nombre:"

set /a year=2000 + 21
set /a next_year=%year%-%next_year%
echo.
echo.
echo Hola %nombre% est s en el intituto %colegio% en el curso %curso%
echo.