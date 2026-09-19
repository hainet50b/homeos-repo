$ErrorActionPreference = 'Stop'

$InstallDir = if ($env:HTTPC_INSTALL_DIR) { $env:HTTPC_INSTALL_DIR } else { Join-Path $env:USERPROFILE '.httpc\bin' }
$Root = Join-Path $env:USERPROFILE '.httpc'

$current = [Environment]::GetEnvironmentVariable('Path', 'User')
if ($current) {
    $entries = $current -split ';' | Where-Object { $_ -and ($_ -ne $InstallDir) }
    $newPath = ($entries -join ';')
    if ($newPath -ne $current) {
        [Environment]::SetEnvironmentVariable('Path', $newPath, 'User')
    }
}

if (Test-Path $Root) {
    Remove-Item -Recurse -Force $Root
}
