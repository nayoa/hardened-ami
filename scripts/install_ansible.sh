#!/bin/sh

set -e
set -x

# Non-interactive mode
export DEBIAN_FRONTEND=noninteractive

# Update the OS to begin with to catch up on the latest packages.
sudo apt-get -y update
sudo -E apt-get -y upgrade

# Install necessary packages
sudo apt-get -y install software-properties-common
sudo apt-add-repository --yes --update ppa:ansible/ansible
sudo -E apt-get -y install ansible
