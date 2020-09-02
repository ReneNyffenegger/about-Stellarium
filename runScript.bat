@echo off

rem copy /y %1 "%programfiles%\Stellarium\scripts"  > nul
    copy /y %1 "%appdata%\Stellarium\scripts"       > nul

pushd "%programfiles%\Stellarium"
start "" stellarium --startup-script=%1 --full-screen=no
popd

rem del "%programfiles%\Stellarium\scripts\%1"
rem del "%appdata%\Stellarium\scripts\%1"
