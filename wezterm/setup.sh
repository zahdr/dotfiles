#!/bin/bash

! type wezterm > /dev/null 2>&1 && echo "wezterm not found" && exit 127

mkdir -p "$HOME/.config/wezterm"

ln -sf "$PWD/.wezterm.lua" "$HOME/.config/wezterm/wezterm.lua"
