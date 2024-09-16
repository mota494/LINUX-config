#Deletes old files and creates new folders for necessary files

rm -r $HOME/bin
mkdir $HOME/bin
rm $HOME/.config/starship.toml
rm -r $HOME/.config/nvim

#Moves the contents to the correct folder and installs all the appimages necessary

mv nvim $HOME/.config
mv starship.toml $HOME/.config
if [ -f $HOME/.zshrc ]; then
	cat .zshrc >> $HOME/.zshrc
else
	echo mv .zshrc $HOME
fi
cd $HOME/bin
wget https://github.com/neovim/neovim/releases/download/v0.9.5/nvim.appimage
chmod +777 nvim.appimage
wget https://github.com/Mastermindzh/tidal-hifi/releases/download/5.9.0/tidal-hifi-5.9.0.AppImage
chmod +777 tidal-hifi-5.9.0.AppImage
wget https://github.com/OpenShot/openshot-qt/releases/download/v3.1.1/OpenShot-v3.1.1-x86_64.AppImage
chmod +777 OpenShot-v3.1.1-x86_64.AppImage
curl -sS https://starship.rs/install.sh | sh -s -- -b $HOME/bin
