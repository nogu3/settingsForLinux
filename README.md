# settingsForLinux
This repository is Ubuntu settings.

## install
### vscode
1. download binary
    ```
    https://code.visualstudio.com/
    ```
1. install
    ```
    dpkg -i code_1.77.3-1681292746_amd64.deb
    ```

### utility
1. install
   ```shell
   sudo apt update
   sudo apt install -y git
   ```
1. git setup
   ```
   git config --global user.name <first-name>-<last-name>
   git config --global user.email <mailaddress>
   ```

### xremap
1. require tool install
    ```shell
    sudo apt install -y wget
    sudo apt install -y mozc-utils-gui
    ```
1. reboot. Because mozc-utils-gui is require.
1. ubuntu default short cut disabled.
   ```shell
   gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-down "['']"
   gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-up "['']"
   ```
1. change ubuntu shortcut
   1. Settings → Keyboard → View and Customize Shortcuts → Lock
   2. Lock press Ctrl + r
1. change vscode shortcut
   ```
   Add Cursor Above → Ctrl + Alt + Up
   Add Cursor Bellow → Ctrl + Alt + Down
   Copy Line Up → Shift + Alt + Up
   Copy Line Down →Shift + Alt + Down
   ```
1. run install.sh
   ```shell
   chmod 764 ./xremap/install.sh
   sudo sh ./xremap/install.sh
   ```

### markdown settings for vscode
change settings
#### markdown all inone
```
Order list → one
```
#### markdown
```
Previews Breasks → check
```

### finger print
install
```
cd fingerprint
sudo sh ./install.sh
```

## chrome
https://www.google.com/intl/ja_jp/chrome/

```shell
dpkg -i google-chrome-stable_current_amd64.deb
```

## hide dock sidebar
https://jp.moyens.net/android/197333/
```
Settings → Apprerance →　Auto-hide the Dock
```

### terminator
1. install
    ```shell
    sudo apt install -y terminator
    ```
1. be a guake
    https://qiita.com/SUZUKI_Masaya/items/ddc9bcfaf6b09708fe32
1. theme change iceberg
    https://qiita.com/hisw/items/e6b1fd665a2c648a6cb7

### ulauncher

```
sudo apt install -y ulauncher
```

`You might want to run 'apt --fix-broken install' to correct these.` is showed.
run after command.
```
sudo apt --fix-broken install
```

hotkey global settings.
https://github.com/Ulauncher/Ulauncher/wiki/Hotkey-In-Wayland

### two-finger prev next
firefox change mode wayland
https://fostips.com/enable-2-finger-swipe-back-forward-gesture-in-firefox-in-ubuntu/

## Todo
- [Done]xremap to service
- terminal working ctrl + c, x ,v
- [Done]github push settings
- [Done]finger print login
- [Done]secure lock unlock(keysore rpool)
- ssh wsl on windows
- [Done]terminal theme setting

## FYI
- analyze boot time
    ```
    systemd-analyze
    ```