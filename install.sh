#!/bin/bash

# Usage: sudo ./install.sh
# IMPORTANT: your Telegram's $TOKEN and $CHANNEL vars MUST be premilinary preconfigured inside /etc/motion/scripts/my_vars.sh file!

apt-get update
mkdir /var/log/motion
chown motion:motion /var/log/motion
apt-get -y install motion curl
cp -rf ./etc/* /etc
patch /etc/motion/motion.conf motion-conf.patch
hostnamectl hostname camenoti
