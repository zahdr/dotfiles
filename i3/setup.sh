#!/bin/bash

! type i3 > /dev/null 2>&1 && echo "i3 not found" && exit 127
! type i3status > /dev/null 2>&1 && echo "i3status not found" && exit 127

mkdir -p "$HOME/.config/i3"
mkdir -p "$HOME/.config/i3status"

ln -sf "$PWD/i3/config" "$HOME/.config/i3/config"
ln -sf "$PWD/i3status/config" "$HOME/.config/i3status/config"
