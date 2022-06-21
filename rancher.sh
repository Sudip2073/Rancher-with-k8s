#!/bin/bash	
sudo apt update -y
sudo apt upgrade -y
sudo apt install docker.io
curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64 
sudo install minikube-linux-amd64 /usr/local/bin/minikube
sudo curl -LO https://dl.k8s.io/release/v1.21.7/bin/linux/amd64/kubectl
sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl
sudo apt-get install -y apt-transport-https ca-certificates curl
sudo minikube start --force --driver=docker
sudo docker run -d --restart=unless-stopped -p 80:80 -p 443:443 --privileged rancher/rancher:v2.4-head
sudo wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install ./google-chrome-stable_current_amd64.deb
sudo apt install google-chrome-stable
google-chrome --no-sandbox