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
   sudo apt install -y neovim
   // require install appimage
   sudo apt install -y fuse
   sudo snap install jump
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
1. ubuntu default short cut(up and down) disabled.
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

### [deprecated]terminator
1. install
    ```shell
    sudo apt install -y terminator
    ```
1. be a guake
    https://qiita.com/SUZUKI_Masaya/items/ddc9bcfaf6b09708fe32
1. theme change iceberg
    https://qiita.com/hisw/items/e6b1fd665a2c648a6cb7

### alacritty
1. install
https://zenn.dev/shinnopo/articles/798398b1d87f62
1. remove shortcut ctrl + period
https://askubuntu.com/questions/1372781/new-ctrl-period-key-sequence-default-in-21-10

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

### two-finger prev next for firefox
firefox change mode wayland
https://fostips.com/enable-2-finger-swipe-back-forward-gesture-in-firefox-in-ubuntu/

### rdp client
https://gihyo.jp/admin/serial/01/ubuntu-recipe/0661

### change font
#### install tweaks
https://ciksiti.com/ja/chapters/1682-install-gnome-tweak-tools-on-ubuntu-20-04--linux-hint

#### install nerd font(Source Code Pro)
https://www.nerdfonts.com/font-downloads

### login shell change zsh 
1. install
```shell
sudo apt install zsh
```

1. change shell bash from zsh
```shell
chsh -s /bin/zsh
```

### Make Firefox look like Chrome
https://www.gigafree.org/firefox/materialfox/

### terminator working ctrl + c, v , .(dot)
1. add keybinding using vim
```
[keybindings]
  copy = <Control>c
  paste = <Control>v
  interrupt = <Control><period>
```

## Hide Top Bar
1. open Gnome Extension Manager
1. touch Browse
1. search "Hide Top Bar". click install.

## Todo
- [Done]xremap to service
- [Done]terminal working ctrl + c, x ,v
- [Done]github push settings
- [Done]finger print login
- [Done]secure lock unlock(keysore rpool)
- [Done]ssh wsl on windows
  - [Done]public key authentication
- [Done]terminal theme setting
- [Done]tailscale
  - Its amaging.
- [Done]ubuntu theme
  - https://www.youtube.com/watch?v=PO_1i_Uh9As&t=170s
- conky setup
  - conky is memory monitor. settings for required info only.
  - dont must
  - http://bluearth.cocolog-nifty.com/blog/2020/02/post-9e17f4.html
- change default brawser from firefox to chrome
  - Because: 
    - github authenticate isn't working.
    - chrome starts up quickly.
  - TODO:
    - setting not wayland native
    - To swipe two finger go and back
      - install libinput gesture
      - https://www.ohmyenter.com/trackpad-gestures-with-libinput-on-linux/
    - Failed.....
      - two swipe can not setting.
- To make PC startup faster.
- To uninstall unnecessary software.

### ssh command
file copy to windows
```
scp -P <port> . -i <source-path> id_rsa.pub <user-name>@<hostname>:<path(/C:/aaa/bbb/)>
```

## FYI
- analyze boot time
    ```
    systemd-analyze
    ```
