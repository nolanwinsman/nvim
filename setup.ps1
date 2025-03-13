# Define the source directory relative to the script location.
$source = "$PSScriptRoot"

# Define the destination directory using the LOCALAPPDATA environment variable.
$destination = "$env:LOCALAPPDATA\nvim"

# Create the destination directory if it doesn't exist.
if (!(Test-Path -Path $destination)) {
    New-Item -ItemType Directory -Path $destination -Force | Out-Null
}

# Copy init.lua if it exists
if (Test-Path "$source\init.lua") {
    Copy-Item -Path "$source\init.lua" -Destination $destination -Force
}

# Copy the lua/ directory if it exists
if (Test-Path "$source\lua") {
    Copy-Item -Path "$source\lua" -Destination $destination -Recurse -Force
}

Write-Output "Neovim configuration copied to $destination"

