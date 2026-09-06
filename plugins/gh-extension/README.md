# homeos-plugin-gh-extension

![License](https://img.shields.io/badge/license-MIT%20OR%20Apache--2.0-blue)

A [homeos](https://github.com/hainet50b/homeos) plugin for
[GitHub CLI](https://cli.github.com/) extensions, backed by `gh extension`.

## Usage

Add the plugin to your homeos repository:

```sh
homeos plugin add gh-extension
```

Create a package using this plugin:

```sh
homeos package add gh-dash --plugin gh-extension --param repo=dlvhdr/gh-dash
```

The homeos package name is a slug you choose; the extension's repository goes in the `repo`
parameter as `OWNER/REPO`.

## Requirements

These scripts call `gh`, so [GitHub CLI](https://cli.github.com/) must already be installed and
authenticated (`gh auth login`).

If you manage `gh` itself with homeos — say as a package named `gh` — point this package at it
with `--depends-on gh`, so homeos installs `gh` before the extension that needs it:

```sh
homeos package add gh-dash --plugin gh-extension --depends-on gh --param repo=dlvhdr/gh-dash
```

## Parameters

| Parameter | Description |
|-----------|-------------|
| `repo` | Extension repository in `OWNER/REPO` form (e.g. `dlvhdr/gh-dash`) |

Use `gh extension browse` or <https://github.com/topics/gh-extension> to find extensions.

## Actions

| Action | Command |
|--------|---------|
| install | `gh extension install {{repo}} --force` |
| update | `gh extension upgrade {{repo}}` |
| uninstall | `gh extension remove {{repo}}` |

`--force` makes install idempotent: it installs the extension when missing and does nothing when
the latest version is already present.

`upgrade` and `remove` take the same `OWNER/REPO` value — `gh` strips the owner and the `gh-`
prefix to resolve the installed extension — so one parameter serves all three actions.

## License

Licensed under either of

 * Apache License, Version 2.0 ([LICENSE-APACHE](LICENSE-APACHE) or <http://www.apache.org/licenses/LICENSE-2.0>)
 * MIT license ([LICENSE-MIT](LICENSE-MIT) or <http://opensource.org/licenses/MIT>)

at your option.

## Contribution

Unless you explicitly state otherwise, any contribution intentionally submitted for inclusion in the work by you, as defined in the Apache-2.0 license, shall be dual licensed as above, without any additional terms or conditions.
