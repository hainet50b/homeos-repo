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
| [coreutils](packages/coreutils/) | [winget](plugins/winget/) | — | Native Unix-style command-line utilities by Microsoft. |
| [gh](packages/gh/) | [winget](plugins/winget/) | — | GitHub CLI for pull requests, issues, and Actions from the terminal. |
| [git](packages/git/) | [winget](plugins/winget/) | — | Distributed version control system (Git for Windows). |
| [homeos](packages/homeos/) | — | git | homeos itself, via the official install script. |
| [powershell](packages/powershell/) | [winget](plugins/winget/) | — | Cross-platform PowerShell 7 shell and scripting language. |
| [wave-terminal](packages/wave-terminal/) | [winget](plugins/winget/) | — | Open-source AI-native terminal by Command Line Inc. |
| [wsl](packages/wsl/) | — | — | Windows Subsystem for Linux, installed without a default distribution. |
| [yazi](packages/yazi/) | [winget](plugins/winget/) | — | Blazing-fast terminal file manager written in Rust. |
| [claude-code](packages/claude-code/) | [winget](plugins/winget/) | — | Anthropic's agentic coding tool for the terminal. |
| [jdk-temurin-25](packages/jdk-temurin-25/) | [mise](plugins/mise/) | mise | Eclipse Temurin OpenJDK 25 (LTS) runtime and compiler. |
| [lazydocker](packages/lazydocker/) | [winget](plugins/winget/) | — | Terminal UI for Docker and docker-compose. |
| [lazygit](packages/lazygit/) | [winget](plugins/winget/) | — | Terminal UI for git commands. |
| [maven](packages/maven/) | [mise](plugins/mise/) | mise | Apache Maven build and dependency management tool for Java. |
| [mise](packages/mise/) | [winget](plugins/winget/) | — | Dev environment manager for languages, env vars, and tasks. |
| [node](packages/node/) | [mise](plugins/mise/) | mise | Node.js 24 (LTS) JavaScript runtime and npm. |
| [ripgrep](packages/ripgrep/) | [winget](plugins/winget/) | — | Fast recursive regex search tool (`rg`) that respects gitignore. |
| [rustup](packages/rustup/) | [winget](plugins/winget/) | vs-buildtools | Rust toolchain installer and version manager. |
| [vcredist-x64](packages/vcredist-x64/) | [winget](plugins/winget/) | — | Visual C++ 2015-2022 Redistributable (x64). |
| [vcredist-x86](packages/vcredist-x86/) | [winget](plugins/winget/) | — | Visual C++ 2015-2022 Redistributable (x86). |
| [vs-buildtools](packages/vs-buildtools/) | [winget](plugins/winget/) | — | MSVC C++ build tools and Windows SDK. |
| [zed](packages/zed/) | [winget](plugins/winget/) | — | High-performance code editor written in Rust. |
| [brave](packages/brave/) | [winget](plugins/winget/) | — | Privacy-focused Chromium-based web browser. |
| [proton-drive](packages/proton-drive/) | [winget](plugins/winget/) | — | End-to-end encrypted cloud storage by Proton. |
| [proton-mail](packages/proton-mail/) | [winget](plugins/winget/) | — | Encrypted email client by Proton. |
| [proton-pass](packages/proton-pass/) | [winget](plugins/winget/) | — | Password manager by Proton with end-to-end encryption. |
| [proton-vpn](packages/proton-vpn/) | [winget](plugins/winget/) | — | VPN client by Proton with encrypted tunneling. |
| [chatgpt](packages/chatgpt/) | [winget](plugins/winget/) | — | Official ChatGPT desktop app by OpenAI. |
| [lenovo-vantage](packages/lenovo-vantage/) (disabled) | [winget](plugins/winget/) | — | Driver and hardware management tool for Lenovo machines. |
| [obsidian](packages/obsidian/) | [winget](plugins/winget/) | — | Markdown-based note-taking and knowledge base app. |

## Plugins

| Plugin | Source | Description |
|---|---|---|
| [mise](plugins/mise/) | [hainet50b/homeos-plugin-mise](https://github.com/hainet50b/homeos-plugin-mise) | mise tool version manager plugin for homeos. |
| [winget](plugins/winget/) | [hainet50b/homeos-plugin-winget](https://github.com/hainet50b/homeos-plugin-winget) | WinGet package manager plugin for homeos. |

## Notes

(free-form section for your own notes — homeos and the agent never modify it.)

---

*Managed by [homeos](https://github.com/hainet50b/homeos).*
