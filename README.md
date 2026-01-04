# chezmoi


# TODO

sudo systemctl enable --now greetd


`/etc/greetd/config.toml`:
```bash
[terminal]
# The VT to run the greeter on. Can be "next", "current" or a number
# designating the VT.
vt = 1

# The default session, also known as the greeter.
[default_session]

# `agreety` is the bundled agetty/login-lookalike. You can replace `/bin/sh`
# with whatever you want started, such as `sway`.
command = "tuigreet --cmd start-hyprland"

# The user to run the command as. The privileges this user must have depends
# on the greeter. A graphical greeter may for example require the user to be
# in the `video` group.
user = "greeter"
```




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

