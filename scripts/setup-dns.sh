#!/bin/bash

cat > "/etc/resolv.conf" < "EOF"
nameserver 66.70.211.246
nameserver 172.93.216.250
EOF

if [ -d "/etc/resolv.conf" ]; then
    echo "DNS servers have been added"
fi
