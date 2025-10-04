winget install --id=GoLang.Go  -e

winget install -e --id OpenJS.NodeJS

winget install BurntSushi.ripgrep.MSVC

winget install GnuWin32.Make



# Define the list of Winget package ID
$packages = @(
    "Neovim.Neovim",
    "GoLang.Go",
    "OpenJS.NodeJS",
    "BurntSushi.ripgrep.MSVC",
    "GnuWin32.Make"
)

foreach ($pkg in $packages) {
    Write-Host "Installing $pkg..."
    try {
        winget install --id $pkg --silent --accept-package-agreements --accept-source-agreements -e
        Write-Host "Successfully installed $pkg.`n"
    }
    catch {
        Write-Host "Failed to install $pkg. Error: $_`n"
    }
}

