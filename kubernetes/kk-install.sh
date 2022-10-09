#!/bin/bash

echo "Installing KubeKey..."
curl -sfL https://get-kk.kubesphere.io | sh -
sudo mv kk /usr/bin/
rm -rf kubekey-*.tar.gz
echo "KubeKey installed into /usr/bin/kk"
kk version
echo ""
echo "Installing helm..."
curl https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3 | bash
helm version
