#!/bin/bash


if [[ $USER = @('vscode'|'node') ]]; then

    if ! command -v zsh 2>&1 >/dev/null
    then
        sudo apt-get update && sudo apt-get install -y zsh fonts-powerline
    fi

    curl -sS https://starship.rs/install.sh | sh -s -- -y

    # alternative for fonts-powerline:
    # git clone https://github.com/powerline/fonts.git --depth=1
    # cd fonts
    # ./install.sh
    # cd ..
    # rm -rf fonts
fi


if [ ! -d "${HOME}/.oh-my-zsh/" ]; then
    if command -v curl 2>&1 >/dev/null
    then
        sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
    elif command -v wget 2>&1 >/dev/null
    then
        sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
    else
        echo "ERROR: Need curl or wget installed"
    fi
else
    echo "Skipping oh-my-zsh installation ('$HOME.oh-my-zsh/' already exists)"
fi

