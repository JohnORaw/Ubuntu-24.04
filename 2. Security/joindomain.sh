#!/bin/bash

# By: JOR
# Date: 22MAR25
# Function: Create local users with sudo, all servers
# Script: joindomain.sh

DOMAIN="janus.kmn.ie"

# Install
sudo apt update
sudo apt upgrade -y
sudo apt install sssd-ad sssd-tools realmd adcli
sudo pam-auth-update --enable mkhomedir

# Join Domain
sudo realm join $DOMAIN

# Test
getent passwd john.oraw@$DOMAIN
