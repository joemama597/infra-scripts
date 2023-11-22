#!/bin/bash

# A script to install and configure nginx webserver

if (curl --version >> infra.log)
then
  echo "curl already installed"
else
  echo "installing curl"
  sudo apt install -y curl
fi

if (apt list openssh-server | grep installed >> infra.log)
then
  echo "openssh-server already installed"
else
  echo "installing openssh-server"
  sudo apt install -y openssh-server
fi

if (git --version >> infra.log)
then
  echo "git already installed"
else
  echo "installing git"
  sudo apt install -y git
fi

if (htop --version >> infra.log)
then
  echo "htop already installed"
else
  echo "installing htop"
  sudo apt install -y htop
fi

# create ssh key
git config --global user.email "thecoolfoe11@gmail.com"
git config --global user.name "Joseph Hernandez"
# install hypervisor (multipass)
