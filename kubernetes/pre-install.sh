#!/bin/bash
echo "Installing KubeKey..."
curl -sfL https://get-kk.kubesphere.io | sh -
sudo mv kk /usr/local/bin/
sudo chmod +x /usr/local/bin/kk
rm -rf kubekey-*.tar.gz
echo "Installing helm..."
curl https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3 | bash
echo "Installing k9s..."
curl https://github.com/derailed/k9s/releases/latest/download/k9s_Linux_x86_64.tar.gz --output k9s_Linux_x86_64.tar.gz
tar -xf k9s_Linux_x86_64.tar.gz k9s
sudo mv k9s /usr/local/bin
sudo chmod +x /usr/local/bin/k9s
rm -rf k9*.tar.gz
k9s info
echo ""
kk version
echo ""
echo "helm:"
helm version
echo ""
