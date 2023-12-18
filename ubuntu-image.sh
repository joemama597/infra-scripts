#install ubuntu desktop 23.10.1
if (test -s ubuntu-23.10.1-desktop-amd64.iso )
then
  echo "ubuntu already downloaded"
else
  echo "downloading ubuntu 23.10.1 desktop"
  curl -OLJ https://releases.ubuntu.com/23.10.1/ubuntu-23.10.1-desktop-amd64.iso
fi

sudo dd if=ubuntu-23.10.1-desktop-amd64.iso of=/dev/$(lsblk | grep -B1 'media/joe' | head -n 1 | awk '{ print $1 }') bs=1M status=progress
