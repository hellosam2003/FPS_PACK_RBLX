@ECHO OFF
SETLOCAL EnableDelayedExpansion

SET $Echo=FOR %%I IN (1 2) DO IF %%I==2 (SETLOCAL EnableDelayedExpansion ^& FOR %%A IN (^^^!Text:""^^^^^=^^^^^"^^^!) DO ENDLOCAL ^& ENDLOCAL ^& ECHO %%~A) ELSE SETLOCAL DisableDelayedExpansion ^& SET Text=

color c

SETLOCAL DisableDelayedExpansion
%$Echo% " ________  ___  ________   ________          ________  ________  _________  ___  _____ ______   ___  ________  _______   ________     "
%$Echo% "|\   __  \|\  \|\   ___  \|\   ____\        |\   __  \|\   __  \|\___   ___\\  \|\   _ \  _   \|\  \|\_____  \|\  ___ \ |\   __  \    "
%$Echo% " \ \   ____\ \  \ \  \\ \  \ \  \  ___       \ \  \\\  \ \   ____\   \ \  \ \ \  \ \  \\|__| \  \ \  \   /  / /\ \  \_|/_\ \   _  _\  "
%$Echo% "  \ \  \___|\ \  \ \  \\ \  \ \  \|\  \       \ \  \\\  \ \  \___|    \ \  \ \ \  \ \  \    \ \  \ \  \ /  /_/__\ \  \_|\ \ \  \\  \| "
%$Echo% "   \ \__\    \ \__\ \__\\ \__\ \_______\       \ \_______\ \__\        \ \__\ \ \__\ \__\    \ \__\ \__\\________\ \_______\ \__\\ _\ "
%$Echo% "    \|__|     \|__|\|__| \|__|\|_______|        \|_______|\|__|         \|__|  \|__|\|__|     \|__|\|__|\|_______|\|_______|\|__|\|__|"
%$Echo% "======================================================================================================================================"
ENDLOCAL
  
echo https://discord.gg/HQkfaKKc5s  


echo starting in 5 seconds....
timeout /t 5 /nobreak



echo optimizing ping..

:: Flush DNS cache
echo flushing..
ipconfig /flushdns
echo DNS cache flushed.

:: Renew IP address
echo reenewing..
ipconfig /release
ipconfig /renew
echo IP address renewed.

:: Reset network settings
echo reset networking..
netsh int ip reset
netsh winsock reset
echo Network settings reset.

echo ping optimized.

echo https://discord.gg/HQkfaKKc5s
echo thx for using
pause

exit
