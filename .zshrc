#zsh_config

setopt correct
setopt auto_cd

#alias

alias vconf="vim $HOME/.config/nvim"
alias tidal="$HOME/bin/tidal-hifi-5.9.0.AppImage"
alias vim="$HOME/bin/nvim.appimage"
alias videdit="$HOME/bin/OpenShot-v3.1.1-x86_64.AppImage"

#path_config

path=(
    $path
    /home/mloureir/bin
    /home/mloureir/bin/starship
)

#starship

eval "$(starship init zsh)"
