#zsh_config

setopt CORRECT 
setopt AUTO_CD #no need to type cd to go to a directory
setopt COMPLETE_ALIASES #Prevents aliases on the command line from being internally substituted
setopt APPEND_HISTORY #multiple ZSH sessions have the same history
setopt C_BASES #Output hexadecimal numbers in the standard C format

#alias

alias vconf="vim $HOME/.config/nvim"
alias tidal="$HOME/bin/tidal-hifi-5.9.0.AppImage"
alias vim="$HOME/bin/nvim.appimage"
alias videdit="$HOME/bin/OpenShot-v3.1.1-x86_64.AppImage"

#path_config

path=(
    $path
    $HOME/bin
    $HOME/bin/starship
)

#starship

eval "$(starship init zsh)"


