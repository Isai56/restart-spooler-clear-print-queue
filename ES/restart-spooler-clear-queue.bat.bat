@echo off
:: Verifica permisos de administrador
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"
if '%errorlevel%' NEQ '0' (
    echo.
    echo [ERROR] Este script debe ejecutarse como administrador.
    pause
    exit /b
)

echo ========================================================
echo    [*] SCRIPT DE REINICIO DE IMPRESORAS Y ETIQUETADORAS
echo ========================================================
echo.
echo Cerrando el servicio de cola de impresion (Spooler)...
net stop spooler >nul
echo Servicio de impresion detenido.

echo Reiniciando servicios relacionados...
net stop "Device Association Service" >nul 2>&1
net start "Device Association Service" >nul 2>&1
echo Servicio de deteccion de dispositivos reiniciado.

echo.

echo Eliminando documentos en cola...
del /Q /F "%systemroot%\System32\spool\PRINTERS\*.*" >nul 2>&1
echo Documentos eliminados.

echo.

echo Iniciando el servicio de impresion...
net start spooler >nul
echo Servicio de impresion iniciado.

:: Verificacion del estado final
echo.
sc query spooler | findstr /i "RUNNING" >nul
if %errorlevel%==0 (
    echo [OK] El servicio de impresion se encuentra ACTIVO.
) else (
    echo [ERROR] El servicio de impresion NO PUDO iniciarse correctamente.
)

echo.
echo ========================================================
echo     [OK] PROCESO COMPLETADO - COLA LIMPIADA Y SERVICIOS
echo ========================================================
pause
