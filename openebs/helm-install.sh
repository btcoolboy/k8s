#!/bin/bash
helm repo add openebs-jiva https://openebs.github.io/jiva-operator
helm repo update
helm install openebs-jiva openebs-jiva/jiva --namespace openebs --create-namespace -f ./values.yaml
kubectl apply -f ./jiva-csi-pvc.yaml
