gh skill list --agent universal --scope user --json skillName,path --jq '.[] | select(.skillName == "homeos-manage") | .path' | Where-Object { $_ } | ForEach-Object { Remove-Item -Recurse -Force $_ }
