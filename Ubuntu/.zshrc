#Release V1.1
#zsh_config

setopt correct
setopt auto_cd

#alias

alias vconf="vim $HOME/.config/nvim"
alias tidal="$HOME/bin/tidal-hifi-5.9.0.AppImage --no-sandbox"
alias vim="$HOME/bin/nvim.appimage"
alias obsidian="$HOME/bin/Obsidian-1.7.7.AppImage --no-sandbox"
alias kitty="sh $HOME/bin/open_kitty.sh"

#path_config

path=(
    $path
    $HOME/bin
    $HOME/bin/starship
    $HOME/sgoinfre/homebrew/bin
)

#starship

eval "$(starship init zsh)"
