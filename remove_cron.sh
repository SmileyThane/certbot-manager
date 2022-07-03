#/bin/bash

source variables.conf
sudo crontab -l | grep -v "$path/run.sh" | sudo crontab -
