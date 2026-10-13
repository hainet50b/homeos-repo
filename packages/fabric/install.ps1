$ErrorActionPreference = "Stop"

$installer = Join-Path $env:TEMP "fabric-installer.exe"
Invoke-WebRequest -Uri "https://dl.todesktop.com/220930m1ahpjvoh/windows/nsis/x64" -OutFile $installer

try {
    Start-Process -FilePath $installer -ArgumentList "/S" -Wait
} finally {
    Remove-Item -Path $installer -Force -ErrorAction SilentlyContinue
}
