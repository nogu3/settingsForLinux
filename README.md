# settingsForLinux
This repository is Ubuntu settings.

# install utility
```shell
sudo apt install -y git
sudo apt install -y mozc-utils-gui
```

# remove default key shortcut
```shell
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-down "['']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-up "['']"
```

# todo
- xremap to service
- terminal working ctrl + c, x ,v
- github push settings
- finger print login
- secure lock unlock
- ssh wsl on windows
- terminal theme setting
