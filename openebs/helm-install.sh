#!/bin/bash
localregistry="10.200.101.20:8083/"

helm repo add openebs-jiva https://openebs.github.io/jiva-operator
helm repo update
helm install openebs-jiva openebs-jiva/jiva --namespace openebs --create-namespace \
        --set-string localpv-provisioner.localpv.image.registry=$localregistry \
        --set-string localpv-provisioner.helperPod.image.registry=$localregistry \
	--set-string jivaOperator.controller.image.registry=$localregistry \
        --set-string jivaOperator.exporter.image.registry=$localregistry \
	--set-string jivaOperator.image.registry=$localregistry \
	--set-string jivaOperator.replica.image.registry=$localregistry \
	--set-string csiController.attacher.image.registry=$localregistry \
	--set-string csiController.driverRegistrar.image.registry=$localregistry \
	--set-string csiController.livenessprobe.image.registry=$localregistry \
	--set-string csiController.provisioner.image.registry=$localregistry \
	--set-string csiController.resizer.image.registry=$localregistry \
	--set-string jivaCSIPlugin.image.registry=$localregistry \
	--set-string csiNode.driverRegistrar.image.registry=$localregistry \
	--set-string csiNode.livenessprobe.image.registry=$localregistry \
	--set-string storageClass.name=openebs-jiva-csi \
	--set-string storageClass.isDefaultClass=true \
	--set-string defaultPolicy.name=openebs-jiva-policy \
	--set-string defaultPolicy.replicas=3

kubectl apply -f ./jiva-pvc.yaml
