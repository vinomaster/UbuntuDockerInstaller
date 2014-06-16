#!/bin/bash

# Provisioning instructions as per: 
# http://docs.docker.io.s3-website-us-west-2.amazonaws.com/installation/ubuntulinux/#ubuntu-trusty-1404-lts-64-bit

sudo apt-get update
sudo apt-get install docker.io
sudo ln -sf /usr/bin/docker.io /usr/local/bin/docker
sudo sed -i '$acomplete -F _docker docker' /etc/bash_completion.d/docker.io
