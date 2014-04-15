#!/bin/sh
OBELISK_SERVER="tcp://obelisk.bysh.me:9091"
echo "Installing Git..."
apt-get -y install git
echo "Cloning install-msc.git..."
git clone https://github.com/mastercoin-MSC/install-msc.git
echo "cd install-msc..."
cd install-msc
echo "Running install-msc.sh"
chmod +x install-msc.sh
./install-msc.sh -os $OBELISK_SERVER

