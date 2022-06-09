curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl
curl https://baltocdn.com/helm/signing.asc | sudo apt-key add -
sudo apt-get install apt-transport-https --yes
echo "deb https://baltocdn.com/helm/stable/debian/ all main" | sudo tee /etc/apt/sources.list.d/helm-stable-debian.list
sudo apt-get update
sudo apt-get install helm
curl -sfL https://get.k3s.io | sh -s - --write-kubeconfig-mode 644
mkdir ~/.kube
sudo mv /etc/rancher/k3s/k3s.yaml ~/.kube/config
wget https://github.com/derailed/k9s/releases/download/v0.25.18/k9s_Linux_x86_64.tar.gz
tar -xvf k9s_Linux_x86_64.tar.gz 
chmod u+x k9s
sudo mv k9s /usr/local/bin/
