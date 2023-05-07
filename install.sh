#!/bin/bash

# Usage: sudo ./install.sh
# IMPORTANT: your Telegram's $TOKEN and $CHANNEL vars MUST be premilinary preconfigured (e. g. add them at the end of .profile file)!

apt-get update
mkdir /var/log/motion
chown motion:motion /var/log/motion
apt-get -y install motion curl
cp -rf ./etc/* /etc
hostnamectl hostname camenoti
