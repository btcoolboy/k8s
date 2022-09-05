#!/bin/bash

helm install openebs-localpv -f ./openebs-localpv.yaml openebs-localpv/localpv-provisioner --namespace openebs --create-namespace
helm install openebs-jiva -f ./openebs-jiva.yaml openebs-jiva/jiva --namespace openebs 
