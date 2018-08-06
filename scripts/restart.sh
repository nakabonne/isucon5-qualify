#!/bin/bash
set -e
cd /home/isucon/ansible-isucon/isucon5-qualifier
git pull
sudo cp etc/nginx.conf /etc/nginx/nginx.conf
#cd /home/isucon/isubata/webapp/go
#make
sudo /usr/sbin/nginx -t
sudo service nginx reload
sudo systemctl stop isuxi.go.service
sudo systemctl start isuxi.go.service
