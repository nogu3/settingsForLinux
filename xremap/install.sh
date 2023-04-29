# deploy
cp -p xremap /usr/local/bin/
mkdir -p /usr/local/etc/xremap
cp -p config.yml /usr/local/etc/xremap/

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