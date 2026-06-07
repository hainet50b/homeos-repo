# homeos-repo

This repository is the source of truth for the user's software setup,
managed by [homeos](https://github.com/hainet50b/homeos). The full
machine-readable definition lives in [`homeos.yml`](homeos.yml); the
sections below are a human-friendly view kept in sync with it.

To restore on any machine:

```sh
homeos init <this repo's URL>
homeos apply
```

## Packages

| Package | Plugin | Dependencies | Purpose |
|---|---|---|---|
| [git](packages/git/) | [winget](plugins/winget/) | — | Distributed version control system (Git for Windows). |

## Plugins

| Plugin | Source | Description |
|---|---|---|
| [winget](plugins/winget/) | [hainet50b/homeos-plugin-winget](https://github.com/hainet50b/homeos-plugin-winget) | WinGet package manager plugin for homeos. |

## Notes

(free-form section for your own notes — homeos and the agent never modify it.)

---

*Managed by [homeos](https://github.com/hainet50b/homeos).*
