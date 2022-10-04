#!/bin/bash
localregistry="10.200.101.20:8083"

helm repo add metallb https://metallb.github.io/metallb
helm repo update
helm install metallb metallb/metallb --namespace metallb --create-namespace \
        --set-string controller.image.repository=$localregistry/metallb/controller \
	--set-string prometheus.rbacProxy.repository=$localregistry/kubebuilder/kube-rbac-proxy \
	--set-string speaker.frr.image.repository=$localregistry/frrouting/frr \
	--set-string speaker.image.repository=$localregistry/metallb/speaker \
	--set speaker.tolerateMaster=false
