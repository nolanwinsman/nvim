# Define the source directory relative to the script location.
$source = "$PSScriptRoot\nvim"

# Define the destination directory using the LOCALAPPDATA environment variable.
$destination = "$env:LOCALAPPDATA\nvim"

# Create the destination directory if it doesn't exist.
if (!(Test-Path -Path $destination)) {
    New-Item -ItemType Directory -Path $destination -Force | Out-Null
}

# Copy all contents from source to destination recursively, overwriting existing files.
Copy-Item -Path "$source\*" -Destination $destination -Recurse -Force

Write-Output "Neovim configuration copied to $destination"

