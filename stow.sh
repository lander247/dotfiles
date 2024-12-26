#!/bin/sh
local_folder="$HOME/.local"
bin_folder="$HOME/.local/bin"

mkdir "$local_folder"
mkdir "$bin_folder"

stow --verbose --dotfiles --restow --target="$HOME" .
