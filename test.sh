#!/bin/bash
mkdir -p /src/raj
df -h > /tmp/space.txt
echo "raj" >> /tmp/space.txt
##mv /etc/nginx/sites-available/default /etc/nginx/sites-available/bkp
cp ssl/test.crt /tmp
systemctl restart nginx
