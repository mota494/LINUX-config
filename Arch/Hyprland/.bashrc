# ~/.bashrc
#

# If not running interactively, don't do anything
source /etc/profile.d/debuginfod.sh

[[ $- != *i* ]] && return

#alias

alias vconf="vim $HOME/.config/nvim"
alias vim="nvim"

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

eval "$(starship init bash)"

