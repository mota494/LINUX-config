#Deletes old files and creates new folders for necessary files

echo "===========================// λ Installation has started λ //==========================="

rm -r $HOME/bin
mkdir $HOME/bin
rm $HOME/.config/starship.toml
rm -r $HOME/.config/nvim

#Moves the contents to the correct folder and installs all the appimages necessary

mv nvim $HOME/.config
mv open_kitty.sh $HOME/bin
mv starship.toml $HOME/.config

#Installs kitty terminal and starshi[

curl -L https://sw.kovidgoyal.net/kitty/installer.sh | sh /dev/stdin
curl -sS https://starship.rs/install.sh | sh -s -- -b $HOME/bin

#Checks if all the folders were created succefully and send all the files to them, if there's a folder that's needed and it doesn't exist it gets created

if [ -f $HOME/.zshrc ]; then
	cp $HOME/.zshrc $HOME/.oldzshrc
	mv .zshrc $HOME
else
	mv .zshrc $HOME
fi

if [ -f $HOME/.tmux.conf ]; then
	cp $HOME/.tmux.conf $HOME/.oldtmuxconf
	mv .tmux.conf $HOME
else
	mv .tmux.conf $HOME
fi

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

if [ -d $HOME/.config/kitty ]; then
	mv kitty.conf $HOME/.config/kitty
	mv kitty_wallpaper.png $HOME/.config/kitty
else
	mkdir $HOME/.config/kitty
	mv kitty.conf $HOME/.config/kitty
	mv kitty_wallpaper.png $HOME/.config/kitty
fi

#Installs every adition app like NVim, and Obsidian

cd $HOME/bin
wget https://github.com/neovim/neovim/releases/download/nightly/nvim-linux-x86_64.appimage
chmod +777 nvim-linux-x86_64.appimage

while true; do
read -p "Do you want to install Obsidian? (yes/no) λ " yn
case $yn in 
	yes )	wget https://github.com/obsidianmd/obsidian-releases/releases/download/v1.7.7/Obsidian-1.7.7.AppImage
		chmod +777 Obsidian-1.7.7.AppImage;
		break;;
	no ) echo The installation will proceed without Obsidian;
		break ;;
	* ) echo invalid response;;
esac
done

echo "===========================// λ Installation has ended λ //==========================="
