#!/bin/sh

# Applicable K8S Node: All

sudo apt-get update
sudo apt-get install -y apt-transport-https jq

curl -fsSL http://mirrors.aliyun.com/docker-ce/linux/ubuntu/gpg | sudo apt-key add -
echo "deb http://mirrors.aliyun.com/docker-ce/linux/ubuntu xenial stable" | sudo tee /etc/apt/sources.list.d/docker-ce.list

sudo apt-get update

sudo apt-cache madison docker-ce | grep 18.09

sudo apt-get install -y docker-ce=5:18.09.8~3-0~ubuntu-xenial docker-ce-cli=5:18.09.8~3-0~ubuntu-xenial
sudo apt-mark hold docker-ce

cat <<EOF | sudo tee /etc/docker/daemon.json
{
  "registry-mirrors": ["https://dockerhub.azk8s.cn"]
}
EOF

sudo systemctl restart docker
sudo systemctl enable docker

sudo docker system info | grep -A 1 -e 'Registry Mirrors'
