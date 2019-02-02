#!/bin/bash

if [[ $EUID -ne 0 ]]; then
   echo_text "You need to be root to run this script..."
   exit 1
fi

cp usr/local/bin/rx580-power-control /usr/local/bin/rx580-power-control
cp etc/systemd/system/rx580-power-control.service /etc/systemd/system/rx580-power-control.service

systemctl daemon-reload

systemctl start rx580-power-control.service
#systemctl enable rx580-power-control.service
