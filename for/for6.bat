@echo off
cls

for /D /R "C:\Users\alumnoTARDE" %%d in (sh*) do (
    echo %%d
)