#!/bin/sh
OBELISK_SERVER="tcp://obelisk.bysh.me:9091"
echo id is `id -u`
echo "Installing Git..."
apt-get -y install git
echo "Cloning install-msc.git..."
sudo -H -u vagrant git clone https://github.com/msgilligan/install-msc.git
cd install-msc
echo "Checkout out msgilligan-modularize branch"
sudo -H -u vagrant git checkout msgilligan-modularize
echo "Running install-prerequisites..."
bash install-prerequisites.sh
echo "Running install-sx..."
cd res
bash install-sx.sh

mkdir /var/lib/mastercoin-tools
chown -R vagrant:vagrant /var/lib/mastercoin-tools
#bash install-msc.sh -autoskipprereq $OBELISK_SERVER


