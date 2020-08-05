#!/bin/bash

# Install the Chef Habitat CLI and accept the license
curl https://raw.githubusercontent.com/habitat-sh/habitat/master/components/hab/install.sh -o /tmp/install.sh
chmod +x /tmp/install.sh
/tmp/install.sh -v 1.6.56
hab license accept

# Set up the Chef Habitat Supervisor
sudo groupadd hab
sudo useradd -g hab hab
cat << EOF > /etc/systemd/system/hab-sup.service
[Unit]
Description=The Chef Habitat Supervisor

[Service]
ExecStart=/bin/hab sup run

[Install]
WantedBy=default.target
EOF
sudo systemctl daemon-reload
sudo systemctl enable hab-sup.service
sudo systemctl start hab-sup.service
