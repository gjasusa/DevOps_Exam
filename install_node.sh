#!/bin/bash

curl -sL https://rpm.nodesource.com/setup_10.x | sudo -E bash -
yum install -y gcc-c++ make -y nodejs -y

npm install supervisor -g

echo "[Unit]
Description=Node.JS Systemd Unit file with Supervisor listener
Documentation=https://example.com
After=network.target
[Service]
Type=simple
User=root
ExecStart=/bin/supervisor --watch /var/lib/jenkins/workspace/DevOps_exam_pipeline /var/lib/jenkins/workspace/DevOps_exam_pipeline/index.js
Restart=on-failure
[Install]
WantedBy=multi-user.target" > /lib/systemd/system/nodejs.service

systemctl daemon-reload
systemctl enable --now nodejs
