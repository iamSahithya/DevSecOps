#!/bin/bash

auto_update(){
  apt update -y
  apt upgrade -y
  apt full-upgrade -y
  apt autoremove -y
  apt clean
}
if [ -f /var/run/reboot-required ]; then 
  echo "reboot is required"
  reboot
else
  echo "reboot not required"
fi
