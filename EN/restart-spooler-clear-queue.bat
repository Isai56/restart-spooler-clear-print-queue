@echo off
:: Check for administrator privileges
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"
if '%errorlevel%' NEQ '0' (
    echo.
    echo [ERROR] This script must be run as administrator.
    pause
    exit /b
)

echo ========================================================
echo    [*] RESTARTING PRINTER AND LABEL SERVICE (SPOOLER)
echo ========================================================
echo.
echo Stopping the Print Spooler service...
net stop spooler >nul
echo Spooler service stopped.

echo Restarting related services...
net stop "Device Association Service" >nul 2>&1
net start "Device Association Service" >nul 2>&1
echo Device Association Service restarted.

echo.

echo Deleting pending print jobs...
del /Q /F "%systemroot%\System32\spool\PRINTERS\*.*" >nul 2>&1
echo Print jobs deleted.

echo.

echo Starting the Print Spooler service...
net start spooler >nul
echo Spooler service started.

:: Final status check
echo.
sc query spooler | findstr /i "RUNNING" >nul
if %errorlevel%==0 (
    echo [OK] Print Spooler is RUNNING.
) else (
    echo [ERROR] Print Spooler could NOT be started successfully.
)

echo.
echo ========================================================
echo     [OK] PROCESS COMPLETED - QUEUE CLEARED & SERVICES RESTARTED
echo ========================================================
pause
