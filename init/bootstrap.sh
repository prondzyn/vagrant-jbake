#!/usr/bin/env bash
HOME="/home/vagrant"

# download newest package lists from the repositories 
sudo apt-get update

# install JDK and unzip
sudo apt-get install -y openjdk-7-jre unzip

# download JBake 2.3.2
wget http://hash.to/HM -O jbake.zip -o jbake-download.log

# unzip downloaded JBake
unzip jbake.zip

# add JBake to $PATH
echo 'export PATH="$HOME/jbake-2.3.2/bin:$PATH"' >> $HOME/.profile

# change ownership of JBake directory
sudo chown -Rf vagrant:vagrant $HOME/jbake*