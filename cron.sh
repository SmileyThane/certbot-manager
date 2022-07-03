#/bin/bash

source variables.conf
sudo echo "1 0 7 * * $path/run.sh >/dev/null 2>&1" >>cron_domains_list
sudo crontab cron_domains_list
sudo rm cron_domains_list
