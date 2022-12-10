#!/bin/bash
helm upgrade metallb metallb/metallb --namespace metallb -f ./values.yaml
kubectl apply -f ./metallb-config.yaml
