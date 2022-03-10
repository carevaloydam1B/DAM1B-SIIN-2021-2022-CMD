@echo off
cls

for /F "tokens=*" %%x in (readme.md) do (
    echo %%x
    pause
)