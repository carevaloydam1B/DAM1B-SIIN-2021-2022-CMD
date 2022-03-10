@echo off
:: Muestra todos los archivos de la ruta que se le indica

@REM Crear la variable filtro con el valor argumento 1
set filtro=%1
@REM Si la variable filtro est  vac¡a le pongo valor *
if "%filtro%"=="" set filtro="*"
@REM Paso el valor de filtro al bucle

for /R "C:\Users\alumnoTARDE" %%f in (%filtro%) do (
    echo %%f
)