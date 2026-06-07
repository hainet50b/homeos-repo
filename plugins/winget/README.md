# homeos-plugin-winget

![License](https://img.shields.io/badge/license-MIT%20OR%20Apache--2.0-blue)

A [homeos](https://github.com/hainet50b/homeos) plugin for [winget](https://github.com/microsoft/winget-cli), the Windows Package Manager.

## Usage

Add the plugin to your homeos repository:

```sh
homeos plugin add winget
```

Create a package using this plugin:

```sh
homeos package add neovim --plugin winget --param id=Neovim.Neovim
```

## Parameters

| Parameter | Description |
|-----------|-------------|
| `id` | winget package ID (e.g., `Neovim.Neovim`) |

## Actions

| Action | Command |
|--------|---------|
| install | `winget install --exact --id {{id}} --silent --accept-source-agreements --accept-package-agreements` |
| update | `winget upgrade --exact --id {{id}} --silent --accept-source-agreements --accept-package-agreements` |
| uninstall | `winget uninstall --exact --id {{id}} --silent` |

## License

Licensed under either of

 * Apache License, Version 2.0
   ([LICENSE-APACHE](LICENSE-APACHE) or <http://www.apache.org/licenses/LICENSE-2.0>)
 * MIT license
   ([LICENSE-MIT](LICENSE-MIT) or <http://opensource.org/licenses/MIT>)

at your option.

## Contribution

Unless you explicitly state otherwise, any contribution intentionally submitted
for inclusion in the work by you, as defined in the Apache-2.0 license, shall be
dual licensed as above, without any additional terms or conditions.
