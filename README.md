# dotfiles

Opinionated macOS setup and tool configuration files

## System Defaults

```shell
# read current value
defaults read com.apple.dock "tilesize"

# reset to default value
defaults delete com.apple.dock "tilesize" && killall Dock
```

### Dock

```shell
# icon size: https://macos-defaults.com/dock/tilesize.html
defaults write com.apple.dock "tilesize" -int "48" && killall Dock

# autohide: https://macos-defaults.com/dock/autohide.html
defaults write com.apple.dock "autohide" -bool "true" && killall Dock

# autohide delay: https://macos-defaults.com/dock/autohide-delay.html
defaults write com.apple.dock "autohide-delay" -float "0" && killall Dock

# show recents: https://macos-defaults.com/dock/show-recents.html
defaults write com.apple.dock "show-recents" -bool "false" && killall Dock
```

### Finder

```shell
# show all extensions: https://macos-defaults.com/finder/appleshowallextensions.html
defaults write NSGlobalDomain "AppleShowAllExtensions" -bool "true" && killall Finder

# show hidden files: https://macos-defaults.com/finder/appleshowallfiles.html
defaults write com.apple.finder "AppleShowAllFiles" -bool "true" && killall Finder

# show path bar: https://macos-defaults.com/finder/showpathbar.html
defaults write com.apple.finder "ShowPathbar" -bool "true" && killall Finder

# default view style: https://macos-defaults.com/finder/fxpreferredviewstyle.html
defaults write com.apple.finder "FXPreferredViewStyle" -string "Nlsv" && killall Finder

# changing file extension warning: https://macos-defaults.com/finder/fxenableextensionchangewarning.html
defaults write com.apple.finder "FXEnableExtensionChangeWarning" -bool "false" && killall Finder
```

## Settings

- Control Centre > Bluetooth, “Show in Menu Bar”
- Control Centre > Sound, “Always Show in Menu Bar”
- Control Centre > Battery, “Show Percentage”
- Software Update > Automatic updates, “Enabled”
- Trackpad > Tap to click, “Enabled”

## XCode

```shell
xcode-select --install
```

## Homebrew

> <https://brew.sh/>

```shell
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

## Shell

### Zsh Syntax Highlighting

> <https://github.com/zsh-users/zsh-syntax-highlighting>

```shell
brew install zsh-syntax-highlighting
```

### Oh My Zsh

> <https://ohmyz.sh/>

```shell
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

### Alacritty

> <https://alacritty.org/>

```shell
brew install alacritty
```

An alternative and if you ask me way better icon can downloaded [here](https://yoolk.ninja/icons/alacritty/) and is saved for convenience [here](Alacritty.zip) as well.

### tmux

> <https://tmux.github.io/>

```shell
brew install tmux
```

### Fira Code Nerd Font

> <https://github.com/ryanoasis/nerd-fonts>

```shell
brew info font-fira-code-nerd-font
```

### Spaceship Prompt

> <https://spaceship-prompt.sh/>

```shell
brew install spaceship
```

Hook into zsh shell as described [here](https://spaceship-prompt.sh/getting-started/).

### direnv

> <https://direnv.net/>

```shell
brew install direnv
```

Hook into zsh shell as described [here](https://direnv.net/docs/hook.html#zsh).

### Zoxide

> <https://github.com/ajeetdsouza/zoxide>

```shell
brew install zoxide
```

### Neovim

> <https://neovim.io/>

```shell
brew install neovim
```

## Google

- [Calendar Sync](https://calendar.google.com/calendar/u/0/syncselect)

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
