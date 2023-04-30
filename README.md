# settingsForLinux
This repository is Ubuntu settings.

## install
### utility
```shell
sudo apt install -y git
sudo apt install -y wget
sudo apt install -y mozc-utils-gui
```

### terminator
1. install
    ```shell
    sudo apt install -y terminator
    ```
2. be a quake
    ```
    https://qiita.com/SUZUKI_Masaya/items/ddc9bcfaf6b09708fe32
    ```
3. theme change iceberg
    ```
    https://qiita.com/hisw/items/e6b1fd665a2c648a6cb7
    ```

### xremaphttps://jp.moyens.net/android/197333/
```shell
chmod 764 ./xremap/install.sh
sudo sh ./xremap/install.sh
```

## Remove default key shortcut
```shell
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-down "['']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-up "['']"
```

## hide dock sidebar
https://jp.moyens.net/android/197333/

## Todo
- [Done]xremap to service
- terminal working ctrl + c, x ,v
- [Done]github push settings
- [Done]finger print login
- secure lock unlock(keysore rpool)
- ssh wsl on windows
- [Done]terminal theme setting
