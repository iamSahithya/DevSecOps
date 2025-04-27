#!/bin/bash

if [ "$(id -un)" ne 0 ]; then 
  echo "Switch to root user to create user"
  exit 1
fi

read -p "Enter home directory:" home_directory
read -p "Enter user name:" user_name
read -p "Enter group:" group
useradd -m -d "$home_directory" -g "$group" "$user_name"
passwd "$user_name"
chmod 750 "$home_directory"
echo "user $user_name is created successfully"

