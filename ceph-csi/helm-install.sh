#!/bin/bash

# csi
helm repo add ceph-csi https://ceph.github.io/csi-charts
helm repo update
helm install ceph-csi-rbd ceph-csi/ceph-csi-rbd --namespace ceph-csi --create-namespace

# ConfigMap & Secret
kubectl apply -f ./csi-config-map.yaml
kubectl apply -f ./csi-kms-config-map.yaml
kubectl apply -f ./ceph-config-map.yaml
kubectl apply -f ./csi-rbd-secret.yaml

# StorageClass
kubectl apply -f ./csi-rbd-sc.yaml

# PersistentVolumeClaim
kubectl apply -f ./raw-block-pvc.yaml
