#!/bin/bash

# going to home folder
cd

# instaliing requirements
# i3
echo -e "\n\e[40mInstalling i3 window manager...\n"
sudo apt install i3

# polybar
echo -e "\n\e[40mInstalling polybar...\n"
sudo apt-get install cmake cmake-data libcairo2-dev libxcb1-dev libxcb-ewmh-dev libxcb-icccm4-dev libxcb-image0-dev libxcb-randr0-dev libxcb-util0-dev libxcb-xkb-dev pkg-config python-xcbgen xcb-proto libxcb-xrm-dev i3-wm libasound2-dev libmpdclient-dev libiw-dev libcurl4-openssl-dev libpulse-dev libxcb-composite0-dev xcb libxcb-ewmh2
git clone https://github.com/jaagr/polybar.git
cd polybar && ./build.sh
sudo apt install polybar
cd
install -Dm644 /usr/share/doc/polybar/config $HOME/.config/polybar/config

# mate-terminal
echo -e "\n\e[40mInstalling mate-terminal...\n"
sudo apt install mate-terminal

# compton
echo -e "\n\e[40mInstalling compton...\n"
sudo apt install compton

# feh
echo -e "\n\e[40mInstalling feh...\n"
sudo apt install feh
sudo apt install imagemagick
sudo apt install ffmpeg

# neofetch
echo -e "\n\e[40mInstalling neofetch...\n"
sudo apt install neofetch

# brave-browser
echo -e "\n\e[40mInstalling Dependencies for brave-browser...\n"
sudo apt install apt-transport-https curl
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main" | sudo tee /etc/apt/sources.list.d/brave-browser-release.list
echo -e "\n\e[40mUpdating packages...\n"
sudo apt update
echo -e "\n\e[40mInstalling brave-browser...\n"
sudo apt install brave-browser

# w3m
echo -e "\n\e[40mInstalling w3m...\n"
sudo apt install w3m

# i3-gaps
echo -e "\n\e[40mInstalling i3-gaps...\n"
sudo apt install i3-gaps

# ranger
echo -e "\n\e[40mInstalling ranger...\n"
sudo apt install ranger

# rofi
echo -e "\n\e[40mInstalling rofi...\n"
sudo apt install rofi

# wallset
echo -e "\n\e[40mInstalling wallset...\n"
git clone https://github.com/terroo/wallset
cd wallset
sudo bash install.sh
sudo ./install.sh --force #force installing
cd

# polybar-themes
echo -e "\n\e[40mInstalling polybar-themes...\n"
git clone --depth=1 https://github.com/adi1090x/polybar-themes.git
cd polybar-themes
chmod +x setup.sh
echo "vvvvvvvvvvvvvvvvvvvvv"
echo "Now choose option 1"
sleep 7
./setup.sh
cd

# zsh
echo -e "\n\e[40mInstalling zsh...\n"
sudo apt install zsh

# oh-my-zsh
echo -e "\n\e[40mInstalling oh-my-zsh...\n"
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
chsh -s $(which zsh)
