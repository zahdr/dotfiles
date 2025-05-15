#!/bin/bash

if [[ "$(command -v nvim)" ]]; then
    rm -rf "$HOME/.config/nvim"
    rm -rf "$HOME/.local/share/nvim"
    mkdir -p "$HOME/.config/nvim"
    ln -sf "$PWD/init.lua" "$HOME/.config/nvim/init.lua"
    ln -sf "$PWD/lua" "$HOME/.config/nvim/lua"
    echo "Created and linked config for nvim"
else
    echo "WARNING! Could not find 'nvim'"
fi
