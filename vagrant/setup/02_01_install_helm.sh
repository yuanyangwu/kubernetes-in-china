#!/bin/sh

wget http://mirror.azure.cn/kubernetes/helm/helm-v2.14.1-linux-amd64.tar.gz
tar -xzf helm-v2.14.1-linux-amd64.tar.gz
sudo mv linux-amd64/helm /usr/local/bin/

# Create Tiller's Service Account
# https://github.com/helm/helm/blob/v2.14.1/docs/rbac.md
cat <<EOF | kubectl apply -f -
apiVersion: v1
kind: ServiceAccount
metadata:
  name: tiller
  namespace: kube-system
---
apiVersion: rbac.authorization.k8s.io/v1
kind: ClusterRoleBinding
metadata:
  name: tiller
roleRef:
  apiGroup: rbac.authorization.k8s.io
  kind: ClusterRole
  name: cluster-admin
subjects:
  - kind: ServiceAccount
    name: tiller
    namespace: kube-system
EOF

sudo helm init --upgrade --tiller-image gcr.azk8s.cn/kubernetes-helm/tiller:v2.14.1 --stable-repo-url https://mirror.azure.cn/kubernetes/charts/  --service-account tiller --history-max 200
sudo chown vagrant:vagrant -R .helm

helm version
