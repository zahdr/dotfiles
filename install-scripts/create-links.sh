#!/bin/bash

set -e

echo ""
echo "--------"
echo "Linking and creating configs for apps..."
cd "$HOME/dotfiles"
for dir in "$HOME/dotfiles/config"/*; do
    if [[ -d "$dir" ]]; then
        cd $dir
        ./setup.sh
        cd ..
    fi
done

echo ""
echo "Linking additional directories..."
ln -sfT "$HOME/dotfiles/scripts" "$HOME/scripts"
echo "Created and linked $HOME/scripts"
