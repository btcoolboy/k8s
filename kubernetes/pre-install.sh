#!/bin/bash

echo "Installing KubeKey..."
curl -sfL https://get-kk.kubesphere.io | sh -
sudo mv kk /usr/local/bin/
sudo chmod +x /usr/local/bin/kk
rm -rf kubekey-*.tar.gz
echo ""
echo "Installing k9s..."
wget https://github.com/derailed/k9s/releases/latest/download/k9s_Linux_amd64.tar.gz
tar -xf k9s_Linux_amd64.tar.gz k9s
sudo mv k9s /usr/local/bin
sudo chmod +x /usr/local/bin/k9s
rm -rf k9*.tar.gz
k9s info
echo ""
kk version
echo ""

