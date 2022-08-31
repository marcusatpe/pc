# Run in elevated prompt

Set-ExecutionPolicy -ExecutionPolicy Unrestricted

# Install Chocolatey
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

# Install apps
$apps = @("7zip",
    "adobereader",
    "drawio",
    "git",
    "googlechrome",
    "notepadplusplus",
    "poshgit",
    "sharex",
    "teamviewer",
    "terraform",
    "vscode")
foreach ($app in $apps) {
    choco install $app -y
}

