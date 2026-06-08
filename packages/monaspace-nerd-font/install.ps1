$ErrorActionPreference = 'Stop'
$ProgressPreference = 'SilentlyContinue'

$tag = 'v3.4.0'
$url = "https://github.com/ryanoasis/nerd-fonts/releases/download/$tag/Monaspace.zip"

$tmp = Join-Path $env:TEMP 'monaspace-nf-install'
Remove-Item -Recurse -Force $tmp -ErrorAction SilentlyContinue
New-Item -ItemType Directory -Force -Path $tmp | Out-Null

$archive = Join-Path $tmp 'Monaspace.zip'
Invoke-WebRequest -Uri $url -OutFile $archive
Expand-Archive -Path $archive -DestinationPath $tmp -Force

$fontDir = Join-Path $env:LOCALAPPDATA 'Microsoft\Windows\Fonts'
New-Item -ItemType Directory -Force -Path $fontDir | Out-Null
$regKey = 'HKCU:\Software\Microsoft\Windows NT\CurrentVersion\Fonts'

$count = 0
Get-ChildItem -Path $tmp -Recurse -Filter '*NerdFontMono*.otf' | ForEach-Object {
    $dest = Join-Path $fontDir $_.Name
    Copy-Item -Path $_.FullName -Destination $dest -Force
    $valueName = "$([System.IO.Path]::GetFileNameWithoutExtension($_.Name)) (OpenType)"
    New-ItemProperty -Path $regKey -Name $valueName -Value $dest -PropertyType String -Force | Out-Null
    $count++
}

Remove-Item -Recurse -Force $tmp -ErrorAction SilentlyContinue
Write-Output "Installed $count Monaspace Nerd Font (Mono) files, $tag. Restart apps or sign out/in to use."
