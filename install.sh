echo "//////////////////////minimal install ubuntu//////////////////////"
sudo apt install kde-plasma-desktop latte-dock zsh timeshift konsole sddm ark zip unzip dotnet-sdk-8.0 flameshot transmission krita neofetch elisa ffmpeg lame flatpak network-manager pulseaudio-module-bluetooth plasma-nm dolphin wireguard inkscape libreoffice -y

#sudo apt purge kwrite konqueror kwalletmanager plasma-discover plasma-discover-common snapd
sudo apt purge snapd -y
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
git clone https://github.com/semichuk/linux-icon-theme.git
git clone https://github.com/semichuk/linux-cursors.git
git clone https://github.com/semichuk/kde-rounded-corners.git
git clone https://github.com/semichuk/kde-plasma-active-application.git
git clone https://github.com/semichuk/WhiteSur-kde.git
git clone https://github.com/semichuk/minimal-install-terminal.git

sudo bash linux-icon-theme/install.sh -b
sudo bash linux-cursor/install.sh
plasmapkg2 -i kde-plasma-active-application
sudo bash WhiteSur-kde/install.sh -w sharp
sudo apt install git cmake g++ extra-cmake-modules kwin-dev libkf5configwidgets-dev -y
cd kde-rounded-corners
mkdir build
cd build
cmake ..
cmake --build . -j
sudo make install
cd ..
cd ..
cd minimal-install-terminal/
sudo bash install.sh
echo "//////////////////////installation is finished//////////////////////"
