# Let's Encrypt Certbot Manager
Service for processing "let's encrypt" certbot for custom domains (with cron option)

- Fill your domains in ```domains.list``` (you can also save different files with domains and initialize it in ```variables.conf```)
- Check all configuration parameters in "variables.conf"
  - to install let's encrypt certbot use ```install_certbot.sh``` <sub> this step automatically executed in ```run.sh``` </sub>
    > installation working only for debian-based distros
- Run manager:
    - to run manager once use ```run.sh```
    - to set manager in cron use ```cron.sh```
    - to remove manager from cron use ```remove_cron.sh```
- Check log information in ```logs/``` folder 
