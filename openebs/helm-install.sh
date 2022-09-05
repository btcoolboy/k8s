#!/bin/bash

helm install openebs-jiva -f ./openebs-jiva.yaml openebs-jiva/jiva --namespace openebs --create-namespace
