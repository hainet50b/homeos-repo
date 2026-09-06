# Remove every user-scope skill that was installed from hainet50b/skills.
# Skills from other sources, and skills placed by hand, are left alone.
$ErrorActionPreference = 'Stop'

$SourceUrl = 'https://github.com/hainet50b/skills'
$Agents = @('universal', 'claude-code')

foreach ($agent in $Agents) {
    $installed = gh skill list --agent $agent --scope user --json skillName,path,sourceURL | ConvertFrom-Json
    foreach ($skill in $installed) {
        if ($skill.sourceURL -ne $SourceUrl) { continue }
        Write-Host "Removing skill '$($skill.skillName)' ($agent): $($skill.path)"
        Remove-Item -Recurse -Force -LiteralPath $skill.path
    }
}
