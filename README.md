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
- General > About, Change “Name” to whatever suits you
- Lock Screen > Start Screen Saver when inactive, “Never”
- Lock Screen > Turn display off on battery when inactive, “For 20 minutes”
- Lock Screen > Turn display off on power adapter when inactive, “For 20 minutes”
- Lock Screen > Require password after screen saver begins or display is turned off, “Immediately”
- Software Update > Automatic updates, “Enabled”
- Trackpad > Tap to click, “Enabled”

```shell
sudo scutil --set HostName
```

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

### Zsh

```shell
brew install zsh
```

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
> <https://github.com/tmux-plugins/tpm>

```shell
brew install tmux tpm
```

tmux is configured with automatically restoring a previous session. This happens when Alacritty is closed or a reboot happens. In this case re-attach to the previous session like that:

```shell
tmux attach -d -t main
```

### Fira Code Nerd Font

> <https://github.com/ryanoasis/nerd-fonts>

```shell
brew install font-fira-code-nerd-font
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

### asdf

> <https://asdf-vm.com/>

```shell
# add to ~/.zshrc
. /opt/homebrew/opt/asdf/libexec/asdf.sh
```

```shell
asdf plugin add nodejs https://github.com/asdf-vm/asdf-nodejs.git
asdf plugin add ruby https://github.com/asdf-vm/asdf-ruby.git
asdf plugin-add golang https://github.com/kennyp/asdf-golang.git
```

Add `asdf-partial` as described [here](https://github.com/valeriangalliat/asdf-partial?tab=readme-ov-file#installation).

```shell
git clone https://github.com/valeriangalliat/asdf-partial ~/.asdf/asdf-partial
```

Enable support for legacy `.nvmrc` and `.node-version` by adding the `.asdfrc` as described [here](https://github.com/asdf-vm/asdf-nodejs?tab=readme-ov-file#nvmrc-and-node-version-support).

```shell
# add to ~/.zshrc
export PATH=~/.asdf/asdf-partial:$PATH
```

### k9s

> <https://k9scli.io/>

```shell
brew install k9s
mkdir -p ~/.config/k9s
wget -P ~/.config/k9s/ https://raw.githubusercontent.com/derailed/k9s/master/skins/gruvbox-dark.yml
ln -s ~/.config/k9s/gruvbox-dark.yml ~/Library/Application\ Support/k9s/skin.yml
```

### Tools

```shell
brew install coreutils findutils fzf jq most parallel
```

### fzf

```shell
/opt/homebrew/opt/fzf/install
```

### Kubernetes

```shell
brew install kubernetes-cli kubectx

# for AWS
brew install awscli int128/kubelogin/kubelogin docker-credential-helper-ecr
aws configure sso
aws sso login
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
- Zoom
- Slack

Rebind `⌥⌘I` for “Upper Right” in Tiles, as it otherwise interferes with the Developer Tools in Google Chrome.

### Obsidian

- Theme: [Material Gruvbox](https://github.com/AllJavi/material_gruvbox_obsidian)
- Editor > General > Default editing mode: “Source mode”
- Editor > Display > Fold heading, Fold indent, Show indentation guides (all disabled)
- Editor > Advanced > Auto convert HTML (disabled)
- Files & Links > Confirm file deletion (disabled)
- Appearance > Text font, Monospace font: “FiraCode Nerd Font”
- Appearance > Font size: 14
- Appearance > Show inline title (disabled)
- Appearance > Show tab title bar (disabled)

## Programming Languages

- Node.js
- Go
- Ruby

## SSH Keys

> <https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent>

## Git

Don’t forget to adjust the `email` values for the [personal](https://github.com/m99coder/dotfiles/blob/main/.gitconfig.personal#L2) and [work](https://github.com/m99coder/dotfiles/blob/main/.gitconfig.work#L2) configuration files in order to see correct users on GitHub. The config also enables signing commits using a specific SSH public key.
