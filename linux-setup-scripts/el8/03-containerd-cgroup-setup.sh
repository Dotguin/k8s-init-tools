#!/bin/bash

set -eu

cd /etc/containerd

mv config.toml config.toml.orig

containerd config default > config.toml

sed -i s@'SystemdCgroup = false'@'SystemdCgroup = true'@g config.toml

systemctl enable --now containerd
