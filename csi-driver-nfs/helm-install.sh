#!/bin/bash
helm repo add csi-driver-nfs https://raw.githubusercontent.com/kubernetes-csi/csi-driver-nfs/master/charts
helm repo update
helm install csi-driver-nfs csi-driver-nfs/csi-driver-nfs --namespace kube-system \
	--set controller.runOnControlPlane=true \
	--set controller.replicas=2 
kubectl apply -f ./sc-nfs-csi.yaml
kubectl apply -f ./nfs-csi-pvc.yaml
