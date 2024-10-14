#!/bin/bash

installRequirementsMac() {
    if [[ "$(uname)" == "Darwin" ]]; then
        /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    else
        echo "Skipping installation of Homebrew"
    fi
}

install() {
    if [[ "$(command -v pacman)" ]]; then
        echo "installing $1"
    elif [[ "$(command -v brew)" ]];then
        echo "installing mac"
    else
        echo "ERROR - could not finde suitable package manager"
    fi
}

main() {
    apps=(
        "firefox"
        "nvim"
        "docker"
        "alacritty"
    )
    installRequirementsMac
    for app in "${apps[@]}"; do
        install $app
    done
}

main
