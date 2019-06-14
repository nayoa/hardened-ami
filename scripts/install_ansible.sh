#!/bin/sh

# Update the OS to begin with to catch up on the latest packages.
sudo apt update -y
sudo apt upgrade -y

# Install necessary packages
sudo apt install software-properties-common -y
sudo apt-add-repository --yes --update ppa:ansible/ansible
sudo apt install ansible -y