#!/bin/bash

if [ $(uname -s) != "Linux" ]; then
  echo "Sorry, this script is made for Linux systems only"
  exit -1
fi

if [ -z $(which apt-get) ]; then
  echo "This script requires apt-get package manager to be present"
  exit -1
fi

sudo apt-get update
sudo apt-get install aptitude -y

sudo add-apt-repository ppa:webupd8team/java
sudo add-apt-repository ppa:ansible/ansible

sudo aptitude update -y
sudo aptitude upgrade -y

sudo aptitude install -y wget build-essential git curl vim python-dev nfs-kernel-server nfs-common portmap ansible

# Java
# sudo aptitude update
# sudo aptitude install oracle-java8-installer -y
