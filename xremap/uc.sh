# This is update config for xremap.
systemctl stop xremap

cp -pf config.yml /usr/local/etc/xremap/

systemctl start xremap

systemctl status xremap