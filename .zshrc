# add zsh profiler
#zmodload zsh/zprof

# To load direnv
eval "$(direnv hook zsh)"

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/marco.lehmann/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
#ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git golang)

source $ZSH/oh-my-zsh.sh

# User configuration

# Appends every command to the history file once it is executed
setopt inc_append_history
# Reloads the history whenever you use it
setopt share_history
#unsetopt share_history
export HISTSIZE=10000000

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Use `nano` as default editor
export EDITOR='nano'

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# To update, upgrade and cleanup brew, upgrade casks and run doctor in one command
alias brewup="brew update && brew upgrade && brew cleanup; brew upgrade --cask; brew doctor"
alias brewrm="brew autoremove"

# To include directory entries whose names begin with a dot (.)
# To show results as list in long format
alias ll="ls -al"

# To refresh current terminal session after having changed this config file
alias refresh="source $HOME/.zshrc"

# To enforce English
alias git="LANG=C git"

# To update git repositories recursively up to 8 levels in the current directory in parallel
# requires running `brew install findutils parallel` before
#alias gitup="gfind . -maxdepth 8 -name '.git' -prune -type d -printf '%h\n' | parallel --eta 'echo {} && git -C {} pull'"
alias gitup="gfind . -maxdepth 8 -name '.git' -prune -type d -printf '%h\n' | parallel 'echo {} && git -C {} pull'"
alias gitg="git log --all --decorate --oneline --graph"
alias gitp="git log --pretty=format:'%C(yellow)%h %Cred%ad%Cgreen%d %Creset%s' --date=short --graph --all"
alias grsm='git reset $(git merge-base master $(git branch --show-current))'
alias gpb="git fetch -p && git branch -vv | grep gone | cut -d' ' -f 3 | grep . | xargs git branch -D"

# To print $PATH as a list
# `$` needs to be quoted to be substituted at execution time
alias pathls="tr ':' '\n' <<< \$PATH"

# To remove all orphaned Docker volumes
alias drov='docker volume rm $(docker volume ls -qf dangling=true)'
# To prune images, containers, networks, and volumes
alias dclean="docker system prune --volumes"
# To remove all dangling Docker images
alias drmi='docker rmi $(docker images -qf "dangling=true")'

# To provide more convenient commands for K8s
alias k="kubectl"
alias kc="kubectx"
alias kn="kubens"

# To enable alias substitution with `watch`
alias watch="watch "

# To configure Neovim
#export MYVIMRC=$XDG_CONFIG_HOME/nvim/init.lua
alias nv="nvim"

# To configure Go
# Regarding `GO111MODULE` see:
# https://dev.to/maelvls/why-is-go111module-everywhere-and-everything-about-go-modules-24k
# Since Go 1.13 `auto`
#   - behaves like GO111MODULE=on anywhere there is a `go.mod` OR
#     anywhere outside the GOPATH even if there is no `go.mod`
#   - behaves like GO111MODULE=off in the GOPATH with no `go.mod`
export GO111MODULE=auto
export GOPATH=$HOME/go
# Regarding `GOPRIVATE` see: https://stackoverflow.com/a/27501039
# Setting this avoids using the public servers to fetch the code and therefore enables
# private Github repos (together with this `~/.gitconfig` setting:
#     [url "ssh://git@github.com/"]
#        insteadOf = https://github.com/
export GOPRIVATE="github.com/m99coder"
export GOROOT=$(brew --prefix golang)/libexec

# To load Zsh syntax highlighting
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# To load kubectl auto completion
[[ $commands[kubectl] ]] && source <(kubectl completion zsh)
source ~/.minikube-completion

autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /opt/homebrew/bin/terraform terraform

# Spaceship prompt
source "/opt/homebrew/opt/spaceship/spaceship.zsh"

# Set $PATH
export PATH="/opt/homebrew/sbin:$PATH:$GOPATH/bin/:$GOROOT/bin"
export PATH="/opt/homebrew/opt/qt@5/bin:$PATH"

# To load Zoxide
eval "$(zoxide init zsh)"

# run zsh profiler
#zprof
