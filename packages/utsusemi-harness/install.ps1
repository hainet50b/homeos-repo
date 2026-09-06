foreach ($agent in 'universal,claude-code' -split ',') {
    gh skill install utsusemi-harness/utsusemi-harness utsusemi-harness --agent $agent.Trim() --scope user --force
    if ($LASTEXITCODE -ne 0) { exit $LASTEXITCODE }
}
