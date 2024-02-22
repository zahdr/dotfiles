#!/bin/bash

! type vim > /dev/null 2>&1 && echo "vim not found" && exit 127

ln -sf "$PWD/.vimrc" "$HOME/.vimrc"
