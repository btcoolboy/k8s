#!/bin/bash
helm repo add csi-driver-nfs https://raw.githubusercontent.com/kubernetes-csi/csi-driver-nfs/master/charts
helm repo update
helm install csi-driver-nfs csi-driver-nfs/csi-driver-nfs --namespace kube-system -f ./values.yaml
kubectl apply -f ./sc-nfs-csi.yaml
kubectl apply -f ./nfs-csi-pvc.yaml
