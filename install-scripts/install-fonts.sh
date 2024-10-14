#!/bin/bash

set -e

echo ""
echo "--------"
echo "Trying to install fonts..."
if [[ "$(uname)" == "Darwin" ]]; then
    echo "Downloading Hack Nerd Font font..."
    brew install --cask font-hack-nerd-font
else
    echo "Downloading Hack Nerd Font font..."
    mkdir -p /tmp/HackNerdFont
    wget -q https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/Hack.zip -P /tmp/HackNerdFont
    unzip -oqq /tmp/HackNerdFont/UbuntuMono.zip -d /tmp/HackNerdFont
    echo "INFO! Need sudo to install fonts"
    sudo mkdir -p /usr/local/share/fonts
    sudo mv /tmp/HackNerdFont/*.ttf /usr/local/share/fonts
    rm -rf /tmp/HackNerdFont
    sudo fc-cache -f
fi
echo "Hack Nerd Font was installed"
