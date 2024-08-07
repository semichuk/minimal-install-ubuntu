echo "//////////////////////minimal install ubuntu//////////////////////"
#put in /home/ki/.local/share/plasma/look-and-feel/com.github.vinceliuice.WhiteSur-dark/
sudo apt install kde-plasma-desktop latte-dock zsh timeshift konsole sddm ark zip unzip dotnet-sdk-8.0 flameshot transmission krita neofetch elisa ffmpeg lame flatpak network-manager pulseaudio-module-bluetooth plasma-nm dolphin wireguard qt5-style-kvantum qt5-style-kvantum-themes
sudo apt purge kwrite konqueror kwalletmanager plasma-discover plasma-discover-common snapd
sh -c "$(wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
bash install-dock-theme.sh
echo "//////////////////////installation is finished//////////////////////"
