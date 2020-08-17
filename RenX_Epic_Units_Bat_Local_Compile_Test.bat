@echo off
setlocal EnableDelayedExpansion
::
::
:: VARIABLES TO EDIT
::
::
SET INI_FILE=E:\Games\Renegade_X_SDK-7634M\UDKGame\Config\DefaultEngineUDK.ini
SET MAP=CNC-Walls
SET MUTATOR_NAME=RenX_Mutator_Epic_Units
SET MUTATOR_PACKAGE_NAME=RenX_Mutator_Epic_Units
SET RENX_PATH=E:\Games\Renegade-X\
SET UDK_PATH=E:\Games\Renegade_X_SDK-7634M\
::
::
:: END OF VARIBLES
::
::

SET IniFileAux=%INI_FILE%.aux
SET MutatorIniFilePhrase=+ModEditPackages=%MUTATOR_PACKAGE_NAME%
SET MutatorIniFilePhraseComment=;%MUTATOR_PACKAGE_NAME%
SET UdkFolderCompiledMutator=%UDK_PATH%UDKGame\Script\%MUTATOR_NAME%.u
SET RenXPathCompiledMutator=%RENX_PATH%UDKGame\CookedPC\%MUTATOR_NAME%.u
SET IniChange="FALSE"
::
:: MODYFING INI FILE TO ADD THE NEW MUTATOR
::
echo Veryfing %INI_FILE%
if %IniChange%=="TRUE" (
    :INI_CHANGE
        xcopy /y %IniFileAux% %INI_FILE% 
        GOTO CONTINUE
)
for /F "usebackq eol= delims=" %%L in (%INI_FILE%) do (
    if %%L == ^;RenX_Mutator_Epic_Units (
        GOTO CONTINUE
    )
)
for /F "usebackq eol= delims=" %%L in (%INI_FILE%) do (
    echo %%L>>%IniFileAux%
    if %%L == +ModEditPackages^=RenX_GameX (
        echo %MutatorIniFilePhrase%>>%IniFileAux%
        echo %MutatorIniFilePhraseComment%>>%IniFileAux%
    )
)
GOTO INI_CHANGE
:CONTINUE
    if exist del /f %IniFileAux%

echo Compiling Mutator %MUTATOR_NAME%
::
:: #COMPILING
::
SET UdkCompileCommand=%UDK_PATH%\Binaries\Win64\UDK.exe make

%UdkCompileCommand%>>%UDK_PATH%\Binaries\Win64\UDKComiledLog.log

:Ask
echo Procced?(Y/N)
echo/
set UserChoice=break
set /P "UserChoice=Type input: "
if NOT %UserChoice%==Y (GOTO End)
::
:: #COPY AND EXEC
::
SET COMMAND_CP=xcopy /y %UdkFolderCompiledMutator% %RenXPathCompiledMutator%
SET COMMAND_EXEC=%UDK_PATH%\Binaries\Win64\UDK.exe %MAP%?mutator=%MUTATOR_NAME%.%MUTATOR_PACKAGE_NAME% -nomovies -log -windowed
%COMMAND_CP%
echo.
echo File Copied to RenX Mutator Folder
echo Loading RenX Map %MAP%
echo.
echo %COMMAND_EXEC%
%COMMAND_EXEC%
endlocal


:End
    echo cya!

REM E:\Games\Renegade_X_SDK-7634M\Development\Src\RenX_Mutator_Epic_Units\Classes\RenX_Epic_units_Local_Test.bat
