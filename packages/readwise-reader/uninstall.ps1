$ErrorActionPreference = "Stop"

$uninstallKeys = @(
    "HKCU:\Software\Microsoft\Windows\CurrentVersion\Uninstall\*",
    "HKLM:\Software\Microsoft\Windows\CurrentVersion\Uninstall\*",
    "HKLM:\Software\WOW6432Node\Microsoft\Windows\CurrentVersion\Uninstall\*"
)

$entry = Get-ItemProperty -Path $uninstallKeys -ErrorAction SilentlyContinue |
    Where-Object { $_.DisplayName -like "*Readwise Reader*" -or $_.DisplayName -eq "Reader" } |
    Select-Object -First 1

if (-not $entry) {
    throw "Could not find a Readwise Reader entry under Windows Uninstall registry keys."
}

$uninstallString = $entry.QuietUninstallString
if (-not $uninstallString) {
    $uninstallString = $entry.UninstallString
}

if ($uninstallString -match '^"([^"]+)"\s*(.*)$') {
    $exe = $Matches[1]
    $existingArgs = $Matches[2]
} else {
    $parts = $uninstallString.Split(" ", 2)
    $exe = $parts[0]
    $existingArgs = if ($parts.Length -gt 1) { $parts[1] } else { "" }
}

$argList = if ($existingArgs -match "/S") { $existingArgs } else { "$existingArgs /S".Trim() }

Start-Process -FilePath $exe -ArgumentList $argList -Wait
