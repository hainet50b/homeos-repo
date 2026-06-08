$ErrorActionPreference = 'Stop'
$ProgressPreference = 'SilentlyContinue'

$tag = 'Sans2.004'
$url = "https://github.com/notofonts/noto-cjk/releases/download/$tag/06_NotoSansCJKjp.zip"

$tmp = Join-Path $env:TEMP 'noto-sans-cjk-jp-install'
Remove-Item -Recurse -Force $tmp -ErrorAction SilentlyContinue
New-Item -ItemType Directory -Force -Path $tmp | Out-Null

$archive = Join-Path $tmp 'NotoSansCJKjp.zip'
Invoke-WebRequest -Uri $url -OutFile $archive
Expand-Archive -Path $archive -DestinationPath $tmp -Force

$fontDir = Join-Path $env:LOCALAPPDATA 'Microsoft\Windows\Fonts'
New-Item -ItemType Directory -Force -Path $fontDir | Out-Null
$regKey = 'HKCU:\Software\Microsoft\Windows NT\CurrentVersion\Fonts'

$count = 0
Get-ChildItem -Path $tmp -Recurse -Filter '*.otf' | ForEach-Object {
    $dest = Join-Path $fontDir $_.Name
    Copy-Item -Path $_.FullName -Destination $dest -Force
    $valueName = "$([System.IO.Path]::GetFileNameWithoutExtension($_.Name)) (OpenType)"
    New-ItemProperty -Path $regKey -Name $valueName -Value $dest -PropertyType String -Force | Out-Null
    $count++
}

Remove-Item -Recurse -Force $tmp -ErrorAction SilentlyContinue
if ($count -eq 0) { throw 'No OTF fonts found in downloaded archive.' }
Write-Output "Installed $count Noto Sans CJK JP files, $tag. Restart apps or sign out/in to use."
