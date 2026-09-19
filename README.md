# homeos-repo

This repository is the source of truth for the user's software setup,
managed by [homeos](https://github.com/homeos-dev/homeos). The full
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
| [awscli](packages/awscli/) | [winget](plugins/winget/) | — | AWS CLI v2 for working with AWS accounts. |
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
| [gh-markdown-preview](packages/gh-markdown-preview/) | [gh-extension](plugins/gh-extension/) | [gh](packages/gh/) | Previews Markdown in the browser as GitHub renders it. |
| [git](packages/git/) | [winget](plugins/winget/) | — | Distributed version control system (Git for Windows). |
| [git-filter-repo](packages/git-filter-repo/) | [mise](plugins/mise/) | [mise](packages/mise/), [python](packages/python/), [uv](packages/uv/) | Rewrites Git history; replaces `git filter-branch`. |
| [google-drive](packages/google-drive/) | [winget](plugins/winget/) | — | Cloud storage sync and backup client by Google. |
| [gradle](packages/gradle/) | [mise](plugins/mise/) | [mise](packages/mise/) | Gradle build automation tool for JVM projects. |
| [helm](packages/helm/) | [mise](plugins/mise/) | [mise](packages/mise/) | Kubernetes package manager (Helm 4). |
| [homeos](packages/homeos/) | — | [git](packages/git/) | homeos itself, via the official install script. |
| [jdk-temurin-25](packages/jdk-temurin-25/) | [mise](plugins/mise/) | [mise](packages/mise/) | Eclipse Temurin OpenJDK 25 (LTS) runtime and compiler. |
| [jetbrains-toolbox](packages/jetbrains-toolbox/) | [winget](plugins/winget/) | — | Launcher to install and manage JetBrains IDEs. |
| [jq](packages/jq/) | [winget](plugins/winget/) | — | Lightweight command-line JSON processor. |
| [k9s](packages/k9s/) | [winget](plugins/winget/) | — | Terminal UI for Kubernetes clusters. |
| [kindle](packages/kindle/) | [winget](plugins/winget/) | — | Amazon Kindle e-book reading app. |
| [kubectl](packages/kubectl/) | [mise](plugins/mise/) | [mise](packages/mise/) | Kubernetes command-line client (1.37). |
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
| [terraform](packages/terraform/) | [mise](plugins/mise/) | [mise](packages/mise/) | Infrastructure-as-code CLI (Terraform 1.16). |
| [todoist](packages/todoist/) | [winget](plugins/winget/) | — | Task manager and to-do list app. |
| [uv](packages/uv/) | [mise](plugins/mise/) | [mise](packages/mise/) | Fast Python package, venv, and tool manager. |
| [vcredist-x64](packages/vcredist-x64/) | [winget](plugins/winget/) | — | Visual C++ 2015-2022 Redistributable (x64). |
| [vcredist-x86](packages/vcredist-x86/) | [winget](plugins/winget/) | — | Visual C++ 2015-2022 Redistributable (x86). |
| [vs-buildtools](packages/vs-buildtools/) | [winget](plugins/winget/) | — | MSVC C++ build tools and Windows SDK. |
| [wave-terminal](packages/wave-terminal/) | [winget](plugins/winget/) | — | Open-source AI-native terminal by Command Line Inc. |
| [wispr-flow](packages/wispr-flow/) | [winget](plugins/winget/) | — | AI-powered voice dictation app that turns speech into polished text in any app. |
| [wsl](packages/wsl/) | — | — | Windows Subsystem for Linux, installed without a default distribution. |
| [wsl-ubuntu](packages/wsl-ubuntu/) | — | [wsl](packages/wsl/) | Ubuntu (latest LTS) distribution registered under WSL2. |
| [yazi](packages/yazi/) | [winget](plugins/winget/) | — | Blazing-fast terminal file manager written in Rust. |
| [zed](packages/zed/) | [winget](plugins/winget/) | — | High-performance code editor written in Rust. |
| [zed-http-client](packages/zed-http-client/) | — | [zed](packages/zed/) | `httpc` binary required by the [hainet50b/zed-http-client](https://github.com/hainet50b/zed-http-client) Zed extension. |
| [zoom](packages/zoom/) | [winget](plugins/winget/) | — | Video conferencing app. |
| [zoxide](packages/zoxide/) | [winget](plugins/winget/) | — | Smarter `cd` that jumps to frequently used directories. |

## Skills

| Skill | Plugin | Dependencies | Purpose |
|---|---|---|---|
| [aws-auth](packages/aws-auth/) | [gh-skill](plugins/gh-skill/) | [gh](packages/gh/) | AWS authentication and authorization fundamentals, from the Agent Toolkit for AWS. |
| [aws-billing-and-cost-management](packages/aws-billing-and-cost-management/) | [gh-skill](plugins/gh-skill/) | [gh](packages/gh/) | AWS Budgets, Cost Explorer, pricing and Free Tier guidance, from the Agent Toolkit for AWS. |
| [hainet50b-skills](packages/hainet50b-skills/) | — | [gh](packages/gh/) | Every agent skill published in [hainet50b/skills](https://github.com/hainet50b/skills). |
| [homeos-inventory](packages/homeos-inventory/) | [gh-skill](plugins/gh-skill/) | [gh](packages/gh/) | Tells an AI agent which tools homeos has installed on this machine. |
| [homeos-manage](packages/homeos-manage/) | [gh-skill](plugins/gh-skill/) | [gh](packages/gh/) | Teaches an AI agent to install, update, and uninstall through homeos. |
| [plain-language](packages/plain-language/) | [gh-skill](plugins/gh-skill/) | [gh](packages/gh/) | Applies plain-language principles to the prose an agent writes, edits, reviews, or translates. |
| [plain-language-compare](packages/plain-language-compare/) | [gh-skill](plugins/gh-skill/) | [gh](packages/gh/) | Runs one prompt with and without the plain-language skill and shows the replies side by side. |
| [plain-language-report](packages/plain-language-report/) | [gh-skill](plugins/gh-skill/) | [gh](packages/gh/) | Records an expression that feels unnatural to a reader as a report, with the prompt that produces it. |
| [signing-in-to-aws](packages/signing-in-to-aws/) | [gh-skill](plugins/gh-skill/) | [gh](packages/gh/) | Signing in to AWS with IAM Identity Center, profiles and credentials, from the Agent Toolkit for AWS. |
| [utsusemi-harness](packages/utsusemi-harness/) | [gh-skill](plugins/gh-skill/) | [gh](packages/gh/) | Initializes an Utsusemi project, a harness that separates spec from implementation. |

## Plugins

| Plugin | Source | Description |
|---|---|---|
| [gh-extension](plugins/gh-extension/) | [homeos-dev/homeos-plugin-gh-extension](https://github.com/homeos-dev/homeos-plugin-gh-extension) | GitHub CLI extension plugin for homeos (gh extension). |
| [gh-skill](plugins/gh-skill/) | [homeos-dev/homeos-plugin-gh-skill](https://github.com/homeos-dev/homeos-plugin-gh-skill) | Agent skill plugin for homeos, backed by GitHub CLI (gh skill, preview). |
| [mise](plugins/mise/) | [homeos-dev/homeos-plugin-mise](https://github.com/homeos-dev/homeos-plugin-mise) | mise tool version manager plugin for homeos. |
| [winget](plugins/winget/) | [homeos-dev/homeos-plugin-winget](https://github.com/homeos-dev/homeos-plugin-winget) | WinGet package manager plugin for homeos. |

## Notes

(free-form section for your own notes — homeos and the agent never modify it.)

---

*Managed by [homeos](https://github.com/homeos-dev/homeos).*
