# Get current user's username
$userName = $env:USERNAME
$localAppData = [System.Environment]::GetFolderPath([System.Environment+SpecialFolder]::LocalApplicationData)
$nvimPath = Join-Path $localAppData "nvim"

# Copies Neovim config to proper folder
Write-Output "Copying nvim config files to $nvimPath"
Copy-Item -Path "config" -Destination $nvimPath -Recurse -Force

# Installs C programming language using Winget.
# Currently does not work
# Check if winget is available on the system
# $wingetInstalled = (Get-Command winget -ErrorAction SilentlyContinue) -ne $null

#if (-not $wingetInstalled) {
#    # If winget is not installed, download and install it
#    Invoke-WebRequest -Uri "https://aka.ms/installwinget" -OutFile "$env:TEMP\installwinget.ps1"
#    Start-Process PowerShell -ArgumentList "-NoProfile -ExecutionPolicy Bypass -File `"$env:TEMP\installwinget.ps1`"" -Verb RunAs
#}

# Install MinGW using winget
#winget install mingw-get
