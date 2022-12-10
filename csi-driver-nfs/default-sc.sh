#!/bin/bash
# Mark nfs-csi as default StorageClass
kubectl patch storageclass nfs-csi -p '{"metadata": {"annotations":{"storageclass.kubernetes.io/is-default-class":"true"}}}'
