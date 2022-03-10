@echo off
:: Lista de valores que le digo entre los parentesis
FOR %%A IN (-Uno -Dos -Tres "Cuatro" "Cinco") DO (
    ECHO %%A
)