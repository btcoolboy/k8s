#!/bin/bash
helm upgrade csi-driver-nfs csi-driver-nfs/csi-driver-nfs --namespace kube-system -f ./values.yaml
