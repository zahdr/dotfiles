#!/bin/bash

! type nvim > /dev/null 2>&1 && echo "nvim not found" && exit 127


if [[ ! -L "$HOME/.config/nvim/after" ]]; then
    ln -sf "$PWD/after" "$HOME/.config/nvim/after"
fi

if [[ ! -L "$HOME/.config/nvim/lua" ]]; then
    ln -sf "$PWD/lua" "$HOME/.config/nvim/lua"
fi

ln -sf "$PWD/init.lua" "$HOME/.config/nvim/init.lua"
