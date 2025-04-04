# 🖨️ restart-spooler-clear-queue.bat

This script is designed to fix common issues with printers and labelers on Windows systems.
It stops the print spooler service, clears all print jobs, and restarts the required services.

## 🚀 What it does

- Checks if run as administrator.
- Stops the **Print Spooler** service.
- Restarts the **Device Association Service** (useful for USB printers).
- Deletes all files in the print job queue folder (`C:\Windows\System32\spool\PRINTERS`).
- Starts the Print Spooler service again.
- Verifies if the service is running properly.

## 🖥️ How to use

1. Right-click on `ReiniciarSpooler_LimpiarCola.bat`.
2. Select **Run as administrator**.
3. The script will stop the spooler, clear the queue, and restart services.
4. A final status message will be shown.

## ✅ Requirements

- Operating System: Windows 10, 11, or Server.
- Administrator privileges.

## ⚠️ Notes

- This script clears **all** print jobs in **all** installed printers.
- Use it only when print queues are stuck or unresponsive.

## 📄 Included file

- `ReiniciarSpooler_LimpiarCola.bat`: Main script (named in Spanish as used in our organization).

## 📜 License

Licensed under the MIT License.
