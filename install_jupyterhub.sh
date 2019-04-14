#!/bin/bash

#install paquet
apt-get update
apt-get upgrade -y
apt-get install -y curl software-properties-common
apt-get install -y python3-pip
pip3 install jupyterhub
Pip3 install notebook
curl -sL https://deb.nodesource.com/setup_10.x | sudo bash -
npm install -g configurable-http-proxy

#Deamon jupyterhub
cp jupyterhub.sh /etc/init.d/jupyterhub
chmod +x /etc/init.d/jupyterhub

# Create a default config to /etc/jupyterhub/jupyterhub_config.py
jupyterhub --generate-config -f /etc/jupyterhub/jupyterhub_config.py

# Start jupyterhub
service jupyterhub start

# Stop jupyterhub
service jupyterhub stop

# Start jupyterhub on boot
update-rc.d jupyterhub defaults

# Or use rcconf to manage services http://manpages.ubuntu.com/manpages/natty/man8/rcconf.8.html
rcconf

