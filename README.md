# dotfiles

Opinionated macOS setup and tool configuration files

## System Defaults

### Dock: Icon Size

> <https://macos-defaults.com/dock/tilesize.html>

```shell
defaults read com.apple.dock "tilesize"
defaults write com.apple.dock "tilesize" -int "48" && killall Dock
defaults delete com.apple.dock "tilesize" && killall Dock
```

### Dock: Autohide

> <https://macos-defaults.com/dock/autohide.html>

```shell
defaults read com.apple.dock "autohide"
defaults write com.apple.dock "autohide" -bool "true" && killall Dock
defaults delete com.apple.dock "autohide" && killall Dock
```

### Dock: Autohide Delay

> <https://macos-defaults.com/dock/autohide-delay.html>

```shell
defaults read com.apple.dock "autohide-delay"
defaults write com.apple.dock "autohide-delay" -float "0" && killall Dock
defaults delete com.apple.dock "autohide-delay" && killall Dock
```

### Dock: Show Recents

> <https://macos-defaults.com/dock/show-recents.html>

```shell
defaults read com.apple.dock "show-recents"
defaults write com.apple.dock "show-recents" -bool "false" && killall Dock
defaults delete com.apple.dock "show-recents" && killall Dock
```

### Finder: Show Extensions

> <https://macos-defaults.com/finder/appleshowallextensions.html>

```shell
defaults read NSGlobalDomain "AppleShowAllExtensions"
defaults write NSGlobalDomain "AppleShowAllExtensions" -bool "true" && killall Finder
defaults delete NSGlobalDomain "AppleShowAllExtensions" && killall Finder
```

### Finder: Show Hidden Files

> <https://macos-defaults.com/finder/appleshowallfiles.html>

```shell
defaults read com.apple.finder "AppleShowAllFiles"
defaults write com.apple.finder "AppleShowAllFiles" -bool "true" && killall Finder
defaults delete com.apple.finder "AppleShowAllFiles" && killall Finder
```

### Finder: Show Path Bar

> <https://macos-defaults.com/finder/showpathbar.html#set-to-true>

```shell
defaults read com.apple.finder "ShowPathbar"
defaults write com.apple.finder "ShowPathbar" -bool "true" && killall Finder
defaults delete com.apple.finder "ShowPathbar" && killall Finder
```

### Finder: Default View Style

> <https://macos-defaults.com/finder/fxpreferredviewstyle.html#set-to-clmv>

```shell
defaults read com.apple.finder "FXPreferredViewStyle"
defaults write com.apple.finder "FXPreferredViewStyle" -string "Nlsv" && killall Finder
defaults delete com.apple.finder "FXPreferredViewStyle" && killall Finder
```

### Finder: Default Search Scope

> <https://macos-defaults.com/finder/fxdefaultsearchscope.html>

```shell
defaults read com.apple.finder "FXDefaultSearchScope"
defaults write com.apple.finder "FXDefaultSearchScope" -string "SCev" && killall Finder
defaults delete com.apple.finder "FXDefaultSearchScope" && killall Finder
```

### Finder: Changing File Extension Warning

> <https://macos-defaults.com/finder/fxenableextensionchangewarning.html>

```shell
defaults read com.apple.finder "FXEnableExtensionChangeWarning"
defaults write com.apple.finder "FXEnableExtensionChangeWarning" -bool "false" && killall Finder
defaults delete com.apple.finder "FXEnableExtensionChangeWarning" && killall Finder
```

## XCode

```shell
xcode-select --install
```

## Homebrew

```shell
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

## Shell

### Oh My Zsh

```shell
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

### Alacritty

An alternative and if you ask me way better icon can downloaded [here](https://yoolk.ninja/icons/alacritty/) and is saved for convenience [here](Alacritty.zip) as well.

### tmux

### Fira Code Nerd Font

```shell
brew info font-fira-code-nerd-font
```

### direnv

> <https://direnv.net/>

```shell
brew install direnv
```

Hook into zsh shell as described [here](https://direnv.net/docs/hook.html#zsh).

## Applications

- [Stats](https://github.com/exelban/stats)
- [Tiles](https://www.sempliva.com/tiles/)
- Visual Studio Code
- Docker
- Miro
- Figma
- Notion
- Obsidian
- WhatsApp
- VirtualBox
- 1Password

## Programming Languages

- [asdf](https://asdf-vm.com/)
- Node.js
- Go
- Ruby

## SSH Keys

> <https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent>
