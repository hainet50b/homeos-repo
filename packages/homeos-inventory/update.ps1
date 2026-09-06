foreach ($agent in 'universal,claude-code' -split ',') {
    gh skill install hainet50b/homeos homeos-inventory --agent $agent.Trim() --scope user --force
    if ($LASTEXITCODE -ne 0) { exit $LASTEXITCODE }
}
