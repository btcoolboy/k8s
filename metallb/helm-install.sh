#!/bin/bash
helm repo add metallb https://metallb.github.io/metallb
helm repo update
helm install metallb metallb/metallb --namespace metallb --create-namespace \
	--set speaker.tolerateMaster=false
kubectl apply -f ./metallb-config.yaml
