#!/bin/bash
helm upgrade ceph-csi-rbd ceph-csi/ceph-csi-rbd --namespace ceph-csi -f ./values.yaml
