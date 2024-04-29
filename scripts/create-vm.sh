# install hypervisor (multipass)
if (multipass --version >> infra.log)
then
  echo "multipass already installed"
else
  echo "installing multipass"
  sudo snap refresh snapd
  sudo snap install multipass
  sleep 5
fi

if (multipass version)
then
  echo "multipass already installed"
else
  echo "installing multipass"
  sudo snap install multipass
  sleep 2
fi

multipass launch --name $VM_NAME -c 4 -m 4G

multipass transfer -r scripts  $VM_NAME:
multipass transfer -r compose  $VM_NAME:

multipass shell $VM_NAME
