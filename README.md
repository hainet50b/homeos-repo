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
| [brave](packages/brave/) | [winget](plugins/winget/) | — | Privacy-focused Chromium-based web browser. |
| [chatgpt](packages/chatgpt/) | [winget](plugins/winget/) | — | Official ChatGPT desktop app by OpenAI. |
| [claude-code](packages/claude-code/) | [winget](plugins/winget/) | — | Anthropic's agentic coding tool for the terminal. |
| [git](packages/git/) | [winget](plugins/winget/) | — | Distributed version control system (Git for Windows). |
| [homeos](packages/homeos/) | — | git | homeos itself, via the official install script. |
| [lenovo-vantage](packages/lenovo-vantage/) (disabled) | [winget](plugins/winget/) | — | Driver and hardware management tool for Lenovo machines. |
| [proton-drive](packages/proton-drive/) | [winget](plugins/winget/) | — | End-to-end encrypted cloud storage by Proton. |
| [proton-mail](packages/proton-mail/) | [winget](plugins/winget/) | — | Encrypted email client by Proton. |
| [proton-pass](packages/proton-pass/) | [winget](plugins/winget/) | — | Password manager by Proton with end-to-end encryption. |
| [proton-vpn](packages/proton-vpn/) | [winget](plugins/winget/) | — | VPN client by Proton with encrypted tunneling. |

## Plugins

| Plugin | Source | Description |
|---|---|---|
| [winget](plugins/winget/) | [hainet50b/homeos-plugin-winget](https://github.com/hainet50b/homeos-plugin-winget) | WinGet package manager plugin for homeos. |

## Notes

(free-form section for your own notes — homeos and the agent never modify it.)

---

*Managed by [homeos](https://github.com/hainet50b/homeos).*
