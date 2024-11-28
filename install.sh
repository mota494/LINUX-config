#Deletes old files and creates new folders for necessary files

rm -r $HOME/bin
mkdir $HOME/bin
rm $HOME/.config/starship.toml
rm -r $HOME/.config/nvim

#Moves the contents to the correct folder and installs all the appimages necessary

mv open_kitty.sh $HOME/bin
mv nvim $HOME/.config
mv starship.toml $HOME/.config

if [ -f $HOME/.zshrc ]; then
	cp $HOME/.zshrc $HOME/.oldzshrc
	mv .zshrc $HOME
else
	mv .zshrc $HOME
fi

cd $HOME/bin
wget https://github.com/neovim/neovim/releases/download/v0.9.5/nvim.appimage
chmod +777 nvim.appimage

while true; do
read -p "Do you want to install Tidal Hifi? (yes/no) " yn
case $yn in 
	yes )	wget https://github.com/Mastermindzh/tidal-hifi/releases/download/5.9.0/tidal-hifi-5.9.0.AppImage
		chmod +777 tidal-hifi-5.9.0.AppImage;
		break;;
	no ) echo the installation will proceed without tidal;
		break ;;
	* ) echo invalid response;;
esac
done

if [ -d $HOME/.vim ]; then
	if [ -d $HOME/.vim/plugin ]; then
		mv stdheader.vim $HOME/.vim/plugin
	else
		mkdir $HOME/.vim/plugin
		mv stdheader.vim $HOME/.vim/plugin
	fi
else
	mkdir $HOME/.vim
	mkdir $HOME/.vim/plugin
	mv stdheader.vim $HOME/.vim/plugin
fi

curl -L https://sw.kovidgoyal.net/kitty/installer.sh | sh /dev/stdin
curl -sS https://starship.rs/install.sh | sh -s -- -b $HOME/bin
