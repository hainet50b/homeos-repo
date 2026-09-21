$ErrorActionPreference = 'Stop'
foreach ($agent in 'universal,claude-code' -split ',') {
    aws agent-toolkit add-skill --skill-name signing-in-to-aws --agent $agent.Trim() --region us-east-1 --no-sign-request
    if ($LASTEXITCODE -ne 0) { exit $LASTEXITCODE }
}
