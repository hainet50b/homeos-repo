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
| [coreutils](packages/coreutils/) | [winget](plugins/winget/) | — | Native Unix-style command-line utilities by Microsoft. |
| [git](packages/git/) | [winget](plugins/winget/) | — | Distributed version control system (Git for Windows). |
| [homeos](packages/homeos/) | — | git | homeos itself, via the official install script. |
| [lenovo-vantage](packages/lenovo-vantage/) (disabled) | [winget](plugins/winget/) | — | Driver and hardware management tool for Lenovo machines. |
| [obsidian](packages/obsidian/) | [winget](plugins/winget/) | — | Markdown-based note-taking and knowledge base app. |
| [powershell](packages/powershell/) | [winget](plugins/winget/) | — | Cross-platform PowerShell 7 shell and scripting language. |
| [proton-drive](packages/proton-drive/) | [winget](plugins/winget/) | — | End-to-end encrypted cloud storage by Proton. |
| [proton-mail](packages/proton-mail/) | [winget](plugins/winget/) | — | Encrypted email client by Proton. |
| [proton-pass](packages/proton-pass/) | [winget](plugins/winget/) | — | Password manager by Proton with end-to-end encryption. |
| [proton-vpn](packages/proton-vpn/) | [winget](plugins/winget/) | — | VPN client by Proton with encrypted tunneling. |
| [rustup](packages/rustup/) | [winget](plugins/winget/) | — | Rust toolchain installer and version manager. |
| [wave-terminal](packages/wave-terminal/) | [winget](plugins/winget/) | — | Open-source AI-native terminal by Command Line Inc. |
| [zed](packages/zed/) | [winget](plugins/winget/) | — | High-performance code editor written in Rust. |

## Plugins

| Plugin | Source | Description |
|---|---|---|
| [winget](plugins/winget/) | [hainet50b/homeos-plugin-winget](https://github.com/hainet50b/homeos-plugin-winget) | WinGet package manager plugin for homeos. |

## Notes

(free-form section for your own notes — homeos and the agent never modify it.)

---

*Managed by [homeos](https://github.com/hainet50b/homeos).*
