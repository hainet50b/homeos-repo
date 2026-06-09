Remove-Item -Path "$env:USERPROFILE\.local\bin\claude.exe" -Force -ErrorAction SilentlyContinue
Remove-Item -Path "$env:USERPROFILE\.local\share\claude" -Recurse -Force -ErrorAction SilentlyContinue
