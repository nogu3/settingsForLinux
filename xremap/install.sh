# FYI
# https://symfoware.blog.fc2.com/blog-entry-2677.html

# download binary
wget https://github.com/k0kubun/xremap/releases/download/v0.8.5/xremap-linux-x86_64-gnome.zip
unzip xremap-linux-x86_64-gnome.zip
rm xremap-linux-x86_64-gnome.zip

# deploy
mv -f xremap /usr/local/bin/
mkdir -p /usr/local/etc/xremap
cp -pf config.yml /usr/local/etc/xremap/

# create service
cat - << EOS > /etc/systemd/system/xremap.service
[Unit]
Description = xremap daemon

[Service]
ExecStart = /usr/local/bin/xremap /usr/local/etc/xremap/config.yml
Restart = always
Type = simple

[Install]
WantedBy = multi-user.target
EOS

systemctl list-unit-files --type=service | grep xremap

# service enable auto start
systemctl enable xremap 

# start service
systemctl start xremap

# confirm service status
systemctl status xremap