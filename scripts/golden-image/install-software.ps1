Write-Host "Starting software installation..."

# Install Chocolatey (fallback installer)
Set-ExecutionPolicy Bypass -Scope Process -Force
iwr https://chocolatey.org/install.ps1 -UseBasicParsing | iex

# Install VS Code
choco install vscode -y

# Install Git
choco install git -y

# Install Python
choco install python -y

# Install Azure CLI
choco install azure-cli -y

# Install Node.js LTS
choco install nodejs-lts -y

# Install .NET 8 SDK
choco install dotnet-8.0-sdk -y

# Install PowerShell 7
choco install powershell-core -y

# Install 7zip
choco install 7zip -y

# Optional: Add Winget installs (good for MS Store apps)
Write-Host "Running Winget installations..."
winget install --id Microsoft.PowerToys -e --accept-source-agreements --accept-package-agreements || Write-Host "Winget package install failed, continuing."

Write-Host "All software installed successfully."
