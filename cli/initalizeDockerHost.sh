#!/bin/bash
#chown +x initalizeDockerHost.sh
#Xenial 16.04 and newer
sudo apt-get remove docker docker-engine docker.io
sudo apt-get update
sudo apt-get dist-upgrade
sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
sudo apt-get update
sudo apt-get install docker-ce
sudo usermod -aG docker $USER

sudo apt-get install zsh
chsh -s `which zsh`
curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh

sudo apt-get install rdate
sudo rdate -s time.bora.net
date '+%F  %r'