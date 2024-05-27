#!/bin/bash

sudo apt update
sudo apt install openjdk-11-jdk -y
sudo apt install ca-certificates -y
sudo apt install maven wget wget unzip -y


#jenkins
echo deb [allow-insecure=yes] \
    https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
    /etc/apt/sources.list.d/jenkins.list > /dev/null

sudo apt-get update
sudo apt-get install jenkins --allow-unauthenticated -y


# ansible
sudo apt install software-properies-common -y
sudo add-apt-repository --yes --update ppa:ansible/ansible
sudo apt install ansible -y

ip addr