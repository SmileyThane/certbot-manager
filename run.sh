#/bin/bash

source variables.conf

if hash certbot 2>/dev/null; then
    certbot --version
else
   ./install_certbot.sh
fi

now="$(date '+%d.%m.%Y')"

while read domain
do
exec > "logs/$domain-output-$now.txt" 2>&1
    sudo certbot certonly --authenticator $authenticator --installer $server_app --post-hook $post_hook --force-renewal -d $domain
#   --preferred-chain "ISRG Root X1"
done < $domains


