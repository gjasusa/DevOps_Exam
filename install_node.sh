#!/bin/bash

curl -sL https://rpm.nodesource.com/setup_10.x | sudo -E bash -
yum install -y gcc-c++ make -y nodejs -y

npm install supervisor -g

systemctl daemon-reload
systemctl enable --now nodejs
