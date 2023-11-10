echo "//////////////////////minimal install ubuntu//////////////////////"
#put in /home/ki/.local/share/plasma/look-and-feel/com.github.vinceliuice.WhiteSur-dark/
sudo apt install kde-plasma-desktop latte-dock zsh timeshift konsole sddm ark zip unzip dotnet-sdk-6.0 flameshot transmission krita neofetch
sudo apt purge kwrite konqueror kwalletmanager plasma-discover plasma-discover-common snapd
sh -c "$(wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
echo "//////////////////////installation is finished//////////////////////"