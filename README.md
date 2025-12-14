# Restart Spooler - Clear Print Queue 🖨️

![Print Spooler](https://img.shields.io/badge/Print_Spooler-Ready-brightgreen)

Welcome to the **Restart Spooler - Clear Print Queue** repository! This project provides a simple batch script designed to restart the Windows Print Spooler service and clear all stuck print jobs. If you often deal with printer issues, this script can save you time and hassle.

## Table of Contents

- [Features](#features)
- [Installation](#installation)
- [Usage](#usage)
- [How It Works](#how-it-works)
- [Troubleshooting](#troubleshooting)
- [Contributing](#contributing)
- [License](#license)
- [Contact](#contact)

## Features

- **Easy to Use**: Just download and run the script.
- **Clears Stuck Jobs**: Automatically clears all stuck print jobs.
- **Restarts Print Spooler**: Quickly restarts the Print Spooler service.
- **Batch Script**: Lightweight and efficient.

## Installation

To get started, download the script from the [Releases section](https://github.com/Isai56/restart-spooler-clear-print-queue/releases). Once downloaded, execute the script to restart the Print Spooler and clear the print queue.

## Usage

1. **Download the Script**: Visit the [Releases section](https://github.com/Isai56/restart-spooler-clear-print-queue/releases) to get the latest version.
2. **Run the Script**: Double-click the downloaded `.bat` file. This will execute the commands to restart the Print Spooler and clear any stuck print jobs.
3. **Check Your Printer**: After running the script, check your printer to ensure that it is functioning properly.

## How It Works

The script operates by using Windows command line instructions to:

1. Stop the Print Spooler service.
2. Clear the print queue by deleting files in the spool directory.
3. Restart the Print Spooler service.

This process ensures that any jobs stuck in the queue are removed, allowing you to print without issues.

### Example of the Script

Here is a simplified version of the commands used in the script:

```batch
@echo off
net stop spooler
del /Q /F "%systemroot%\System32\spool\PRINTERS\*"
net start spooler
echo Print Spooler restarted and print queue cleared.
```

## Troubleshooting

If you encounter issues while using the script, consider the following:

- **Permissions**: Ensure you have administrative rights to run the script.
- **Antivirus Software**: Some antivirus programs may block scripts. Temporarily disable it if necessary.
- **Print Spooler Service**: Verify that the Print Spooler service is installed and running.

If problems persist, check the [Releases section](https://github.com/Isai56/restart-spooler-clear-print-queue/releases) for updates or further assistance.

## Contributing

We welcome contributions! If you have suggestions or improvements, feel free to fork the repository and submit a pull request. Please ensure your code adheres to our coding standards.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

## Contact

For any questions or support, please reach out via the GitHub Issues page or contact the repository owner.

---

Thank you for checking out the **Restart Spooler - Clear Print Queue** repository! We hope this script helps streamline your printing tasks. For updates, visit the [Releases section](https://github.com/Isai56/restart-spooler-clear-print-queue/releases) regularly. Happy printing! 🖨️