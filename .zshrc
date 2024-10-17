#zsh_config

setopt correct
setopt auto_cd

#alias

alias vconf="vim $HOME/.config/nvim"
alias tconf="vim $HOME/.tmux.conf"
alias tidal="$HOME/bin/tidal-hifi-5.9.0.AppImage"
alias vim="$HOME/bin/nvim.appimage"
alias nvim="$HOME/bin/nvim.appimage"
alias zen="$HOME/sgoinfre/zen.linux-specific/zen/zen"
alias normer="norminette | grep "Error:""
alias normnum="norminette | grep "Error" | wc -l" 

#path_config

path=(
    $path
    $HOME/bin
    $HOME/bin/starship
    $HOME/sgoinfre/homebrew/bin
)

#starship

eval "$(starship init zsh)"


