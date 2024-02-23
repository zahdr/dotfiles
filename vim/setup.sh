#!/bin/bash

! type vim > /dev/null 2>&1 && echo "vim not found" && exit 127

if [ "$(uname)" == "Darwin" ]; then
	ln -sf "$PWD/.vimrc_xterm" "$HOME/.vimrc"
elif [ "$(uname)" == "Linux" ]; then
	ln -sf "$PWD/.vimrc_kitty" "$HOME/.vimrc"
else
	echo "error in linking vim files"
fi
