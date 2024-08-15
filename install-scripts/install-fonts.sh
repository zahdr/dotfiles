#!/bin/bash

set -e

echo ""
echo "--------"
echo "Trying to install fonts..."
if [[ "$(uname)" == "Darwin" ]]; then
    echo "Downloading UbuntuMono font..."
    brew install --cask font-ubuntu-mono-nerd-font
else
    echo "Downloading UbuntuMono font..."
    mkdir -p /tmp/UbuntuMono
    wget -q https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/UbuntuMono.zip -P /tmp/UbuntuMono
    unzip -oqq /tmp/UbuntuMono/UbuntuMono.zip -d /tmp/UbuntuMono
    echo "INFO! Need sudo to install fonts"
    sudo mkdir -p /usr/local/share/fonts
    sudo mv /tmp/UbuntuMono/*.ttf /usr/local/share/fonts
    rm -rf /tmp/UbuntuMono
    sudo fc-cache -f
fi
echo "UbuntuMono was installed"
