#!/bin/bash
helm upgrade metallb metallb/metallb --namespace metallb -f ./values.yaml
