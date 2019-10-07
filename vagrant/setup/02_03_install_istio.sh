#!/bin/sh

helm repo add istio.io https://storage.googleapis.com/istio-release/releases/1.3.0/charts/
helm repo update

helm install istio.io/istio-init --name istio-init --namespace istio-system --set global.hub=dockerhub.azk8s.cn/istio

helm install istio.io/istio --name istio --namespace istio-system --set global.hub=dockerhub.azk8s.cn/istio --set kiali.hub=quay.azk8s.cn/kiali --values https://github.com/istio/istio/raw/master/install/kubernetes/helm/istio/values-istio-demo.yaml
