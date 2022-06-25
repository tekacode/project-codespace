export ZSH="/root/.oh-my-zsh"
ZSH_THEME="cloud"
source $ZSH/oh-my-zsh.sh

# --------------------------
# TEKALEGN's ALIASES 
# --------------------------
# use nvim instead of vim
alias vim="nvim"
# go to last working dirctory
alias pd="cd $OLDPWD"

alias c='clear'
alias e='exit'
alias v='vim'
alias f='vifm .'

alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ......="cd ../../../../.."
alias .......="cd ../../../../../.."

alias python='python3'

alias mysql='mysql -u root -p'
