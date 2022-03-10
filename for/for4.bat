@echo off
:: Muestra todos los archivos de la unidad que le indicamos
for /R C:\Users\alumnoTARDE %%f in (*.bat) do (
    echo %%f
)