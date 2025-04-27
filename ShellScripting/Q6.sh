#!/bin/bash

software_list=("docker", "git" )

check_n_install(){
  for service in "${software_list[@]}"
  do
    if systemctl status "$service"; then
      echo "$service is present"
    else
      echo "$service is not present"
      sudo apt update
      sudo apt install "$service"

      sudo systemctl start "$service"
      sudo systemctl enable "$service"
    fi
  done
}

check_n_install
