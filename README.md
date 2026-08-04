# Homebrew tap for Relmio

Install [Relmio](https://github.com/Demonbane18/relmio) on macOS or Linux:

```sh
brew tap Demonbane18/relmio
brew install relmio
```

Then start the local installation wizard:

```sh
relmio
```

The formula is generated from the exact package published to npm by Relmio's
OIDC release workflow. Its registry tarball is pinned by SHA-256 before this tap
is updated.

## Update

```sh
brew update
brew upgrade relmio
```

## Uninstall

```sh
brew uninstall relmio

# Optional: remove the tap when you no longer use it.
brew untap Demonbane18/relmio
```
