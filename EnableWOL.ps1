# Install DellBIOSProvider module if not already installed
if (-not (Get-Module -Name DellBIOSProvider -ErrorAction SilentlyContinue)) {
    Install-Module -Name DellBIOSProvider -Scope CurrentUser -Force
}

# Import the DellBIOSProvider module
Import-Module DellBIOSProvider


# Set the BIOS password (if applicable)
$biosPassword = "D3v1c3Su"

cd dellsmbios:

cd .\PowerManagement\

si .\WakeOnLan LANOnly -Password $biosPassword

si .\DeepSleepCtrl Disabled -Password $biosPassword


cd c: