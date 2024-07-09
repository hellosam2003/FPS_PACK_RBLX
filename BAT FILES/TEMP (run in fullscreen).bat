@ECHO OFF
SETLOCAL EnableDelayedExpansion

SET $Echo=FOR %%I IN (1 2) DO IF %%I==2 (SETLOCAL EnableDelayedExpansion ^& FOR %%A IN (^^^!Text:""^^^^^=^^^^^"^^^!) DO ENDLOCAL ^& ENDLOCAL ^& ECHO %%~A) ELSE SETLOCAL DisableDelayedExpansion ^& SET Text=

SETLOCAL DisableDelayedExpansion
%$Echo% " _________  _______   _____ ______   ________        ________  _______   _____ ______   ________  ___      ___ _______   ________     "
%$Echo% "|\___   ___\\  ___ \ |\   _ \  _   \|\   __  \      |\   __  \|\  ___ \ |\   _ \  _   \|\   __  \|\  \    /  /|\  ___ \ |\   __  \    "
%$Echo% "\|___ \  \_\ \   __/|\ \  \\\__\ \  \ \  \|\  \     \ \  \|\  \ \   __/|\ \  \\\__\ \  \ \  \|\  \ \  \  /  / | \   __/|\ \  \|\  \   "
%$Echo% "     \ \  \ \ \  \_|/_\ \  \\|__| \  \ \   ____\     \ \   _  _\ \  \_|/_\ \  \\|__| \  \ \  \\\  \ \  \/  / / \ \  \_|/_\ \   _  _\  "
%$Echo% "      \ \  \ \ \  \_|\ \ \  \    \ \  \ \  \___|      \ \  \\  \\ \  \_|\ \ \  \    \ \  \ \  \\\  \ \    / /   \ \  \_|\ \ \  \\  \| "
%$Echo% "       \ \__\ \ \_______\ \__\    \ \__\ \__\          \ \__\\ _\\ \_______\ \__\    \ \__\ \_______\ \__/ /     \ \_______\ \__\\ _\ "
%$Echo% "        \|__|  \|_______|\|__|     \|__|\|__|           \|__|\|__|\|_______|\|__|     \|__|\|_______|\|__|/       \|_______|\|__|\|__|"
%$Echo% "======================================================================================================================================"
ENDLOCAL

color a

echo https://discord.gg/HQkfaKKc5s

echo starting in 5 seconds..

:: Countdown loop
SET /A countdown=5
:countdown_loop
IF %countdown% GTR 0 (
    echo Waiting for %countdown% seconds, press CTRL+C to quit ...
    SET /A countdown=%countdown%-1
    ping localhost -n 2 >nul
    GOTO countdown_loop
)

:: Delete files in various temporary folders
del /s /f /q %userprofile%\Recent\*.*
del /s /f /q C:\Windows\Prefetch\*.*
del /s /f /q C:\Windows\Temp\*.*
del /s /f /q %USERPROFILE%\appdata\local\temp\*.*

echo temp cleared.
echo https://discord.gg/HQkfaKKc5s
echo thx for using
pause

exit
