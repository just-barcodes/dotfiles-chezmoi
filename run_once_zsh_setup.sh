#!/bin/bash

if [ $USER = 'vscode' ]; then
    sudo apt-get install -y zsh fonts-powerline
    chsh -s $(which zsh)
fi

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# alternative:
# sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# alternative for fonts-powerline:
# git clone https://github.com/powerline/fonts.git --depth=1
# cd fonts
# ./install.sh
# cd ..
# rm -rf fonts

