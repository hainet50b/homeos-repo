foreach ($agent in 'universal,claude-code' -split ',') {
    gh skill install aws/agent-toolkit-for-aws core-skills/signing-in-to-aws --agent $agent.Trim() --scope user --force
    if ($LASTEXITCODE -ne 0) { exit $LASTEXITCODE }
}
