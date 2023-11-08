echo "//////////////////////minimal install ubuntu//////////////////////"
sudo apt install kde-plasma-desktop latte-dock zsh timeshift konsole sddm ark zip unzip
sudo apt purge kwrite konqueror kwalletmanager plasma-discover plasma-discover-common snapd
sh -c "$(wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
wget https://github.com/dracula/konsole/archive/master.zip
unzip  master.zip 
cd konsole-master
cp Dracula.colorscheme ~/.local/share/konsole
echo "//////////////////////installation is finished//////////////////////"