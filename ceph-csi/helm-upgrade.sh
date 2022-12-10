#!/bin/bash
helm upgrade ceph-csi-rbd ceph-csi/ceph-csi-rbd --namespace ceph-csi -f ./values.yaml
kubectl apply -f ./csi-config-map.yaml
kubectl apply -f ./csi-kms-config-map.yaml
kubectl apply -f ./ceph-config-map.yaml
kubectl apply -f ./csi-rbd-secret.yaml
kubectl apply -f ./csi-rbd-sc.yaml
