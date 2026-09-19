foreach ($agent in 'universal,claude-code' -split ',') {
    gh skill list --agent $agent.Trim() --scope user --json skillName,path --jq '.[] | select(.skillName == "core-skills/signing-in-to-aws") | .path' |
        Where-Object { $_ } | ForEach-Object { Remove-Item -Recurse -Force -LiteralPath $_ }
}
