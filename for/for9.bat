@echo off
cls

for /F %%x in (readme.md) do (
    echo %%x
    pause
)