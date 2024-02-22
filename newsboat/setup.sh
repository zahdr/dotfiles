#!/bin/bash

! type newsboat > /dev/null 2>&1 && echo "newsboat not found" && exit 127

if [ "$(uname)" == "Darwin" ]; then
	ln -sf "$PWD/config_mac" "$HOME/.newsboat/config"
	ln -sf "$PWD/urls" "$HOME/.newsboat/config"
elif [ "$(uname)" == "Linux" ]; then
	ln -sf "$PWD/config_linux" "$HOME/.config/newsboat/config"
	ln -sf "$PWD/urls" "$HOME/.config/newsboat/urls"
else
	echo "error in linking newsboat files"
fi
