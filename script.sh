#!/bin/bash

sudo apt-get update
sudo apt-get upgrade -y

sudo apt-get install curl -y

curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh

sudo chmod 666 /var/run/docker.sock


# sudo apt-get install ca-certificates curl
# sudo install -m 0755 -d /etc/apt/keyrings
# sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
# sudo chmod a+r /etc/apt/keyrings/docker.asc

# # Add the repository to Apt sources:
# echo \
#   "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
#   $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
#   sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
# sudo apt-get update

# sudo apt-get install apache2 -y
# sudo systemctl restart apache2

# sudo git clone https://github.com/denilsonbonatti/mundo-invertido.git
# cd mundo-invertido
# sudo cp * -R /var/www/html