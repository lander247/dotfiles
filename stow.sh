#!/bin/sh

# Make sure folder locations used in stowing exist to prevent undesired sym-linking
local_folder="$HOME/.local"
local_bin_folder="$HOME/.local/bin"
share_folder="$HOME/.local/share"
mkdir "$local_folder"
mkdir "$local_bin_folder"
mkdir "$share_folder"

stow --verbose --dotfiles --restow --target="$HOME" .
