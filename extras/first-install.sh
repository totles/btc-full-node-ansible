#!/bin/bash
# this script should only be run once on a clean system
# for further bitcoin update uses the provided ansible playbook

# installing systemctl service
wget https://raw.githubusercontent.com/totles/btc-full-node-ansible/master/extras/bitcoind.service -O /etc/systemd/system/bitcoind.service

# creating bitcoin directories
mkdir -p /srv/bitcoin
mkdir -p /srv/versions

# creating blank bitcoin.conf
touch /srv/bitcoin/bitcoin.cfg

# reloading systemctl daemon
systemctl daemon-reload

# autostart bitcoind
systemctl enable-bitcoind.service

# make sure daemon is not running yet
systemctl stop bitcoind.service
