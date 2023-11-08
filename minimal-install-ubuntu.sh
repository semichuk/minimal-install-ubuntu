echo "//////////////////////minimal install ubuntu//////////////////////"
sudo apt install kde-plasma-desktop latte-dock zsh timeshift konsole sddm ark zip unzip dotnet-sdk-6.0 flameshot transmission
sudo apt purge kwrite konqueror kwalletmanager plasma-discover plasma-discover-common snapd
sh -c "$(wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
echo "//////////////////////installation is finished//////////////////////"