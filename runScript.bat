@copy /y %1 "%programfiles%\Stellarium\scripts"  > nul

@pushd "%programfiles%\Stellarium"
@stellarium --startup-script=%1 --full-screen=no
@popd

@del "%programfiles%\Stellarium\scripts\%1"