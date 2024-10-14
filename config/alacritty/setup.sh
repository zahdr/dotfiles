#!/bin/bash

if [[ "$(command -v alacritty)" ]]; then
    mkdir -p "$HOME/.config/alacritty"
    ln -sf "$PWD/alacritty.toml" "$HOME/.config/alacritty/alacritty.toml"
    ln -sf "$PWD/rose-pine.toml" "$HOME/.config/alacritty/rose-pine.toml"
    echo "Created and linked config for alacritty"
else
    echo "WARNING! Could not find 'alacritty'"
fi
