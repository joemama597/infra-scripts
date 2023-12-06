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

if (git config --get --global user.email | grep 'thecoolfoe11@gmail.com')
then
  echo "git config email already set to thecoolfoe11@gmail.com"
else
  echo "setting git user.email to thecoolfoe11@gmail.com"
  git config --global user.email "thecoolfoe11@gmail.com"
fi

if (git config --get --global user.name | grep 'Joseph Hernandez')
then
  echo "git config username already set to Joseph Hernandez"
else
  echo "setting username to Joseph Hernandez"
  git config --global user.name "Joseph Hernandez"
fi


if (boxes -v >/dev/null)
then
  echo "boxes already installed"
else
  echo "installing boxes"
  sudo dnf install boxes -y
fi 
