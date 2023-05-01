# FYI
# https://zenn.dev/nemuki/articles/fd159fa428944a6a4e80

apt remove -y fprintd
add-apt-repository ppa:uunicorn/open-fprintd
apt-get update
apt install -y open-fprintd fprintd-clients python3-validity
fprintd-enroll

# open settings
# fingerprint login select
# add any fingerprint