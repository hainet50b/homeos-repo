$ErrorActionPreference = 'Stop'
foreach ($agent in 'universal,claude-code' -split ',') {
    aws agent-toolkit remove-skill --skill-name aws-billing-and-cost-management --agent $agent.Trim() --region us-east-1 --no-sign-request
    if ($LASTEXITCODE -ne 0) { exit $LASTEXITCODE }
}
