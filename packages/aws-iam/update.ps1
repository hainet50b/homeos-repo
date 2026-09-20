foreach ($agent in 'universal,claude-code' -split ',') {
    aws agent-toolkit update-skill --skill-name aws-iam --agent $agent.Trim() --region us-east-1 --no-sign-request
    if ($LASTEXITCODE -ne 0) { exit $LASTEXITCODE }
}
