# Install-Ninja-RMM-Agent

This repository contains a PowerShell script to automate the download and silent installation of the NinjaRMM agent on Windows systems.

## Contents

- `Ninja-Deployment.ps1`: PowerShell script to download, install, and clean up the NinjaRMM agent installer.

## Prerequisites

- Windows operating system
- PowerShell 5.0 or later
- Administrator privileges

## Instructions

1. **Download the Repository**
   - Click the green "Code" button and select "Download ZIP", or clone the repository:
     ```sh
     git clone https://github.com/yourusername/Install-Ninja-RMM-Agent.git
     ```

2. **Edit the Script**
   - Open `Ninja-Deployment.ps1` in a text editor.
   - Replace `<PASTE Agent URL HERE>` with the direct download URL for your NinjaRMM agent MSI installer.  
     Example:
     ```powershell
     Start-BitsTransfer -Source "https://example.com/NinjaAgentInstaller.msi" -Destination "C:\Users\Agent.msi"
     ```

3. **Run the Script as Administrator**
   - Right-click on `Ninja-Deployment.ps1` and select "Run with PowerShell", or run from a PowerShell prompt:
     ```powershell
     Set-ExecutionPolicy Bypass -Scope Process -Force
     .\Ninja-Deployment.ps1
     ```

## What the Script Does

1. Downloads the NinjaRMM agent installer to `C:\Users\Agent.msi`.
2. Installs the agent silently using `msiexec`.
3. Deletes the installer file after installation.

## Notes

- Ensure you have the correct agent download URL from your NinjaRMM dashboard.
- The script must be run with administrative privileges to install software.

## License

MIT License 