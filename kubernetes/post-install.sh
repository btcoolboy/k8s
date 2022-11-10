#!/bin/bash
kubectl=`find ./kubekey/kube/ -name kubectl`
sudo cp $kubectl /usr/local/bin/kubectl
sudo chmod +x /usr/local/bin/kubectl
mkdir -p ~/.kube
cp ./kubekey/config-k8s ~/.kube/config
chmod 600  ~/.kube/config
