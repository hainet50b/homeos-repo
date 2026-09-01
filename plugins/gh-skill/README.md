# homeos-plugin-gh-skill

![License](https://img.shields.io/badge/license-MIT%20OR%20Apache--2.0-blue)

A [homeos](https://github.com/hainet50b/homeos) plugin for agent skills, backed by
[GitHub CLI](https://cli.github.com/)'s `gh skill`.

An agent skill is a directory of instructions an AI coding agent loads on demand. This plugin
manages skills the same way homeos manages software: declared in `homeos.yml`, reproduced on
every machine from the same definition.

## Usage

Add the plugin to your homeos repository:

```sh
homeos plugin add gh-skill
```

Create a package using this plugin:

```sh
homeos package add frontend-design --plugin gh-skill \
  --param repo=anthropics/skills --param skill=frontend-design --param agent=universal
```

Skills are installed at **user scope** — under your home directory — so they are available
everywhere on the machine.

## Choosing the agent target

`universal` installs into the shared `~/.agents/skills` directory defined by the
[Agent Skills specification](https://agentskills.io/specification), so one package serves every
agent that follows it. Reach for it first.

Some agents load skills only from a directory of their own — Claude Code reads
`~/.claude/skills`. Give each of those a package of its own:

```sh
homeos package add frontend-design-claude-code --plugin gh-skill \
  --param repo=anthropics/skills --param skill=frontend-design --param agent=claude-code
```

`gh skill install` takes one agent at a time, and each target is a separate copy in a separate
directory (`~/.claude/skills`, `~/.codex/skills`, `~/.config/opencode/skills`). One homeos package
per agent keeps install, update, and uninstall pointed at exactly one of them. The homeos package
name is independent of the skill name, so name it after the agent it serves.

## Requirements

These scripts call `gh`, so [GitHub CLI](https://cli.github.com/) must already be installed and
authenticated (`gh auth login`).

If you manage `gh` itself with homeos — say as a package named `gh` — point this package at it
with `--depends-on gh`, so homeos installs `gh` before the skill that needs it:

```sh
homeos package add frontend-design --plugin gh-skill --depends-on gh \
  --param repo=anthropics/skills --param skill=frontend-design --param agent=universal
```

`gh skill` is a preview feature of GitHub CLI and may change without notice.

## Parameters

| Parameter | Description |
|-----------|-------------|
| `repo` | Source repository in `OWNER/REPO` form (e.g. `anthropics/skills`) |
| `skill` | Skill name, as reported by `gh skill list` (e.g. `frontend-design`) |
| `agent` | Target agent. `universal` for the shared `~/.agents/skills` directory, or a specific agent such as `claude-code`, `codex`, or `opencode` — see `gh skill install --help` for the full list |

Pass the skill **name**, not a path within the repository. `gh skill install` accepts a path, but
uninstall resolves the installed directory by matching the skill name, so a path leaves nothing
for it to remove.

Use `gh skill search <query>` to find skills and the names to pass here.

## Actions

| Action | Command |
|--------|---------|
| install | `gh skill install {{repo}} {{skill}} --agent {{agent}} --scope user --force` |
| update | same as install |
| uninstall | `gh skill list ... --jq '...'` piped into a directory removal |

Install and update run the same command: re-installing fetches the latest version and overwrites
what is there, so the action is idempotent and local edits to an installed skill are lost.

Uninstall is a directory removal because `gh skill` has no uninstall command: it asks `gh skill list`
for the installed path of `{{skill}}` under the given agent and scope, then removes it. Nothing is
removed when the skill is not installed.

## License

Licensed under either of

 * Apache License, Version 2.0 ([LICENSE-APACHE](LICENSE-APACHE) or <http://www.apache.org/licenses/LICENSE-2.0>)
 * MIT license ([LICENSE-MIT](LICENSE-MIT) or <http://opensource.org/licenses/MIT>)

at your option.

## Contribution

Unless you explicitly state otherwise, any contribution intentionally submitted for inclusion in the work by you, as defined in the Apache-2.0 license, shall be dual licensed as above, without any additional terms or conditions.
