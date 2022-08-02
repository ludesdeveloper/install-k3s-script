# Installing K3S and Friends on Server
### **How To**
```
curl https://raw.githubusercontent.com/ludesdeveloper/install-k3s-script/master/init-server.sh | bash
```
### **External IP**
1. Change 111.111.111.111 with your ip public
```
curl -sfL https://get.k3s.io | INSTALL_K3S_EXEC="--tls-san 111.111.111.111" sh -s - --write-kubeconfig-mode 644
```
