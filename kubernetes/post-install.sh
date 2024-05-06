#!/bin/bash
kubectl=`find ./kubekey/kube/ -name kubectl | tail -1`
sudo cp $kubectl /usr/local/bin/kubectl
sudo chmod +x /usr/local/bin/kubectl
mkdir -p ~/.kube
cp ./kubekey/config-k8s ~/.kube/config
chmod 600  ~/.kube/config
echo "source <(kubectl completion bash)" | sudo tee /etc/profile.d/k8s_source.sh
