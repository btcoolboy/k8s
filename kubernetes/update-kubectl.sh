#!/bin/bash
kubectl=`find ./kubekey/kube/ -name kubectl`
sudo cp $kubectl /usr/local/bin/kubectl
sudo chmod 775 /usr/local/bin/kubectl
