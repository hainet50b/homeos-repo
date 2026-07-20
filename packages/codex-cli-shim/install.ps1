$binDir = "$env:USERPROFILE\.local\bin"
New-Item -ItemType Directory -Path $binDir -Force | Out-Null

$userPath = [Environment]::GetEnvironmentVariable("PATH", "User")
if (($userPath -split ";") -notcontains $binDir) {
    [Environment]::SetEnvironmentVariable("PATH", "$userPath;$binDir", "User")
}

Set-Content -Path "$binDir\codex.cmd" -Value @"
@echo off
codex-x86_64-pc-windows-msvc.exe %*
exit /b %ERRORLEVEL%
"@ -Encoding ascii
