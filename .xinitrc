#!/bin/sh

# Source .xprofile
[ -f ~/.xprofile ] && . ~/.xprofile

dwmblocks &
dbus-update-activation-environment --all
dbus-launch ssh-agent dwm
