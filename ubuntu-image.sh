#install ubuntu desktop 23.10.1
if (test -s ubuntu-23.10.1-desktop-amd64.iso )
then
  echo "ubuntu already downloaded"
else
  echo "installing ubuntu 23.10.1 desktop"
  curl -OLJ https://releases.ubuntu.com/23.10.1/ubuntu-23.10.1-desktop-amd64.iso
fi
