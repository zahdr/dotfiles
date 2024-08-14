#!/bin/bash

if [[ "$(command -v newsboat)" ]]; then
    mkdir -p "$HOME/.config/newsboat"
    ln -sf "$PWD/urls" "$HOME/.config/newsboat/urls"
    if [ "$(uname)" == "Darwin" ]; then
        ln -sf "$PWD/config_mac" "$HOME/.config/newsboat/config"
    elif [ "$(uname)" == "Linux" ]; then
        ln -sf "$PWD/config_linux" "$HOME/.config/newsboat/config"
    fi
    echo "Created and linked config for newsboat"
else
    echo "WARNING! Could not find 'newsboat'"
fi
