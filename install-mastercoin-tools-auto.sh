#!/bin/sh
OBELISK_SERVER="tcp://obelisk.bysh.me:9091"
echo "Installing Git..."
apt-get -y install git
echo "Cloning install-msc.git..."
sudo -H -u vagrant git clone https://github.com/mastercoin-MSC/install-msc.git
cd install-msc
echo "Running install-msc.sh..."
bash install-msc.sh -auto $OBELISK_SERVER


