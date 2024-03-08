#!/bin/bash

if (rpi-imager --version)
then
  echo "rpi imager already installed"
else
  echo "installing rpi-imager"
  sudo apt install -y  rpi-imager
fi
