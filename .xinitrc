#!/bin/sh

# Source .xprofile
[ -f ~/.xprofile ] && . ~/.xprofile

dbus-update-activation-environment --all
dbus-launch ssh-agent dwm
