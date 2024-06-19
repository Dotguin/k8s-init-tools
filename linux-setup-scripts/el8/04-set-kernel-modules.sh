#!/bin/bash

set -e

cat <<EOF | tee /etc/modules-load.d/k8s-modules.conf
overlay
br_netfilter
EOF

modprobe overlay
modprobe br_netfilter
