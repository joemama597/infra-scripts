#install ubuntu desktop 23.10.1
if (test -s ubuntu-22.04-desktop-amd64.iso )
then
  echo "ubuntu already downloaded"
else
  echo "downloading ubuntu 22.04 desktop"
  curl -OLJ https://old-releases.ubuntu.com/releases/22.04/ubuntu-22.04-desktop-amd64.iso
fi

sudo dd if=ubuntu-22.04-desktop-amd64.iso of=/dev/$(lsblk | grep -B1 'media/joe' | head -n 1 | awk '{ print $1 }') bs=1M status=progress
