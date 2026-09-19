$ErrorActionPreference = 'Stop'

Invoke-RestMethod -Uri 'https://raw.githubusercontent.com/hainet50b/zed-http-client/main/install.ps1' | Invoke-Expression
