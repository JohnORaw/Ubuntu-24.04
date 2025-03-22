#!/bin/bash

# By: JOR
# Date: 22MAR25
# Function: First tasks, all servers
# Script: first.sh

# Updates
sudo apt update
sudo apt-upgrade -y

# For minimum installs
sudo apt install dnsutils -y
sudo apt install iputils-ping -y
sudo apt install nano -y
sudo apt get openssh-server -y
