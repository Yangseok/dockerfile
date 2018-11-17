#!/bin/bash
#chmod +x initalizeDockerHost.sh
#Xenial 16.04 and newer
sudo apt-get remove docker docker-engine docker.io
sudo apt-get update
sudo apt-get dist-upgrade
sudo apt-get install apt-transport-https
sudo apt-get install ca-certificates
sudo apt-get install curl
sudo apt-get install software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
curl -fsSL https://get.docker.com -o get-docker.sh
sudo apt-get update
sudo sh get-docker.sh
sudo usermod -aG docker $USER
sudo curl -L "https://github.com/docker/compose/releases/download/1.22.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

sudo apt-get install zsh
chsh -s `which zsh`
curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh

sudo apt-get install rdate
sudo rdate -s time.bora.net
date '+%F  %r'