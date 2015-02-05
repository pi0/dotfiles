# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

#Disable auto update
DISABLE_AUTO_UPDATE=true

# Set name of the oh-my-zsh theme to load.
ZSH_THEME="pygmalion"

# Local bin
PATH=$PATH:~/bin

#Android SDK
PATH=$PATH:/opt/android_sdk/platform-tools:/opt/android_sdk/tools

# Command aliases
source $HOME/.aliases

# Environment variable exports
source $HOME/.exports

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Uncomment this to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Wine
 WINEARCH=win32

# Uncomment following line if you want to  shown in the command execution time stamp 
# in the history command output. The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|
# yyyy-mm-dd
# HIST_STAMPS="mm/dd/yyyy"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git github composer zsh_reload z tmux sudo jump catimg colorize colored-man command-not-found cp extract laravel4 laravel)

source $ZSH/oh-my-zsh.sh