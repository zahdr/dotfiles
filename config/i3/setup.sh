#!/bin/bash

if [[ "$(command -v i3)" ]]; then
    mkdir -p "$HOME/.config/i3"
    ln -sf "$PWD/i3/i3.conf" "$HOME/.config/i3/config"
    echo "Created and linked config for i3"
else
    echo "WARNING! Could not find 'i3'"
fi

if [[ "$(command -v i3status)" ]]; then
    mkdir -p "$HOME/.config/i3status"
    ln -sf "$PWD/i3status/i3status.conf" "$HOME/.config/i3status/config"
    echo "Created and linked config for i3status"
else
    echo "WARNING! Could not find 'i3status'"
fi
