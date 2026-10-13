$ErrorActionPreference = "Stop"

# The uninstall entry is registered under a GUID derived from the app id, and
# its DisplayName carries the version ("Fabric 0.2.15"), so match on the GUID.
$productCode = "df629075-26e4-56fc-bd9b-88aa0241644f"

$uninstallKeys = @(
    "HKCU:\Software\Microsoft\Windows\CurrentVersion\Uninstall\$productCode",
    "HKLM:\Software\Microsoft\Windows\CurrentVersion\Uninstall\$productCode",
    "HKLM:\Software\WOW6432Node\Microsoft\Windows\CurrentVersion\Uninstall\$productCode"
)

$entry = Get-ItemProperty -Path $uninstallKeys -ErrorAction SilentlyContinue |
    Select-Object -First 1

if (-not $entry) {
    throw "Could not find the Fabric entry under Windows Uninstall registry keys."
}

$command = if ($entry.QuietUninstallString) { $entry.QuietUninstallString } else { $entry.UninstallString }

if ($command -notmatch '^"([^"]+)"') {
    throw "Could not parse the Fabric uninstall command: $command"
}

Start-Process -FilePath $Matches[1] -ArgumentList "/currentuser", "/S" -Wait
