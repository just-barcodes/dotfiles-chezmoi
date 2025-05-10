# chezmoi

## For completely new installation

1. Update system: `sudo apt-get update && sudo apt-get upgrade`
2. Install common/required packages: packages.txt
3. Set up ssh keys
4. Run this command to install chezmoi and dotfiles: `sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply git@github.com:just-barcodes/dotfiles-chezmoi.git`


## KDE config files

### Hardware
- Input Devices
    - Keyboard
        - Layouts
            - .config/kxkbrc

