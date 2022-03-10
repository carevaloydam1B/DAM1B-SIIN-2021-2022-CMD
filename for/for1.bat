@echo off
:: Bucle que lista los argumentos que le digo en la terminal
for %%A in (%*) do (
    echo Argumento: %%A
)