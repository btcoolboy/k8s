#!/bin/bash
helm repo add awx-operator https://ansible.github.io/awx-operator
helm repo update
helm install awx-operator awx-operator/awx-operator --namespace awx --create-namespace -f ./values.yaml
kubectl apply -f ./secret.yaml
