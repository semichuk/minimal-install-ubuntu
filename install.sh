echo "//////////////////////minimal install ubuntu//////////////////////"
sudo apt install kde-plasma-desktop latte-dock zsh timeshift konsole sddm ark zip unzip dotnet-sdk-8.0 flameshot transmission krita neofetch elisa ffmpeg lame flatpak network-manager pulseaudio-module-bluetooth plasma-nm dolphin wireguard inkscape libreoffice -y
#sudo apt purge kwrite konqueror kwalletmanager plasma-discover plasma-discover-common snapd
sudo apt purge snapd -y
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
git clone https://github.com/semichuk/linux-icon-theme.git
git clone https://github.com/semichuk/linux-cursors.git
git clone https://github.com/semichuk/kde-rounded-corners.git
git clone https://github.com/semichuk/WhiteSur-kde.git
git clone https://github.com/semichuk/minimal-install-terminal.git
#install latte theme
mkdir /home/$USER/.config/latte/
sudo cp ki.layout.latte /home/$USER/.config/latte/Default.layout.latte
#install vscode
sudo apt-get install wget gpg
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -D -o root -g root -m 644 packages.microsoft.gpg /etc/apt/keyrings/packages.microsoft.gpg
echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" |sudo tee /etc/apt/sources.list.d/vscode.list > /dev/null
rm -f packages.microsoft.gpg
sudo apt install apt-transport-https
sudo apt update
sudo apt install code -y
#install docker
sudo apt-get update
sudo apt-get install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin -y
#install ki kde theme
sudo bash linux-icon-theme/install.sh -b
sudo bash linux-cursor/install.sh
plasmapkg2 -i plasma-active-application.plasmoid
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
cd minimal-install-terminal/
sudo bash install.sh
echo "//////////////////////installation is finished//////////////////////"
