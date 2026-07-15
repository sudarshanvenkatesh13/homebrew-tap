# Homebrew Tap — Runaway

Homebrew cask for [**Runaway**](https://runawaynotch.xyz), the macOS notch app that shows your Claude Pro/Max usage.

## Install

```sh
brew tap sudarshanvenkatesh13/tap
brew trust sudarshanvenkatesh13/tap
brew install --cask runaway
```

Current versions of Homebrew require you to explicitly trust a third-party tap
before installing its casks — that's the `brew trust` step above. You only need
to run it once.

## Update

```sh
brew upgrade --cask runaway
```

## Uninstall

```sh
brew uninstall --cask runaway          # remove the app
brew uninstall --zap --cask runaway    # remove the app + preferences and local data
```

Requires macOS 14 (Sonoma) or later. The app is signed and notarized with an Apple Developer ID.
