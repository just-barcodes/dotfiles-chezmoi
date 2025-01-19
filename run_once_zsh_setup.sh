#!/bin/bash


if [ $USER = 'vscode' ]; then

    if ! command -v zsh 2>&1 >/dev/null
    then
        sudo apt-get update && sudo apt-get install -y zsh fonts-powerline
    fi

    # use vscode user setting instead
    # sudo chsh -s $(which zsh)

    # alternative for fonts-powerline:
    # git clone https://github.com/powerline/fonts.git --depth=1
    # cd fonts
    # ./install.sh
    # cd ..
    # rm -rf fonts
fi


if [ ! -d "${HOME}/.oh-my-zsh/" ]; then
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

    # alternative:
    # sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
else
    echo "Skipping oh-my-zsh installation ('$HOME.oh-my-zsh/' already exists)"
fi

