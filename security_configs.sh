#!/bin/bash

# Some simple security configs, UFW configs, PAM configs, etc.
# Making sure the necessary packages are installed
sudo apt-get install ufw
sudo apt-get install iptables
sudo apt-get install clamtk

# UFW configs
sudo ufw enable
sudo ufw status verbose
sudo ufw default deny
sudo ufw logging on

# Assorted password tasks. PAM config and disabling root login.
sudo passwd -l root
sudo printf "auth required pam_tally2.so deny=5 onerr=fail unlock_time=1800" >> /etc/pam.d/common-auth
