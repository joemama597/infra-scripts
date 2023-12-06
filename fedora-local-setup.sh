echo "Configuring local fedora system..."
 
if (test $(dnf check-update | wc -l) = 1)
then
  echo "no system updates available"
else
  echo "upgrading system"
  sudo dnf upgrade -y
fi

if (stat $HOME/.ssh/id_ed25519 >/dev/null)
then
  echo "ssh key already exist"
else
  echo "creating ssh keypair"
  ssh-keygen -t ed25519 -f $HOME/.ssh/id_ed25519 -N '' <<< y
fi

if (boxes -v >/dev/null)
then
  echo "boxes already installed"
else
  echo "installing boxes"
  sudo dnf install boxes -y
fi 
