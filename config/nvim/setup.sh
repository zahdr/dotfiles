#!/bin/bash

if [[ "$(command -v nvim)" ]]; then
    mkdir -p "$HOME/.config/nvim"
    ln -sf "$PWD/after" "$HOME/.config/nvim/after"
    ln -sf "$PWD/lua" "$HOME/.config/nvim/lua"
    ln -sf "$PWD/init.lua" "$HOME/.config/nvim/init.lua"
    echo "Created and linked config for nvim"
else
    echo "WARNING! Could not find 'nvim'"
fi
