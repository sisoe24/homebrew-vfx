# Homebrew tap for VFX software

This repository contains formulae for VFX software that are not available in the main Homebrew tap.

## Taps

Each cask installs into its own versioned folder, so versions install side by side.

| Cask | Version | Notes |
| --- | --- | --- |
| `nuke` | 17.1v3 | Latest release |
| `nuke@16` | 16.1v5 | |
| `nuke@15` | 15.2v9 (Intel), 15.2v7 (Apple silicon) | Foundry has no arm64 build of 15.2v9 |

See [Foundry's Nuke page](https://www.foundry.com/products/nuke).

## How do I install these formulae?

`brew install sisoe24/vfx/<formula>`

Or `brew tap sisoe24/vfx` and then `brew install <formula>`.

Or, in a [`brew bundle`](https://github.com/Homebrew/homebrew-bundle) `Brewfile`:

```ruby
tap "sisoe24/vfx"
brew "<formula>"
```

Example:

```bash
brew tap sisoe24/vfx
brew install nuke
brew install nuke@15
```

## Documentation

`brew help`, `man brew` or check [Homebrew's documentation](https://docs.brew.sh).
