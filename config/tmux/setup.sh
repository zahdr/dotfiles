#!/bin/bash

if [[ "$(command -v tmux)" ]]; then
    mkdir -p "$HOME/.config/tmux"
    ln -sf "$PWD/tmux.conf" "$HOME/.config/tmux/.tmux.conf"
    echo "Created and linked config for tmux"
else
    echo "WARNING! Could not find 'tmux'"
fi
