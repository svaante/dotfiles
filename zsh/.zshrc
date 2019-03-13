export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="robbyrussell"

plugins=(git vi-mode cp extract z)

source $ZSH/oh-my-zsh.sh
export SSH_KEY_PATH="~/.ssh/rsa_id"

set editing-mode vi
set blink-matching-paren on
bindkey -M viins 'jk' vi-cmd-mode

alias vim='mvim -v'
alias td=todo.sh
