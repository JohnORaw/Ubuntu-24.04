#!/bin/bash

# By: JOR
# Date: 22MAR25
# Function: What to do first on all servers
# Script: first.sh

sudo apt update
sudo apt-upgrade -y
sudo apt install dnsutils -y
sudo apt install iputils-ping -y
sudo apt install nano -y
sudo apt get openssh-server -y
