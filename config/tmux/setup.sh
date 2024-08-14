#!/bin/bash

if [[ "$(command -v tmux)" ]]; then
    ln -sf "$PWD/tmux.conf" "$HOME/.tmux.conf"
    echo "Created and linked config for tmux"
else
    echo "WARNING! Could not find 'tmux'"
fi
