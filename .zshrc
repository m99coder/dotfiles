# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# Appends every command to the history file once it is executed
setopt inc_append_history
# Reloads the history whenever you use it
setopt share_history
# Keep history for very long
export HISTSIZE=10000000

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor
export EDITOR='nano'

# Set personal aliases
alias brewup="brew update && brew upgrade && brew cleanup; brew upgrade --cask; brew doctor"
alias brewrm="brew autoremove"

alias ll="ls -al"
alias refresh="source $HOME/.zshrc"

alias git="LANG=C git"
alias gitup="gfind . -maxdepth 8 -name '.git' -prune -type d -printf '%h\n' | parallel 'echo {} && git -C {} pull'"
alias gitg="git log --all --decorate --oneline --graph"
alias gitp="git log --pretty=format:'%C(yellow)%h %Cred%ad%Cgreen%d %Creset%s' --date=short --graph --all"
alias grsm='git reset $(git merge-base master $(git branch --show-current))'
alias gpb="git fetch -p && git branch -vv | grep gone | cut -d' ' -f 3 | grep . | xargs git branch -D"

# Spaceship prompt
source /opt/homebrew/opt/spaceship/spaceship.zsh

# ZSH syntax highlighting
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Zoxide
eval "$(zoxide init zsh)"

# direnv
eval "$(direnv hook zsh)"

# asdf
. /opt/homebrew/opt/asdf/libexec/asdf.sh

