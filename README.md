# 🖨️ Restart Spooler & Clear Print Queue

This repository provides a simple and effective batch script to fix common printing issues on Windows.  
It stops the **Print Spooler** service, deletes all stuck print jobs, and restarts the required services.

---

Este repositorio ofrece un script por lotes (batch) simple y eficaz para solucionar problemas comunes de impresión en Windows.  
Detiene el servicio de **cola de impresión (Spooler)**, elimina todos los trabajos atascados y reinicia los servicios necesarios.

---

## 📂 Files / Archivos

- `restart-spooler-clear-queue.bat` — Batch script to restart the print service and clear pending jobs  
- `README.md` — This bilingual documentation  
- `LICENSE` — MIT License

---

## 🛠 Features / Funciones

✅ Stops the **Print Spooler** service  
✅ Restarts the **Device Association Service** (for USB printers)  
✅ Deletes files from `C:\Windows\System32\spool\PRINTERS`  
✅ Restarts the spooler and checks its final status

---

✅ Detiene el servicio **Spooler**  
✅ Reinicia el servicio **Device Association Service** (para impresoras USB)  
✅ Elimina archivos de `C:\Windows\System32\spool\PRINTERS`  
✅ Reinicia el Spooler y comprueba su estado final

---

## ▶️ How to use / Cómo usarlo

**English**  
1. Right-click the `.bat` file  
2. Select **"Run as administrator"**  
3. Wait for the process to complete  
4. Check the confirmation message

**Español**  
1. Haz clic derecho en el archivo `.bat`  
2. Selecciona **"Ejecutar como administrador"**  
3. Espera a que finalice el proceso  
4. Revisa el mensaje de confirmación

---

## 🧱 Requirements / Requisitos

- Windows 10, 11 or Windows Server  
- Administrator privileges

- Windows 10, 11 o Windows Server  
- Privilegios de administrador

---

## 📄 License / Licencia

This project is licensed under the MIT License.

Este proyecto está licenciado bajo la Licencia MIT.
