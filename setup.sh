#!/bin/bash

set -e 

if [[ ":$PATH:" != *":$HOME/scripts:"* ]]; then
	export PATH="$PATH:$HOME/scripts"
fi

if [[ ":$PATH:" != *":$HOME/bin:"* ]]; then
	export PATH="$PATH:$HOME/bin"
fi

if [[ ! -L "$HOME/scripts" ]]; then
    ln -sf "$PWD/scripts" "$HOME/scripts"
fi

for i in fish i3 newsboat nvim tmux vim ; do
	cd $i && ./setup.sh
	cd ..
done

