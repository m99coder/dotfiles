# add zsh profiler
# zmodload zsh/zprof

# direnv
eval "$(direnv hook zsh)"

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

# oh-my-zsh
# see: https://github.com/ahmetb/kubectx/issues/157#issuecomment-1287588271
FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"

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

# Kubernetes
[[ $commands[kubectl] ]] || source <(kubectl completion zsh)

# AWS
export AWS_PROFILE=production

function awsctx() {
  if [ -z "$1" ]; then
    profile=$(aws configure list-profiles | fzf)
    if [[ $profile != "" ]]; then
      export AWS_PROFILE=$profile
    fi
  else
    export AWS_PROFILE=$1
  fi
  echo -e "\033[32m$AWS_PROFILE\033[0m selected"
}

# Spaceship prompt
source $(brew --prefix)/opt/spaceship/spaceship.zsh

# ZSH syntax highlighting
# alternatively use this: https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/INSTALL.md#oh-my-zsh
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Zoxide
eval "$(zoxide init zsh)"

# asdf
. $(brew --prefix)/opt/asdf/libexec/asdf.sh

# run zsh profiler
# zprof
