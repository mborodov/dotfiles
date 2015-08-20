#Base config
export ZSH=/home/mborodov/.oh-my-zsh

ZSH_THEME="agnoster"
DEFAULT_USER="mborodov"

plugins=(git)

# User configuration

export PATH="/home/mborodov/bin:/home/mborodov/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games"
source $ZSH/oh-my-zsh.sh

# User config

# History command
alias history='fc -l'
HISTFILE=~/.zsh_history
HISTSIZE=9999
SAVEHIST=9999
setopt extendedhistory

source ~/.aliases

