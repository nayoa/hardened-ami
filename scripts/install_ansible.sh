#!/bin/sh

# Update the OS to begin with to catch up on the latest packages.
sudo apt-get update -y

# Install necessary packages
sudo apt-get install software-properties-common -y
sudo apt-add-repository --yes --update ppa:ansible/ansible
sudo apt-get install ansible -y