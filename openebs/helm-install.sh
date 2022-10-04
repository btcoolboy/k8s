#!/bin/bash

helm repo add openebs-jiva https://openebs.github.io/jiva-operator
helm repo update
helm install openebs-jiva openebs-jiva/jiva --namespace openebs --create-namespace \
	--set-string storageClass.name=openebs-jiva-csi \
	--set-string storageClass.isDefaultClass=true \
	--set-string defaultPolicy.name=openebs-jiva-policy \
	--set-string defaultPolicy.replicas=3

kubectl apply -f ./jiva-pvc.yaml --namespace openebs
