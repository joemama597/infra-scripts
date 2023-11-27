
if (multipass version)
then
  echo "multipass already installed"
else
  echo "installing multipass"
  sudo snap install multipass
  sleep 2
fi

multipass launch --name minecraft -c 2 -m 4G
multipass transfer minecraft.sh minecraft:. && multipass shell minecraft
