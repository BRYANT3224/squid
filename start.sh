!bin/bash
sudo apt-get update
sudo apt-get install \
    ca-certificates \
    curl \
    gnupg \
    lsb-release
sudo mkdir -m 0755 -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
sudo chmod a+r /etc/apt/keyrings/docker.gpg
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
sudo apt install apache2-utils
mkdir /home/squid1
sudo htpasswd -c /home/squid1/passwd bryant
cd /home/squid1/
wget https://raw.githubusercontent.com/BRYANT3224/squid/main/squid1.conf
wget https://raw.githubusercontent.com/BRYANT3224/squid/main/squid2.conf
wget https://raw.githubusercontent.com/BRYANT3224/squid/main/squid3.conf
cd ..

