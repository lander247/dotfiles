#!/bin/sh

# Installs keepass

working_folder="$HOME/working"

mkdir "$working_folder"
cd "$working_folder"

keepass_version="$(curl --silent "https://api.github.com/repos/keepassxreboot/keepassxc/releases/latest" | grep -Po "(?<=\"tag_name\": \").*(?=\")")"
wget https://github.com/keepassxreboot/keepassxc/releases/latest/download/KeePassXC-"$keepass_version"-x86_64.appimage
chmod +x ./KeePassXC-"$keepass_version"-x86_64.appimage
sudo mv KeePassXC-"$keepass_version"-x86_64.appimage ~/.local/bin/keepassxc

rm -r "$working_folder"

echo "Done!"
