@echo off
:: For para recorrer los archivos de un directorio (solo archivos, no directorios ) Entre parentesis se pone la ruta que deseas
for %%f in (*) do (
    echo %%f
)