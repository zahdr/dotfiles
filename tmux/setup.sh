#!/bin/bash

! type tmux > /dev/null 2>&1 && echo "tmux not found" && exit 127

ln -sf "$PWD/.tmux.conf" "$HOME/.tmux.conf"

