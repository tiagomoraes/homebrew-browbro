# BrowBro Homebrew tap

Homebrew cask for [BrowBro](https://browbro.tiagomoraes.cloud), the menu-bar
browser router for macOS.

```sh
brew install --cask tiagomoraes/browbro/browbro
```

or, as two steps:

```sh
brew tap tiagomoraes/browbro
brew install --cask browbro
```

BrowBro is not yet notarized, so on first launch open **System Settings > Privacy
& Security** and click **Open Anyway** (or run
`xattr -dr com.apple.quarantine "/Applications/BrowBro.app"`).
