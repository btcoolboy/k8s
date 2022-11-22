#!/bin/bash
helm repo add openebs-jiva https://openebs.github.io/jiva-operator
helm repo update
helm install openebs-jiva openebs-jiva/jiva --namespace openebs --create-namespace \
	--set storageClass.name=openebs-jiva-csi \
	--set storageClass.isDefaultClass=true \
	--set defaultPolicy.name=openebs-jiva-policy \
	--set defaultPolicy.replicas=3
kubectl apply -f ./jiva-csi-pvc.yaml
