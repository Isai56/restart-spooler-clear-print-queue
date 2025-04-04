# 🖨️ restart-spooler-clear-queue.bat

Este script está diseñado para solucionar problemas comunes con impresoras y etiquetadoras en sistemas Windows.
Detiene el servicio de impresión, elimina los trabajos en cola y reinicia los servicios necesarios.

## 🚀 ¿Qué hace?

- Verifica que se ejecute como administrador.
- Detiene el servicio **Spooler**.
- Reinicia el servicio **Device Association Service** (útil para impresoras USB).
- Elimina todos los archivos de la carpeta de trabajos en cola (`C:\Windows\System32\spool\PRINTERS`).
- Inicia nuevamente el servicio Spooler.
- Verifica si el servicio quedó correctamente activo.

## 🖥️ Uso

1. Haz clic derecho sobre `restart-spooler-clear-queue.bat`.
2. Selecciona **Ejecutar como administrador**.
3. El script limpiará la cola de impresión y reiniciará los servicios necesarios.
4. Al finalizar, mostrará un resumen del estado.

## ✅ Requisitos

- Sistema operativo: Windows 10, 11 o Server.
- Permisos de administrador.

## ⚠️ Notas

- Elimina **todos** los trabajos de impresión en todas las impresoras instaladas.
- Solo debe utilizarse cuando existan problemas de impresión que no se solucionen manualmente.

## 📄 Archivo incluido

- `restart-spooler-clear-queue.bat`: Script principal.

## 📜 Licencia

Distribuido bajo la licencia MIT.
