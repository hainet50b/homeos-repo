# Sync every skill in hainet50b/skills into each agent's user-scope skill
# directory: install or overwrite what the repository has, then delete the
# skills that came from this repository but no longer exist in it.
$ErrorActionPreference = 'Stop'

$Repo = 'hainet50b/skills'
$SourceUrl = 'https://github.com/hainet50b/skills'
$Agents = @('universal', 'claude-code')

foreach ($agent in $Agents) {
    gh skill install $Repo --all --agent $agent --scope user --force
    if ($LASTEXITCODE -ne 0) { throw "gh skill install failed for agent '$agent'" }

    # Without a skill name, a non-interactive install lists the repository's
    # skills on stdout, one per line: "[<prefix>] <name><TAB><description>".
    $listing = gh skill install $Repo --agent $agent --scope user 2>$null
    $inRepo = @($listing | ForEach-Object { ($_ -split "`t")[0] -replace '^\[[^\]]*\]\s*', '' } | Where-Object { $_ })
    if ($inRepo.Count -eq 0) {
        Write-Warning "Could not list skills in $Repo for agent '$agent'; skipping removal of stale skills."
        continue
    }

    $installed = gh skill list --agent $agent --scope user --json skillName,path,sourceURL | ConvertFrom-Json
    foreach ($skill in $installed) {
        if ($skill.sourceURL -ne $SourceUrl) { continue }
        if ($inRepo -contains $skill.skillName) { continue }
        Write-Host "Removing stale skill '$($skill.skillName)' ($agent): $($skill.path)"
        Remove-Item -Recurse -Force -LiteralPath $skill.path
    }
}
