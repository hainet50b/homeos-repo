$ErrorActionPreference = 'Stop'

$fontDir = Join-Path $env:LOCALAPPDATA 'Microsoft\Windows\Fonts'
$regKey = 'HKCU:\Software\Microsoft\Windows NT\CurrentVersion\Fonts'

Get-ChildItem -Path $fontDir -Filter 'NotoSansCJKjp-*.otf' -ErrorAction SilentlyContinue | ForEach-Object {
    $valueName = "$([System.IO.Path]::GetFileNameWithoutExtension($_.Name)) (OpenType)"
    Remove-ItemProperty -Path $regKey -Name $valueName -ErrorAction SilentlyContinue
    Remove-Item -Path $_.FullName -Force -ErrorAction SilentlyContinue
}

Write-Output 'Removed Noto Sans CJK JP.'
