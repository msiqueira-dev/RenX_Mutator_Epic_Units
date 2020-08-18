@echo off
::
:: VARIABLES
::
SET INITIAL_CREDITS=10000
SET MAP=CNC-Walls
SET MAX_PLAYERS=64
SET MUTATOR_NAME=RenX_Mutator_Epic_Units
SET MUTATOR_PACKAGE_NAME=RenX_Mutator_Epic_Units
SET RENX_PATH=E:\Games\Renegade-X\
SET SERVER_NAME=Merak_Hagen_Epic_Units
SET PASSWORD=
SET PASSWORD_ADMIN=TestAdmin
SET PASSWORD_REQUIRE=0
SET TIME_LIMIT=0
SET UDK_PATH=E:\Games\Renegade_X_SDK-7634M\
::
:: END OF VARIBLES
::

setlocal enableextensions disabledelayedexpansion
set "search=RenegadeXServer"
set "replace=%SERVER_NAME%"
set "textFile=E:\Games\Renegade-X\UDKGame\Config\UDKGame.ini"
    for /f "delims=" %%i in ('type "%textFile%" ^& break ^> "%textFile%" ') do (
        set "line=%%i"
        setlocal enabledelayedexpansion
        >>"%textFile%" echo(!line:%search%=%replace%!
        endlocal
    )
)


SET UdkFolderCompiledMutator=%UDK_PATH%UDKGame\Script\%MUTATOR_NAME%.u
SET RenXPathCompiledMutator=%RENX_PATH%UDKGame\CookedPC\%MUTATOR_NAME%.u
SET COMMAND_CP=xcopy /y %UdkFolderCompiledMutator% %RenXPathCompiledMutator%
%COMMAND_CP%

SET a=start %RENX_PATH%\Binaries\Win64\UDK.exe server
SET a=%a% %MAP%?
SET a=%a%mutator=%MUTATOR_NAME%.%MUTATOR_PACKAGE_NAME%?
SET a=%a%maxplayers=%MAX_PLAYERS%?
SET a=%a%bRequiresPassword=%PASSWORD_REQUIRE%?
SET a=%a%AdminPassword=%PASSWORD_ADMIN%?
SET a=%a%GAMEPASSWORD=%PASSWORD%?
SET a=%a%InitialCredits=%INITIAL_CREDITS%?
SET a=%a%SERVER_NAME="Merak_Hagen_Epic_Units"?
SET a=%a%GameName="Merak_Hagen_Epic_Units"?
SET a=%a%TimeLimit=%TIME_LIMIT%?
SET a=%a%ServerDescription="Merak_Hagen_Epic_Units"?
SET a=%a%-port=7777
echo.
echo %a% -nosteam -log
echo.
%a% -nosteam -log
::UDK.exe 127.0.0.1?PASSWORD=%PASSWORD%
