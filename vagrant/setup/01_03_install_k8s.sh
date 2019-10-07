#!/bin/sh

# Applicable K8S Node: All

sudo swapoff -a
# remove "swap" line in /etc/fstab

curl -fsSL https://mirrors.aliyun.com/kubernetes/apt/doc/apt-key.gpg | sudo apt-key add - 
echo "deb https://mirrors.aliyun.com/kubernetes/apt/ kubernetes-xenial main" | sudo tee /etc/apt/sources.list.d/kubernetes.list
sudo apt-get update

sudo apt-cache madison kubeadm | grep 1.15

sudo apt-get install -y kubelet=1.15.2-00 kubeadm=1.15.2-00 kubectl=1.15.2-00
sudo apt-mark hold kubelet kubeadm kubectl
