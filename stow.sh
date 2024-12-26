#!/bin/sh

# Make folder locations used in stowing to prevent sym-linking
local_folder="$HOME/.local"
bin_folder="$HOME/.local/bin"
mkdir "$local_folder"
mkdir "$bin_folder"

stow --verbose --dotfiles --restow --target="$HOME" .
