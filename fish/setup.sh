#!/bin/bash

! type fish > /dev/null 2>&1 && echo "fish not found" && exit 127

ln -sf "$PWD/config.fish" "$HOME/.config/fish/config.fish"
ln -sf "$PWD/functions/fish_prompt.fish" "$HOME/.config/fish/functions/fish_prompt.fish"
