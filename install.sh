#!/bin/sh

working_folder="$HOME/working"
git_folder="$HOME/Git"

# Install dependencies
sudo apt install \
  git \
  build-essential \
  libx11-dev \
  libxft-dev \
  libxinerama-dev \
  xorg \
  picom \
  xinput \
  xwallpaper \
  xclip \
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
  network-manager \
  imagemagick \
  ssh \
  macchanger

mkdir "$working_folder"
mkdir "$git_folder"

cd "$git_folder"

# TODO: Clone personal repos

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

echo "Done!"
