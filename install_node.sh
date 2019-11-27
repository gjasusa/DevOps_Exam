#!/bin/bash

sudo curl -sL https://rpm.nodesource.com/setup_10.x | sudo -E bash -
sudo yum install -y gcc-c++ make -y nodejs -y

sudo npm install supervisor -g

sudo systemctl daemon-reload
sudo systemctl enable --now nodejs
