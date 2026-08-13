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
| [anki](packages/anki/) | [winget](plugins/winget/) | — | Spaced-repetition flashcard app for memorization (launcher-managed). |
| [bat](packages/bat/) | [winget](plugins/winget/) | — | `cat` clone with syntax highlighting and Git integration. |
| [brave](packages/brave/) | [winget](plugins/winget/) | — | Privacy-focused Chromium-based web browser. |
| [chatgpt](packages/chatgpt/) | [winget](plugins/winget/) | — | Official ChatGPT desktop app by OpenAI. |
| [chezmoi](packages/chezmoi/) | [winget](plugins/winget/) | — | Dotfile manager for configs across machines. |
| [claude](packages/claude/) | [winget](plugins/winget/) | — | Official Claude desktop app by Anthropic. |
| [claude-code](packages/claude-code/) | — | — | Anthropic's agentic coding tool for the terminal; official native install that auto-updates. |
| [codex](packages/codex/) | [winget](plugins/winget/) | — | Official Codex desktop app by OpenAI; command center for agentic coding. |
| [codex-cli](packages/codex-cli/) | [winget](plugins/winget/) | — | OpenAI's coding agent CLI for the terminal. |
| [codex-cli-shim](packages/codex-cli-shim/) | — | [codex-cli](packages/codex-cli/) | Shim exposing the codex-cli binary as `codex`. |
| [coreutils](packages/coreutils/) | [winget](plugins/winget/) | — | Native Unix-style command-line utilities by Microsoft. |
| [delta](packages/delta/) | [winget](plugins/winget/) | — | Syntax-highlighting pager for git, diff, and grep output. |
| [docker-desktop](packages/docker-desktop/) | [winget](plugins/winget/) | — | Docker container runtime and management GUI (WSL2 backend). |
| [dropbox](packages/dropbox/) | [winget](plugins/winget/) | — | Cloud storage and file sync service. |
| [espalier](packages/espalier/) | — | — | Declarative plan/diff/apply CLI for Elastic Stack assets. |
| [eza](packages/eza/) | [winget](plugins/winget/) | — | Modern `ls` replacement with colors, icons, and Git status. |
| [fd](packages/fd/) | [winget](plugins/winget/) | — | Simple, fast, user-friendly `find` alternative. |
| [fzf](packages/fzf/) | [winget](plugins/winget/) | — | General-purpose command-line fuzzy finder. |
| [gh](packages/gh/) | [winget](plugins/winget/) | — | GitHub CLI for pull requests, issues, and Actions from the terminal. |
| [git](packages/git/) | [winget](plugins/winget/) | — | Distributed version control system (Git for Windows). |
| [google-drive](packages/google-drive/) | [winget](plugins/winget/) | — | Cloud storage sync and backup client by Google. |
| [gradle](packages/gradle/) | [mise](plugins/mise/) | [mise](packages/mise/) | Gradle build automation tool for JVM projects. |
| [homeos](packages/homeos/) | — | [git](packages/git/) | homeos itself, via the official install script. |
| [jdk-temurin-25](packages/jdk-temurin-25/) | [mise](plugins/mise/) | [mise](packages/mise/) | Eclipse Temurin OpenJDK 25 (LTS) runtime and compiler. |
| [jetbrains-toolbox](packages/jetbrains-toolbox/) | [winget](plugins/winget/) | — | Launcher to install and manage JetBrains IDEs. |
| [jq](packages/jq/) | [winget](plugins/winget/) | — | Lightweight command-line JSON processor. |
| [lazydocker](packages/lazydocker/) | [winget](plugins/winget/) | — | Terminal UI for Docker and docker-compose. |
| [lazygit](packages/lazygit/) | [winget](plugins/winget/) | — | Terminal UI for git commands. |
| [lenovo-vantage](packages/lenovo-vantage/) (disabled) | [winget](plugins/winget/) | — | Driver and hardware management tool for Lenovo machines. |
| [libreoffice](packages/libreoffice/) | [winget](plugins/winget/) | — | Free office suite (Calc, Writer, Impress, etc.), successor to OpenOffice. |
| [maven](packages/maven/) | [mise](plugins/mise/) | [mise](packages/mise/) | Apache Maven build and dependency management tool for Java. |
| [mise](packages/mise/) | [winget](plugins/winget/) | — | Dev environment manager for languages, env vars, and tasks. |
| [monaspace-nerd-font](packages/monaspace-nerd-font/) | — | — | Nerd Fonts-patched Monaspace (Mono), per-user install. |
| [neovim](packages/neovim/) | [winget](plugins/winget/) | — | Hyperextensible terminal text editor (Vim fork). |
| [node](packages/node/) | [mise](plugins/mise/) | [mise](packages/mise/) | Node.js 24 (LTS) JavaScript runtime and npm. |
| [noto-sans-cjk-jp](packages/noto-sans-cjk-jp/) | — | — | Proportional Japanese font (CJK fallback for UI). |
| [noto-sans-mono-cjk-jp](packages/noto-sans-mono-cjk-jp/) | — | — | Monospace Japanese font (CJK fallback for editors/terminals). |
| [obsidian](packages/obsidian/) | [winget](plugins/winget/) | — | Markdown-based note-taking and knowledge base app. |
| [powershell](packages/powershell/) | [winget](plugins/winget/) | — | Cross-platform PowerShell 7 shell and scripting language. |
| [proton-drive](packages/proton-drive/) | [winget](plugins/winget/) | — | End-to-end encrypted cloud storage by Proton. |
| [proton-mail](packages/proton-mail/) | [winget](plugins/winget/) | — | Encrypted email client by Proton. |
| [proton-pass](packages/proton-pass/) | [winget](plugins/winget/) | — | Password manager by Proton with end-to-end encryption. |
| [proton-vpn](packages/proton-vpn/) | [winget](plugins/winget/) | — | VPN client by Proton with encrypted tunneling. |
| [python](packages/python/) | [mise](plugins/mise/) | [mise](packages/mise/) | Python 3.13 runtime and pip. |
| [raycast](packages/raycast/) | [winget](plugins/winget/) | — | Command-bar app launcher with file search, clipboard history, and AI features. |
| [readwise-reader](packages/readwise-reader/) | — | — | Read-it-later app for articles, PDFs, and highlights (Windows alpha). |
| [ripgrep](packages/ripgrep/) | [winget](plugins/winget/) | — | Fast recursive regex search tool (`rg`) that respects gitignore. |
| [rustup](packages/rustup/) | [winget](plugins/winget/) | [vs-buildtools](packages/vs-buildtools/) | Rust toolchain installer and version manager. |
| [shellcheck](packages/shellcheck/) | [winget](plugins/winget/) | — | Static analysis linter for bash/sh shell scripts. |
| [shfmt](packages/shfmt/) | [winget](plugins/winget/) | — | Formatter for bash/sh shell scripts. |
| [starship](packages/starship/) | [winget](plugins/winget/) | — | Minimal, fast, customizable cross-shell prompt. |
| [todoist](packages/todoist/) | [winget](plugins/winget/) | — | Task manager and to-do list app. |
| [uv](packages/uv/) | [winget](plugins/winget/) | — | Fast Python package, venv, and tool manager (Astral). |
| [vcredist-x64](packages/vcredist-x64/) | [winget](plugins/winget/) | — | Visual C++ 2015-2022 Redistributable (x64). |
| [vcredist-x86](packages/vcredist-x86/) | [winget](plugins/winget/) | — | Visual C++ 2015-2022 Redistributable (x86). |
| [vs-buildtools](packages/vs-buildtools/) | [winget](plugins/winget/) | — | MSVC C++ build tools and Windows SDK. |
| [wave-terminal](packages/wave-terminal/) | [winget](plugins/winget/) | — | Open-source AI-native terminal by Command Line Inc. |
| [wispr-flow](packages/wispr-flow/) | [winget](plugins/winget/) | — | AI-powered voice dictation app that turns speech into polished text in any app. |
| [wsl](packages/wsl/) | — | — | Windows Subsystem for Linux, installed without a default distribution. |
| [wsl-ubuntu](packages/wsl-ubuntu/) | — | [wsl](packages/wsl/) | Ubuntu (latest LTS) distribution registered under WSL2. |
| [yazi](packages/yazi/) | [winget](plugins/winget/) | — | Blazing-fast terminal file manager written in Rust. |
| [zed](packages/zed/) | [winget](plugins/winget/) | — | High-performance code editor written in Rust. |
| [zoxide](packages/zoxide/) | [winget](plugins/winget/) | — | Smarter `cd` that jumps to frequently used directories. |

## Plugins

| Plugin | Source | Description |
|---|---|---|
| [mise](plugins/mise/) | [hainet50b/homeos-plugin-mise](https://github.com/hainet50b/homeos-plugin-mise) | mise tool version manager plugin for homeos. |
| [winget](plugins/winget/) | [hainet50b/homeos-plugin-winget](https://github.com/hainet50b/homeos-plugin-winget) | WinGet package manager plugin for homeos. |

## Notes

(free-form section for your own notes — homeos and the agent never modify it.)

---

*Managed by [homeos](https://github.com/hainet50b/homeos).*
