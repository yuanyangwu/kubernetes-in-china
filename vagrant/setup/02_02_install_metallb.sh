#!/bin/sh

# install MetalLB in Layer 2 mode
cat <<EOF | helm install --name metallb -f - stable/metallb
configInline:
  address-pools:
  - name: default
    protocol: layer2
    addresses:
    - 192.168.12.200-192.168.12.220
EOF
