@echo off
color d
cls
echo    _____       __
echo   / ___/____ _/ /___  ___________
echo   \__ \/ __ `/ __/ / / / ___/ __ \ 
echo  ___/ / /_/ / /_/ /_/ / /  / / / /
echo /____/\__,_/\__/\__,_/_/  /_/ /_/

echo -----------decoder----------------

set numero=0

:loop
echo Numero: %numero%
if not exist rec%numero%.b64 (
    echo END
    goto :end_loop
) else (
    color
    powershell -ExecutionPolicy Bypass -File .\decode.ps1 rec%numero%.b64
    color b
    echo file rec%numero%.b64 is decrypted
    del rec%numero%.b64
    color
    set /a numero+=1
)
goto loop

:end_loop
echo -----------------------
color d
echo All files has decrypted
echo good fishing
echo -_- 
pause >nul