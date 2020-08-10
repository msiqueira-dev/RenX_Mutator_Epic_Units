@echo off
::
:: VARIABLES
::
SET ServerName=Merak_Hagen_Epic_Unit
SET Password=Test
::
:: END OF VARIBLES
::

setlocal enableextensions disabledelayedexpansion
set "search=RenegadeXServer"
set "replace=%ServerName%"
set "textFile=E:\Games\Renegade-X\UDKGame\Config\UDKGame.ini"
for /f "delims=" %%i in ('type "%textFile%" ^& break ^> "%textFile%" ') do (
        set "line=%%i"
        setlocal enabledelayedexpansion
        >>"%textFile%" echo(!line:%search%=%replace%!
        endlocal
    )
SET a=start UDK.exe server
SET a=%a% CNC-Walls?
SET a=%a%mutator=RenX_SpecialUnit_Package.RenX_SpecialUnit_Mutator?
SET a=%a%maxplayers=64?
SET a=%a%bRequiresPassword=1?
SET a=%a%?AdminPassword=TestAdmin?
SET a=%a%?GAMEPASSWORD=%Password%?
SET a=%a%ServerName="Merak_Hagen_Epic_Unit"?
SET a=%a%GameName="Merak_Hagen_Epic_Unit"?
SET a=%a%TimeLimit=0?
SET a=%a%ServerDescription="Merak_Hagen_Epic_Unit"?
SET a=%a%-port=7777
echo.
echo %a%
echo.
%a%
::UDK.exe 127.0.0.1?password=%Password%
