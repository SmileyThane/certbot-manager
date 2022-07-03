#/bin/bash

source variables.conf
sudo add-apt-repository ppa:certbot/certbot -y
sudo apt-get install certbot python-certbot-$server_app -y
certbot --version

