$ErrorActionPreference = "Stop"

$uninstallKeys = @(
    "HKCU:\Software\Microsoft\Windows\CurrentVersion\Uninstall\*",
    "HKLM:\Software\Microsoft\Windows\CurrentVersion\Uninstall\*",
    "HKLM:\Software\WOW6432Node\Microsoft\Windows\CurrentVersion\Uninstall\*"
)

$entry = Get-ItemProperty -Path $uninstallKeys -ErrorAction SilentlyContinue |
    Where-Object { $_.DisplayName -eq "Reader" } |
    Select-Object -First 1

if (-not $entry) {
    throw "Could not find the Reader entry under Windows Uninstall registry keys."
}

$exe = $entry.UninstallString.Trim('"')
Start-Process -FilePath $exe -ArgumentList "/S" -Wait
