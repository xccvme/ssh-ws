#!/bin/bash
systemctl stop ws
curl -sS ipv4.icanhazip.com > /usr/bin/.ipvps
REPO="https://raw.githubusercontent.com/xccvme/ssh-ws/main/"
wget -O /usr/bin/ws "${REPO}ws_v4_mod"
wget -O /usr/bin/config.conf "${REPO}config.conf"
wget -O /etc/systemd/system/ws.service "${REPO}ws.service"
chmod +x /usr/bin/ws
systemctl daemon-reload
systemctl enable ws.service
systemctl start ws.service
systemctl restart ws.service
