#!/bin/sh

# Applicable K8S Node: Master

K8S_VERSION=$(kubectl version --client --short --output=json | jq .clientVersion.gitVersion | sed 's/"//g')

sudo kubeadm config images list --kubernetes-version $K8S_VERSION --image-repository gcr.azk8s.cn/google_containers

sudo kubeadm config images pull --kubernetes-version $K8S_VERSION --image-repository gcr.azk8s.cn/google_containers

sudo kubeadm init --pod-network-cidr=172.31.1.0/24 --kubernetes-version $K8S_VERSION --image-repository gcr.azk8s.cn/google_containers

mkdir -p $HOME/.kube
sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown vagrant:vagrant -R $HOME/.kube

sudo kubectl apply -f "https://cloud.weave.works/k8s/net?k8s-version=$(kubectl version | base64 | tr -d '\n')"

sudo kubectl taint nodes --all node-role.kubernetes.io/master-
