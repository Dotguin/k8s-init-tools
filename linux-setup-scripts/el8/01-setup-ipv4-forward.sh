#!/bin/bash

# sysctl params required by setup, params persist across reboots
cat <<EOF | tee /etc/sysctl.d/k8s-ipv4-forward.conf
net.ipv4.ip_forward = 1
net.bridge.bridge-nf-call-ip6tables = 1
net.bridge.bridge-nf-call-iptables = 1
EOF

# Apply sysctl params without reboot
sysctl --system
