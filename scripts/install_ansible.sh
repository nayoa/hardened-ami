#!/bin/sh

set -e
set -x

# Non-interactive mode
sudo -s
export DEBIAN_FRONTEND=noninteractive
exit

# Update the OS to begin with to catch up on the latest packages.
sudo apt-get -y update
sudo apt-get -y upgrade

# Install necessary packages
sudo apt-get -y install software-properties-common
sudo apt-add-repository --yes --update ppa:ansible/ansible
sudo apt-get -y install ansible
