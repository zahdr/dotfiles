#!/bin/bash

! type newsboat > /dev/null 2>&1 && echo "newsboat not found" && exit 127

mkdir -p "$HOME/.config/newsboat"

ln -sf "$PWD/urls" "$HOME/.config/newsboat/urls"

if [ "$(uname)" == "Darwin" ]; then
	ln -sf "$PWD/config_mac" "$HOME/.config/newsboat/config"
elif [ "$(uname)" == "Linux" ]; then
	ln -sf "$PWD/config_linux" "$HOME/.config/newsboat/config"
else
	echo "error in linking newsboat files"
fi
