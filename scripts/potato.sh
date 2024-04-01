curl -OJL https://distro.libre.computer/ci/ubuntu/22.04/ubuntu-22.04.3-preinstalled-server-arm64%2Baml-s905x-cc.img.xz

sudo apt install -y nmap

# get gateway
ip r

scp scripts/docker.sh joe@192.168.1.230:~/ && ssh joe@192.168.1.230
