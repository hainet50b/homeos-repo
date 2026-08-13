$ErrorActionPreference = "Stop"

$InstallDir = if ($env:ESPALIER_INSTALL_DIR) { $env:ESPALIER_INSTALL_DIR } else { "$env:USERPROFILE\.espalier\bin" }
$Root = "$env:USERPROFILE\.espalier"

if (Test-Path $Root) {
    Remove-Item -Path $Root -Recurse -Force
}

$UserPath = [Environment]::GetEnvironmentVariable("Path", "User")
if ($UserPath) {
    $PathParts = $UserPath -split ';' | Where-Object { $_ -ne '' -and $_ -ne $InstallDir }
    [Environment]::SetEnvironmentVariable("Path", ($PathParts -join ';'), "User")
}
