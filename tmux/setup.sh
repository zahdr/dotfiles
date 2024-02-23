#!/bin/bash

! type tmux > /dev/null 2>&1 && echo "tmux not found" && exit 127

ln -sf "$PWD/.tmux.conf" "$HOME/.tmux.conf"

# if [ "$(uname)" == "Darwin" ]; then
# 	ln -sf "$PWD/.tmux.conf" "$HOME/.tmux.config"
# elif [ "$(uname)" == "Linux" ]; then
# 	ln -sf "$PWD/.tmux.conf" "$HOME/.tmux.conf"
# else
# 	echo "error in linking tmux files"
# fi
