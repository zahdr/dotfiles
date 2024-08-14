#!/bin/bash

if [[ "$(command -v fish)" ]]; then
    mkdir -p "$HOME/.config/fish/functions"
    ln -sf "$PWD/config.fish" "$HOME/.config/fish/config.fish"
    ln -sf "$PWD/functions/fish_prompt.fish" "$HOME/.config/fish/functions/fish_prompt.fish"
    echo "Created and linked config for fish"
else
    echo "WARNING! Could not find 'fish'"
fi
