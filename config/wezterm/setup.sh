#!/bin/bash

if [[ "$(command -v wezterm)" ]]; then
    mkdir -p "$HOME/.config/wezterm"
    ln -sf "$PWD/wezterm.lua" "$HOME/.config/wezterm/wezterm.lua"
    echo "Created and linked config for wezterm"
else
    echo "WARNING! Could not find 'wezterm'"
fi
