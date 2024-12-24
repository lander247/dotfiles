#!/bin/sh

working_folder="$HOME/working"
git_folder="$HOME/Git"
bin_folder="$HOME/.local/bin"

# Install dependencies

sudo apt install \
  git \
  build-essential \
  libx11-dev \
  libxft-dev \
  libxinerama-dev \
  xorg \
  xinput \
  xwallpaper \
  xclip \
  dbus-x11 \
  picom \
  brightnessctl \
  flameshot \
  pulseaudio \
  stow 

# Install extra packages
# TODO: Make option for installing extra packages

sudo apt install \
  firefox-esr \
  pavucontrol \
  unzip \
  imagemagick \
  ssh \
  macchanger

mkdir "$working_folder"
mkdir "$git_folder"
mkdir "$bin_folder"

cd "$working_folder"
# TODO: Make option to pull these files only

# Install latest Neovim appimage

wget https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
chmod +x ./nvim.appimage
sudo mv nvim.appimage /usr/local/bin/nvim

# Install latest KeepassXC appimage

keepass_version="$(curl --silent "https://api.github.com/repos/keepassxreboot/keepassxc/releases/latest" | grep -Po "(?<=\"tag_name\": \").*(?=\")")"
wget https://github.com/keepassxreboot/keepassxc/releases/latest/download/KeePassXC-"$keepass_version"-x86_64.appimage
chmod +x ./KeePassXC-"$keepass_version"-x86_64.appimage
sudo mv KeePassXC-"$keepass_version"-x86_64.appimage ~/.local/bin/keepassxc

rm -r "$working_folder"


cd "$git_folder"

git clone https://github.com/lander247/dotfiles.git

git clone https://github.com/lander247/dwm.git

echo "Done!"
