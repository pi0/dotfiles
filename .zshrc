ZSH=$HOME/.oh-my-zsh
ZSH_THEME="pygmalion"
ZSH_DISABLE_COMPFIX="true"
#DISABLE_AUTO_UPDATE="true"
COMPLETION_WAITING_DOTS="true"
DISABLE_UNTRACKED_FILES_DIRTY="true"

# https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/
plugins=(git tmux sudo extract docker brew colorize command-not-found cp encode64 gh git-auto-fetch rsync)

# Workaround for https://github.com/ohmyzsh/ohmyzsh/issues/12328
zstyle ':omz:alpha:lib:git' async-prompt no

source $ZSH/oh-my-zsh.sh

# Environment
export EDITOR=vi
export LC_ALL=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8

# Aliases
alias s2="sudo -E $SHELL"
alias apti="sudo apt install -y"
alias aptu="sudo apt update"
alias aptdu="sudo apt dist-upgrade"
alias grep=grep --color=auto
alias ducks='du -ckhs * | sort -rn | head'
alias setclip='xclip -selection c'
alias getclip='xclip -selection clipboard -o'
alias dl="aria2c"
alias g="git"
alias dcc="docker-compose"
alias p="pnpm"
alias b="bun"
alias sudo='sudo ' # Enable aliases to be sudo’ed
