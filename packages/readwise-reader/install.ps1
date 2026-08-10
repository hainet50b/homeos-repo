$ErrorActionPreference = "Stop"

$installer = Join-Path $env:TEMP "readwise-reader-installer.exe"
Invoke-WebRequest -Uri "https://reader-desktop-releases.readwise.io/Reader.exe" -OutFile $installer

try {
    Start-Process -FilePath $installer -ArgumentList "/S" -Wait
} finally {
    Remove-Item -Path $installer -Force -ErrorAction SilentlyContinue
}
