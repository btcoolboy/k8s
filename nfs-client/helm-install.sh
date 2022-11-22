#!/bin/bash
helm repo add nfs-subdir-external-provisioner https://kubernetes-sigs.github.io/nfs-subdir-external-provisioner
helm repo update
helm install nfs-client nfs-subdir-external-provisioner/nfs-subdir-external-provisioner --namespace kube-system \
    --set nfs.server=10.200.101.190 \
    --set nfs.path=/nfs-data \
    --set storageClass.onDelete=true \
    --set replicaCount=2
kubectl apply -f ./nfs-client-pvc.yaml
