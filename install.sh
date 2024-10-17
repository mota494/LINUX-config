#Deletes old files and creates new folders for necessary files

rm -r $HOME/bin
mkdir $HOME/bin
rm $HOME/.config/starship.toml
rm -r $HOME/.config/nvim

#Moves the contents to the correct folder and installs all the appimages necessary

mv nvim $HOME/.config
mv starship.toml $HOME/.config

if [ -f $HOME/.zshrc ]; then
	cp $HOME/.zshrc $HOME/.oldzshrc
	mv .zshrc $HOME
else
	mv .zshrc $HOME
fi

git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim
cd $HOME/bin
wget https://github.com/neovim/neovim/releases/download/v0.9.5/nvim.appimage
chmod +777 nvim.appimage
wget https://github.com/Mastermindzh/tidal-hifi/releases/download/5.9.0/tidal-hifi-5.9.0.AppImage
chmod +777 tidal-hifi-5.9.0.AppImage
curl -sS https://starship.rs/install.sh | sh -s -- -b $HOME/bin
