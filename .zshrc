#zsh_config

setopt correct
setopt auto_cd

#alias

alias vconf="vim $HOME/.config/nvim"
alias tconf="vim $HOME/.tmux.conf"
alias solitair="Downloads/AisleRiot-Solitaire_3.22.33-1-archimage3.4.4-2-x86_64.AppImage"
alias tidal="$HOME/bin/tidal-hifi-5.9.0.AppImage"
alias vim="$HOME/bin/nvim.appimage"
alias videdit="$HOME/bin/OpenShot-v3.1.1-x86_64.AppImage"
alias 42_formatter="python3 -m c_formatter_42"
alias normer="norminette | grep "Error:""
alias normnum="norminette | grep "Error" | wc -l" 

#path_config

path=(
    $path
    /home/mloureir/bin
    /home/mloureir/bin/starship
    /home/mloureir/goinfre/homebrew/bin
)

#starship

eval "$(starship init zsh)"


