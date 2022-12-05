#!/bin/bash
helm repo add openebs-jiva https://openebs.github.io/jiva-operator
helm repo update
helm install openebs-jiva openebs-jiva/jiva --namespace openebs --create-namespace \
	--set csiController.nodeSelector.'node-role\.kubernetes\.io/control-plane'= \
        --set csiController.tolerations[0].operator=Exists \
        --set csiNode.tolerations[0].operator=Exists \
        --set jivaOperator.nodeSelector.'node-role\.kubernetes\.io/control-plane'= \
        --set jivaOperator.tolerations[0].operator=Exists \
	--set localpv-provisioner.localpv.nodeSelector.'node-role\.kubernetes\.io/control-plane'= \
        --set localpv-provisioner.localpv.tolerations[0].operator=Exists \
	--set storageClass.name=openebs-jiva-csi \
	--set storageClass.isDefaultClass=true \
	--set defaultPolicy.name=openebs-jiva-policy \
	--set defaultPolicy.replicas=2
kubectl apply -f ./jiva-csi-pvc.yaml
